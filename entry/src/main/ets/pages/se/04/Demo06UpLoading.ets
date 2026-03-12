import { promptAction } from '@kit.ArkUI'

@Entry
@ComponentV2
struct Demo06UpLoading {
  // 以当前的日期时间戳, 作为添加内容, 填充20个数组假数据
  @Local list: number[] = Array(20).fill(Date.now())
  // 标记是否在下拉刷新中
  @Local refreshing: boolean = false
  // 标记是否在触底加载中
  @Local isLoading: boolean = false

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

          ListItem() {
            Text('正在拼命加载中...')
              .width('100%')
              .textAlign(TextAlign.Center)
              .height(80)
          }
        }
        // 监听是否触底
        .onReachEnd(() => {
          // 如果目前不是在加载中, 并且还触底了, 说明需要加载更多
          if (!this.isLoading) {
            this.isLoading = true // 标记状态开始加载
            setTimeout(() => {
              this.list.push(...Array(20).fill(Date.now()))
              promptAction.showToast({
                message: '获取20条数据成功'
              })
              // 当获取完数据, 重置加载状态
              this.isLoading = false
            }, 2000)
          }
        })


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