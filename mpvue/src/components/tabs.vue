<template>
  <div id="tabs">
      <div class="title">
          <div class="title-item">待付款</div>
          <div class="title-item">待收货</div>
          <div class="title-item">已完成</div>
          <div class="title-item">待评价</div>
      </div>
      <div class="content"></div>
  </div>
</template>

<script>
export default {

}
</script>

<style scoped lang="scss">
#tabs{
    .title{
        display: flex;
        padding: 10rpx;
        .title-item{
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
        }
    }
}
</style>