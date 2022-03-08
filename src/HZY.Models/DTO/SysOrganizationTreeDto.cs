﻿using HZY.Models.Entities.Framework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Models.DTO
{
    /// <summary>
    /// 组织机构树
    /// </summary>
    public class SysOrganizationTreeDto : SysOrganization
    {

        public List<SysOrganizationTreeDto> Children { get; set; } = new List<SysOrganizationTreeDto>();

    }
}
