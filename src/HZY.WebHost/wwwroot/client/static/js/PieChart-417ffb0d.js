var d=Object.defineProperty;var c=Object.getOwnPropertySymbols;var h=Object.prototype.hasOwnProperty,u=Object.prototype.propertyIsEnumerable;var o=(e,t,a)=>t in e?d(e,t,{enumerable:!0,configurable:!0,writable:!0,value:a}):e[t]=a,i=(e,t)=>{for(var a in t||(t={}))h.call(t,a)&&o(e,a,t[a]);if(c)for(var a of c(t))u.call(t,a)&&o(e,a,t[a]);return e};import{C as l}from"./index-740a892a.js";import{_ as p,y as f,r as m,K as s,o as b,I as j,z as O,j as _,d as g}from"./index-24817123.js";import"./index-68ae8ebb.js";const y=f({name:"LineChartSingle",props:{id:{type:String,default(){return new Date().getTime()+"_"+Math.floor(Math.random()*1e3)}},data:Array,height:{type:Number,default(){return 500}},valueAlias:String},setup(e){const t=m({id:s(()=>e.id),chartObject:null,data:s(()=>e.data)}),a=()=>{t.chartObject=new l({container:t.id,autoFit:!0,height:e.height}),t.chartObject.coordinate("theta",{radius:.75}),t.chartObject.scale("percent",{formatter:r=>(r=(r*100).toFixed(2)+"%",r)}),t.chartObject.tooltip({showTitle:!1,showMarkers:!1}),t.chartObject.interval().position("percent").color("type").label("percent",{content:r=>`${r.type}: ${(r.percent*100).toFixed(2)}%`}).adjust("stack"),t.chartObject.interaction("element-active")},n=r=>{!t.chartObject||(t.chartObject.annotation().clear(!0),t.chartObject.data(r),t.chartObject.render())};return b(()=>{a(),n(t.data)}),j(t.data,r=>{n(r)}),i({},O(t))}}),$=["id"];function w(e,t,a,n,r,C){return _(),g("div",{id:e.id},null,8,$)}var F=p(y,[["render",w]]);export{F as default};
