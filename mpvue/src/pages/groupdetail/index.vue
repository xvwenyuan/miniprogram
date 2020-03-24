<template>
  <div class="groupDetail">
    <div class="img">
      <image :src="goodsData.groupgoods_detailurl" class="image" />
    </div>
    <div class="price">
      <div class="headers">
        <div class="left">
          ￥{{groupPrice}}
          <div class="peoplegroup">4人团</div>
        </div>
        <div class="right">已拼{{goodsData.groupgoods_sale}}件</div>
      </div>
      <div class="footers">￥{{originalPrice}}</div>
    </div>
    <div class="desc">
      <p class="goodsDesc">{{goodsData.groupgoods_desc}}</p>

      <div class="collect">
        <image src="/static/groupdetail/collect.png" />
        <div>收藏</div>
      </div>
      <div class="share">
        <button open-type="share" plain="true"><image src="/static/groupdetail/share.png" /></button>
        <div>分享</div>
      </div>
    </div>
    <div class="groupInfo">
      <div class="text">直接参与可快速成团</div>
      <div class="joinGroup">
        1231231241
        <button>立即参团</button>
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

    <div class="bottomBtn">
      <div class="home">
        <image src="/static/groupdetail/home.png" />
        <div>首页</div>
      </div>
      <div class="twoBtn">
        <div class="single">
          <div class="singleTop">￥{{originalPrice}}</div>
          <div class="singleBottom">单独购买</div>
        </div>
        <div class="startGroup">
          <div class="groupTop">￥{{groupPrice}}</div>
          <div class="groupBottom">我要开团</div>
        </div>
      </div>
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
    console.log(this.goodsData);
  },
  computed:{
    originalPrice(){
      return (this.goodsData.groupgoods_originalprice / 1000).toFixed(2);
    },
    groupPrice(){
      return (this.goodsData.groupgoods_groupbuyprice / 1000).toFixed(2);
    }
  },
  onShareAppMessage() {
    return {
      title: this.goodsData.groupgoods_name,
      path: "/pages/groupdetail/main"
    };
  }
};
</script>

<style scoped lang="scss">
div.groupDetail {
  background-color: #f3f3f3;
  width: 100%;
  div.img {
    width: 100%;
    .image {
      height: 560rpx;
      width: 100%;
      font-size: 0;
    }
  }
  div.price {
    width: 100%;
    height: 120rpx;
    background-color: #f40;
    .headers {
      display: flex;
      height: 70rpx;
      justify-content: space-between;
      .left {
        color: #fff;
        height: 70rpx;
        line-height: 70rpx;
        display: flex;
        align-items: center;
        margin-left: 20rpx;
        font-size: 32rpx;
        .peoplegroup {
          background-color: #fff;
          color: #f40;
          font-size: 20rpx;
          border: 1px solid #fff;
          display: inline-block;
          line-height: normal;
          height: 30rpx;
          border-radius: 5rpx;
          margin: 0 20rpx;
          padding: 5rpx;
        }
      }
      .right {
        color: #fff;
        height: 70rpx;
        line-height: 70rpx;
        font-size: 26rpx;
        margin-right: 20rpx;
      }
    }
    .footers {
      height: 50rpx;
      font-size: 30rpx;
      line-height: 50rpx;
      text-decoration: line-through;
      color: #aaa;
      margin-left: 20rpx;
    }
  }
  div.desc {
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
        margin: 10rpx 0 6rpx 0;
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
        height: 7 0rpx;
        image {
          width: 50rpx;
          height: 50rpx;
        }
      }
      div {
        font-size: 24rpx;
      }
    }
  }
  div.groupInfo {
    background-color: #fff;
    margin: 10rpx 0;
    padding: 10rpx;
    .text {
      font-size: 26rpx;
      line-height: 40rpx;
      height: 40rpx;
      border-bottom: 4rpx solid #f3f3f3;
      color: #555;
    }
    .joinGroup {
      height: 80rpx;
      button {
        margin: 15rpx 0;
        font-size: 24rpx;
        width: 160rpx;
        height: 50rpx;
        line-height: 50rpx;
        border-radius: 10rpx;
        color: #fff;
        background-color: #f30;
        float: right;
      }
    }
  }
  .address {
    margin: 10rpx 0;
    height: 40rpx;
    width: 100%;
    background-color: #fff;
  }
  .bottomBtn {
    position: fixed;
    bottom: 0;
    height: 20rpx;
    height: 100rpx;
    width: 100%;
    display: flex;
    justify-content: space-between;
    background-color: #fff;
    // z-index: 999;

    .home {
      margin: 0 25rpx;
      width: 50rpx;
      height: 100rpx;
      image {
        width: 50rpx;
        height: 50rpx;
      }
      div {
        width: 50rpx;
        height: 50rpx;
        font-size: 20rpx;
        text-align: center;
      }
    }
    .twoBtn {
      font-size: 30rpx;
      width: 600rpx;
      display: flex;
      margin: 0 25rpx;
      justify-content: space-between;
      color: #fff;
      .single {
        width: 50%;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        background-color: rgba(255, 0, 0, 0.5);
        border-radius: 20rpx 0 0 20rpx;
        
      }
      .startGroup {
        width: 50%;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        background-color: #f00;
        border-radius: 0 20rpx 20rpx 0;
       
      }
    }
  }
}
</style>
