import{s as r}from"./monitor_ef_core_service-d8b14f0f.js";import{_ as f,a,v as i,k as h,c as d,d as o,e,l as u,m as p}from"./index-3c68c560.js";const s=c=>(u("data-v-10f7d68c"),c=c(),p(),c),C={class:"context"},v={class:"panel-color-1 text-center"},x=s(()=>o("h2",{style:{color:"#fff"}},"\u6570\u636E\u8FDE\u63A5\u6253\u5F00\u6570",-1)),y={style:{color:"#fff"}},m={class:"panel-color-2 text-center"},F=s(()=>o("h2",{style:{color:"#fff"}},"\u6570\u636E\u8FDE\u63A5\u65AD\u5F00\u6570",-1)),g={style:{color:"#fff"}},I={class:"panel-color-3 text-center"},B=s(()=>o("h2",{style:{color:"#fff"}},"\u8FDE\u63A5\u5931\u8D25\u6570\u91CF",-1)),E={style:{color:"#fff"}},k={class:"panel-color-4 text-center"},M=s(()=>o("h2",{style:{color:"#fff"}},"\u521B\u5EFA\u547D\u4EE4\u6570",-1)),S={style:{color:"#fff"}},b={class:"panel-color-5 text-center"},D=s(()=>o("h2",{style:{color:"#fff"}},"\u6267\u884C\u547D\u4EE4\u6570",-1)),T={style:{color:"#fff"}},w={class:"panel-color-6 text-center"},N=s(()=>o("h2",{style:{color:"#fff"}},"\u547D\u4EE4\u6267\u884C\u5931\u8D25\u6570\u91CF",-1)),U={style:{color:"#fff"}},V={class:"panel-color-7 text-center"},j=s(()=>o("h2",{style:{color:"#fff"}},"\u521B\u5EFA\u4E8B\u52A1\u6570",-1)),q={style:{color:"#fff"}},z={class:"panel-color-8 text-center"},A=s(()=>o("h2",{style:{color:"#fff"}},"\u63D0\u4EA4\u4E8B\u52A1\u6570",-1)),G={style:{color:"#fff"}},H={class:"panel-color-9 text-center"},J=s(()=>o("h2",{style:{color:"#fff"}},"\u56DE\u6EDA\u4E8B\u52A1\u6570",-1)),K={style:{color:"#fff"}},L={class:"panel-color-10 text-center"},O=s(()=>o("h2",{style:{color:"#fff"}},"\u4E8B\u52A1\u5931\u8D25\u6570",-1)),P={style:{color:"#fff"}},Q={__name:"Context",setup(c){const t=a({}),l={getEFCoreMonitorContext(){r.getEFCoreMonitorContext().then(_=>{t.value=_.data})}};l.getEFCoreMonitorContext();let n=a(null);return n.value=setInterval(()=>{l.getEFCoreMonitorContext()},10*1e3),i(()=>{clearInterval(n.value)}),(_,R)=>(h(),d("div",C,[o("ul",null,[o("li",v,[x,o("h2",y,e(t.value.openDbConnectionCount),1)]),o("li",m,[F,o("h2",g,e(t.value.closeDbConnectionCount),1)]),o("li",I,[B,o("h2",E,e(t.value.connectionFailedCount),1)]),o("li",k,[M,o("h2",S,e(t.value.createCommandCount),1)]),o("li",b,[D,o("h2",T,e(t.value.executeCommandCount),1)])]),o("ul",null,[o("li",w,[N,o("h2",U,e(t.value.commandFailedCount),1)]),o("li",V,[j,o("h2",q,e(t.value.createTransactionCount),1)]),o("li",z,[A,o("h2",G,e(t.value.submitTransactionCount),1)]),o("li",H,[J,o("h2",K,e(t.value.rollBackCount),1)]),o("li",L,[O,o("h2",P,e(t.value.transactionFailedCount),1)])])]))}};var Y=f(Q,[["__scopeId","data-v-10f7d68c"]]);export{Y as default};
