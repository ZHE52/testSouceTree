@Preview
@Component
struct scroller {
  scroller: Scroller = new Scroller()

  build() {


    Column() {

      Scroll() {
        Row({ space: 15 }) {
          rowItem()
          rowItem()
          rowItem()
          rowItem()
          rowItem()
        }

      }
      .edgeEffect(EdgeEffect.Spring)
      .scrollable(ScrollDirection.Horizontal) // 开启滚动, 调整滚动方向(默认纵向)

      .width('100%')
      .height(200)
      .padding(10)
      .backgroundColor(Color.Orange)
      .margin({ top: 50 })

      Row() {

      }


      Row() {
        Button('点击左边')
          .onClick(() => {

          })
        Button('点击左边')
          .onClick(() => {

          })
        Button('点击左边')
          .onClick(() => {

          })
      }
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
