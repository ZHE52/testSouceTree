import { curves } from '@kit.ArkUI'

// 全局变量
let num: number = 100

@Entry
@Component
struct Demo05ScrollH {
  // 组件内的变量, 访问需要加 this
  myNum: number = 100

  // 1. 创建一个控制器对象
  scroller: Scroller = new Scroller()

  build() {
    Column() {
      Text(num.toString()) // 用的就是全局的变量
      Text(this.myNum.toString()) // 用的就是组件的内部变量
      // 2. 控制器 和 滚动组件 建立关联
      Scroll(this.scroller) {
        Row({ space: 15 }) {
          MovieItem()
          MovieItem()
          MovieItem()
          MovieItem()
          MovieItem()
          MovieItem()
          MovieItem()
        }
        // .width(3000) 当内容没有设定死宽度, 就是内容撑开
      }
      .edgeEffect(EdgeEffect.Spring)
      .scrollable(ScrollDirection.Horizontal) // 开启滚动, 调整滚动方向(默认纵向)
      .width('100%')
      .height(200)
      .padding(10)
      .backgroundColor(Color.Orange)
      .margin({ top: 50 })

      Row({ space: 10 }) {
        Button('滚动到左侧').onClick(() => {
          // 滚动到边缘
          this.scroller.scrollEdge(Edge.Start)
        })
        Button('滚动到指定位置').onClick(() => {
          // 滚动到指定位置
          let curve = curves.interpolatingSpring(10, 1, 228, 30) //创建一个阶梯曲线
          this.scroller.scrollTo({
            xOffset: 200, // 水平滚动的位置
            yOffset: 0,
            animation: {
              duration: 1000, // 动画时间
              curve: curve  // 动画效果
            }
          })
        })
        Button('滚动到右侧').onClick(() => {
          // 滚动到边缘
          this.scroller.scrollEdge(Edge.End)
        })
      }
      .margin({ top: 10 })

    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Pink)
  }
}

@Component
struct MovieItem {
  build() {
    Text('哪吒2-饺子')
      .fontColor(Color.White)
      .textAlign(TextAlign.Center) // 调整居中对齐方式
      .width(100)
      .height(180)
      .backgroundColor(Color.Green)
  }
}