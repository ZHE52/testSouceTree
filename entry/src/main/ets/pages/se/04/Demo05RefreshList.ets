@Entry
@ComponentV2
struct Demo05RefreshList {
  // 以当前的日期时间戳, 作为添加内容, 填充20个数组假数据
  @Local list: number[] = Array(20).fill(Date.now())
  // 标记是否在下拉刷新中
  @Local refreshing: boolean = false

  // 定义结构
  @Builder
  refreshContent() {
    Text('上拉刷新中...')
      .width('100%')
      .textAlign(TextAlign.Center)
  }

  build() {
    Column() {
      Refresh({
        refreshing: $$this.refreshing,
        builder: this.refreshContent()
      }) {
        List() {
          ForEach(this.list, (item: number) => {
            ListItem() {
              Row() {
                Text(item.toString())
              }
              .width('100%')
              .padding(20)
              .border({
                width: { bottom: 1 },
                color: '#ccc'
              })
            }
          })
        }
      }
      // 监听下拉刷新
      .onRefreshing(() => {
        // 下拉刷新, 立刻获取最新的数据
        setTimeout(() => {
          // 获取完最新的数据(模拟获取20条新的数据)
          this.list = Array(20).fill(Date.now())
          // 更新下拉状态
          this.refreshing = false
        }, 1000)
      })
    }
    .width('100%')
    .height('100%')
  }
}