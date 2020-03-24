<template>
  <div id="pay">
    <div class="address">
      <div class="img">
        <image src="/static/others/address.png" />
      </div>
      <div class="right" v-if="region.length!==0||detailAddress!=''" @click="goAddressEdit">
        <div class="top">
          <div class="name">{{name}}</div>
          <div class="tel">{{tel}}</div>
        </div>
        <div class="totalAddress">{{region[0]}}{{region[1]}}{{region[2]}} {{detailAddress}}</div>
      </div>
      <div class="getAddress" v-else @click="goAddressEdit">编辑地址</div>
    </div>
    <ul v-if="cartData.length!==0">
      <li class="goods" v-for="item in cartData" :key="item.goods_id">
        <image class="img" :src="item.goods_url" />
        <div class="goodsInfo">
          <div class="desc">{{item.goods_desc}}</div>
          <div class="numTool">
            <div class="price">￥{{item.goods_price/100}}</div>
            <div class="goodsNum">X  {{item.num}}</div>
          </div>
        </div>
      </li>
    </ul>
    <div class="fill"></div>
    <div class="total">
      <div class="sum">
        <div class="header">
          合计：
          <span class="price">￥{{totalPrice}}</span>
        </div>
        <div class="footer">免运费</div>
      </div>
      <div class="sum"></div>
      <div class="pay">支付({{totalNum}})</div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      cartData: [],
      totalNum: 0,
      totalPrice: 0,
      region: [],
      detailAddress: "",
      tel: "",
      name: ""
    };
  },
  methods:{
    goAddressEdit(){
      wx.navigateTo({
        url: '../address/main'
      });
    }
  },
  onShow() {
    //购物车数据
    let cartData = wx.getStorageSync("cart") || [];
    console.log(wx.getStorageSync("cart") || [])
    let totalNum = 0;
    let totalPrice = 0;
    cartData = cartData.filter(v => v.checked);
    this.cartData = cartData;
    cartData.forEach(v => {
      totalNum += v.num;
      totalPrice += v.goods_price / 100.0 * v.num;
    });
    this.totalPrice = totalPrice;
    this.totalNum = totalNum;
    //地址数据
    let addressData = wx.getStorageSync("address") || [];
    let detailAddressData = wx.getStorageSync("detailAddress") || "";
    let name = wx.getStorageSync("name") || "";
    let tel = wx.getStorageSync("tel") || "";
    this.region = addressData;
    this.detailAddress = detailAddressData;
    this.name = name;
    this.tel = tel;
  }
};
</script>

<style lang="scss">
page {
  width: 100%;
  height: 100%;
  background-color: #f3f3f3;
  #pay {
    .address {
      background-color: #fff;
      margin: 20rpx;
      border-radius: 20rpx;
      display: flex;
      .img {
        flex: 1;
        margin: 30rpx 20rpx 20rpx 20rpx;
        image {
          width: 80%;
          height: 80%;
        }
      }
      .right {
        flex: 5;
        padding: 5rpx;
        height: 160rpx;
        .top {
          display: flex;
          margin-bottom: 10rpx;
          .name {
          }
          .tel {
            font-size: 28rpx;
            color: #333;
            margin-left: 20rpx;
            margin-top: 5rpx;
          }
        }
        .totalAddress {
          font-size: 30rpx;
        }
      }
      .getAddress{
        flex: 5;
        height: 160rpx;
        line-height: 160rpx;
        text-align: center;
        font-weight: bold;
      }
    }
  }
  ul {
    li.goods {
      border-radius: 20rpx;
      width: 90%;
      background: #fff;
      padding: 10rpx;
      justify-content: center;
      align-items: center;
      margin: 20rpx auto;
      height: 200rpx;
      display: flex;
      image.img {
        flex: 3;
        width: 80%;
        height: 80%;
      }
      div.goodsInfo {
        flex: 5;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        margin-left: 10rpx;
        div.desc {
          font-size: 28rpx;
          display: -webkit-box;
          -webkit-line-clamp: 2;
          -webkit-box-orient: vertical;
          overflow: hidden;
          margin-bottom: 40rpx;
        }
        div.numTool {
          display: flex;
          justify-content: space-around;
          div.price {
            color: #f40;
            font-weight: bold;
          }
          div.goodsNum {
            font-weight: bold;
            text-align: center;
          }
        }
      }
    }
  }
  div.blank {
    font-weight: bold;
    image {
      width: 100%;
    }
  }
  div.fill {
    width: 100%;
    height: 100rpx;
  }
  div.total {
    position: fixed;
    bottom: 0;
    display: flex;
    justify-content: space-around;
    align-items: center;
    width: 100%;
    height: 100rpx;
    background-color: #fff;
    .sum {
      div.header {
        span.price {
          font-size: 34rpx;
          color: #f40;
          font-weight: bold;
        }
      }
      div.footer {
        background-color: #fff;
        color: #f40;
        font-size: 20rpx;
        border: 1px solid #fff;
        display: inline-block;
        line-height: 30rpx;
        height: 30rpx;
        border-radius: 5rpx;
        margin-left: 130rpx;
        padding: 5rpx;
        border: 2rpx solid #f40;
      }
    }
    div.pay {
      width: 220rpx;
      height: 100rpx;
      border-radius: 20rpx;
      background-color: #f40;
      text-align: center;
      line-height: 100rpx;
      font-weight: bold;
    }
  }
}
</style>