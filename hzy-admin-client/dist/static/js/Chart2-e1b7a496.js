import{G as i}from"./index-a84978d8.js";import{r as l,o as u,k as f,c as h}from"./index-3c68c560.js";const m={id:"container2"},v={__name:"Chart2",setup(d){var t=null;const o=l([{item:"\u4E8B\u4F8B\u4E00",count:40,percent:.4},{item:"\u4E8B\u4F8B\u4E8C",count:21,percent:.21},{item:"\u4E8B\u4F8B\u4E09",count:17,percent:.17},{item:"\u4E8B\u4F8B\u56DB",count:13,percent:.13},{item:"\u4E8B\u4F8B\u4E94",count:9,percent:.09}]),c=()=>{t=new i({container:"container2",autoFit:!0,height:500}),t.data(o),t.coordinate("theta",{radius:.85}),t.scale("percent",{formatter:e=>(e=e*100+"%",e)}),t.tooltip({showTitle:!1,showMarkers:!1}),t.axis(!1);const r=t.interval().adjust("stack").position("percent").color("item").label("percent",{offset:-40,style:{textAlign:"center",shadowBlur:2,shadowColor:"rgba(0, 0, 0, .45)",fill:"#fff"}}).tooltip("item*percent",(e,a)=>(a=a*100+"%",{name:e,value:a})).style({lineWidth:1,stroke:"#fff"});t.interaction("element-single-selected"),t.render(),r.elements[0].setState("selected",!0)},n=()=>{for(var r=[],e=1;e<6;e++){var a=Math.floor(Math.random()*100),s=a/100;r.push({item:"\u793A\u4F8B "+e+Math.floor(Math.random()*5),count:a,percent:s})}t.changeData(r)};return u(()=>{c(),n(),setInterval(()=>n(),2e3)}),(r,e)=>(f(),h("div",m))}};export{v as default};
