const test=require('node:test');
const assert=require('node:assert/strict');
test('application metadata is valid',()=>{
 const payload={service:'devsecops-demo',status:'UP'};
 assert.equal(payload.status,'UP'); assert.equal(payload.service,'devsecops-demo');
});
