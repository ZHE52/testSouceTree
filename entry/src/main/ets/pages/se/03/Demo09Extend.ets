import { promptAction } from '@kit.ArkUI'

@Extend(Text) // 支持传参
function myText(size: number) {
  // 支持组件的自有属性
  .fontSize(size)
  .fontColor(Color.Orange)
  // 支持通用属性
  .backgroundColor(Color.Brown)
  .margin(10)
  .onClick(() => {
    promptAction.showDialog({
      message: '文字大小是' + size
    })
  })
}

@Entry
@Component
struct Demo09Extend {
  build() {
    Column() {
      Text('我是文本1')
        .myText(20)
      Text('我是文本2')
        .myText(40)
    }
    .width('100%')
  }
}