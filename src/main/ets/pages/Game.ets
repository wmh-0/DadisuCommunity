import { RandomAccessFileOptions } from '@ohos.file.fs'
import image from '@ohos.multimedia.image'
import App from '@system.app'
import router from '@ohos.router'
@Entry
@Component
 struct  Game {
  @State
  score: number = 0
  @State
  randomIndex: number = Math.floor(Math.random() * 15)
  @State
  time:number=0
  @State
  timer:number=0
  @State
  isVisible1:boolean=true
  @State
  isVisible2:boolean=false
  @State
  TimeRemain:number=10
  build() {
    Column() {
      Column(){
        Row() {
          Button('返回')
            .onClick(() => {
            //页面跳转
              router.back()
          })
            .margin({left:-50})
          Text('分数：' + this.score).fontSize(45).margin({left:50}).fontColor(Color.Pink)
        }

        Row({space:10}) {
          Button(this.randomIndex == 0 ? '鼠' : '洞').onClick((event: ClickEvent) => {
            if (this.randomIndex == 0) {
              this.score = this.score + 20
              this.randomIndex = Math.floor(Math.random() * 15)
            } else {
              this.score -= 10
            }
          }).fontColor(this.randomIndex == 0 ?Color.Red:Color.Yellow)
            .fontSize(25)
            .backgroundColor(Color.Green)
            .width(80)
            .height(80)
            .borderRadius(40)
            .borderWidth(2)
            .borderColor(Color.Gray)
            .backgroundColor(Color.Green)

          Button(this.randomIndex == 1 ? '鼠' : '洞').onClick((event: ClickEvent) => {
            if (this.randomIndex == 1) {
              this.score = this.score + 20
              this.randomIndex = Math.floor(Math.random() * 15)
            } else {
              this.score -= 10
            }
          }).fontColor(this.randomIndex == 1 ?Color.Red:Color.Yellow)
            .fontSize(25)
            .backgroundColor(Color.Green)
            .width(80)
            .height(80)
            .borderRadius(40)
            .borderWidth(2)
            .borderColor(Color.Gray)
            .backgroundColor(Color.Green)

          Button(this.randomIndex == 2 ? '鼠' : '洞').onClick((event: ClickEvent) => {
            if (this.randomIndex == 2) {
              this.score = this.score + 20
              this.randomIndex = Math.floor(Math.random() * 15)
            } else {
              this.score -= 10
            }
          }).fontColor(this.randomIndex == 2 ?Color.Red:Color.Yellow)
            .fontSize(25)
            .backgroundColor(Color.Green)
            .width(80)
            .height(80)
            .borderRadius(40)
            .borderWidth(2)
            .borderColor(Color.Gray)
            .backgroundColor(Color.Green)

          Button(this.randomIndex == 3 ? '鼠' : '洞').onClick((event: ClickEvent) => {
            if (this.randomIndex == 3) {
              this.score = this.score + 20
              this.randomIndex = Math.floor(Math.random() * 15)
            } else {
              this.score -= 10
            }
          }).fontColor(this.randomIndex == 3 ?Color.Red:Color.Yellow)
            .fontSize(25)
            .backgroundColor(Color.Green)
            .width(80)
            .height(80)
            .borderRadius(40)
            .borderWidth(2)
            .borderColor(Color.Gray)
            .backgroundColor(Color.Green)
        }.margin(10)
        Row({space:10}){
          Button(this.randomIndex == 4 ? '鼠' : '洞').onClick((event: ClickEvent) => {
            if (this.randomIndex == 4) {
              this.score = this.score + 20
              this.randomIndex = Math.floor(Math.random() * 15)
            } else {
              this.score -= 10
            }
          }).fontColor(this.randomIndex == 4 ?Color.Red:Color.Yellow)
            .fontSize(25)
            .backgroundColor(Color.Green)
            .width(80)
            .height(80)
            .borderRadius(40)
            .borderWidth(2)
            .borderColor(Color.Gray)
            .backgroundColor(Color.Green)

          Button(this.randomIndex == 5 ? '鼠' : '洞').onClick((event: ClickEvent) => {
            if (this.randomIndex == 5) {
              this.score = this.score + 20
              this.randomIndex = Math.floor(Math.random() * 15)
            } else {
              this.score -= 10
            }
          }).fontColor(this.randomIndex == 5 ?Color.Red:Color.Yellow)
            .fontSize(25)
            .backgroundColor(Color.Green)
            .width(80)
            .height(80)
            .borderRadius(40)
            .borderWidth(2)
            .borderColor(Color.Gray)
            .backgroundColor(Color.Green)
          Button(this.randomIndex == 6 ? '鼠' : '洞').onClick((event: ClickEvent) => {
            if (this.randomIndex == 6) {
              this.score = this.score + 20
              this.randomIndex = Math.floor(Math.random() * 15)
            } else {
              this.score -= 10
            }
          }).fontColor(this.randomIndex == 6 ?Color.Red:Color.Yellow)
            .fontSize(25)
            .backgroundColor(Color.Green)
            .width(80)
            .height(80)
            .borderRadius(40)
            .borderWidth(2)
            .borderColor(Color.Gray)
            .backgroundColor(Color.Green)
          Button(this.randomIndex == 7 ? '鼠' : '洞').onClick((event: ClickEvent) => {
            if (this.randomIndex == 7) {
              this.score = this.score + 20
              this.randomIndex = Math.floor(Math.random() * 15)
            } else {
              this.score -= 10
            }
          }).fontColor(this.randomIndex == 7 ?Color.Red:Color.Yellow)
            .fontSize(25)
            .backgroundColor(Color.Green)
            .width(80)
            .height(80)
            .borderRadius(40)
            .borderWidth(2)
            .borderColor(Color.Gray)
            .backgroundColor(Color.Green)
        }.margin(10)
        Row({space:10}) {

          Button(this.randomIndex == 8 ? '鼠' : '洞').onClick((event: ClickEvent) => {
            if (this.randomIndex == 8) {
              this.score = this.score + 20
              this.randomIndex = Math.floor(Math.random() * 15)
            } else {
              this.score -= 10
            }
          }).fontColor(this.randomIndex == 8 ?Color.Red:Color.Yellow)
            .fontSize(25)
            .backgroundColor(Color.Green)
            .width(80)
            .height(80)
            .borderRadius(40)
            .borderWidth(2)
            .borderColor(Color.Gray)
            .backgroundColor(Color.Green)

          Button(this.randomIndex == 9 ? '鼠' : '洞').onClick((event: ClickEvent) => {
            if (this.randomIndex == 9) {
              this.score = this.score + 20
              this.randomIndex = Math.floor(Math.random() * 15)
            } else {
              this.score -= 10
            }
          }).fontColor(this.randomIndex == 9 ?Color.Red:Color.Yellow)
            .fontSize(25)
            .backgroundColor(Color.Green)
            .width(80)
            .height(80)
            .borderRadius(40)
            .borderWidth(2)
            .borderColor(Color.Gray)
            .backgroundColor(Color.Green)

          Button(this.randomIndex == 10 ? '鼠' : '洞').onClick((event: ClickEvent) => {
            if (this.randomIndex == 10) {
              this.score = this.score + 20
              this.randomIndex = Math.floor(Math.random() * 15)
            } else {
              this.score -= 10
            }
          }).fontColor(this.randomIndex == 10 ?Color.Red:Color.Yellow)
            .fontSize(25)
            .backgroundColor(Color.Green)
            .width(80)
            .height(80)
            .borderRadius(40)
            .borderWidth(2)
            .borderColor(Color.Gray)
            .backgroundColor(Color.Green)

          Button(this.randomIndex == 11 ? '鼠' : '洞').onClick((event: ClickEvent) => {
            if (this.randomIndex == 11) {
              this.score = this.score + 20
              this.randomIndex = Math.floor(Math.random() * 15)
            } else {
              this.score -= 10
            }
          }).fontColor(this.randomIndex == 11 ?Color.Red:Color.Yellow)
            .fontSize(25)
            .backgroundColor(Color.Green)
            .width(80)
            .height(80)
            .borderRadius(40)
            .borderWidth(2)
            .borderColor(Color.Gray)
            .backgroundColor(Color.Green)
        }.margin(10)
        Row({space:10}) {
          Button(this.randomIndex == 12 ? '鼠' : '洞').onClick((event: ClickEvent) => {
            if (this.randomIndex == 12) {
              this.score = this.score + 20
              this.randomIndex = Math.floor(Math.random() * 15)
            } else {
              this.score -= 10
            }
          }).fontColor(this.randomIndex == 12 ?Color.Red:Color.Yellow)
            .fontSize(25)
            .backgroundColor(Color.Green)
            .width(80)
            .height(80)
            .borderRadius(40)
            .borderWidth(2)
            .borderColor(Color.Gray)
            .backgroundColor(Color.Green)
          Button(this.randomIndex == 13 ? '鼠' : '洞').onClick((event: ClickEvent) => {
            if (this.randomIndex == 13) {
              this.score = this.score + 20
              this.randomIndex = Math.floor(Math.random() * 15)
            } else {
              this.score -= 10
            }
          }).fontColor(this.randomIndex == 13 ?Color.Red:Color.Yellow)
            .fontSize(25)
            .backgroundColor(Color.Green)
            .width(80)
            .height(80)
            .borderRadius(40)
            .borderWidth(2)
            .borderColor(Color.Gray)
            .backgroundColor(Color.Green)
          Button(this.randomIndex == 14 ? '鼠' : '洞').onClick((event: ClickEvent) => {
            if (this.randomIndex == 14) {
              this.score = this.score + 20
              this.randomIndex = Math.floor(Math.random() * 15)
            } else {
              this.score -= 10
            }
          }).fontColor(this.randomIndex == 14 ?Color.Red:Color.Yellow)
            .fontSize(25)
            .backgroundColor(Color.Green)
            .width(80)
            .height(80)
            .borderRadius(40)
            .borderWidth(2)
            .borderColor(Color.Gray)
            .backgroundColor(Color.Green)
          Button(this.randomIndex == 15 ? '鼠' : '洞').onClick((event: ClickEvent) => {
            if (this.randomIndex == 15) {
              this.score = this.score + 20
              this.randomIndex = Math.floor(Math.random() * 15)
            } else {
              this.score -= 10
            }
          }).fontColor(this.randomIndex == 15 ?Color.Red:Color.Yellow)
            .fontSize(25)
            .backgroundColor(Color.Green)
            .width(80)
            .height(80)
            .borderRadius(40)
            .borderWidth(2)
            .borderColor(Color.Gray)
            .backgroundColor(Color.Green)
        }.margin(10)
        Row(){
          Text('剩余时间：'+this.TimeRemain)
            .fontColor(Color.Red).fontSize(45)
        }
      }

      //遮罩层1
      Column(){
        Column(){
          Row({space:20}){
            Text('一').fontColor(Color.Red).fontSize(100)
            Text('起').fontColor(Color.Blue).fontSize(100)
          }
          Row({space:20}){

            Text('打').fontColor(Color.Pink).fontSize(130)
            Column(){
              Text('地').fontColor(Color.Yellow)
                .fontSize(70)
              Text('鼠').fontColor(Color.Green).fontSize(70).margin(-10)
            }.margin(0)
          }
        }
        Row(){
          Button('开始游戏').onClick((event: ClickEvent) => {
            this.TimeRemain=10
            this.timer=setInterval(()=>{
              this.time++
              this.TimeRemain=10-this.time
              if(this.time>=10){
                this.isVisible2=true
                clearInterval(this.timer)
              }else {
                console.log(this.time.toString())
              }
            },1000)
            this.isVisible1 =false
          }).borderRadius(20)
            .fontColor(Color.Red)
            .fontSize(20)
            .height(60)
            .width(140)
            .linearGradient({
              angle: 45,
              colors: [[0xff0000, 0.0], [0x0000ff, 0.5], [0xffff00, 1.0]]
            })
        }
      }.visibility(this.isVisible1 ?Visibility.Visible : Visibility.Hidden)
      .width('100%')
      .height('100%')
      .backgroundColor('rgba(0,0,0,0.9)')
      .justifyContent(FlexAlign.Center)
      .position({x: 0, y: 0})

      //遮罩层2
      Column(){
        Row(){
          Text('您最终得分为：'+this.score)
            .fontSize(28)
            .fontColor(Color.Pink)
        }.margin(40)
        Row({space:30}){
          Button('返回主页面').onClick((event: ClickEvent) => {
            this.isVisible2 =false
            router.back()
          })
          Button('再来一局').onClick((event: ClickEvent) => {
            this.isVisible2 =false
            this.isVisible1 =true

            this.time=0
            this.score=0
          })
        }
      }.visibility(this.isVisible2 ?Visibility.Visible : Visibility.Hidden)
      .width('100%')
      .height('100%')
      .backgroundColor('rgba(0,0,0,0.9)')
      .justifyContent(FlexAlign.Center)
      .position({x: 0, y: 0})

    }.backgroundImage($r('app.media.grass'))
    .height('100%')
    .backgroundImageSize(ImageSize.Cover)
    .width('100%')

  }
}