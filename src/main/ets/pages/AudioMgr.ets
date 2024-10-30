import { media } from '@kit.MediaKit';
import { BusinessError } from '@kit.BasicServicesKit';
/**
 * 音效播放管理类
 */
export class AudioMgr {
  private TAG: string = 'AudioMgr';
  // 单例对象
  private static mAudioMgr: AudioMgr | null = null;
  // 播放器实例
  private mAVPlayer: media.AVPlayer | undefined = undefined;
  // 是否初始化
  private isInit: boolean = false;
  // 创建单例
  public static Ins(): AudioMgr{
    if(!AudioMgr.mAudioMgr){
      AudioMgr.mAudioMgr = new AudioMgr();
    }
    return AudioMgr.mAudioMgr;
  }
  /**
   * 初始化接口（可以提前初始化，也可以直接调用play接口，使用时初始化）
   */
  public async init() {
    console.log(this.TAG, "play init start");
    // 创建avPlayer实例对象
    this.mAVPlayer = await media.createAVPlayer();
    // 创建状态机变化回调函数
    this.registerStateChange(this.mAVPlayer);
    // error回调监听函数,当avPlayer在操作过程中出现错误时调用 reset接口触发重置流程
    this.registerErrorCall(this.mAVPlayer);
    // 获取raw音效资源
    let fileDescriptor = await getContext(this).resourceManager.getRawFd("dong.mp3");
    this.mAVPlayer.fdSrc = {
      fd: fileDescriptor.fd,
      offset: fileDescriptor.offset,
      length: fileDescriptor.length
    };
    this.isInit = true;
    console.log(this.TAG, "play init end");
    return this.mAVPlayer;
  }
  /**
   * 注册异常回调
   * @param avPlayer
   */
  private registerErrorCall(avPlayer: media.AVPlayer){
    avPlayer.on('error', (err: BusinessError) => {
      console.log(this.TAG, " err:" + JSON.stringify(err));
      // 调用reset重置资源，触发idle状态
      avPlayer.reset();
    })
  }
  /**
   * 注册状态变化回调
   * @param avPlayer
   */
  private registerStateChange(avPlayer: media.AVPlayer){
    avPlayer.on('stateChange', async (state: string, reason: media.StateChangeReason) => {
      switch (state) {
      // 成功调用reset接口后触发该状态机上报
        case 'idle':
          console.info(this.TAG, 'stateChange idle-release');
          avPlayer.release(); // 调用release接口销毁实例对象
          break;
      // avplayer 设置播放源后触发该状态上报
        case 'initialized':
          console.info(this.TAG, 'stateChange initialized-prepare');
          avPlayer.prepare();
          break;
      // prepare调用成功后上报该状态机
        case 'prepared':
          console.info(this.TAG, 'stateChange prepared-setVolume');
          avPlayer.setVolume(1); // The value ranges from 0.00 to 1.00.
          break;
      // play成功调用后触发该状态机上报
        case 'playing':
          console.info(this.TAG, 'stateChange playing');
          break;
      // pause成功调用后触发该状态机上报
        case 'paused':
          console.info(this.TAG, 'stateChange paused');
          break;
      // 播放结束后触发该状态机上报
        case 'completed':
          console.info(this.TAG, 'stateChange completed');
          break;
      // stop接口成功调用后触发该状态机上报
        case 'stopped':
          console.info(this.TAG, 'stateChange stopped');
          // avPlayer.reset(); // 调用reset接口初始化avplayer状态
          break;
        case 'released':
          console.info(this.TAG, 'stateChange released');
          break;
        default:
          console.info(this.TAG, 'stateChange default');
          break;
      }
    });
  }

  /**
   * 播放音效
   */
  public async play(){
    console.log(this.TAG, "play isInit " + this.isInit);
    if(this.isInit){
      await this.mAVPlayer?.play();
    }else{
      console.log(this.TAG, "play play-init start");
      this.mAVPlayer = await this.init();
      console.log(this.TAG, "play play start");
      await this.mAVPlayer?.play();
      console.log(this.TAG, "play play end");
    }
  }

  /**
   * 销毁音效管理工具
   */
  public async destroy(){
    console.log(this.TAG, "play destroy start");
    await this.mAVPlayer?.release();
    this.mAVPlayer = undefined;
    this.isInit = false;
    AudioMgr.mAudioMgr = null;
    console.log(this.TAG, "play destroy end");
  }

}
