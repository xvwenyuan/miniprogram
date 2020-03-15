<template>
  <div id="goodsdetail">
    <div class="img">
      <image :src="goodsData.goods_detailurl" />
    </div>
    <div class="price">￥{{price}}</div>
    <div class="desc">
      <p class="goodsDesc">{{goodsData.goods_desc}}</p>

      <div class="collect">
        <image src="/static/groupdetail/collect.png" />
        <div>收藏</div>
      </div>
      <div class="share">
        <button open-type="share" plain="true" type="primary" style="width:50rpx height:50rpx">
          <image src="/static/groupdetail/share.png" />
        </button>

        <div>分享</div>
      </div>
    </div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="address">送至江西南昌蛟桥镇 ></div>
    <div class="buy">
      <div class="left">
        <img src="/static/goodsdetail/home.png" />
        <div>首页</div>
      </div>
      <div class="right">
        <image src="/static/goodsdetail/cart.png" />
        <div>购物车</div>
      </div>
      <div class="add">加入购物车</div>
      <div class="imbuy">立即购买</div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      goodsData: {}
    };
  },
  mounted() {
    this.goodsData = JSON.parse(this.$mp.query.goodsData);
  },
  computed: {
    price() {
      return (this.goodsData.goods_price / 100).toFixed(2);
    }
  },
  onShareAppMessage() {
    return {
      title: this.goodsData.goods_name,
      path: "/pages/goodsdetail/main"
    };
  }
};
</script>

<style scoped lang="scss">
#goodsdetail {
  background-color: #f3f3f3;
  .img {
    width: 100%;
    image {
      width: 100%;
    }
  }
  .price {
    width: 100%;
    height: 80rpx;
    background-color: #f40;
    color: #fff;
    font-weight: bold;
    font-size: 40rpx;
    line-height: 80rpx;
    padding-left: 40rpx;
  }
  div.desc {
    margin: 20rpx 0;
    background-color: #fff;
    padding: 10rpx;
    display: flex;
    p {
      font-size: 30rpx;
      font-weight: bold;
    }
    div.collect {
      div {
        font-size: 24rpx;
      }
      image {
        width: 50rpx;
        height: 50rpx;
      }
    }
    div.share {
      margin: 0 20rpx;
      color: #444;
      button[plain] {
        border: 0;
        padding: 0;
        margin: 0;
        width: 50rpx;
        height: 70rpx;
          image{
            width: 50rpx;
            height: 50rpx;
          }
      }
      div {
        font-size: 24rpx;
        margin: 5rpx 0;
      }
    }
  }
  .address {
    margin: 10rpx 0;
    height: 40rpx;
    width: 100%;
    background-color: #fff;
  }
  .buy {
    background-color: #fff;
    width: 100%;
    position: fixed;
    bottom: 0;
    height: 100rpx;
    display: flex;
    .right,
    .left {
      font-size: 20rpx;
      height: 100rpx;
      width: 15%;
      border-top: 2rpx solid #aaa;
      border-bottom: 2rpx solid #aaa;
      box-sizing: border-box;
      display: flex;
      flex-direction: column;
      justify-content: center;
      image {
        width: 36rpx;
        height: 36rpx;
        margin-left: 38rpx;
      }
      div {
        text-align: center;
      }
    }
    .add {
      width: 35%;
      background-color: #f40;
      height: 100rpx;
      text-align: center;
      line-height: 100rpx;
      color: #fff;
    }
    .imbuy {
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
