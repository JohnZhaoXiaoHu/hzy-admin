﻿using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using HZY.Admin.Model.Dto;
using HZY.Admin.Services.Framework;
using HZY.Framework.Attributes;
using HZY.Framework.Controllers;
using HZY.Framework.Model;
using HZY.Repository.Entity.Framework;
using HZY.Repository.Attributes;
using HZY.Toolkit;
using Microsoft.AspNetCore.Mvc;

namespace HZY.Admin.Controllers.Framework
{
    /// <summary>
    /// 系统账号管理
    /// </summary>
    [ControllerDescriptor("38d864ff-f6e7-43af-8c5c-8bbcf9fa586d")]
    public class SysUserController : AdminBaseController<SysUserService>
    {
        public SysUserController(SysUserService defaultService) : base(defaultService)
        {
        }

        /// <summary>
        /// 列表页
        /// </summary>
        /// <returns></returns>
        [HttpGet(nameof(Index))]
        public IActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// 编辑页
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("Info/{id?}")]
        public IActionResult Info(Guid id)
        {
            return View(id);
        }

        /// <summary>
        /// 获取列表
        /// </summary>
        /// <param name="page"></param>
        /// <param name="rows"></param>
        /// <param name="search"></param>
        /// <returns></returns>
        [HttpPost("FindList/{page}/{rows}")]
        public async Task<ApiResult> FindListAsync([FromRoute] int page, [FromRoute] int rows,
            [FromBody] SysUser search)
        {
            return this.ResultOk(await this.DefaultService.FindListAsync(page, rows, search));
        }

        /// <summary>
        /// 根据id数组删除
        /// </summary>
        /// <param name="ids"></param>
        /// <returns></returns>
        [Transactional]
        [HttpPost("DeleteList")]
        public async Task<ApiResult> DeleteListAsync([FromBody] List<Guid> ids)
        {
            await this.DefaultService.DeleteListAsync(ids);
            return this.ResultOk("ok");
        }

        /// <summary>
        /// 查询表单数据
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [HttpGet("FindForm/{id?}")]
        public async Task<ApiResult> FindFormAsync([FromRoute] Guid id)
        {
            return this.ResultOk(await this.DefaultService.FindFormAsync(id));
        }

        /// <summary>
        /// 保存
        /// </summary>
        /// <param name="form"></param>
        /// <returns></returns>
        [Transactional]
        [HttpPost("SaveForm")]
        public async Task<ApiResult> SaveFormAsync([FromBody] SysUserFormDto form)
        {
            return this.ResultOk(await this.DefaultService.SaveFormAsync(form));
        }

        /// <summary>
        /// 导出Excel
        /// </summary>
        /// <param name="search"></param>
        /// <returns></returns>
        [HttpPost("ExportExcel")]
        public async Task<FileContentResult> ExportExcelAsync([FromBody] SysUser search)
            => this.File(await this.DefaultService.ExportExcelAsync(search), Tools.GetFileContentType[".xls"].ToStr(), $"{Guid.NewGuid()}.xls");
    }
}