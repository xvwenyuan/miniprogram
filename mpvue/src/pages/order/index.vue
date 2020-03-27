<template>
  <div id="order">
    <Tabs></Tabs>
  </div>
  
</template>

<script>
import Tabs from '../../components/tabs'
export default {
  components:{
    Tabs
  },
  mounted(){
    wx.requestPayment({
      timeStamp: '',
      nonceStr: '',
      package: '',
      signType: '',
      paySign: '',
      success: (result)=>{
        
      },
      fail: ()=>{},
      complete: ()=>{}
    });
  }

}
</script>

<style>

</style>