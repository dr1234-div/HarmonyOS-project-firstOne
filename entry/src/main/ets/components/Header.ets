import { router } from '@kit.ArkUI';

@Component
export default struct Header{
  @Prop title: string = '';
	@Prop showBackIcon: boolean = true;

  build() {
    Row(){
			if (this.showBackIcon) {
				Image($r('sys.media.ohos_ic_back')).fillColor(Color.Black).size({width: 20, height: 20}).position({x: 20, y: 18}).onClick(() => {
					router.back();
				})
			}
      Text(this.title).fontSize(20).alignSelf(ItemAlign.Center)
    }.height(56).width('100%').justifyContent(FlexAlign.Center)
    .borderWidth({bottom: px2vp(1)}).borderColor('#c1c1c1')
    .backgroundImageSize(ImageSize.Auto)
  }
}
