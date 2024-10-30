import { router } from '@kit.ArkUI';
@Entry
@Component
struct Start {
  @State num:number=3
  timer:number=-1
  aboutToAppear(): void {
    this.timer=setInterval(()=>{//建立计数器
      this.num--
      if (this.num==0) {//当倒计时为0时
        clearInterval(this.timer)//清除计时器
        router.replaceUrl({url:"pages/Index"})//实现跳转
      }
    },1000)
  }
  build() {
    Stack({alignContent: Alignment.TopEnd}) {
      Image($r('app.media.guanggao'))
        .height('100%')
        .width('100%')
      Button({type:ButtonType.Normal,stateEffect:true}){
        Text(`${this.num}秒 跳过`)
          .margin(12)
      }
      .margin({top:20,right:10})
      .backgroundColor('#A58F7A')
      .borderRadius(200)
      .onClick(()=>{
        router.replaceUrl({url: "pages/Index"})//点击直接跳转
      })

    }
  }
}