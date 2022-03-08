﻿using HZY.Infrastructure.Quartz;
using HZY.Infrastructure.ScanDIService.Interface;
using HZY.Quartz.Entitys;
using Microsoft.Extensions.Logging;
using Quartz;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;

namespace HZY.Quartz.Service.Jobs
{
    /// <summary>
    /// Resultful 风格 Api Job
    /// </summary>
    [DisallowConcurrentExecution]
    public class ResultfulApiJob : IJob, IDiScopedSelf
    {
        private readonly IApiRequestService _apiRequestService;
        private readonly ITaskService _taskService;
        private readonly ILogger<ResultfulApiJob> _logger;
        private readonly IJobLoggerService _jobLogger;

        public ResultfulApiJob(IApiRequestService apiRequestService, ITaskService taskService, ILogger<ResultfulApiJob> logger, IJobLoggerService jobLogger)
        {
            _apiRequestService = apiRequestService;
            _taskService = taskService;
            _logger = logger;
            _jobLogger = jobLogger;
        }

        public async Task Execute(IJobExecutionContext context)
        {
            try
            {
                Stopwatch _stopwatch = new Stopwatch();
                _stopwatch.Restart();

                var tasksId = context.MergedJobDataMap.GetString("TasksId")?.ToString();

                if (string.IsNullOrWhiteSpace(tasksId))
                {
                    _logger.LogError("tasksId 空!");
                    return;
                }

                var tasks = await _taskService.FindByIdAsync(Guid.Parse(tasksId));

                if (tasks == null)
                {
                    _logger.LogError("tasks 空!");
                    return;
                }

                //运行开始记录
                //_jobLogger.Write(new JobLoggerInfo()
                //{
                //    Id = Guid.NewGuid(),
                //    TasksId = tasks.Id ?? Guid.Empty,
                //    Text = $"[执行任务Start] Id={tasks.Id}、Name={tasks.Name}、GroupName={tasks.GroupName}",
                //    CreateTime = DateTime.Now
                //});

                var time = DateTime.Now;
                var taskId = tasks?.Id ?? Guid.Empty;

                var result = await _apiRequestService.RequestAsync(tasks.RequsetMode, tasks.ApiUrl, tasks.HeaderToken);

                if (result.IsSuccess)
                {
                    await _taskService.UpdateExecuteTime(taskId, time);
                }
                else
                {
                    _logger.LogError($"Web Api RequestAsync(); 请求失败! WebApi 返回结果:{result.Message}");
                }

                _stopwatch.Stop();

                //运行结束记录
                var text = $"{time.ToString("yyyy-MM-dd HH:mm:ss:fff")} [{tasks.Name} 耗时：{_stopwatch.ElapsedMilliseconds} 毫秒]";
                text += $" 分组 = {tasks.GroupName}、";
                text += $"结果 = {result.Message}";
                _jobLogger.Write(new JobLoggerInfo()
                {
                    Id = Guid.NewGuid(),
                    TasksId = taskId,
                    Text = text,
                    CreateTime = time
                });
            }
            catch (Exception ex)
            {
                var message = $@"Message={ex.Message}\r\n
StackTrace={ex.StackTrace}\r\n
Source={ex.Source}\r\n";

                _logger.LogError(ex, message, null);
            }
        }
    }
}
