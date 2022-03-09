// pages/login/login.js
const app = getApp()
var login_url = app.globalData.apiUrl +"api/loginUser";
Page({

  /**
   * 页面的初始数据
   */
  data: {
    userInfo:null,
    userName:null,
    password:null
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    console.log(app.globalData.userInfo);
    if (app.globalData.userInfo) {
      this.setData({
        userInfo: app.globalData.userInfo,
        hasUserInfo: true
      })
    } else {
      console.log("1111111111111111");
      // 在没有 open-type=getUserInfo 版本的兼容处理
      wx.getUserInfo({
        success: res => {
          app.globalData.userInfo = res.userInfo
          console.log(res.userInfo);
          this.setData({
            userInfo: res.userInfo,
            hasUserInfo: true
          })
        },
        fail: function (e) {
          if (e.errMsg == 'getUserInfo:fail auth deny') {
            _this.toAauthorize()
          }
        }
      })
    }
  },
  bindPhoneInput: function (e) {
    var that = this;
    this.setData({
      userName:e.detail.value

    })
  },
  bindCodeInput: function (e) {
    var that = this;
    this.setData({
      password:e.detail.value

    })
  },
  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },
  bindGetUserInfo: function(e){
    var that = this;
    //此处授权得到userInfo
    console.log(e.detail.userInfo);
    this.setData({
      userInfo: e.detail.userInfo,
    })
    var that = this;
      if(that.data.userName==null||that.data.password==null){
        wx.showToast({
          title: '请输入用户名和密码！',
          icon: 'none',
          duration: 1500
        })

        return ;
      }else{

        wx.request({
          url: login_url,
          data: {
            userName: that.data.userName,
            password: that.data.password
          },
          method: 'POST',
          header: {
            'content-type': 'application/json'
          },
          success: function (res) {
            if (res.data.code == 200) {
              wx.showToast({
                title: "登录成功",
                icon: "success",
                duration: 10000
              });
              app.globalData.isLogin = true;
              app.globalData.userId =res.data.data.userId;
              var timer = setTimeout(function () {
                clearTimeout(timer);
                wx.reLaunch({
                  url: '../index/index',
                })
              }, 1000);
    
            } else {
              wx.showModal({
                title: '提示',
                content: res.data.message,
                success: function (res) {
    
                }
              })
            }
          }
        })


      }


   



   },
   reg: function(e){
    wx.navigateTo({
      url: '/pages/register/register'
    })
  
   },



 
  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})
{
  "usingComponents": {}
}
<!--pages/auth/auth.wxml-->
<view class="logo">
  <view class="userinfo-wrapper">
      <image bindtap="bindViewTap" class="userinfo-avatar" src="{{userInfo.avatarUrl}}" background-size="cover"></image>
      <view class="userinfo-nickname">{{userInfo.nickName}}</view>
    </view>
 
</view>

<view class="form">
  <view class="row-group">
    <text>用户名</text>
    <input placeholder="请填写用户名" placeholder-class='txt'  value="{{phone}}" bindinput="bindPhoneInput" />
  </view>

   <view class="row-group">
    <text>密码</text>
    <input placeholder="请填写密码" placeholder-class='txt'  value="{{code}}" bindinput="bindCodeInput" />
  </view>

  <view>
    <button class="submit"  open-type="getUserInfo" bindgetuserinfo="bindGetUserInfo">登录</button>
    <button class="submit1"  open-type="getUserInfo" bindtap="reg">注册</button>
  </view>
</view>


/* pages/auth/auth.wxss */
.logo{
  display: flex;
  flex-direction: column;
  align-items: center;
}
.logo image{
  margin-top: 140rpx;
  width: 216rpx;
  height: 200rpx;
}
.form{
  padding: 40rpx;
}
.form .row-group{
  padding: 20rpx 0;
  position: relative;
  border-bottom: 1rpx solid #ddd;
}

.form .row-group text{
  font-size: 28rpx;
  padding:10rpx 0;
}

.form .row-group input{
  padding: 10rpx 0;
}

.form .row-group .txt{
  color: #ccc;
}

.form .row-group .code{
  position: absolute;
  right: 0;
  bottom: 26rpx;
  z-index: 2;

  width: 206rpx;
  height: 60rpx;
  border: 2rpx solid #00c8b6;
  border-radius: 12rpx;
  font-size: 26rpx;
  font-weight: 400;
  color: #00c8b6;
  display: flex;
  align-items: center;
  justify-content: center;
}
.form .submit1{
  margin-top: 80rpx;
  color: #fff;
  border: 2rpx solid #f05050;
  background-color: #f05050;
  font-size: 32rpx;
  font-weight: bold;
}
.form .submit{
  margin-top: 80rpx;
  color: #fff;
  border: 2rpx solid #00c8b6;
  background-color: #00c8b6;
  font-size: 32rpx;
  font-weight: bold;
}
.userinfo-nickname {
  text-align: center;
  color: #aaa;
  font-size: 12px;
}