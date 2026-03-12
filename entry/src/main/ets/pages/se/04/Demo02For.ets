// 描述对象的格式
interface PayItem {
  OrderName: string
  OrderPrice: number
  OrderDate: Date
}

@Entry
@Component
struct Demo02For {
  list: PayItem[] = [
    {
      OrderName: '给老婆买口红',
      OrderPrice: 399.00,
      OrderDate: new Date('2025/04/07')
    },
    {
      OrderName: '给老婆买花',
      OrderPrice: 99.00,
      OrderDate: new Date('2025/04/08')
    },
    {
      OrderName: '给自己买手机PureX',
      OrderPrice: 7999.00,
      OrderDate: new Date('2025/04/09')
    },
    {
      OrderName: '给自己买个小米17',
      OrderPrice: 5999.00,
      OrderDate: new Date('2025/04/09')
    }
  ]

  build() {
    Column() {
      // 标题
      Row() {
        Text('支付记录')
          .layoutWeight(1)
          .textAlign(TextAlign.Center)
          .margin({
            left: 30
          })
      }
      .width('100%')
      .padding(16)
      .border({
        width: {
          bottom: 1
        },
        color: '#f4f5f6'
      })

      // 列表内容
      // 列表
      Column() {
        ForEach(this.list, (item: PayItem, index: number) => {
          // 要循环的结构体
          Column({ space: 20 }) {
            // Text(index.toString())
            Text(item.OrderName)
              .fontWeight(FontWeight.Bold)
              .width('100%')
            Row() {
              Text(`￥${item.OrderPrice.toFixed(2)}`).fontColor(Color.Red)
              Text(item.OrderDate.toLocaleDateString())
            }
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
          }
          .width('100%')
          .padding(20)
        })
      }
      .width('100%')
    }
    .width('100%')
  }
}