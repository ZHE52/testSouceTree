// @Local的观测能力仅限于被装饰的变量本身。
// 1. 当装饰简单类型时，能够观测到对变量的赋值；
// 2. 当装饰数组类型时，能观测到数组整体以及数组元素项的变化；
// 3. 当装饰对象类型时，仅能观测到对对象整体的赋值；
import { promptAction } from '@kit.ArkUI'
import { text } from '@kit.ArkGraphics2D'

// 给对象定义类型的两种方式
// 1. 接口 interface
// 2. 类 class
// 接口类型: 标记了对象的格式
interface User {
  name: string
  age: number
}

interface Class {
  name: string
  studentNum: number
}

@Entry
@ComponentV2
struct Demo01Local {
  // 1. @Local 简单类型
  @Local money: number = 600
  @Local title: string = '老铁'
  @Local flag: boolean = true
  // 2. @Local 普通数组
  @Local list: string[] = ['刘备', '关羽', '张飞']
  // 3. @Local 对象  { name: '帅鹏', age: 18 }
  @Local user: User = {
    name: '帅鹏',
    age: 18
  }
  @Local class: Class = {
    name: '长俊班级',
    studentNum: 100
  }

  build() {
    Column() {
      // Text(this.money.toString()).fontSize(30)
      // Button('搞钱 +10000').onClick(() => {
      //   // money已经被@Local装饰了, 变量的变化能侦听到
      //   // 一旦修改了, 驱动界面组件更新
      //   this.money += 10000
      // }).margin({ bottom: 50 })

      // Text(this.title).fontSize(30)
      // Text(this.flag.toString()).fontSize(30)
      // Button('改值测试').onClick(() => {
      //   this.title += '666'
      //   this.flag = !this.flag
      // }).margin({ bottom: 50 })

      Text(this.list.toString()).fontSize(30)
      Button('新增数组项').onClick(() => {
        this.list.push('黄忠')
      }).margin({ bottom: 50 })

      Text('用户:' + this.user.name).fontSize(30)
      Text('年纪:' + this.user.age).fontSize(30)
      Button('修改对象测试').onClick(() => {
        // this.user.name = '鹏哥'
        // this.user.age++
        // promptAction.showDialog({
        //   message: this.user.name + this.user.age
        // })


        // 对于整个对象覆盖, 就能监视到
        this.user = {
          name: '吕布',
          age: 30
        }
      })

      Text('如果直接是一个对象呢：'+ JSON.stringify(this.class))
      Text('班级名称：'+ this.class.name)
      Text('班级人数：'+ this.class.studentNum)
      Button('点击修改班级信息').onClick(() => {
        promptAction.showToast({
          message: '点击了班级修改按钮'
        })
        this.class.name = '鸭梨班'
        this.class.studentNum = 10
      })
      Text('--------------分割线---------------------')
      Text('如果直接是一个对象呢：'+ JSON.stringify(this.class))
      Text('班级名称：'+ this.class.name)
      Text('班级人数：'+ this.class.studentNum)
      Button('点击修改班级信息').onClick(() => {//为什么这里就可以修改成功了呢
        promptAction.showToast({
          message: '点击了班级修改按钮'
        })
        this.class={
          name: '鸭梨班',
          studentNum: 10
        }
      })
    }
    .width('100%')
  }
}