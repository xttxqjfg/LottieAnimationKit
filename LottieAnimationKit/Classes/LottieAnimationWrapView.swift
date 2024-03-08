//
//  LottieAnimationWrapView.swift
//  LottieAnimationKit
//
//  Created by 易博 on 2024/3/7.
//

import UIKit
import Lottie

public typealias LottieAnimationCompletionBlock = (_ completed: Bool) -> Void

open class LottieAnimationWrapView: UIView {
    // MARK: - Properties
    private var lottieAnimationView: LottieAnimationView!
    private var isLoopMode: Bool!
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAnimationView()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupAnimationView()
    }
    
    // MARK: - Setup
    private func setupAnimationView() {
        lottieAnimationView = LottieAnimationView()
        isLoopMode = false
        addSubview(lottieAnimationView)
    }
    
    // MARK: - Layout
    open override func layoutSubviews() {
        super.layoutSubviews()
        lottieAnimationView.frame = bounds
    }
    
//    @objc public func loadAnimationWithFilePath(animationPath: String) {
//        let animation = LottieAnimation.filepath(animationPath)
//        lottieAnimationView.animation = animation
//    }
    
//    // 播放动画
//    @objc public func play(completionBlock: LottieAnimationCompletionBlock? = nil) {
//        lottieAnimationView.play { completed in
//            if((completionBlock) != nil) {
//                completionBlock!(completed)
//            }
//        }
//    }
    
//    // 播放指定范围帧的动画
//    @objc public func play(fromFrame: CGFloat, toFrame: CGFloat, completionBlock: LottieAnimationCompletionBlock? = nil) {
//        lottieAnimationView.play(fromFrame: fromFrame, toFrame: toFrame, loopMode: isLoopMode ? .loop : .playOnce) { completed in
//            if((completionBlock) != nil) {
//                completionBlock!(completed)
//            }
//        }
//    }
//    
//    // 停止动画
//    @objc public func stop() {
//        lottieAnimationView.stop()
//    }
//    
//    // 暂停动画
//    @objc public func pause() {
//        lottieAnimationView.pause()
//    }
//    
//    // 设置动画循环播放模式
//    @objc public func updateLoopMode(isLoop: Bool) {
//        isLoopMode = isLoop
//        lottieAnimationView.loopMode = isLoopMode ? .loop : .playOnce
//    }
}

