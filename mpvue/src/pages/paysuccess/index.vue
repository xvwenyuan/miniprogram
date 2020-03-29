<template>
  <div id="paySuccess">
    <icon class="sucIcon" type="success" size="30"></icon>
    <div class="successText">支付成功</div>
    <div class="successAc">可期团购平台商户</div>
    <div class="payMoney">￥{{totalPrice}}</div>
    <div class="return" @click="returnHome" v-if="!group">返回商家</div>
    <div class="invite" @click="returnGroup" v-else>邀请好友拼团</div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      totalPrice: 0,
      group: false
    };
  },
  methods: {
    returnHome() {
      wx.switchTab({
        url: "../home/main"
      });
    },
    returnGroup() {
      wx.navigateTo({
        url: "../assemble/main"
      });
    }
  },
  onShow() {
    this.totalPrice = JSON.parse(this.$mp.query.totalPrice);
    let flag = this.$mp.query.group;
    console.log(flag)
    if (flag === 'true') {
      this.group = true;
    } else {
      this.group = false;
    }
  }
};
</script>

<style lang="scss">
page {
  width: 100%;
  height: 100%;
  position: relative;
  div#paySuccess {
    width: 100%;
    height: 100%;
    display: flex;
    align-items: center;
    flex-direction: column;
    .sucIcon {
      margin: 100rpx 0 30rpx 0;
    }
    div.successText {
      text-align: center;
      color: #08c163;
      font-weight: bold;
      font-size: 40rpx;
    }

    div.successAc {
      font-size: 40rpx;
      text-align: center;
      margin: 100rpx 0 30rpx 0;
    }

    div.payMoney {
      font-size: 100rpx;
      height: 100rpx;
      font-weight: 800;
      text-align: center;
    }

    div.return {
      position: absolute;
      bottom: 10rpx;
      color: #05c160;
      width: 400rpx;
      text-align: center;
      line-height: 100rpx;
      height: 100rpx;
      background-color: #eee;
      font-weight: bold;
      border-radius: 10rpx;
    }
    div.invite {
      position: absolute;
      bottom: 10rpx;
      color: #fff;
      width: 400rpx;
      text-align: center;
      line-height: 100rpx;
      height: 100rpx;
      background-color: #f00;
      font-weight: bold;
      border-radius: 10rpx;
    }
  }
}
</style>