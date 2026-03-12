interface Person {
  id: number
  name: string
  age: number
}

@Entry
@ComponentV2
struct Parent {
  @Local heroList: Person[] = [
    { id: 1, name: '吕布', age: 18 },
    { id: 2, name: '张飞', age: 20 },
    { id: 3, name: '貂蝉', age: 21 }
  ]

  build() {
    Column() {
      Button() {
        Text('在第1项后插入新项').fontSize(30)
      }
      .onClick(() => {
        // 往下标为1的位置, 添加1项
        // 从下标为1的位置开始, 删除0个, 添加的项
        this.heroList.splice(1, 0, {
          id: Math.random(),
          name: '吕蒙',
          age: 20
        });
      })

      ForEach(this.heroList, (item: Person) => {
        ChildItem({ item: item })
      }, (item: Person, index) => item.id.toString())
    }
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height('100%')
    .backgroundColor(0xF1F3F5)
  }
}



@ComponentV2
struct ChildItem {
  @Param item: Person = {} as Person;
  // 组件渲染出来, 默认会触发的钩子函数 => 基于此可以判断组件是否更新
  aboutToAppear(): void {
    console.log('我被渲染了', this.item.name)
  }
  build() {
    Text(this.item.name + this.item.age)
      .fontSize(30)
  }
}