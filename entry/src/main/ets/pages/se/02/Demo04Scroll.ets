@Entry
@Component
struct ScrollCase {
  build() {
    Column() {
      Row().width('100%').height(50).backgroundColor(Color.Red)

      Scroll() {
        // 要放一个很长的超出Scroll空间的容器
        Column({ space: 30 }) {
          TextItem()
          TextItem()
          TextItem()
          TextItem()
          TextItem()
          TextItem()
          TextItem()
          TextItem()
        }
        .height(3000)
      }
      .width('100%')
      .layoutWeight(1)
      .backgroundColor(Color.Orange)
      .edgeEffect(EdgeEffect.Spring) // 配置缓动动画

      Row().width('100%').height(50).backgroundColor(Color.Blue)
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Gray)
  }
}

@Component
struct TextItem {
  build() {
    Text('我是滚动容器的内容')
      .width('100%')
      .height(100)
      .backgroundColor(Color.Pink)
      .textAlign(TextAlign.Center)
  }
}