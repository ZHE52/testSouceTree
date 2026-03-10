@Component
struct TuanFoot {
  build() {
    Row() {
      Text('我是底部')
        .fontSize(30)
    }
    .width('100%')
    .height(50)
    .backgroundColor('red')
  }
}

export default TuanFoot