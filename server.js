const express=require("express");
const path=require("path");
const app=express();
app.get("/Seller",(req,res)=>{
    res.sendFile(path.join(__dirname+"/sellerDashboard.html"));
})
app.get("/Buyer",(req,res)=>{
    res.sendFile(path.join(__dirname+"/buyerDashboard.html"));
})
app.get('/Sellers',function(req,res){
    res.sendFile(path.join(__dirname + '/sellers.html')); 
});
app.get('/Quotes',function(req,res){
    res.sendFile(path.join(__dirname + '/Quotes.html')); 
});
app.get('/',function(req,res){
    res.sendFile(path.join(__dirname + '/index.html')); 
});
app.get('/My_Requests',function(req,res){
    res.sendFile(path.join(__dirname + '/MyRequests.html')); 
});
app.get('/sellerMultiReqs',function(req,res){
    res.sendFile(path.join(__dirname + '/sellerMultiReqs.html')); 
});
app.get('/Login',function(req,res){
    res.sendFile(path.join(__dirname + '/Login.html')); 
});
const server=app.listen(6002);
const portNumber=server.address().port;
console.log(`port is open on${portNumber}`);