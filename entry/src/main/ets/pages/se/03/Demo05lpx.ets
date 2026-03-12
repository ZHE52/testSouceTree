@Entry
@Component
struct Demo05lpx {//也是没啥用，直接过
  @State message: string = 'Hello World';

  build() {
    Column() {
      // 如果不配置, 默认一行按照 720lpx 算
      // 假设, 希望配置成 360lpx 占满一行
      // resources/base/profile/main-pages.json
      Text()
        // lpx的优势: 不用管其他屏幕, 其他屏幕, 自适应等比例缩放
        .width('375lpx')
        .height('100lpx')
        .backgroundColor(Color.Orange)
    }
  }
}