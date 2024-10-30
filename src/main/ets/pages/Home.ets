

import router from '@ohos.router'
interface PARAMS{
  Yname:string
  Yjianjie:string
}

@Entry
@Component
export struct Home {
  @State name:string='醋坛子'
  @State jianjie:string='阿巴阿巴'
  @State paramsValue:PARAMS={
    Yname:'',
    Yjianjie:''
  }
  aboutToAppear(){
    this.paramsValue=router.getParams() as PARAMS
  }
  onPageShow(): void {
    this.name=this.paramsValue.Yname
    this.jianjie=this.paramsValue.Yjianjie
  }
  build() {
    Column(){
      //角标
      Stack(){
        Image($r('app.media.Home_bg'))
        Row(){
          Image($r('app.media.home_Scan'))
            .opacity(0.8)
            .width(30)
            .margin({right:15})
            .backgroundColor('#ffff')
            .borderRadius(8)
          Image($r('app.media.home_xinxi'))
            .opacity(0.8)
            .borderRadius(8)
            .width(30)
            .backgroundColor('#ffff')
        }
        .width('100%')
        .margin({bottom:160,right:15})
        .justifyContent(FlexAlign.End)
      }
      .width('100%')
      .height(200)
      .backgroundColor('#ff8f8d8d')

      //基本信息
      Row(){
        Image($r('app.media.video_1'))
          .width(70)
          .borderRadius(35)
        Column({space:5}){
          Text(this.name)
            .fontSize(20)
          Row(){
            Text('UID:15952071')
              .fontSize(12)
            Image($r('app.media.home_Location'))
              .width(16)
            Text('江西')
              .fontSize(12)
          }
          Text(this.jianjie)
            .fontSize(12)
        }
        .margin({left:5})
        .alignItems(HorizontalAlign.Start)
        Row(){
          Button({type:ButtonType.Normal,stateEffect:true}){
            Row(){
              Text('编辑资料')
                .fontSize(16)
              Image($r('app.media.home_Right'))
                .width(18)
            }
          }
          .backgroundColor('#fff')
          .onClick(()=>{
            router.pushUrl({
              url:'pages/homePage',
              params:{name:this.name,jianjie:this.jianjie}
            })
          })


        }
        .margin({left:80})
      }
      .margin({left:25})
      .width('100%')
      //粉丝 关注 获赞
      Row({space:15}){
        Text('粉丝 0')
        Text('关注 5')
        Text('获赞 10')
      }
      .width('100%')
      .margin({left:30,top:10})
      //功能栏
      Flex({wrap:FlexWrap.Wrap}){
        Column(){
          Image($r('app.media.home_tiezi'))
            .onClick(()=>{
              router.pushUrl({
                url:'pages/MyTieZi'
              })
            })
            .width(40)
          Text('我的贴子')
            .margin({top:5})
            .fontSize(16)
        }
        .margin(20)
        Column(){
          Badge({
            count:1,
            style:{badgeSize:10,badgeColor:'#f00',fontSize:14}
          }){
            Image($r('app.media.home_pinlun'))
              .width(40)

          }
          Text('我的评论')
            .margin({top:5})
            .fontSize(16)
        }
        .margin(20)
        Column(){
          Image($r('app.media.home_shoucang'))
            .width(40)
          Text('收藏夹')
            .margin({top:5})
            .fontSize(16)
        }
        .margin(20)
        Column(){
          Image($r('app.media.home_caogao'))
            .width(40)
          Text('我的草稿')
            .margin({top:5})
            .fontSize(16)
        }
        .margin(20)
        Column(){
          Image($r('app.media.home_yijian'))
            .width(40)
          Text('意见反馈')
            .margin({top:5})
            .fontSize(16)
        }
        .margin(20)
        Column(){
          Image($r('app.media.home_zujian'))
            .width(40)
          Text('桌面组件')
            .margin({top:5})
            .fontSize(16)
        }
        .margin(20)
      }
      .margin({left:7})
      .padding(20)


    }
    .height('100%')
  }

}