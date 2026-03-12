@Entry
@ComponentV2
struct Demo01IsShow {
  @Local flag: boolean = true
  @Local isShow: boolean = false
  build() {
    Column() {
      // 1. if else / if else if
      //    控制显隐, 本质是在创建和销毁元素  有一定更新成本
      Text('是否开启飞行模式')
      Toggle({
        type: ToggleType.Switch,
        isOn: $$this.flag // $$双向数据绑定
      })
      // .onChange(value => {
      //   this.flag = value
      // })
      if (this.flag) {
        Text('飞行模式已开启 - ✈️')
      }
      else {
        Text('5G冲浪中')
      }

      // 2. 控制元素属性: 宽高/透明度/位置 添加上animation, 可以有动画
      Button('显示侧边栏')
        .onClick(() => {
          this.isShow = !this.isShow
        })
      Column() {
        Text('我是侧边栏')
          .fontSize(30)
        Button('关闭侧边栏').onClick(() => {
          this.isShow = false
        })
      }
      .width('50%')
      .height('100%')
      .translate({
        x: this.isShow ? '0%' : '-100%' // 相对于自身位移, 挪到了屏幕外
      })
      .position({
        left: 0,
        top: 0
      })
      .backgroundColor(Color.Orange)
      // 如果对于修改的属性, 需要有动画, 可以添加 animation
      .animation({
        duration: 200 // 动画时长, 单位ms
      })


      // 3. visibility 属性控制
      Image($r('app.media.heart'))
        .width(100)
        // .visibility(Visibility.Visible) // 默认显示(占位置)
        // .visibility(Visibility.None) // None不占位置, 类似于if的效果
        .visibility(Visibility.Hidden) // Hidden隐藏也占着位置, 他的隐藏不会影响布局
      Image($r('app.media.dragon'))
        .width(100)
    }
    .width('100%')
  }
}