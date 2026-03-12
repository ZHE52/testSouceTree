@Entry
@Component
struct scroller {
  scroller: Scroller = new Scroller()//1

  build() {


    Column() {

      Scroll(this.scroller) {
        Row({ space: 15 }) {
          MovieItem()
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
          // let curve = curves.interpolatingSpring(10, 1, 228, 30) //创建一个阶梯曲线
          this.scroller.scrollTo({
            xOffset: 200, // 水平滚动的位置
            yOffset: 0,
            animation: {
              duration: 1000, // 动画时间
              // curve: curve  // 动画效果
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
struct rowItem {
  build() {
    Column() {
      Text('哪吒2-饺子')
        .fontColor(Color.White)
        .textAlign(TextAlign.Center) // 调整居中对齐方式
        .width(100)
        .height(180)
        .backgroundColor(Color.Green)
    }
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
