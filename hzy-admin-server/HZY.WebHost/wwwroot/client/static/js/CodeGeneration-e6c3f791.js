import{c}from"./code_generation_service-61fe33f0.js";import x from"./MdEditorShowCode-7e7bbef1.js";import{_ as w,r as y,K as b,I as v,j as _,k as A,c as H,g as d,w as a,d as N,A as m,n as i}from"./index-3c68c560.js";const Y={class:"mb-15"},Z=i("\u5B9E\u4F53"),I=i("\u670D\u52A1"),h=i("\u63A7\u5236\u5668"),L=i("\u5217\u8868\u9875"),S=i("\u8868\u5355\u9875"),k=i("\u524D\u7AEF\u670D\u52A1"),G=i(" \u4E0B\u8F7D\u5F53\u524D "),M=i(" \u4E0B\u8F7D\u6240\u6709 "),T={__name:"CodeGeneration",props:{tableName:String},setup(u,{expose:p}){const f=u,e=y({vm:{id:b(()=>f.tableName),form:{}},saveLoading:!1,activeCode:"HZY.Models",code:""});v(()=>e.vm.id,t=>{n.openForm()});const n={openForm(){e.activeCode="HZY.Models",n.getCode(t=>{e.code=t})},getCode(t){e.saveLoading=!0,c.getCode({tableName:e.vm.id,type:e.activeCode,codeText:""}).then(o=>{e.saveLoading=!1,t&&t(o.data.code)})},download(){c.download({tableName:e.vm.id,type:e.activeCode,codeText:""})},downloadAll(){c.downloadAll({tableName:e.vm.id,type:e.activeCode,codeText:""})}};return v(()=>e.activeCode,t=>{t=="HZY.Models"&&n.getCode(o=>{e.code=o}),t=="HZY.Services.Admin"&&n.getCode(o=>{e.code=o}),t=="HZY.Controllers.Admin"&&n.getCode(o=>{e.code=o}),t=="Index.vue"&&n.getCode(o=>{e.code=o}),t=="Info.vue"&&n.getCode(o=>{e.code=o}),t=="Service.js"&&n.getCode(o=>{e.code=o})}),p({...n}),(t,o)=>{const s=_("a-radio-button"),r=_("a-button"),g=_("a-radio-group"),C=_("a-spin");return A(),H("div",null,[d(C,{spinning:e.saveLoading},{default:a(()=>[N("div",Y,[d(g,{value:e.activeCode,"onUpdate:value":o[2]||(o[2]=l=>e.activeCode=l)},{default:a(()=>[d(s,{value:"HZY.Models"},{default:a(()=>[Z]),_:1}),d(s,{value:"HZY.Services.Admin"},{default:a(()=>[I]),_:1}),d(s,{value:"HZY.Controllers.Admin"},{default:a(()=>[h]),_:1}),d(s,{value:"Index.vue"},{default:a(()=>[L]),_:1}),d(s,{value:"Info.vue"},{default:a(()=>[S]),_:1}),d(s,{value:"Service.js"},{default:a(()=>[k]),_:1}),d(r,{type:"primary",onClick:o[0]||(o[0]=l=>n.download()),class:"ml-15",loading:e.saveLoading},{icon:a(()=>[d(m,{name:"DownloadOutlined"})]),default:a(()=>[G]),_:1},8,["loading"]),d(r,{type:"primary",onClick:o[1]||(o[1]=l=>n.downloadAll()),class:"ml-15",loading:e.saveLoading},{icon:a(()=>[d(m,{name:"DownloadOutlined"})]),default:a(()=>[M]),_:1},8,["loading"])]),_:1},8,["value"])]),d(x,{text:e.code,"onUpdate:text":o[3]||(o[3]=l=>e.code=l)},null,8,["text"])]),_:1},8,["spinning"])])}}};var $=w(T,[["__scopeId","data-v-da9f44e6"]]);export{$ as default};
