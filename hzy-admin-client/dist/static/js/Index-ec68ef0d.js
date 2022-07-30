import{b as V,r as F,a as k,l as J,o as M,I as A,c as r,m as _,d as j,L as q,M as E,g as o,h as e,w as l,q as h,A as v,C as x,n as u,f as C,e as S,t as N,aS as G}from"./index-40043784.js";import{s as y}from"./CodeLoadToProject-e55d7a84.js";import H from"./ColumnIndex-45b6b9b3.js";import{c as K}from"./code_generation_service-871fcbfb.js";import"./CodeGeneration-7ccf8f2f.js";import"./MdEditorShowCode-f810447b.js";const Q=u("\u67E5\u8BE2"),W=u("\u91CD\u7F6E"),X=u(" \u68C0\u7D22 "),Y=u(" \u540C\u6B65\u8868 "),Z=u(" \u63D0\u4EA4\u66F4\u6539 "),ee=u(" \u6279\u91CF\u5220\u9664 "),te=u(" \u4E0B\u8F7D\u6570\u636E\u5E93\u8868\u8BBE\u8BA1 "),ae=["onClick"],le=S("a",{class:"text-danger"},"\u5220\u9664",-1),ne={name:"LowCode"},me=Object.assign(ne,{setup(oe){const D=V(),t=F({table:{search:{state:!1,vm:{tableName:null,entityName:null,displayName:null}},loading:!1,pageSizeOptions:[10,20,50,100,500,1e3],rows:10,page:1,total:0,data:[]},visible:!1,row:{}}),U=k(null),w=k(null),z=k(null),g=D.getPowerByMenuId(J.currentRoute.value.meta.menuId),s={onChange(i){const{currentPage:a,pageSize:d}=i;t.table.page=a==0?1:a,t.table.rows=d,s.findList()},onResetSearch(){t.table.page=1;let i=t.table.search.vm;for(let a in i)i[a]=null;s.findList()},findList(){t.table.loading=!0,y.findList(t.table.rows,t.table.page,t.table.search.vm).then(i=>{let a=i.data;t.table.loading=!1,t.table.page=a.page,t.table.rows=a.size,t.table.total=a.total,t.table.data=a.dataSource})},deleteList(i){let a=[];i?a.push(i):a=w.value.getCheckboxRecords().map(d=>d.id),y.deleteList(a).then(d=>{d.code==1&&(N.message("\u5220\u9664\u6210\u529F!","\u6210\u529F"),s.findList())})},openForm(i){U.value.openForm({visible:!0,key:i})},synchronization(){y.synchronization().then(i=>{N.message("\u540C\u6B65\u6210\u529F!","\u6210\u529F"),s.findList()})},change(){console.log(t.table.data),y.change(t.table.data).then(i=>{N.message("\u6570\u636E\u53D8\u66F4\u6210\u529F!","\u6210\u529F"),s.findList()})},loadColumnIndex(i){t.visible=!0,t.row=i,G(()=>{z.value.loadData(i)})},createDataDictionary(){K.createDataDictionary()}};return M(()=>{s.findList()}),A(()=>t.visible,i=>{s.findList()}),(i,a)=>{const d=r("a-input"),f=r("a-col"),m=r("a-button"),L=r("a-row"),T=r("a-card"),b=r("a-popconfirm"),O=r("a-space"),c=r("vxe-column"),P=r("a-divider"),$=r("vxe-table"),I=r("vxe-pager"),B=r("a-spin"),R=r("a-drawer");return _(),j("div",null,[q(e(T,{class:"mb-15"},{default:l(()=>[e(L,{gutter:[15,15]},{default:l(()=>[e(f,{xs:24,sm:12,md:8,lg:6,xl:4},{default:l(()=>[e(d,{value:o(t).table.search.vm.tableName,"onUpdate:value":a[0]||(a[0]=n=>o(t).table.search.vm.tableName=n),placeholder:"\u8868\u540D\u79F0"},null,8,["value"])]),_:1}),e(f,{xs:24,sm:12,md:8,lg:6,xl:4},{default:l(()=>[e(d,{value:o(t).table.search.vm.entityName,"onUpdate:value":a[1]||(a[1]=n=>o(t).table.search.vm.entityName=n),placeholder:"\u5B9E\u4F53\u540D\u79F0"},null,8,["value"])]),_:1}),e(f,{xs:24,sm:12,md:8,lg:6,xl:4},{default:l(()=>[e(d,{value:o(t).table.search.vm.displayName,"onUpdate:value":a[2]||(a[2]=n=>o(t).table.search.vm.displayName=n),placeholder:"\u663E\u793A\u540D\u79F0"},null,8,["value"])]),_:1}),e(f,{xs:24,sm:12,md:8,lg:6,xl:4,style:{float:"right"}},{default:l(()=>[e(m,{type:"primary",class:"mr-15",onClick:s.findList},{default:l(()=>[Q]),_:1},8,["onClick"]),e(m,{class:"mr-15",onClick:s.onResetSearch},{default:l(()=>[W]),_:1},8,["onClick"])]),_:1})]),_:1})]),_:1},512),[[E,o(t).table.search.state]]),e(T,null,{default:l(()=>[e(L,{gutter:[15,15]},{default:l(()=>[e(f,{xs:24,sm:24,md:12,lg:12,xl:12},{default:l(()=>[e(O,{size:15},{default:l(()=>[o(g).search?(_(),h(m,{key:0,onClick:a[3]||(a[3]=n=>o(t).table.search.state=!o(t).table.search.state)},{icon:l(()=>[e(v,{name:o(t).table.search.state?"UpOutlined":"DownOutlined"},null,8,["name"])]),default:l(()=>[X]),_:1})):x("",!0),e(b,{title:"\u60A8\u786E\u5B9A\u8981\u66F4\u65B0\u8868\u5417?\u53EF\u80FD\u4F1A\u5BFC\u81F4\u6570\u636E\u4E22\u5931",onConfirm:a[4]||(a[4]=n=>s.synchronization()),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:l(()=>[e(m,{type:"primary"},{icon:l(()=>[e(v,{name:"ReloadOutlined"})]),default:l(()=>[Y]),_:1})]),_:1}),e(b,{title:"\u60A8\u786E\u5B9A\u8981\u63D0\u4EA4\u66F4\u6539?",onConfirm:a[5]||(a[5]=n=>s.change()),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:l(()=>[e(m,{type:"primary"},{icon:l(()=>[e(v,{name:"PlusOutlined"})]),default:l(()=>[Z]),_:1})]),_:1}),o(g).delete?(_(),h(b,{key:1,title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664\u5417?",onConfirm:a[6]||(a[6]=n=>s.deleteList()),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:l(()=>[e(m,{type:"danger"},{icon:l(()=>[e(v,{name:"DeleteOutlined"})]),default:l(()=>[ee]),_:1})]),_:1})):x("",!0),o(g).search?(_(),h(m,{key:2,onClick:a[7]||(a[7]=n=>s.createDataDictionary())},{icon:l(()=>[e(v,{name:"DownloadOutlined"})]),default:l(()=>[te]),_:1})):x("",!0)]),_:1})]),_:1}),e(f,{xs:24,sm:24,md:12,lg:12,xl:12,class:"text-right"})]),_:1}),e(B,{spinning:o(t).table.loading},{default:l(()=>[e($,{class:"mt-15",ref_key:"refTable",ref:w,size:"medium",border:"",stripe:"",data:o(t).table.data,"row-config":{isCurrent:!0,isHover:!0},"column-config":{isCurrent:!0,resizable:!0},"checkbox-config":{highlight:!0},"edit-config":{trigger:"click",mode:"cell"}},{default:l(()=>[e(c,{type:"seq",width:"60"}),e(c,{type:"checkbox",width:"60"}),e(c,{field:"tableName",title:"\u8868\u540D\u79F0"}),e(c,{field:"displayName",title:"\u663E\u793A\u540D\u79F0","edit-render":{}},{default:l(({row:n})=>[u(C(n.displayName),1)]),edit:l(({row:n})=>[e(d,{value:n.displayName,"onUpdate:value":p=>n.displayName=p,placeholder:"\u663E\u793A\u540D\u79F0"},null,8,["value","onUpdate:value"])]),_:1}),e(c,{field:"entityName",title:"\u5B9E\u4F53\u540D\u79F0","edit-render":{}},{default:l(({row:n})=>[u(C(n.entityName),1)]),edit:l(({row:n})=>[e(d,{value:n.entityName,"onUpdate:value":p=>n.entityName=p,placeholder:"\u5B9E\u4F53\u540D\u79F0"},null,8,["value","onUpdate:value"])]),_:1}),e(c,{field:"remark",title:"\u5907\u6CE8","edit-render":{}},{default:l(({row:n})=>[u(C(n.remark),1)]),edit:l(({row:n})=>[e(d,{value:n.remark,"onUpdate:value":p=>n.remark=p,placeholder:"\u5907\u6CE8"},null,8,["value","onUpdate:value"])]),_:1}),e(c,{field:"lastModificationTime",title:"\u66F4\u65B0\u65F6\u95F4",width:"120px"}),e(c,{field:"creationTime",title:"\u521B\u5EFA\u65F6\u95F4",width:"120px"}),e(c,{field:"id",title:"\u64CD\u4F5C",width:"120px"},{default:l(({row:n})=>[S("a",{href:"javascript:void(0)",onClick:p=>s.loadColumnIndex(n)}," \u914D\u7F6E ",8,ae),e(P,{type:"vertical"}),o(g).delete?(_(),h(b,{key:0,title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664\u5417?",onConfirm:p=>s.deleteList(n.id),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:l(()=>[le]),_:2},1032,["onConfirm"])):x("",!0)]),_:1})]),_:1},8,["data"]),e(I,{background:"","current-page":o(t).table.page,"onUpdate:current-page":a[8]||(a[8]=n=>o(t).table.page=n),"page-size":o(t).table.rows,"onUpdate:page-size":a[9]||(a[9]=n=>o(t).table.rows=n),total:o(t).table.total,"page-sizes":o(t).table.pageSizeOptions,layouts:["PrevJump","PrevPage","JumpNumber","NextPage","NextJump","Sizes","FullJump","Total"],onPageChange:s.onChange},null,8,["current-page","page-size","total","page-sizes","onPageChange"])]),_:1},8,["spinning"])]),_:1}),e(R,{width:"90%",title:"[ "+o(t).row.tableName+" - "+o(t).row.displayName+" ] \u914D\u7F6E",placement:"right",visible:o(t).visible,onClose:a[10]||(a[10]=n=>o(t).visible=!o(t).visible)},{default:l(()=>[e(H,{ref_key:"refColumnIndex",ref:z},null,512)]),_:1},8,["title","visible"])])}}});export{me as default};
