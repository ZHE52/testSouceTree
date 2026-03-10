import { promptAction } from '@kit.ArkUI'

@Entry // 页面入口
@Component // 自定义组件
struct Index { // struct 组件名称
  // 组件内必须要有build函数, 进行UI结构描述
  // 构建页面内容的描述
  build() {
    // 布局组件(包裹内容)
    // Row行: 包裹内容之后, 说明内容水平排列
    // Column列: 包裹内容之后, 说明内容垂直排列
    Column() {
      // 内容的展示, 就要用到不同的功能组件(UI组件)
      // 文本组件 Text
      // 1. Text('文本') 函数调用
      // 2. 文字大小 .fontSize(数字)
      // 3. 文字颜色 .fontColor(颜色)
      // 4. 点击事件 .onClick(事件逻辑)
      Text('hello 鸿蒙')
        .width('50%')
        .height(200)
        .fontSize(50)
        .fontColor(Color.Orange)
        .backgroundColor(Color.Brown)
        .onClick(() => {
          promptAction.showToast({
            message: '我被点击了'
          })
        })

      Button('我是按钮')
      Button('我是按钮')
      Text('你好哇')

      Column() {

      }
      .width(100)
      .height(100)
      .backgroundColor(Color.Grey)
    }
    .backgroundColor(Color.Pink)
  }
}