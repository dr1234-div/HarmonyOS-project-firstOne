import { router } from '@kit.ArkUI'
import Header from '../components/Header';

// Second.ets
@Entry
@Component
struct Second {
  @State message: string = 'Hi there'

  build() {
    Column() {
      // 标题
      Header({ title: "个人信息", showBackIcon: true }).backgroundColor(Color.White);

      // 操作栏
      List() {
        ListItem() {
          Row() {
            Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
              Text('头像')
                .margin({ left: 8 })
              Row() {
                Image($r('app.media.avatar2'))
                  .width(50)
                  .height(50)
                  .borderRadius(50)
                  .border({ width: 3, color: Color.White })
                  .margin({ right: 4 })
                Image($r('app.media.right_icon'))
                  .width(15)
                  .height(15)
              }
            }
          }
          .padding(10)
          .border({
            width: { bottom: 1 },
            color: { bottom: '#f2f2f2' }
          })
        }

        ListItem() {
          Row() {
            Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
              Text('呢称')
                .margin({ left: 8 })
              Row() {
                Text('李先生')
                  .fontSize(14)
                  .fontColor('#8b8b8b')
                Image($r('app.media.right_icon'))
                  .width(15)
                  .height(15)
              }
            }
          }
          .padding(10)
          .border({
            width: { bottom: 1 },
            color: { bottom: '#f2f2f2' }
          })
        }

        ListItem() {
          Row() {
            Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
              Text('账号')
                .margin({ left: 8 })
              Row() {
                Text('16725621')
                  .fontSize(14)
                  .fontColor('#8b8b8b')
                Image($r('app.media.right_icon'))
                  .width(15)
                  .height(15)
              }
            }
          }
          .padding(10)
          .border({
            width: { bottom: 1 },
            color: { bottom: '#f2f2f2' }
          })
        }

        ListItem() {
          Row() {
            Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
              Text('公司')
                .margin({ left: 8 })
              Row() {
                Text('上海xx科技有限公司')
                  .fontSize(14)
                  .fontColor('#8b8b8b')
                Image($r('app.media.right_icon'))
                  .width(15)
                  .height(15)
              }
            }
          }
          .padding(10)
          .border({
            width: { bottom: 1 },
            color: { bottom: '#f2f2f2' }
          })
        }

      }
    }
    .width('100%')
  }
}