@Entry
@Component
struct Demo03Relative {
  build() {
    RelativeContainer() {
      RelativeContainer() {
        Row().width(80).height(80).backgroundColor(Color.Orange)
          .alignRules({
            // 自己的: 上中下
            // 自己的: 左中右
            middle: {
              anchor: '__container__', // 相对于父对齐
              align: HorizontalAlign.Center
            }
          })
        Row().width(80).height(80).backgroundColor(Color.Brown)
          .alignRules({
            // 自己的: 上中下
            center: {
              anchor: '__container__',
              align: VerticalAlign.Center
            },
            // 自己的: 左中右
            left: {
              anchor: '__container__', // 相对于父对齐
              align: HorizontalAlign.Start
            }
          })
          .margin({ left: 30 })
          .id('BrownBox')
        Row().width(80).height(80).backgroundColor(Color.Blue)
        // 将绿盒子相对于棕盒子布局, 放到红盒子下面
        Row().width(80).height(80).backgroundColor(Color.Green)
          .alignRules({
            top: {
              anchor: 'BrownBox', // 参照棕盒子布局
              align: VerticalAlign.Bottom
            },
            left: {
              anchor: 'BrownBox', // 参照棕盒子布局
              align: HorizontalAlign.End
            }
          })
          .offset({ x: 10, y: 10 })
      }
      .width(300)
      .height(300)
      .backgroundColor(Color.Gray)
      // 对齐规则:
      .alignRules({
        // 1. 自己的: 上中下 top center bottom
        top: {
          // 参照物: 可以参照老爹__container__, 也可以参照兄弟(需要起id名)
          anchor: '__container__',
          // 对齐方式: 对齐参照物的哪个部分
          align: VerticalAlign.Top
        },
        // 2. 自己的: 左中右 left middle right
        middle: {
          anchor: '__container__',
          align: HorizontalAlign.Center
        }
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Pink)
  }
}