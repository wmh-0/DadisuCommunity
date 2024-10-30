
import {Video1}from './Video1'
import {Home}from './Home'
import {GameLeaf} from './GameLeaf'
export interface TabClass {
  text: string
  icon: ResourceStr,
  name: string
}
@Entry
@Component
struct Index {
  tabData: TabClass[] = [//数组数据
    {text: '主页', icon: $r('app.media.Tab_Game'), name: 'GameLeaf'},
    {text: '视频', icon: $r('app.media.Tab_Video'), name: 'Video'},
    {text: '我的', icon: $r('app.media.Tab_Home'), name: 'Home'}
  ]
  @State isActive: string = 'GameLeaf'
  @Builder tabBarBuilder (item: TabClass) {//点击高亮效果
    Column({space: 5}) {
      Image(item.icon)
        .width(26)
        .fillColor(this.isActive == item.name ? '#e4608b' : '#c32f51b3')
      Text(item.text)
        .fontSize(15)
        .fontColor(this.isActive == item.name ? '#e4608b' : '#c32f51b3')
    }
  }
  build() {
    Column() {
      Tabs({barPosition: BarPosition.End}) {//Tab栏
        ForEach(this.tabData, (item: TabClass) => {//循环遍历
          TabContent() {
            if(this.isActive == 'GameLeaf') {//判断点击
              GameLeaf()
            }  else if (this.isActive == 'Video') {
              Video1()
            } else if (this.isActive == 'Home') {
              Home()
            }
          }
          .tabBar(this.tabBarBuilder(item))
          .backgroundColor('#ffffffff')
        })
      }
      .backgroundColor('#ffa7a2a4')
      .onChange((index) => {
        this.isActive = this.tabData[index].name
      })
    }
    .width('100%')
    .height('103%')

  }
}