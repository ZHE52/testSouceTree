// 虚拟像素vp
// 1. 不同设备, 显示能力有差异的 => 显示能力越强, 物理像素越小
//    联想: 小霸王游戏机 / 手机显示能力强

// 2. 手机显示能力强, 都是一样强?
//    手机的显示能力: 1倍屏, 2倍屏, 3倍屏, 4倍屏 (出厂就决定了)
//    10vp
//    UI设计稿, 给的是px  2倍图720/750  3倍图1080 切换成1倍, 量多少px写多少vp

// 测试的华为手机: 3倍屏

@Entry
@Component
struct Demo04PxVp {//没啥用，直接过
  build() {
    Column() {
      Text('我是文本')
        .fontSize(30)
        .width('900px') // 300vp
        .height('900px') // 300vp
        .backgroundColor(Color.Orange)

      Text('我是文本')
        .fontSize(30)
        .width(300) // 300 => 2倍屏600, 3倍屏900
        .height(300) // 300 => 2倍屏600, 3倍屏900
        .backgroundColor(Color.Orange)
    }
  }
}