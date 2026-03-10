@Entry
@Component
struct Demo04Baidu {
  build() {
    Column() {
      // Image('网图路径')
      Stack({ alignContent: Alignment.TopEnd }) {
        Image('https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png')
          .width(160)
        Text('鸿蒙版')
          .fontSize(14)
          .offset({ top: 25 }) // 让元素基于原来的位置便宜
      }

      Row() {
        // TextInput 输入框 (默认宽度一整行)

        TextInput()
          .layoutWeight(1) // 让宽度或高度自适应
          .border({
            width: { left: 2, top: 2, bottom: 2 },
            color: '#ccc'
          }) // 设置边框
          // .borderRadius(10) // 设置的是四个角
          .borderRadius({
            topLeft: 10,
            bottomLeft: 10,
          })
          .height(40)
        Button('百度一下')
          .type(ButtonType.Normal)
          .height(40)
          .borderRadius({
            topRight: 10,
            bottomRight: 10
          })
      }
      // .padding(20) // 4个方向 - 内边距设置
      .padding({
        top: 20,
        left: 20,
        right: 20,
        bottom: 20
      })
    }

    .width('100%')
    .height('100%')
  }
}