var B=Object.defineProperty,R=Object.defineProperties;var V=Object.getOwnPropertyDescriptors;var L=Object.getOwnPropertySymbols;var J=Object.prototype.hasOwnProperty,U=Object.prototype.propertyIsEnumerable;var z=(t,e,s)=>e in t?B(t,e,{enumerable:!0,configurable:!0,writable:!0,value:s}):t[e]=s,h=(t,e)=>{for(var s in e||(e={}))J.call(e,s)&&z(t,s,e[s]);if(L)for(var s of L(e))U.call(e,s)&&z(t,s,e[s]);return t},S=(t,e)=>R(t,V(e));import{d as x,h as D,r as I,v as M,t as j,i,o as p,p as _,A as q,B as E,l as a,j as o,c as b,e as f,q as c,k as H}from"./vendor-73d99709.js";import{_ as G,A as K,u as Q,r as W,t as X}from"./index-f2a5d0fa.js";import{I as Y,s as T}from"./Info-4cbc02e5.js";const Z=x({name:"system_function",components:{AppIcons:K,Info:Y},setup(){const t=Q(),e=D({table:{search:{state:!1,vm:{name:null}},loading:!1,pageSizeOptions:[10,20,50,100,500,1e3],rows:10,page:1,total:0,data:[]}}),s=I(null),v=I(null),k=t.getPowerByMenuId(W.currentRoute.value.meta.menuId),u={onChange(l){const{currentPage:n,pageSize:r}=l;e.table.page=n==0?1:n,e.table.rows=r,u.findList()},onResetSearch(){e.table.page=1;let l=e.table.search.vm;for(let n in l)l[n]=null;u.findList()},findList(){e.table.loading=!0,T.findList(e.table.rows,e.table.page,e.table.search.vm).then(l=>{let n=l.data;e.table.loading=!1,e.table.page=n.page,e.table.rows=n.size,e.table.total=n.total,e.table.data=n.dataSource})},deleteList(l){let n=[];l?n.push(l):n=v.value.getCheckboxRecords().map(r=>r.id),T.deleteList(n).then(r=>{r.code==1&&(X.message("\u5220\u9664\u6210\u529F!","\u6210\u529F"),u.findList())})},openForm(l){s.value.openForm({visible:!0,key:l})}};return M(()=>{u.findList()}),S(h(h({},j(e)),u),{power:k,refForm:s,refTable:v})}}),ee={class:"p-24"},te=c("\u67E5\u8BE2"),ae=c("\u91CD\u7F6E"),oe={key:0},ne=c("\xA0\xA0\u6536\u8D77"),se={key:1},le=c("\xA0\xA0\u5C55\u5F00"),ie=c(" \u65B0\u5EFA "),re=c(" \u6279\u91CF\u5220\u9664 "),de=["onClick"],pe=H("a",{class:"text-danger"},"\u5220\u9664",-1);function me(t,e,s,v,k,u){const l=i("a-input"),n=i("a-col"),r=i("a-button"),y=i("a-row"),w=i("a-card"),g=i("AppIcons"),C=i("a-popconfirm"),m=i("vxe-column"),P=i("a-divider"),$=i("vxe-table"),N=i("vxe-pager"),F=i("a-spin"),O=i("Info");return p(),_("div",ee,[q(a(w,{class:"mb-24"},{default:o(()=>[a(y,{gutter:[24,24]},{default:o(()=>[a(n,{xs:24,sm:12,md:8,lg:6,xl:4},{default:o(()=>[a(l,{value:t.table.search.vm.name,"onUpdate:value":e[0]||(e[0]=d=>t.table.search.vm.name=d),placeholder:"\u540D\u79F0"},null,8,["value"])]),_:1}),a(n,{xs:24,sm:12,md:8,lg:6,xl:4,style:{float:"right"}},{default:o(()=>[a(r,{type:"primary",class:"mr-24",onClick:t.findList},{default:o(()=>[te]),_:1},8,["onClick"]),a(r,{class:"mr-24",onClick:t.onResetSearch},{default:o(()=>[ae]),_:1},8,["onClick"])]),_:1})]),_:1})]),_:1},512),[[E,t.table.search.state]]),a(w,null,{default:o(()=>[a(y,{gutter:[24,24]},{default:o(()=>[a(n,{xs:24,sm:24,md:12,lg:12,xl:12},{default:o(()=>[t.power.search?(p(),b(r,{key:0,class:"mr-24",onClick:e[1]||(e[1]=d=>t.table.search.state=!t.table.search.state)},{default:o(()=>[t.table.search.state?(p(),_("div",oe,[a(g,{name:"UpOutlined"}),ne])):(p(),_("div",se,[a(g,{name:"DownOutlined"}),le]))]),_:1})):f("",!0),t.power.insert?(p(),b(r,{key:1,type:"primary",class:"mr-24",onClick:e[2]||(e[2]=d=>t.openForm())},{icon:o(()=>[a(g,{name:"PlusOutlined"})]),default:o(()=>[ie]),_:1})):f("",!0),t.power.delete?(p(),b(C,{key:2,title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664\u5417?",onConfirm:e[3]||(e[3]=d=>t.deleteList()),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:o(()=>[a(r,{type:"danger",class:"mr-24"},{icon:o(()=>[a(g,{name:"DeleteOutlined"})]),default:o(()=>[re]),_:1})]),_:1})):f("",!0)]),_:1}),a(n,{xs:24,sm:24,md:12,lg:12,xl:12,class:"text-right"})]),_:1}),a(F,{spinning:t.table.loading},{default:o(()=>[a($,{class:"mt-24",ref:"refTable",resizable:"",data:t.table.data,"row-config":{isHover:!0}},{default:o(()=>[a(m,{type:"checkbox",width:"60"}),a(m,{field:"number",title:"\u7F16\u53F7"}),a(m,{field:"name",title:"\u540D\u79F0"}),a(m,{field:"byName",title:"\u82F1\u6587\u540D\u79F0"}),a(m,{field:"lastModificationTime",title:"\u66F4\u65B0\u65F6\u95F4"}),a(m,{field:"creationTime",title:"\u521B\u5EFA\u65F6\u95F4"}),a(m,{field:"id",title:"\u64CD\u4F5C"},{default:o(({row:d})=>[t.power.update?(p(),_("a",{key:0,href:"javascript:void(0)",onClick:A=>t.openForm(d.id)},"\u7F16\u8F91",8,de)):f("",!0),a(P,{type:"vertical"}),t.power.delete?(p(),b(C,{key:1,title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664\u5417?",onConfirm:A=>t.deleteList(d.id),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:o(()=>[pe]),_:2},1032,["onConfirm"])):f("",!0)]),_:1})]),_:1},8,["data"]),a(N,{class:"mt-24",background:"","current-page":t.table.page,"onUpdate:current-page":e[4]||(e[4]=d=>t.table.page=d),"page-size":t.table.rows,"onUpdate:page-size":e[5]||(e[5]=d=>t.table.rows=d),total:t.table.total,"page-sizes":t.table.pageSizeOptions,layouts:["PrevJump","PrevPage","JumpNumber","NextPage","NextJump","Sizes","FullJump","Total"],onPageChange:t.onChange},null,8,["current-page","page-size","total","page-sizes","onPageChange"])]),_:1},8,["spinning"])]),_:1}),a(O,{ref:"refForm",onOnSuccess:e[6]||(e[6]=()=>t.findList())},null,512)])}var _e=G(Z,[["render",me]]);export{_e as default};
