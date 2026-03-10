import { promptAction } from '@kit.ArkUI'

@Entry
@ComponentV2
struct BaiduLogin {
  @Local username: string = ''
  @Local password: string = ''

  build() {
    Column({ space: 20 }) {
      Image('https://www.baidu.com/img/PCtm_d9c8750bed0b3c7d089fa7d55720d6cf.png')
        .width(180)
      TextInput({ placeholder: '请输入用户名', text: this.username })
        // .onChange(value => {
        //   this.username = value
        // })
        .onChange(value=>{
          this.username=value
        })
      TextInput({ placeholder: '请输入密码', text: this.password })
        .type(InputType.Password)
        .onChange(value => {
          this.password = value
        })
      Button('登录')
        .width('100%')
        .onClick(() => {
          if (this.username === 'admin' && this.password === '123456') {
            promptAction.showDialog({
              message: '登录成功'
            })
            this.username = '' // 清空输入框
            this.password = '' // 清空输入框
          } else {
            promptAction.showDialog({
              message: '用户名或者密码错误'
            })
          }

        })
    }
    .padding(20)
    .width('100%')
  }
}