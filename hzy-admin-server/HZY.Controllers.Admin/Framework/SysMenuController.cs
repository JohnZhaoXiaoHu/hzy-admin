﻿using HZY.Managers.Accounts;
using HZY.EntityFramework.PagingViews;
using HZY.Infrastructure;
using HZY.Infrastructure.Controllers;
using HZY.Infrastructure.Filters;
using HZY.Infrastructure.Permission;
using HZY.Infrastructure.Permission.Attributes;
using HZY.Models.BO;
using HZY.Models.Consts;
using HZY.Models.DTO;
using HZY.Models.DTO.Framework;
using HZY.Models.Entities.Framework;
using HZY.Services.Admin.Framework;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Controllers.Admin.Framework;

/// <summary>
/// 菜单控制器
/// </summary>
[ControllerDescriptor(MenuId = "25", DisplayName = "菜单")]
public class SysMenuController : AdminBaseController<SysMenuService>
{
    private readonly AccountInfo _accountInfo;

    public SysMenuController(SysMenuService defaultService, IAccountManager accountService) : base(defaultService)
    {
        this._accountInfo = accountService.GetAccountInfo();
    }

    /// <summary>
    /// 获取列表
    /// </summary>
    /// <param name="pagingSearchInput"></param>
    /// <returns></returns>
    //[ApiResourceCacheFilter(1)]
    [ActionDescriptor(DisplayName = "查询列表")]
    [HttpPost("FindList")]
    public async Task<PagingView> FindListAsync([FromBody] PagingSearchInput<SysMenu> pagingSearchInput)
    {
        return await this._defaultService.FindListAsync(pagingSearchInput);
    }

    /// <summary>
    /// 根据id数组删除
    /// </summary>
    /// <param name="ids"></param>
    /// <returns></returns>
    [ActionDescriptor(DisplayName = "删除数据")]
    [HttpPost("DeleteList")]
    public async Task<bool> DeleteListAsync([FromBody] List<int> ids)
    {
        await this._defaultService.DeleteListAsync(ids);
        return true;
    }

    /// <summary>
    /// 查询表单数据
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    [ActionDescriptor(DisplayName = "查看表单")]
    [HttpGet("FindForm/{id?}")]
    public async Task<Dictionary<string, object>> FindFormAsync([FromRoute] int id)
    {
        return await this._defaultService.FindFormAsync(id);
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
    public Task CreateAsync([FromBody] SysMenuFormDto form)
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
    public Task UpdateAsync([FromBody] SysMenuFormDto form)
    {
        return this._defaultService.SaveFormAsync(form);
    }

    /// <summary>
    /// 导出Excel
    /// </summary>
    /// <param name="pagingSearchInput"></param>
    /// <returns></returns>
    [ActionDescriptor(DisplayName = "导出数据")]
    [ApiResourceCacheFilter(10)]
    [HttpPost("ExportExcel")]
    public async Task ExportExcelAsync([FromBody] PagingSearchInput<SysMenu> pagingSearchInput)
        => base.HttpContext.DownLoadFile(await this._defaultService.ExportExcelAsync(pagingSearchInput), Tools.GetFileContentType[".xls"].ToStr(),
            $"{PermissionUtil.GetControllerDisplayName(this.GetType())}列表数据 {DateTime.Now.ToString("yyyy-MM-dd")}.xls");

    /// <summary>
    /// 获取所有菜单
    /// </summary>
    /// <param name="search"></param>
    /// <returns></returns>
    [ActionDescriptor(DisplayName = "获取所有的菜单")]
    [HttpPost("GetAll")]
    public async Task<List<SysMenuTreeDto>> GetAllAsync([FromBody] SysMenu search)
    {
        return await this._defaultService.GetAllAsync(search);
    }



}