// 普通的自定义组件
// 1. 创建组件
// 2. 使用组件(可以复用)
@Preview
@Component
struct TuanHead {
  build() {
    Row() {
      Text('我是头部')
        .fontSize(30)
    }
    .width('100%')
    .height(50)
    .backgroundColor('#f5d347')
  }
}

export default TuanHead

// 导出的两种方式
// 1. export default 值 - 默认导出, 导出一个
// 2. export 内容1 - 按需导出, 导出多个
//    export 内容2
//    export 内容3
