//
//  LottieAnimationCustomView.h
//  LottieAnimationKit
//
//  Created by 易博 on 2024/3/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^LottieAnimationCustomViewBlock)(BOOL isFinished);

@interface LottieAnimationCustomView : UIView

/// load指定地址的动效文件
/// - Parameter animationPath: lottie资源json文件地址
- (void)loadAnimationWithPath:(NSString *)animationPath;

/// 开始播放动效
/// - Parameter completion: 播放完成回调
- (void)playWithCompletion:(LottieAnimationCustomViewBlock)completion;

/// 从指定帧范围播放
/// - Parameters:
///   - from: 开始帧
///   - to: 结束帧
///   - completion: 播放回调
- (void)playFrameFrom:(CGFloat)from toFrame:(CGFloat)to withCompletion:(LottieAnimationCustomViewBlock)completion;

/// 设置是否循环播放，默认不循环
/// - Parameter loopMode: 是否循环播放
- (void)setupLoopMode:(BOOL)loopMode;

/// 停止播放
- (void)stop;

@end

NS_ASSUME_NONNULL_END
