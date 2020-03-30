const Koa = require('koa');//导入一个class
const data = require('./data');
const groupData = require('./groupData');
// 注意require('koa-router')返回的是函数:
const router = require('koa-router')();
const bodyParser = require('koa-bodyparser');
const { findUserData, addUserData, addGroupGoods, addUser, addAcivity, getGroupSet,getGroupInfo } = require('./mysql');
const axios = require('axios');
var cors = require('koa2-cors');
const app = new Koa();//创建一个koa对象
app.use(bodyParser());
app.use(cors({
    origin: function (ctx) {
        return '*';
    },
    maxAge: 5,
    credentials: true,
    allowMethods: ['GET', 'POST', 'DELETE'],
    allowHeaders: ['Content-Type', 'Authorization', 'Accept'],
}));
// log request URL:
// 对于任何请求，app将调用该异步函数处理请求
app.use(async (ctx, next) => {
    console.log(`Process ${ctx.request.method} ${ctx.request.url}...`);
    await next();
});

// add url-route:
// router.get('/hello/:name', async (ctx, next) => {
//     var name = ctx.params.name;
//     try {
//         let res = await findUserData(name);
//         // res = await Promise.all([findUserData(name), addUserData(name)])
//         res = JSON.parse(JSON.stringify(res))[0];
//         // ctx.response.body = `<h1>email, ${res.email}!</h1><h1>registerdate, ${res.registerdate}!</h1>`;
//         ctx.response.body = JSON.stringify(res);
//     } catch{

//     }

// });

// add url-route:
// router.get('/json', async (ctx, next) => {
//     const json = { 1: 2, 3: 4 };
//     ctx.response.body = JSON.stringify(json);
// });
router.get('/goods', async (ctx, next) => {//获取普通商品
    try {
        let goodsList = await findUserData('goods');
        ctx.response.body = goodsList;
    } catch (error) {
        console.log('error')
    }
});
router.get('/groupgoods', async (ctx, next) => {//获取团购商品
    try {
        let goodsList = await findUserData('groupgoods');
        ctx.response.body = goodsList;
    } catch (error) {
        console.log('error')
    }
});
// router.get('/user', async (ctx, next) => {

//    try{
//     let user = [
//         ctx.query.openId,
//         ctx.query.nickName,
//         ctx.query.gender,
//         ctx.query.city
//        ]
//     addUser(user);

//     } catch (error){
//         console.log('error')
//     } 
//     ctx.response.body = ""
// });
router.post('/user', async (ctx, next) => {//存储用户数据
    try {
        let userData = ctx.request.body;
        let userArray = [];
        for (item in userData) {
            userArray.push(userData[item])
        }
        addUser(userArray);
    } catch (error) {
        console.log(error)
    }
    ctx.response.body = ""
})
router.post('/activity', async (ctx, next) => {//存储团购活动数据
    try {
        let actData = ctx.request.body.activity;
        let actArray = [];
        for (item in actData) {
            actArray.push(actData[item])
        }
        console.log(actArray)
        addAcivity(actArray);
    } catch (error) {
        console.log(error)
    }
    ctx.response.body = ""
})
router.get('/groupset', async (ctx, next) => {//发送团购设置,人数、时间等.
    try {
        let setData = await getGroupSet();
        ctx.response.body = setData;
    } catch (error) {
        console.log('error')
    }
})
router.post('/groupInfo',async (ctx,next) => {//发送团购数据信息
    let actNo = ctx.request.body.actNo;
    ctx.response.body =await getGroupInfo(actNo)
})
// add url-route:
// router.post('/hello/:name', async (ctx, next) => {
//     var name = ctx.params.name;
//     const hello = ctx.query.hello;
//     ctx.response.body = `<h1>Hello, ${name}!</h1><h1>Hello, ${hello}!</h1>`;
// });

router.get('/login', async (ctx, next) => {//获取openid标识用户身份
    var jsCode = ctx.query.jsCode;
    console.log(jsCode)
    const res = await axios({
        method: 'get',
        url: 'https://api.weixin.qq.com/sns/jscode2session',
        params: {
            appid: 'wx048d589b5ce0e86a',
            secret: '14ebcac52b6fe02e3b7a98a07f366f8a',
            js_code: jsCode,
            grant_type: 'authorization_code'
        }
    })
    ctx.response.body = res.data.openid;
});
// add router middleware:
app.use(router.routes());

app.listen(3000, '192.168.0.105');//3000端口监听
console.log('app started at port 3000...');
// data.data.forEach(item => {
//     addUserData([item.goods_id, item.goods_name, item.group_price, item.hd_thumb_url, item.hd_url, item.short_name]);
// });
// groupData.goodsList.forEach(item => {
//     addGroupGoods([item.goodsId, item.goodsName, item.minGroupPrice, item.minGroupPrice * 0.8, item.goodsImageUrl, item.goodsThumbnailUrl, item.goodsName, item.salesTip])
// });