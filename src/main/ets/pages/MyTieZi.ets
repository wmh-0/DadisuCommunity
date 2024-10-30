import { promptAction } from '@kit.ArkUI'

export interface  videoItemType {
  img: string
  id: string
  time: string
  url: string
  txt1:string
  txt2:string
  video:string
  num1:number
  num2:number
  num3:number
}
@Entry
@Component
struct MyTieZi {
  videos:videoItemType[]=[
    {img:'app.media.video_1',id:'醋坛子',time:'2024/9/20',url:'黑神话:悟空',txt1:'',txt2:'村里的第一个大学生#单机游戏 #发现好游戏 #国产游戏 #小菜鸡 #游戏日常',video:'video1.mp4',num1:90,num2:87,num3:222},
    {img:'app.media.video_1',id:'醋坛子',time:'2024/9/20',url:'原神',txt1:'原来你也玩原神',txt2:'我要玩原神😖，把手机还给我😭，我要玩原神😭',video:'video2.mp4',num1:1,num2:150,num3:4},
    {img:'app.media.video_1',id:'醋坛子',time:'2024/9/21',url:'永劫无间',txt1:'今天打永劫无间了吗',txt2:'网易是最懂玩家的游戏公司#游戏日常#永劫无间手游#永劫无间#发现好游戏',video:'video3.mp4',num1:1,num2:3,num3:4},
    {img:'app.media.video_1',id:'醋坛子',time:'2024/9/20',url:'巅峰极速',txt1:'我就来凑数的，哈哈哈哈',txt2:'新鲜的bug',video:'video4.mp4',num1:7,num2:9,num3:14}
  ]
  private controller:VideoController | undefined;
  private previewUris:Resource=$r('app.media.video_1');

  build() {
    Column(){
      Text('我的贴子')
        .fontWeight(500)
        .fontSize(20)
      List(){
        ForEach(this.videos,(item:videoItemType,index:number)=>{
          ListItem(){
            Column({space:5}){
              Row(){
                Image($r(item.img))
                  .width(40)
                  .borderRadius(20)
                Column(){
                  Row(){
                    Text(item.id)
                      .fontSize(14)
                  }
                  .width('100%')
                  Row(){
                    Text(item.time)
                      .fontSize(11)
                    Text(item.url)
                      .fontSize(11)
                      .margin({left:15})
                      .fontColor('#ff5fbcc4')
                  }
                  .width('100%')

                }
                .layoutWeight(1)
                .margin({left:10})
                Image($r('app.media.ic_more'))
                  .onClick(()=>{
                    promptAction.showActionMenu({
                      title: '功能',
                      buttons:[
                        {
                          text: '删除',
                          color: '#909399'
                        },
                        {
                          text: '编辑',
                          color: '#909399'
                        }
                      ]
                    })
                  })
                  .width(20)
                  .margin({right:20})
              }
              .width('100%')
              Column(){
                Text(item.txt1)
                  .width('100%')
                Text(item.txt2)
                  .width('100%')
                  .fontSize(12)
                  .maxLines(2)
              }
              .margin({right:10})

              //视频
              Row(){
                Video({
                  src:$rawfile(item.video),
                  controller:this.controller
                })
              }
              .width(350)
              .height(220)
              .margin({right:35})
              Row(){
                Image($r('app.media.video_Send'))
                  .width(20)
                Text(item.num1.toString())
                  .fontSize(16)
                Image($r('app.media.video_MoreCircle'))
                  .width(20)
                  .margin({left:80})
                Text(item.num2.toString())
                  .fontSize(16)
                Image($r('app.media.video_Heart'))
                  .width(20)
                  .margin({left:80})
                  .onClick(()=>{

                  })
                Text(item.num3.toString())
                  .fontSize(16)
              }
              .width('100%')
              .margin({left:80})
            }
            .margin({left:15,right:20,bottom:20})
            .width('100%')
          }
        })
      }

    }
    .width('100%')
  }
  @Builder
  deleteButton(index: number) {
    Button('删除')
      .backgroundColor('#ec5c87')
      .fontColor('#fff')
      .width(80)
      .height('100%')
      .type(ButtonType.Normal)
      .onClick(() => {

      })
  }
}