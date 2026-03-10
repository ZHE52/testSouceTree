@Entry
@Component
struct Demo03Example {
  @State message: string = 'Hello World';

  build() {
    Row() {
      Row({ space: 3 }) {
        Text('1465').fontSize(20).fontWeight(700)
        Text('获赞')
      }

      Row({ space: 3 }) {
        Text('13').fontSize(20).fontWeight(700)
        Text('朋友')
      }

      Row({ space: 3 }) {
        Text('260').fontSize(20).fontWeight(700)
        Text('关注')
      }

      Row({ space: 3 }) {
        Text('110').fontSize(20).fontWeight(700)
        Text('粉丝')
      }
    }
    .justifyContent(FlexAlign.SpaceEvenly)
    .height(60)
    .width('100%')
    .backgroundColor(Color.Pink)
  }
}