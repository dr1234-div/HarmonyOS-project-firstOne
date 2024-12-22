import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';
import Header from '../components/Header';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';
  scroller: Scroller = new Scroller;

  build() {
    Column() {
      // 标题
      Header({ title: "我的", showBackIcon: false }).backgroundColor(Color.White);

      Scroll(this.scroller) {
        Column() {
          // 个人信息栏
          Row() {
            Column() {
              Image($r('app.media.avatar2'))
                .width(100)
                .height(100)
                .borderRadius(50)
                .margin({ left: 5, right: 20 })
              ;
            }

            Column() {
              Text('上海英本外贸有限公司').fontSize(14);
              Flex({
                direction: FlexDirection.Row,
                alignItems: ItemAlign.Center,
                justifyContent: FlexAlign.SpaceBetween
              }) {
                Column() {
                  Text('李先生').fontSize(28).textAlign(TextAlign.Start).margin({ top: 10 });
                  Row() {
                    Image($r('app.media.vip_icon'))
                      .width(12)
                      .height(12)
                      .margin({ right: 2 })
                    Text('高级会员')
                      .fontSize(12)
                      .fontColor(Color.White)
                  }
                  .margin({ top: 4 })
                  .backgroundColor('#d0970f')
                  .padding({
                    left: 10,
                    top: 5,
                    right: 10,
                    bottom: 4
                  })
                  .borderRadius(50)
                }

                Image($r('app.media.right_icon'))
                  .width(15)
                  .height(15)
              }.width('60%')
            }
            .alignItems(HorizontalAlign.Start)
            .onClick(() => {
              console.info(`Succeeded in clicking the 'Next' button.`)
              router.pushUrl({ url: 'pages/Second' }).then(() => {
                console.info('Succeeded in jumping to the second page.')
              }).catch((err: BusinessError) => {
                console.error(`Failed to jump to the second page. Code is ${err.code}, message is ${err.message}`)
              })
            })
          }
          .width('100%')
          .padding(10)
          .backgroundColor(Color.White)
          .backgroundImage($r("app.media.info_bg"))
          .backgroundImageSize({ width: '100%', height: '100%' })

          //  续费栏
          Row() {
            Column() {
              Text('我的高级会员：2024-12-15到期')
                .fontSize(12)
                .padding({ top: 10, bottom: 10 })
              Row() {
                Flex({
                  direction: FlexDirection.Row,
                  alignItems: ItemAlign.Center,
                  justifyContent: FlexAlign.SpaceBetween
                }) {
                  Column() {
                    Row() {
                      Image($r('app.media.bilingual_call'))
                        .width(15)
                        .height(15)
                        .margin({ left: 15, right: 12 })
                      Column({ space: 3 }) {
                        Text('双语通话')
                          .fontSize(16)
                        Text('语种自动判别，随心说即时译')
                          .fontSize(12)
                          .fontColor('#ababab')
                      }
                      .alignItems(HorizontalAlign.Start)
                    }
                  }

                  Image($r('app.media.has_icon'))
                    .width(15)
                    .height(15)
                    .margin({ right: 10 })
                }
              }
              .padding({ top: 10, bottom: 10 })

              Row() {
                Flex({
                  direction: FlexDirection.Row,
                  alignItems: ItemAlign.Center,
                  justifyContent: FlexAlign.SpaceBetween
                }) {
                  Column() {
                    Row() {
                      Image($r('app.media.simultaneous'))
                        .width(15)
                        .height(15)
                        .margin({ left: 15, right: 12 })
                      Column({ space: 3 }) {
                        Text('同声传译')
                          .fontSize(16)
                        Text('精准理解语境，翻译效果媲美专八水平')
                          .fontSize(12)
                          .fontColor('#ababab')
                      }
                      .alignItems(HorizontalAlign.Start)
                    }
                  }

                  Image($r('app.media.has_icon'))
                    .width(15)
                    .height(15)
                    .margin({ right: 10 })
                }
              }
              .padding({ top: 10, bottom: 10 })

              Row() {
                Flex({
                  direction: FlexDirection.Row,
                  alignItems: ItemAlign.Center,
                  justifyContent: FlexAlign.SpaceBetween
                }) {
                  Column() {
                    Row() {
                      Image($r('app.media.AI_customer_service'))
                        .width(15)
                        .height(15)
                        .margin({ left: 15, right: 12 })
                      Column({ space: 3 }) {
                        Text('AI客服')
                          .fontSize(16)
                        Text('7x24小时智能咨询，跨时区沟通体验好')
                          .fontSize(12)
                          .fontColor('#ababab')
                      }
                      .alignItems(HorizontalAlign.Start)
                    }
                  }

                  Image($r('app.media.has_icon'))
                    .width(15)
                    .height(15)
                    .margin({ right: 10 })
                }
              }
              .padding({ top: 10, bottom: 10 })

              Button() {
                Text('点击续费')
                  .fontColor('#a0482d')
              }
              .type(ButtonType.Normal)
              .margin({
                top: 10,
                bottom: 15
              })
              .backgroundColor('#f3bd87')
              .width('100%')
              .height('6%')
              .borderRadius(4)
            }
            .alignItems(HorizontalAlign.Start)
          }
          .width('100%')
          .padding(10)
          .margin({ top: 15 })
          .backgroundColor(Color.White)

          // 操作栏
          List() {
            ListItem() {
              Row() {
                Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
                  Text('系统权限设置')
                    .margin({ left: 8 })
                  Image($r('app.media.right_icon'))
                    .width(15)
                    .height(15)
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
                  Text('用户协议')
                    .margin({ left: 8 })
                  Image($r('app.media.right_icon'))
                    .width(15)
                    .height(15)
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
                  Text('隐私政策')
                    .margin({ left: 8 })
                  Image($r('app.media.right_icon'))
                    .width(15)
                    .height(15)
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
                  Text('第三方SDK')
                    .margin({ left: 8 })
                  Image($r('app.media.right_icon'))
                    .width(15)
                    .height(15)
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
                  Text('关于外贸通')
                    .margin({ left: 8 })
                  Image($r('app.media.right_icon'))
                    .width(15)
                    .height(15)
                }
              }
              .padding(10)
            }
          }
          .backgroundColor(Color.White)
          .margin({ top: 15 })

          //   退出
          Button('退出登录')
            .width('100%')
            .height(40)
            .fontColor('#1182fe')
            .type(ButtonType.Normal)
            .margin({
              top: 10,
            })
            .backgroundColor(Color.White)
          // 注销
          Button('注销账号')
            .width('100%')
            .height(40)
            .fontColor(Color.Red)
            .type(ButtonType.Normal)
            .margin({
              top: 10,
              bottom: 50
            })
            .backgroundColor(Color.White)
        }
      }
      .height('100%')
      .padding({ bottom: 10 })
      .margin({ bottom: 20 })
      .edgeEffect(EdgeEffect.Spring)
      .scrollSnap({
        snapAlign: ScrollSnapAlign.START,
        snapPagination: 400,
        enableSnapToStart: true,
        enableSnapToEnd: true
      })

    }
    .margin(0)
    .padding(0)
    .backgroundColor('#f0f2f5')
    .height('100%')
    .width('100%')
  }
}