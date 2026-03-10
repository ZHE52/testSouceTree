@Entry
@Component
struct Demo05Stack {
  build() {
    // Stack和绝对定位的区别:
    // 1. 批量的控制对齐方式
    // 2. 居中比绝对定位简单很多
    Stack({
      alignContent: Alignment.Center
    }) {
      Row().width(300).height(300).backgroundColor(Color.Orange)
      Row().width(250).height(250).backgroundColor(Color.Gray)
      Row().width(200).height(200).backgroundColor(Color.Green)
        .zIndex(5)
      Row().width(100).height(100).backgroundColor(Color.Red)
        .zIndex(6)
    }
  }
}