
using HZY.Models.Entities;
using HZY.Models.Entities.LowCode;
using HZY.Models.Entities.ApprovalFlow;
using HZY.Models.Entities.Framework;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.EFCore.Migrations.Seeds.Datas;

  public static class MigrationsLowCodeTableModelBuilderExtensions
    {
        public static void Seed(this ModelBuilder modelBuilder)
        {
// ===============================================表：low_code_table 种子数据=============================================
modelBuilder.Entity<LowCodeTable>().HasData(new LowCodeTable(){Id=Guid.Parse("69b24f04-0ed3-45fc-91d9-0dc929175a57"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="用户与岗位",EntityName="SysUserPost",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:27"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="sys_user_post",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("a9e68076-84d2-449f-a7c2-134f09984dfb"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/7/29 0:00:00"),DisplayName="",EntityName="Efmigrationshistory",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:27"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="__EFMigrationsHistory",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("7f94e0db-fc63-40dc-bfe3-18c5aad75975"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/7/29 0:00:00"),DisplayName="",EntityName="FlowApprovalStepHistoryUser",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:27"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="flow_approval_step_history_user",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("6ba9805c-916e-4d2c-99d0-216fcbc361cc"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/5/23 0:00:00"),DisplayName="低代码表",EntityName="LowCodeTable",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:27"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="low_code_table",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("651bb982-1130-4e1c-9070-36b90dcf2324"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="工作流审批步骤配置",EntityName="FlowApprovalStep",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/29 21:59:11"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath=null,Remark=null,Schema=null,ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="flow_approval_step",Type=null},new LowCodeTable(){Id=Guid.Parse("524e71b4-cbf7-4248-8b29-3f99b43f2eb2"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="自定义数据权限",EntityName="SysDataAuthorityCustom",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:03"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="sys_data_authority_custom",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("7ad3b915-f0bd-443a-89cd-42d41dd6c554"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="工作流用户审批步骤",EntityName="FlowApprovalStepUser",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/29 21:59:11"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath=null,Remark=null,Schema=null,ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="flow_approval_step_user",Type=null},new LowCodeTable(){Id=Guid.Parse("1a8df018-79f8-4e26-b4eb-4b735aae7275"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="审批流",EntityName="Flow",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:03"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="flow",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("60cceba1-28bf-4d1d-b603-4edf95d512b8"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="操作日志",EntityName="SysOperationLog",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:03"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="sys_operation_log",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("2ae9e532-7d9a-474b-b629-50a39945c44d"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="菜单功能",EntityName="SysMenuFunction",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:03"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="sys_menu_function",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("d8948c56-c5bd-4061-b272-5417375f38f0"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="审批流审批",EntityName="FlowApproval",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:03"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="flow_approval",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("d26d07cb-158a-4cb2-8b20-5dfd5181af54"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="组织",EntityName="SysOrganization",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:03"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="sys_organization",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("6323638b-a45f-4a76-886e-69a9e9be0901"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="用户",EntityName="SysUser",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:03"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="sys_user",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("79fbd4ec-9f4e-45dc-8065-70f2eb422cdf"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/5/23 0:00:00"),DisplayName="低代码表信息",EntityName="LowCodeTableInfo",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:27"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="low_code_table_info",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("af37f705-7ba0-4883-b1be-8a274ea4c026"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="数据字典",EntityName="SysDictionary",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:03"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="sys_dictionary",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("73c97832-4e7f-4758-86d2-94327971b5fd"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="会员",EntityName="Member",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:03"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="member",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("d2600250-6f32-4d7d-8395-96cc9fa36db4"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="菜单",EntityName="SysMenu",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:03"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="sys_menu",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("f3d7bbb3-c1fb-4d61-92a4-9bc101811335"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="角色",EntityName="SysRole",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:03"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="sys_role",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("852f53ff-0d00-4c32-aa55-a9c11993751b"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/5/23 0:00:00"),DisplayName="低代码列表",EntityName="LowCodeList",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:27"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="low_code_list",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("ae6d94d8-6a15-4348-b600-aa17e4b61718"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="工作流节点",EntityName="FlowNode",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:03"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="flow_node",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("69edd8a8-1d24-478c-a909-b82039edcec0"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/5/23 0:00:00"),DisplayName="低代码检索表",EntityName="LowCodeSearch",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:27"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="low_code_search",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("18fbb18e-cb29-45d8-a5f3-c0121c57680a"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/7/29 0:00:00"),DisplayName="",EntityName="FlowApprovalStepHistory",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:27"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="flow_approval_step_history",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("6fabc67a-8b48-49a6-8ba1-c8a32c499d36"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="功能",EntityName="SysFunction",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:03"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="sys_function",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("0a8bdb18-758a-4798-9ffc-e7031dcbf262"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="岗位",EntityName="SysPost",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:03"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="sys_post",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("8da38d20-8a09-4e81-8dd8-ed6702aee380"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="角色菜单功能关联",EntityName="SysRoleMenuFunction",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:03"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="sys_role_menu_function",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("e79db53b-7162-4669-9b5e-f860501475ac"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="数据权限",EntityName="SysDataAuthority",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:03"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="sys_data_authority",Type="TABLE"},new LowCodeTable(){Id=Guid.Parse("3da5d264-2e8d-460c-a10c-ff9a6bb57a60"),ControllerPath="hzy-admin-server/HZY.Controllers.Admin/App/",CreationTime=DateTime.Parse("2022/4/17 0:00:00"),DisplayName="用户与角色",EntityName="SysUserRole",IndexVuePath="hzy-admin-client/src/views/app/",InfoVuePath="hzy-admin-client/src/views/app/",IsCover=bool.Parse("False"),LastModificationTime=DateTime.Parse("2022/7/30 20:42:27"),ModelPath="hzy-admin-server/HZY.Models/Entities/App/",ProjectRootPath="HzyAdmin",Remark=null,Schema="dbo",ServiceJsPath="hzy-admin-client/src/service/app/",ServicePath="hzy-admin-server/HZY.Services.Admin/App/",TableName="sys_user_role",Type="TABLE"});

    }
}
