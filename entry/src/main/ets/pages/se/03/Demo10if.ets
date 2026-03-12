@Entry
@ComponentV2
struct Demo10if {
  @Local flag: boolean = true
  build() {
    Column() {
      Row() {
        Text('飞行模式:')
        Toggle({//这是啥，有啥用
          type: ToggleType.Switch,
          isOn: this.flag // 将数据往这里做绑定
        })
        .onChange((value) => {
          this.flag = value
        })
      }

      // 条件渲染: 满足条件渲染结构A, 否则渲染结构B
      // if (this.flag) {
      //   Text('飞行模式已开')
      // }
      // else {
      //   Text('5G冲浪中🏄🏻')
      // }

      Text(this.flag ? '飞行模式已开' : '5G冲浪中🏄🏻')
    }
  }
}