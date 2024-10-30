import router from '@ohos.router'
@Entry
@Component
export struct GameLeaf {
  build() {
    Column({space:25}){
      Row(){
        Button({type:ButtonType.Normal,stateEffect:true}){  //图片+文字组成按钮
          Row(){
            Image($r('app.media.shushu'))
              .width(60)
              .borderRadius(10)
            Text('一起打地鼠')
          } }
        .onClick(()=>{
          router.pushUrl({
            url:'pages/Game', })
        })
        .width('100%')
        .backgroundColor('#ffffffff')
      }
      .margin({top:200})
      .width('100%')
      Row(){
        Button({type:ButtonType.Normal,stateEffect:true}){
          Row(){
            Image($r('app.media.muyu'))
              .width(60)
              .borderRadius(10)
            Text('  功德木鱼')
          }
        }
        .onClick(()=>{
          router.pushUrl({
            url:'pages/Muyu',
          })
        })
        .width('100%')
        .backgroundColor('#fff')
      }
      .margin(40)
      .width('100%')
    }

    .width('100%')
    .height('100%')
  }
}