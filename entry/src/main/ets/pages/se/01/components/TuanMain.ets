@Component
struct TuanMain {
  build() {
    Column() {
      Text('我是主体')
        .fontSize(50)
      Text('我才是主体')
        .fontSize(50)
    }
    .width('100%')
    .layoutWeight(1) // 在父容器中, 高度自适应, 占用剩余空间
    .backgroundColor('#ccc')
  }
}

export default TuanMain
