import { AbilityConstant, ConfigurationConstant, UIAbility, Want } from '@kit.AbilityKit';
import { hilog } from '@kit.PerformanceAnalysisKit';
import { window } from '@kit.ArkUI';
import { data } from '@kit.TelephonyKit';

export default class EntryAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam): void {
    this.context.getApplicationContext().setColorMode(ConfigurationConstant.ColorMode.COLOR_MODE_NOT_SET);
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onCreate');
  }

  onDestroy(): void {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');
    // 设置WindowStage的事件订阅
    try {
      windowStage.on('windowStageEvent', (data) => {
        let stageEventType:window.WindowStageEventType = data;
        switch (stageEventType) {
          case window.WindowStageEventType.SHOWN: // 切到前台
            hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
            break;
            case window.WindowStageEventType.ACTIVE: // 获焦状态
              hilog.info(0x0000, 'testTag', '%{public}s', '获焦状态');
            case  window.WindowStageEventType.INACTIVE: // 失焦状态
              hilog.info(0x0000, 'testTag', '%{public}s', '失焦状态');
              case  window.WindowStageEventType.HIDDEN:
                hilog.info(0x0000, 'testTag', '%{public}s', '切到后台');
                case window.WindowStageEventType.RESUMED:
                  hilog.info(0x0000, 'testTag', '%{public}s', '可交互状态');
                  case window.WindowStageEventType.PAUSED:
                    hilog.info(0x0000, 'testTag', '%{public}s', '不可交互状态');
          default:
            break;
        }
      })
    } catch (e) {
    }
    // 设置应用需要加载的页面
    windowStage.loadContent('pages/Index', (err) => {
      if (err.code) {
        hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      hilog.info(0x0000, 'testTag', 'Succeeded in loading the content.');
    });
  }

  onWindowStageDestroy(): void {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  onForeground(): void {
    // Ability has brought to foreground
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');
  }

  onBackground(): void {
    // Ability has back to background
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');
  }
}