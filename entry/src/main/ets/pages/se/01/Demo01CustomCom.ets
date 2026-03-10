import TuanFoot from './components/TuanFoot'
import TuanHead from './components/TuanHead'
import TuanMain from './components/TuanMain'

@Entry // 入口
@Component // 自定义组件
struct CustomDemo {
  build() {
    Column() {
      // 自定义头部组件
      TuanHead()
      // 自定义主体组件
      TuanMain()
      // 自定义的底部组件
      TuanFoot()
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Pink)
  }
}



