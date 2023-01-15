﻿using HZY.EntityFramework.PagingViews;
using HZY.Infrastructure;
using HZY.Infrastructure.Controllers;
using HZY.Infrastructure.Filters;
using HZY.Infrastructure.Permission.Attributes;
using HZY.Models.Consts;
using HZY.Models.DTO;
using HZY.Models.Entities;
using HZY.Models.Entities.Framework;
using HZY.Models.Entities.LowCode;
using HZY.Services.Admin;
using HZY.Services.Admin.Framework;
using HZY.Services.Admin.Memebers;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Controllers.Admin
{
    [ControllerDescriptor(MenuId = "请设置菜单Id 系统菜单表中查找", DisplayName = nameof(LowCodeTableController))]
    public class LowCodeTableController : AdminBaseController<LowCodeTableService>
    {
        public LowCodeTableController(LowCodeTableService defaultService)
            : base(defaultService)
        {

        }

        /// <summary>
        /// 获取列表
        /// </summary>
        /// <param name="pagingSearchInput"></param>
        /// <returns></returns>
        [HttpPost("FindList")]
        public async Task<PagingView> FindListAsync([FromBody] PagingSearchInput<LowCodeTable> pagingSearchInput)
        {
            return await this._defaultService.FindListAsync(pagingSearchInput);
        }

        /// <summary>
        /// 根据id数组删除
        /// </summary>
        /// <param name="ids"></param>
        /// <returns></returns>
        [HttpPost("DeleteList")]
        public async Task<bool> DeleteListAsync([FromBody] List<Guid> ids)
        {
            await this._defaultService.DeleteListAsync(ids);
            return true;
        }

        /// <summary>
        /// 同步表
        /// </summary>
        /// <returns></returns>
        [HttpPost("Synchronization")]
        public Task SynchronizationAsync()
        {
            return this._defaultService.SynchronizationAsync();
        }

        /// <summary>
        /// 变更数据
        /// </summary>
        /// <param name="lowCodeTables"></param>
        /// <returns></returns>
        [HttpPost("Change")]
        public Task ChangeAsync([FromBody] List<LowCodeTable> lowCodeTables)
        {
            return this._defaultService.ChangeAsync(lowCodeTables);
        }

        /// <summary>
        /// 查询表单数据
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [ActionDescriptor(DisplayName = "查询数据")]
        [HttpGet("FindForm/{id?}")]
        public Task<Dictionary<string, object>> FindFormAsync([FromRoute] Guid id)
        {
            return this._defaultService.FindFormAsync(id);
        }

        /// <summary>
        /// 添加
        /// </summary>
        /// <param name="form"></param>
        /// <returns></returns>
        [RequestLimitFilter]
        [ActionDescriptor(AdminFunctionConsts.Function_Insert, DisplayName = "创建表单")]
        [HttpPost("Create")]
        [ApiCheckModel]
        public Task CreateAsync([FromBody] LowCodeTable form)
        {
            return this._defaultService.SaveFormAsync(form);
        }

        /// <summary>
        /// 编辑
        /// </summary>
        /// <param name="form"></param>
        /// <returns></returns>
        [RequestLimitFilter]
        [ActionDescriptor(AdminFunctionConsts.Function_Update, DisplayName = "编辑表单")]
        [HttpPost("Update")]
        [ApiCheckModel]
        public Task UpdateAsync([FromBody] LowCodeTable form)
        {
            return this._defaultService.SaveFormAsync(form);
        }



    }
}