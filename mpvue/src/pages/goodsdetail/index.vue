<template>
  <div id="goodsdetail">
    <ul>
      <li class="img">
        <img :src="goodsItem.goods_detailurl" alt="">
      </li>
      <li class="info">
        <div class="header">
          <div class="price">￥{{price}}</div>
          <div class="share">
            <button plain="true" open-type="share">
              <img src="/static/others/share.png" alt="">
            </button>
            <div>分享</div>
            
          </div>
        </div>
        <div class="name">{{goodsItem.goods_name}}</div>
      </li>
      <li class="selected">已选1件</li>
      <li class="address">江西省南昌市昌北区蛟桥镇</li>
    </ul>
    <div class="buy">
      <div class="left">
        <img src="/static/others/contact.png" alt="">
        <div>联系客服</div>
      </div>
      <div class="right">
        <img src="/static/others/cart.png" alt="">
        <div>购物车</div>
      </div>
      <div class="add">加入购物车</div>
      <div class="imbuy">立即购买</div>
    </div>
  </div>
</template>

<script>

export default {
  data () {
    return {
      goodsItem:{}
  
    }
  },
  mounted(){
    this.goodsItem = JSON.parse(this.$mp.query.goodsData);
    console.log(this.goodsItem)
  },
  computed:{
    price(){
      return (this.goodsItem.goods_price/100).toFixed(2)
    }
  },
  onShareAppMessage(){
    return{
      title: this.goodsItem.goods_name,
      path: '/pages/goodsdetail/main'
    }
  }
}
    
</script>

<style scoped lang="scss">
#goodsdetail{
  ul{
    display: flex;
    flex-direction: column;
    flex-wrap: wrap;
    li.img{
      width: 100%;
      img{
        width: 100%;
      }
    }
    li.info{
      height: 250rpx;
      border-top: 2rpx solid #ccc;
      background-color: #f3f3f3;
      margin-top: 10rpx;
      .header{
        display: flex;
        justify-content: space-between;
        align-items: center;
        height: 160rpx;
        margin-top: 10rpx;
        .price{
          color: #ff2741;
          font-size: 40rpx;
          margin-left: 30rpx; 
        }
        .share{
          font-size: 20rpx;
          margin-right: 20rpx;
          margin-bottom: 50rpx;
          button[plain]{
            border: 0;
            margin: 10rpx;
            height: 60rpx;
            padding: 0;
             img{
              width:36rpx;
              height: 36rpx;
            }
          } 
          div{
            text-align: center;
          }
        }
      }
      .name{
        background-color: #f3f3f3;
        font-size: 30rpx;
        height: 80rpx;
        border-bottom: 2rpx solid #ccc;
        
      }
    }
    li.selected{
      height: 60rpx;
      margin: 20rpx 0 10rpx 0;
      background-color: #f3f3f3;
      line-height: 60rpx;
      border-top: 2rpx solid #ccc;
      border-bottom: 2rpx solid #ccc;
      font-size: 30rpx;
    }
    li.address{
      height: 60rpx;
      margin: 10rpx 0;
      background-color: #f3f3f3;
      line-height: 60rpx;
      border-top: 2rpx solid #ccc;
      border-bottom: 2rpx solid #ccc;
      font-size: 30rpx;
    }
  }
  .buy{
    height: 100rpx;
    display: flex;
    .right,.left{
       font-size: 20rpx;
        height: 100rpx;
        width: 15%;
        border-top: 2rpx solid #aaa;
        border-bottom: 2rpx solid #aaa;
        box-sizing: border-box;
        display: flex;
        flex-direction: column;
        justify-content: center;
          img{
          width:36rpx;
          height: 36rpx;
          margin-left: 32rpx;
        }
        div{
          text-align: center;
        }
    }
    .add{
      width: 35%;
      background-color: #f40;
      height: 100rpx;
      text-align: center;
      line-height: 100rpx;
      color: #fff;
    }
    .imbuy{
      width: 35%;
      background-color: #f00;
      height: 100rpx;
      text-align: center;
      line-height: 100rpx;
      color: #fff;
    }
  }
}
</style>
