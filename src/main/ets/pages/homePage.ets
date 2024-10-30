import router from '@ohos.router'
interface PARAMS{
  name:string
  jianjie:string
}
@Entry
@Component
struct HomePage {
  @State Xname:string=''
  @State Xjianjie:string=''
  @State paramsValue:PARAMS={
    name:'',
    jianjie:''
  }
  aboutToAppear(){
    this.paramsValue=router.getParams() as PARAMS
  }
  build() {
    Column(){
      //top
      Row(){
        Button({type:ButtonType.Normal,stateEffect:true}){
          Image($r('app.media.homePage_Left'))
            .width(25)
        }
        .backgroundColor(Color.White)
        .margin({left:10})
        .onClick(()=>{
          router.back()

        })
        Button({type:ButtonType.Normal,stateEffect:true}){
          Text('保存')
            .fontSize(18)
        }
        .margin({left:320})
        .backgroundColor(Color.White)
        .onClick(()=>{
          router.pushUrl({
            url:'pages/Home',
            params:{name:this.Xname,jianjie:this.Xjianjie}
          })
        })

      }
      .width('100%')
      //头像
      Column(){
        Image($r('app.media.video_1'))
          .width(80)
          .borderRadius(40)
        Text('点击修改头像')
          .fontSize(10)
      }
      .margin(20)
      .width('100%')
      //信息
      Column({space:10}){
        Column({space:5}){
          Text('昵称')
          TextInput({text:this.paramsValue.name})
            .onChange((value:string)=>{
              this.Xname=value
            })
        }
        .alignItems(HorizontalAlign.Start)
        Column({space:5}){
          Text('个人简介')
          TextInput({text:this.paramsValue.jianjie})
            .onChange((value:string)=>{
              this.Xjianjie=value
            })
        }
        .alignItems(HorizontalAlign.Start)
        Column({space:5}){
          Text('生日')
          TextInput({text:'2024/10/1'})
        }
        .alignItems(HorizontalAlign.Start)
        Column({space:5}){
          Text('性别')
          Row(){
            Radio({value:'nan',group:''}).checked(true)
            Text('男')
            Radio({value:'nv',group:''}).checked(false)
            Text('女')
          }
        }
        .alignItems(HorizontalAlign.Start)
        Column({space:5}){
          Text('号码')
          TextInput({text:'19999999999'})
        }
        .alignItems(HorizontalAlign.Start)
      }
      .alignItems(HorizontalAlign.Start)
      .margin({left:15,right:15})
    }
    .width('100%')
  }

}

