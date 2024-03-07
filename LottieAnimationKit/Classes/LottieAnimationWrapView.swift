//
//  LottieAnimationWrapView.swift
//  Pods-LottieAnimationKit_Example
//
//  Created by 易博 on 2024/3/6.
//

import Foundation
import Lottie
import UIKit

@objcMembers class LottieAnimationWrapView: UIView {
    // MARK: - Properties
    private var lottieAnimationView: LottieAnimationView!
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupAnimationView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupAnimationView()
    }
    
    // MARK: - Setup
    private func setupAnimationView() {
        lottieAnimationView = LottieAnimationView()
        lottieAnimationView.contentMode = .scaleAspectFit
        addSubview(lottieAnimationView)
    }
    
    // MARK: - Layout
    override func layoutSubviews() {
        super.layoutSubviews()
        lottieAnimationView.frame = bounds
    }
    
    func loadAnimationWithFilePath(animationPath: String) {
        let animation = LottieAnimation.filepath(animationPath)
        lottieAnimationView.animation = animation
    }
    
    // 播放动画
    func play() {
        lottieAnimationView.play()
    }
    
    // 停止动画
    func stop() {
        lottieAnimationView.stop()
    }
    
    // 暂停动画
    func pause() {
        lottieAnimationView.pause()
    }
    
    // 设置动画循环播放次数
    func setLoopMode(_ loopMode: LottieLoopMode) {
        lottieAnimationView.loopMode = loopMode
    }
}
