const http=require('http');
const port=Number(process.env.PORT||3000);
const server=http.createServer((req,res)=>{
 if(req.url==='/health')return res.end(JSON.stringify({status:'UP'}));
 res.end(JSON.stringify({service:'devsecops-demo',version:process.env.APP_VERSION||'local'}));
});
server.listen(port,'0.0.0.0');
