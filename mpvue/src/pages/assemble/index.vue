<template>
  <div id="assemble">
    <div class="body">
      <div class="goodsInfo">
        <image
          src="https://t00img.yangkeduo.com/goods/images/2019-10-27/4437d7ca146a39144b6a29c908ae20a4.jpeg"
          class="img"
        />
        <div class="desc">
          <div class="text">
            <div class="descri">紫米面包550g黑米夹心奶酪整箱营养早餐手撕吐司蛋</div>
          </div>
          <span class="peopleGroup">2人团</span>
          <div class="origPrice">￥26.60</div>
          <div class="price">￥22.00</div>
        </div>
      </div>
      <div class="user">
        <div class="userName">萤火虫吃蜗牛发现的好东西，快来参加拼团吧</div>
        <div class="time">
          <span>还差1人</span>
          <span>距结束</span>
          <span>08:28:16</span>
        </div>
        <div class="radius">
          <div class="userGroup">
            <div class="user1">
              <image
                src="https://wx.qlogo.cn/mmopen/vi_32/iaM6NonIPzXyGh3ib5ste75WwP4vT1zJYYDK4oibmBhaTCyTapBselXBen42Lw8zXe0IP4gmhaLyQ5GRWv37htIZw/132"
              />
              <div class="caption">团长</div>
              <div class="nickName">萤火虫...</div>
            </div>
            <div class="user2">
              <div class="invite">?</div>
              <div class="nickName">待邀请</div>
            </div>
          </div>
          <div class="userGroup"></div>
        </div>
      </div>
      <button class="inviteFriend">邀请好友</button>
      <!-- <button class="payGroup">支付￥18.88元参与拼团</button> -->
    </div>
    <div class="process">
      <div class="content">
        <div class="top">
          <div class="left">拼团流程</div>
          <div class="right">详细说明></div>
        </div>
        <div class="groupPics">
          <div class="pics">
            <image src="/static/asssemble/begin.png" />
            <div>团长开团</div>
          </div>
          <div class="pics">
            <image src="/static/asssemble/invite.png" />
            <div>邀请好友</div>
          </div>
          <div class="pics">
            <image src="/static/asssemble/success.png" />
            <div>拼团成功</div>
          </div>
          <div class="pics">
            <image src="/static/asssemble/wait.png" />
            <div>等待发货</div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style lang="scss">
page {
  width: 100%;
  height: 100%;
  background: linear-gradient(to bottom, #fd0, #f00);
  #assemble {
    .body {
      border-radius: 30rpx;
      background-color: #fff;
      width: 88%;
      margin: 0 auto;
      padding: 20rpx;
      .goodsInfo {
        border-bottom: 2rpx solid #ccc;
        display: flex;
        .img {
          flex: 2;
          height: 300rpx;
          margin: 10rpx;
        }
        .desc {
          margin: 10rpx;
          flex: 3;
          .text {
            .descri {
              font-size: 28rpx;
              display: -webkit-box;
              -webkit-line-clamp: 2;
              -webkit-box-orient: vertical;
              overflow: hidden;
            }
          }
          .peopleGroup {
            color: #f40;
            font-size: 20rpx;
            border: 1px solid #f40;
            line-height: 30rpx;
            height: 30rpx;
            border-radius: 5rpx;
            text-align: center;
            display: inline-block;
            width: 100rpx;
            margin: 10rpx;
          }
          .origPrice {
            color: #999;
            text-decoration: line-through;
            margin: 10rpx;
          }
          .price {
            color: #f10;
            font-size: 50rpx;
            font-weight: 1000;
            margin-top: 30rpx;
          }
        }
      }
      div.user {
        div.userName {
        }

        div.time {
          span {
          }
        }
        div.radius {
          div.userGroup {
            margin: 30rpx 0;
            display: flex;
            justify-content: center;
            div.user1 {
              position: relative;
              width: 18%;
              display: flex;
              flex-direction: column;
              align-items: center;
              image {
                height: 100rpx;
                width: 100rpx;
                border-radius: 50%;
              }
              div.caption {
                width: 80rpx;
                height: 32rpx;
                line-height: 32rpx;
                color: #fff;
                border-radius: 18rpx;
                background-color: #f00;
                position: absolute;
                font-size: 24rpx;
                text-align: center;
                top: 68rpx;
              }
              div.nickName {
                font-size: 24rpx;
              }
            }
            div.user2 {
              width: 18%;
              display: flex;
              flex-direction: column;
              align-items: center;
              .invite {
                height: 100rpx;
                width: 100rpx;
                border-radius: 50%;
                background-color: #ddd;
                line-height: 100rpx;
                text-align: center;
                border: 1rpx dashed #999;
                color: #999;
                font-size: 40rpx;
                box-sizing: border-box;
              }
              div.nickName {
                font-size: 24rpx;
                color: #666;
              }
            }
          }
        }
      }
      button.inviteFriend {
        color: #fff;
        width: 600rpx;
        text-align: center;
        line-height: 100rpx;
        height: 100rpx;
        background-color: #f00;
        font-weight: bold;
        border-radius: 10rpx;
        margin: 100rpx auto;
      }

      button.payGroup {
        color: #fff;
        width: 600rpx;
        text-align: center;
        line-height: 100rpx;
        height: 100rpx;
        background-color: #f00;
        font-weight: bold;
        border-radius: 10rpx;
        margin: 100rpx 0;
      }
    }
    div.process {
      margin-top: 105rpx;
      padding: 80rpx 0;
      width: 100%;
      height: 100%;
      background-color: #f3f3f3;
      div.content {
        width: 88%;
        padding: 30rpx;
        margin: 0 auto;
        background-color: #fff;
        border-radius: 30rpx;
        div.top {
          display: flex;
          justify-content: space-between;
          div.left {
          }

          div.right {
          }
        }
        div.groupPics {
          display: flex;
          margin-top: 40rpx;
          div.pics {
            width: 25%;
            display: flex;
            flex-direction: column;
            align-items: center;
            image {
              width: 100rpx;
              height: 100rpx;
            }

            div {
            }
          }
        }
      }
    }
  }
}
</style>