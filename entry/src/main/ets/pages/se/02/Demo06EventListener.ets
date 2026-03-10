import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct Demo06EventListener {
  build() {
    Column({ space: 20 }) {
      TextInput({ placeholder: '请输入用户名' })
        // 监听用户的输入框输入
        .onChange((value: string) => { // value就是输入框的值
          promptAction.showToast({
            message: value   // 自动消失
          })
          // promptAction.showToast({
          //   message: '轻量型提示'  // 自动消失
          // })
          // promptAction.showDialog({
          //   message: '弹层级提示'  // 点击消失
          // })
        })
      Button('登录').width('100%')
        .onClick(() => {
          promptAction.showDialog({
            message: '正在登录中...'
          })
        })
    }
    .padding(20)
  }
}