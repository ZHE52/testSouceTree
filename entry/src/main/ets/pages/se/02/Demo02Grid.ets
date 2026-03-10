@Entry
@Component
struct GridDemo {
  build() {

    Grid() {
      GridComItem()
      GridComItem()
      GridComItem()
      GridComItem()
      GridComItem()
      GridComItem()
      GridComItem()
      GridComItem()
      GridComItem()
      GridComItem()
      GridComItem()
      GridComItem()
      GridComItem()
      GridComItem()
      GridComItem()
      GridComItem()
      GridComItem()
      GridComItem()
    }
    .columnsTemplate('1fr 1fr 1fr') // 控制几列, 以及控制列占的宽度
    .rowsTemplate('1fr 1fr 1fr')
    .columnsGap(10) // 控制列的间隙
    .rowsGap(10) // 控制行的间隙
    .width('100%')
    .height(300)
    .backgroundColor(Color.Orange)
  }
}

@Component
struct GridComItem {
  build() {
    GridItem() {
      Column({ space: 5 }) {
        Image($r('app.media.startIcon'))
          .width(50)
        Text('淘金币')
      }
    }
    .border({ width: 2 })
  }
}