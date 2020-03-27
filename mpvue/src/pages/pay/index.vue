<template>
  <div id="pay" class="mask">
    <div class="fillTop"></div>
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
            <div class="goodsNum">X {{item.num}}</div>
          </div>
        </div>
      </li>
    </ul>
    <div class="picker" v-show="mask">
      <div class="x" @click="cancelPay">X</div>
      <div class="account">可期团购平台商户</div>
      <div class="rmb">￥{{totalPrice}}</div>
      <div class="method">
        <div class="text">支付方式</div>
        <div class="img">
          <image src="/static/others/bill.png" />
          <span class="bill">零钱></span>
        </div>
      </div>
      <div class="comfirm" @click="comfirmPay">确认支付</div>
    </div>
    <div class="over" v-show="mask"></div>
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
      <div class="pay" @click="payHandle">微信支付({{totalNum}})</div>
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
      name: "",
      mask: false
    };
  },
  methods: {
    goAddressEdit() {
      wx.navigateTo({
        url: "../address/main"
      });
    },
    payHandle() {
      if (!this.detailAddress) {
        wx.showToast({
          title: "请先填写地址",
          icon: "none",
          image: "",
          duration: 1500
        });
      } else {
        wx.showToast({
          title: "微信支付",
          icon: "loading",
          image: "",
          duration: 800
        });
        setTimeout(() => {
          this.mask = true;
        }, 1000);
      }
    },
    cancelPay() {
      this.mask = false;
    },
    comfirmPay(){
      wx.navigateTo(
        {
          url:"../paysuccess/main"
        }
      )
    }
  },
  onShow() {
    //购物车数据
    let cartData = wx.getStorageSync("cart") || [];
    let cutData = wx.getStorageSync("cart") || [];
    let totalNum = 0;
    let totalPrice = 0;
    cartData = cartData.filter(v => v.checked);
    this.cartData = cartData;
    this.cartData.forEach(v => {
      v.orderNo = parseInt(
        new Date().getTime() + Math.random() * 100000 * (Math.random() * 100000)
      );
      console.log(v.orderNo);
    });
    cartData.forEach(v => {
      totalNum += v.num;
      totalPrice += v.goods_price / 100.0 * v.num;
    });
    this.totalPrice = totalPrice.toFixed(2);
    this.totalNum = totalNum;
    //移除购物车的要生成订单的数据
    cutData = cutData.filter(v => v.checked == false);
    wx.setStorageSync("cart", cutData);
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
  padding: 0;
  margin: 0;
  #pay {
    width: 100%;
    height: 100%;
    div.fillTop {
      width: 100%;
      height: 20rpx;
    }
    .address {
      background-color: #fff;
      margin: 0 20rpx 20rpx 20rpx;
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
      .getAddress {
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
  .picker {
    position: fixed;
    z-index: 101;
    margin: auto;
    left: 0;
    top: 0;
    right: 0;
    bottom: 0;
    padding: 20rpx;
    width: 600rpx;
    height: 600rpx;
    background-color: #fff;
    border-radius: 20rpx;
    .x {
      color: #ccc;
      text-align: left;
      margin: 10rpx 0 10rpx 10rpx;
      font-size: 40rpx;
    }
    .account {
      text-align: center;
      margin: 30rpx 0;
      font-size: 36rpx;
      font-weight: 400;
    }
    .rmb {
      text-align: center;
      font-size: 50rpx;
      font-weight: 800;
      margin: 30rpx 0;
      padding: 20rpx 0;
    }
    .method {
      display: flex;
      margin: 30rpx 0;
      justify-content: space-between;
      padding-top: 20rpx;
      border-top: 1rpx solid #eee;
      line-height: 54rpx;
      height: 54rpx;
      .text {
        font-size: 30rpx;
        color: #444;
      }
      .img {
        display: flex;
        justify-content: right;
        image {
          width: 40rpx;
          height: 40rpx;
          margin-top: 7rpx;
          margin-right: 4rpx;
        }
        span.bill {
          font-size: 32rpx;
        }
      }
    }
    .comfirm {
      width: 300rpx;
      height: 80rpx;
      line-height: 80rpx;
      background-color: #08c163;
      text-align: center;
      color: #fff;
      border-radius: 10rpx;
      padding: 10rpx;
      margin: 50rpx auto;
    }
  }
  .over {
    width: 100%;
    height: 100%;
    position: absolute;
    background-color: #000;
    left: 0;
    top: 0;
    opacity: 0.7;
    z-index: 100;
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
      color: #fff;
      font-weight: bold;
    }
  }
}
</style>