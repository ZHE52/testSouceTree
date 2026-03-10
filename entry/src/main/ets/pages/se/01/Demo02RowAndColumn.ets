@Entry
@Component
struct Demo02RowAndColumn {
  build() {
    Column() {
      // Row的规则:
      // 1. 内容水平排布
      // 2. 默认垂直居中
      // 3. 内容超出, 不会有滚动条
      // space可以快速配置 Column 或者 Row 内容的间隙

      // 当进行调整线性布局时, 想清楚, 调整的是否是布局主方向
      // 1. 是布局主方向 justifyContent
      // 2. 是侧轴方向  alignItems

      // 如果要调整布局主方向的对齐方式: justifyContent
      // 1. Start 左对齐
      // 2. Center 居中
      // 3. End 居右
      // 4. SpaceBetween 两端对齐  ctrl+p看提示
      // 5. SpaceAround 间隙环绕, 靠墙也有间隙
      // 6. SpaceEvenly 间隙等分, 靠墙和盒子间, 间隙一样
      Row() {
        Row().width(50).height(50).border({ width: 2 })
        Row().width(50).height(50).border({ width: 2 })
        Row().width(50).height(50).border({ width: 2 })
        Row().width(50).height(50).border({ width: 2 })
        Row().width(50).height(50).border({ width: 2 })
      }
      .width(300)
      .height(200)
      .border({
        width: 2,
        color: 'red',
        style: BorderStyle.Solid
      })
      .justifyContent(FlexAlign.SpaceEvenly)
     .alignItems(VerticalAlign.Center) // 侧轴对齐


      // 列的布局主方向: 竖着 justifyContent 布局主方向
      // 1. Start 上对齐
      // 2. Center 居中
      // 3. End 底对齐
      // 4. SpaceBetween 两端对齐  ctrl+p看提示
      // 5. SpaceAround 间隙环绕, 靠墙也有间隙
      // 6. SpaceEvenly 间隙等分, 靠墙和盒子间, 间隙一样
      Column() {
        Column().width(50).height(50).border({ width: 2 })
        Column().width(50).height(50).border({ width: 2 })
        Column().width(50).height(50).border({ width: 2 })
        Column().width(50).height(50).border({ width: 2 })
        Column().width(50).height(50).border({ width: 2 })
        Column().width(50).height(50).border({ width: 2 })
      }
      .justifyContent(FlexAlign.SpaceEvenly)
      .alignItems(HorizontalAlign.Start)
      .width(200)
      .height(400)
      .border({
        width: 2,
        color: 'red',
        style: BorderStyle.Solid
      })
    }
    .width('100%')
    .height('100%')
  }
}