const express=require("express");
const path=require("path");
const app=express();
app.get("/",(req,res)=>{
    res.sendFile(path.join(__dirname+"/sellerDashboard.html"));
})
app.get('/Sellers',function(req,res){
    res.sendFile(path.join(__dirname + '/sellers.html')); 
});
const server=app.listen(4006);
const portNumber=server.address().port;
console.log(`port is open on${portNumber}`);