@Entry
@ComponentV2
struct Demo08Count {
  // @Local通常用于监听简单类型和普通数组
  // 如果监视的是对象, 只能监视到对象的替换变化, 监视不到内层属性的变化
  @Local count: number = 999
  build() {
    Column() {
      Row(){
        Button()
          .onClick(() => {
            this.count--
          })
        Text(this.count.toString()).fontSize(20).margin(10)
        Button().onClick(() => {
          this.count++
        })
      }
      Row() {
        Button('-').onClick(() => {
          this.count-- // 一旦数据修改, 视图就会自动更新
        })
        Text(this.count.toString()).fontSize(20).margin(10)
        Button('+').onClick(() => {
          this.count++
        })
      }

    }
    .padding(20)
  }
}