//
//  LottieAnimationCustomView.m
//  LottieAnimationKit
//
//  Created by 易博 on 2024/3/7.
//

#import "LottieAnimationCustomView.h"
#import "LottieAnimationKit/LottieAnimationKit-Swift.h"

@interface LottieAnimationCustomView()

@property (nonatomic,strong) LottieAnimationWrapView *lottieView;

@end

@implementation LottieAnimationCustomView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubview:self.lottieView];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addSubview:self.lottieView];
    }
    return self;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    self.lottieView.frame = self.bounds;
}

///// load指定地址的动效文件
///// - Parameter animationPath: lottie资源json文件地址
//- (void)loadAnimationWithPath:(NSString *)animationPath {
//    [self.lottieView loadAnimationWithFilePathWithAnimationPath:animationPath];
//}

///// 开始播放动效
///// - Parameter completion: 播放完成回调
//- (void)playWithCompletion:(LottieAnimationCustomViewBlock)completion {
//    [self.lottieView playWithCompletionBlock:^(BOOL finished) {
//        if (completion) {
//            completion(finished);
//        }
//    }];
//}

///// 从指定帧范围播放
///// - Parameters:
/////   - from: 开始帧
/////   - to: 结束帧
/////   - completion: 播放回调
//- (void)playFrameFrom:(CGFloat)from toFrame:(CGFloat)to withCompletion:(LottieAnimationCustomViewBlock)completion {
//    [self.lottieView playFromFrame:from toFrame:to completionBlock:^(BOOL finished) {
//        if (completion) {
//            completion(finished);
//        }
//    }];
//}
//
///// 设置是否循环播放，默认不循环
///// - Parameter loopMode: 是否循环播放
//- (void)setupLoopMode:(BOOL)loopMode {
//    [self.lottieView updateLoopModeWithIsLoop:YES];
//}
//
///// 停止播放
//- (void)stop {
//    [self.lottieView stop];
//}

- (LottieAnimationWrapView *)lottieView {
    if (!_lottieView) {
        _lottieView = [[LottieAnimationWrapView alloc]init];
    }
    return _lottieView;
}

@end
