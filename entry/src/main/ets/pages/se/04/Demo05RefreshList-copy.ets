import { promptAction, PromptAction } from '@kit.ArkUI'

@Entry
@ComponentV2
struct Demo05RefreshList {
  @Local list:number[]=Array(20).fill(Date.now())
  @Local isRefreshing:boolean=false
  @Local isLoading:boolean=false
  @Builder
  refreshContent(){
    Text('刷新中。。。。。')
      .width('100%')
      .textAlign(TextAlign.Center)
  }
  build() {
    Column() {
      //todo 1.这是列表的刷新
      //todo 2.监听
      //todo 3.通过date给假数据
      //todo 4.标记刷新状态
      Refresh({
        refreshing: $$this.isRefreshing,//refreshing这个是自带的，别搞错了，不是自定义的
        builder: this.refreshContent,
      }) {
        List() {//触底的内容，在这里显示内容
            ForEach(this.list,(item:number)=>{
                ListItem(){
                  Row(){
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
          ListItem(){
            Text('正在拼命加载中...')
              .width('100%')
              .textAlign(TextAlign.Center)
              .height(80)
          }
        }
        .onReachEnd(()=>{
                //核心代码，触底就是一个setTime
          if (!this.isLoading) {
            this.isLoading = true // 标记状态开始加载
            setTimeout(() => {
              this.list.push(...Array(20).fill(Date.now()))
              promptAction.showToast({
                message: '刷新成功'
              })
              //获取完数据，重置加载状态
              this.isLoading = false
            }, 3000)
          }

        })
      }
      .onRefreshing(()=>{
          setTimeout(()=>{
            this.list=Array(20).fill(Date.now())
            this.isRefreshing=false
          },3000)
      })

    }
    .width('100%')
    .height('100%')
  }
}