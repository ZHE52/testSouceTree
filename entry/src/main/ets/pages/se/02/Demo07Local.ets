@Entry
@ComponentV2
struct LocalDemo {
  // 提供了三个组件变量,并用@Local装饰器修饰了,这三个变量具备了【观测变化】的能力
  @Local count: number = 100
  @Local msg: string = '老铁'
  @Local flag: boolean = true
  @Local friendList: string[] = ['刘备', '关羽', '张飞']
  build() {
    Column() {
      Text(this.count.toString()).fontSize(30)
      Text(this.msg).fontSize(30)
      Text(this.flag.toString()).fontSize(30)
      Text(this.friendList.toString()).fontSize(30)

      Button('修改数据').onClick(() => {
        // this.count++ // 修改数字
        // this.msg += '666' // 修改字符串
        // this.flag = !this.flag // 修改布尔值
        // this.friendList.push('赵云') // 修改数组
        // this.friendList[0] = '曹操'  // 基于下标修改数组的项
      })
    }
    .width('100%')
  }
}
