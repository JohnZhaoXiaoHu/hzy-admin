import{p as f,aT as y,r as j,K as F,a as N,j as u,k as U,c as q,g as e,w as a,d as R,n as c,t as b}from"./index-3c68c560.js";import{c as k}from"./code_generation_service-61fe33f0.js";const i="admin/LowCodeTable";var x={findList(l,g,v={}){return f(`${i}/findList/${l}/${g}`,v,!1)},deleteList(l){return l&&l.length===0?tools.message("\u8BF7\u9009\u62E9\u8981\u5220\u9664\u7684\u6570\u636E!","\u8B66\u544A"):f(`${i}/deleteList`,l,!1)},synchronization(){return f(`${i}/synchronization`,null,!1)},change(l){return f(`${i}/change`,l,!1)},findForm(l){return y(`${i}/findForm${l?"/"+l:""}`)},saveForm(l){return l.id?f(`${i}/update`,l.form):f(`${i}/create`,l.form)}};const T=c("\u662F"),w=c("\u5426"),J={class:"text-right"},S=c("\u63D0\u4EA4"),z=c("\u4EE3\u7801\u8F7D\u5165\u9879\u76EE"),B={__name:"CodeLoadToProject",props:{tableName:String},setup(l,{expose:g}){const v=l,t=j({tableName:F(()=>v.tableName),vm:{id:"",form:{}},saveLoading:!1}),_=N(null),C={projectRootPath:[{required:!0,message:"\u8BF7\u8F93\u5165\u9879\u76EE\u6839\u5730\u5740",trigger:"blur"}],modelPath:[{required:!0,message:"\u8BF7\u8F93\u5165\u5B9E\u4F53\u4FDD\u5B58\u8DEF\u5F84",trigger:"blur"}],servicePath:[{required:!0,message:"\u8BF7\u8F93\u5165\u670D\u52A1\u4FDD\u5B58\u8DEF\u5F84",trigger:"blur"}],controllerPath:[{required:!0,message:"\u8BF7\u8F93\u5165\u63A7\u5236\u5668\u4FDD\u5B58\u8DEF\u5F84",trigger:"blur"}],indexVuePath:[{required:!0,message:"\u8BF7\u8F93\u5165\u524D\u7AEF\u89C6\u56FE\u4FDD\u5B58\u8DEF\u5F84",trigger:"blur"}],infoVuePath:[{required:!0,message:"\u8BF7\u8F93\u5165\u524D\u7AEF\u4FE1\u606F\u5F39\u7A97\u4FDD\u5B58\u4F4D\u7F6E",trigger:"blur"}],serviceJsPath:[{required:!0,message:"\u8BF7\u8F93\u5165\u524D\u7AEF\u670D\u52A1\u4FDD\u5B58\u4F4D\u7F6E",trigger:"blur"}]},p={findForm(){return t.saveLoading=!0,x.findForm(t.vm.id).then(n=>{t.saveLoading=!1,n.code==1&&(t.vm=n.data)})},saveForm(){_.value.validate().then(()=>{t.saveLoading=!0,x.saveForm(t.vm).then(n=>{n.code==1&&(b.message("\u64CD\u4F5C\u6210\u529F!","\u6210\u529F"),t.saveLoading=!1)}).finally(()=>{t.saveLoading=!1})})},autoImport(){console.log("\u6267\u884C"),k.autoImprotProject({tableName:v.tableName}).then(n=>{n.code===1&&b.message("\u5BFC\u5165\u6210\u529F,\u8BF7\u67E5\u770B!","\u6210\u529F")}).finally(()=>{})},loadData({key:n}){t.vm.id=n,p.findForm()}};return g({...p}),(n,o)=>{const h=u("a-radio"),L=u("a-radio-group"),s=u("a-form-item"),m=u("a-col"),d=u("a-input"),V=u("a-row"),$=u("a-form"),P=u("a-button");return U(),q("div",null,[e($,{ref_key:"formRef",ref:_,layout:"vertical",model:t.vm.form,rules:C},{default:a(()=>[e(V,{gutter:[15,15]},{default:a(()=>[e(m,{xs:24,sm:12,md:12,lg:12,xl:12},{default:a(()=>[e(s,{label:"\u662F\u5426\u8986\u76D6",ref:"isCover",name:"isCover"},{default:a(()=>[e(L,{value:t.vm.form.isCover,"onUpdate:value":o[0]||(o[0]=r=>t.vm.form.isCover=r),name:"isCover"},{default:a(()=>[e(h,{value:!0},{default:a(()=>[T]),_:1}),e(h,{value:!1},{default:a(()=>[w]),_:1})]),_:1},8,["value"])]),_:1},512)]),_:1}),e(m,{xs:24,sm:12,md:12,lg:12,xl:12},{default:a(()=>[e(s,{label:"\u9879\u76EE\u6839\u5730\u5740",ref:"projectRootPath",name:"projectRootPath"},{default:a(()=>[e(d,{value:t.vm.form.projectRootPath,"onUpdate:value":o[1]||(o[1]=r=>t.vm.form.projectRootPath=r),placeholder:"\u8BF7\u8F93\u5165"},null,8,["value"])]),_:1},512)]),_:1}),e(m,{xs:24,sm:12,md:12,lg:12,xl:12},{default:a(()=>[e(s,{label:"\u5B9E\u4F53\u4FDD\u5B58\u8DEF\u5F84",ref:"modelPath",name:"modelPath"},{default:a(()=>[e(d,{value:t.vm.form.modelPath,"onUpdate:value":o[2]||(o[2]=r=>t.vm.form.modelPath=r),placeholder:"\u8BF7\u8F93\u5165"},null,8,["value"])]),_:1},512)]),_:1}),e(m,{xs:24,sm:12,md:12,lg:12,xl:12},{default:a(()=>[e(s,{label:"\u670D\u52A1\u4FDD\u5B58\u8DEF\u5F84",ref:"servicePath",name:"servicePath"},{default:a(()=>[e(d,{value:t.vm.form.servicePath,"onUpdate:value":o[3]||(o[3]=r=>t.vm.form.servicePath=r),placeholder:"\u8BF7\u8F93\u5165"},null,8,["value"])]),_:1},512)]),_:1}),e(m,{xs:24,sm:12,md:12,lg:12,xl:12},{default:a(()=>[e(s,{label:"\u63A7\u5236\u5668\u4FDD\u5B58\u8DEF\u5F84",ref:"controllerPath",name:"controllerPath"},{default:a(()=>[e(d,{value:t.vm.form.controllerPath,"onUpdate:value":o[4]||(o[4]=r=>t.vm.form.controllerPath=r),placeholder:"\u8BF7\u8F93\u5165"},null,8,["value"])]),_:1},512)]),_:1}),e(m,{xs:24,sm:12,md:12,lg:12,xl:12},{default:a(()=>[e(s,{label:"\u524D\u7AEF\u89C6\u56FE\u4FDD\u5B58\u8DEF\u5F84",ref:"indexVuePath",name:"indexVuePath"},{default:a(()=>[e(d,{value:t.vm.form.indexVuePath,"onUpdate:value":o[5]||(o[5]=r=>t.vm.form.indexVuePath=r),placeholder:"\u8BF7\u8F93\u5165"},null,8,["value"])]),_:1},512)]),_:1}),e(m,{xs:24,sm:12,md:12,lg:12,xl:12},{default:a(()=>[e(s,{label:"\u524D\u7AEF\u4FE1\u606F\u5F39\u7A97\u4FDD\u5B58\u4F4D\u7F6E",ref:"infoVuePath",name:"infoVuePath"},{default:a(()=>[e(d,{value:t.vm.form.infoVuePath,"onUpdate:value":o[6]||(o[6]=r=>t.vm.form.infoVuePath=r),placeholder:"\u8BF7\u8F93\u5165"},null,8,["value"])]),_:1},512)]),_:1}),e(m,{xs:24,sm:12,md:12,lg:12,xl:12},{default:a(()=>[e(s,{label:"\u524D\u7AEF\u670D\u52A1\u4FDD\u5B58\u4F4D\u7F6E",ref:"serviceJsPath",name:"serviceJsPath"},{default:a(()=>[e(d,{value:t.vm.form.serviceJsPath,"onUpdate:value":o[7]||(o[7]=r=>t.vm.form.serviceJsPath=r),placeholder:"\u8BF7\u8F93\u5165"},null,8,["value"])]),_:1},512)]),_:1})]),_:1})]),_:1},8,["model"]),R("div",J,[e(P,{type:"primary",onClick:o[8]||(o[8]=r=>p.saveForm()),class:"mr-24"},{default:a(()=>[S]),_:1}),e(P,{type:"primary",onClick:o[9]||(o[9]=r=>p.autoImport()),danger:""},{default:a(()=>[z]),_:1})])])}}};var D=Object.freeze(Object.defineProperty({__proto__:null,default:B},Symbol.toStringTag,{value:"Module"}));export{D as C,B as _,x as s};
