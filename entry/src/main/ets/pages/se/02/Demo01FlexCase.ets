import { LengthMetrics } from '@kit.ArkUI'

@Entry
@Component
struct FlexCase {
  build() {
    // 一行里面放若干个"小Tips" => Row 问题不会自动换行
    // Flex: 伸缩布局 (当内容溢出时, 默认会帮我们进行压缩空间)
    // 1. 不换行, 超出会压缩
    // 2. 可以设置换行
    //    Flex({
    //      wrap: FlexWrap.Wrap // 控制换行
    //    })
    Column() {
      // Text('阶段选择')
      Text('阶段选择')
        .fontSize(30)
        .fontWeight(700) // 100-900
      // Flex({
      //   wrap: FlexWrap.Wrap,
      //   justifyContent: FlexAlign.Start,
      //   space: {
      //     main: LengthMetrics.vp(10), // 主轴间隙
      //     cross: LengthMetrics.vp(10) // 侧轴间隙
      //   }
      // })
      Flex({
        wrap:FlexWrap.Wrap,//?
        justifyContent:FlexAlign.Start,//?
        space:{
          main:LengthMetrics.vp(10),
          cross:LengthMetrics.vp(10)
        }
      })
      {
        Text('ArkUI')
          .padding(10)
          .backgroundColor('#c6c6c6')
        Text('ArkTS')
          .padding(10)
          .backgroundColor('#c6c6c6')
        Text('界面开发')
          .padding(10)
          .backgroundColor('#c6c6c6')
        Text('系统能力')
          .padding(10)
          .backgroundColor('#c6c6c6')
        Text('权限控制')
          .padding(10)
          .backgroundColor('#c6c6c6')
        Text('元服务')
          .padding(10)
          .backgroundColor('#c6c6c6')
        Text('权限控制')
          .padding(10)
          .backgroundColor('#c6c6c6')
        Text('元服务')
          .padding(10)
          .backgroundColor('#c6c6c6')
        Text('权限控制')
          .padding(10)
          .backgroundColor('#c6c6c6')
        Text('元服务')
          .padding(10)
          .backgroundColor('#c6c6c6')
        Text('权限控制')
          .padding(10)
          .backgroundColor('#c6c6c6')
        Text('元服务')
          .padding(10)
          .backgroundColor('#c6c6c6')
      }
    }
    .padding(10)

  }
}