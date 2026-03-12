// 英雄卡片列表:
// 1. 赵云   武力值: 99
// 2. 关羽   武力值: 100
// 3. 诸葛亮  武力值: 30
@ObservedV2
class Hero {
  @Trace name: string
  @Trace attack: number
  constructor(name: string, attack: number) {
    this.name = name
    this.attack = attack
  }
}
@ObservedV2
class Eat{
  name: string
 @Trace price: number
  constructor(name: string, price: number) {
    this.name=name
    this.price=price
  }
}

@Entry
@ComponentV2
struct Demo03Observed {
  @Local heroList: Hero[] = [
    new Hero('赵云', 99),
    new Hero('关羽', 100),
    new Hero('诸葛亮', 30),
  ]
  @Local eatList:Eat[]=[
    new Eat('小炒肉', 25),
    new Eat('松花菜', 250),
  ]
  build() {
    Column({ space: 10 }) {
      List(){
        //Text('英雄列表').fontSize(40)
        // 基于数组, 遍历渲染对象数组 item遍历的每一项对象
        ForEach(this.heroList, (item: Hero) => {
          // 组件外部, 往组件内部传值, 通过对象属性的方式传值
          HeroItem({
            item: item // 支持简写
          })
        })
        ForEach(this.eatList,(item:Eat)=>{
          EatItem({
            item:item//这里为什么会爆红，然后我写的这个eat有啥用呢，不就是一个遍历食物的东西吗
          })
        })
      }

    }
    .width('100%')
  }
}

@Component
struct HeroItem {
  item: Hero = new Hero('', 0)
  build() {
    Column() {
      Text(`姓名: ${this.item.name}`).fontSize(30)
      Text(`武力值: ${this.item.attack}`).fontSize(20)
      Button('练兵场+1').onClick(() => {
        this.item.attack++
      })
    }
    .padding(10)
    .width('80%')
    .height(150)
    .border({ width: 2 })
  }
}
@Component
struct EatItem {
  item: Eat = new Eat('', 0)
  build() {
    Column() {
      Text(`食品名字: ${this.item.name}`).fontSize(30)
      Text(`价格: ${this.item.price}`).fontSize(20)
      Button('吃的人越多，价格越高+1').onClick(() => {
        this.item.price++
      })
    }
    .padding(10)
    .width('80%')
    .height(150)
    .border({ width: 2 })
  }
}