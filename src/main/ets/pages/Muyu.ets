import { promptAction, router } from '@kit.ArkUI'
import { AudioMgr } from './AudioMgr';
@Entry
@Component
export struct Muyu {
  @State gongNum:number=0;
  timer:number=-1
  @State isMuYu:boolean=true
  @State scaleValue:number=1
  @State isScaled:boolean=false
  @State isScaled1:boolean=false
  @State timer1:number=-1
  @State timer2:number=-1
  @State isVisible:boolean=false
  aboutToAppear(): void {
    AudioMgr.Ins().init();
  }
  onClickDestroy= ()=>{
    AudioMgr.Ins().destroy();
  }
  onClickPlay = ()=>{
    AudioMgr.Ins().play();
    this.gongNum++
    clearInterval(this.timer2)
    this.isScaled1=true
    if(this.isScaled1==true){
    this.timer2=setInterval(()=>{
      this.scaleValue=this.scaleValue*1.04
      if(this.scaleValue>=1.3){
        clearInterval(this.timer2)
        this.scaleValue=1
        this.isScaled1=false
      }
    },50)
    }else {clearInterval(this.timer2)}
  }
  /**
   * 统一样式封装
   */
  @Styles ButtonStyle(){
    .width(120)
    .margin({top:120 })
  }

  build() {
    Column({space:10}){
      Row(){
        Button("返回")
          .onClick(()=>{
            this.onClickDestroy
            router.back()
          })
      }.margin({left:10,top:10})
      .width('100%')
      Text(`功德:${this.gongNum}`)
        .fontSize(30)
        .fontColor('#fff')
        Image($r('app.media.muyu'))
          .width(80)
        .ButtonStyle()
        .onClick(this.onClickPlay)
          .scale({x:this.scaleValue,y:this.scaleValue})
      Row({space:30}){
        Button('自动')
          .onClick(()=>{
            if (this.isMuYu){
              this.isMuYu=false
              this.timer=setInterval(()=>{
                AudioMgr.Ins().play();
                this.gongNum++
                this.isScaled=true
                if(this.isScaled==true){
                this.timer1=setInterval(()=>{
                  this.scaleValue=this.scaleValue*1.04
                  if(this.scaleValue>=1.3){
                    clearInterval(this.timer1)
                    this.scaleValue=1
                    this.isScaled=false
                  }
                },50)
                }else {clearInterval(this.timer1)}
                console.log(this.scaleValue.toString());
              },2000)
            }
          })
          Button('停止')
            .onClick(()=>{
              clearInterval(this.timer)
              clearInterval(this.timer1)
              clearInterval(this.timer2)
              this.isScaled=false
              this.isMuYu=true
            })
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#2E2E2E')

}

}