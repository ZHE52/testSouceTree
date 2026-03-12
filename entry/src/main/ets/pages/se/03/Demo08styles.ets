import { promptAction } from '@kit.ArkUI'

// 看起来是函数, 不支持传参, 是一个轻量小封装
@Styles
function payStyle() {//把样式都抽出来，统一使用样式，其实也有缺陷，就是只能用一种，一个样式就是一个，缺点是不支持传参数
  // 支持通用样式 / 通用事件
  .width('100%')
  .height(50)
  .borderRadius(10)
  .backgroundColor('#5abe70')
  .onClick(() => {
    promptAction.showDialog({
      message: '微信支付中...'
    })
  })
}

@Entry
@Component
struct Demo08styles {
  @Styles
  payStyle() {
    // 支持通用样式(为主) / 通用事件
    .width('100%')
    .height(50)
    .borderRadius(5)
    .backgroundColor('#3274f6')
    .onClick(() => {
      promptAction.showDialog({
        message: '微信支付中...'
      })
    })
  }

  build() {
    Column({ space: 30 }) {
      Button('微信支付')
        // 如果borderRadius生效不了, 老版本, 需要配置个type
        .type(ButtonType.Normal)
        .payStyle()

      Button('微信支付')
        .payStyle()

      Button('微信支付')
        .payStyle()

      Text('我是文本1')
        .fontSize(40)
        .fontColor(Color.Orange)
      Text('我是文本2')
        .fontSize(40)
        .fontColor(Color.Orange)
    }
    .padding(10)
    .width('100%')
  }
}