//
//  LJTagView.swift
//  LJDemoBase_Example
//
//  Created by 丿番茄 on 2019/7/15.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class LJTagView: UIView {

    public var tagLab: UILabel?
    public var count: Int = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        if nil == tagLab {
            tagLab = UILabel()
            tagLab?.frame = CGRect.init(x: 0, y: 0, width: frame.size.width, height: frame.size.height)
            tagLab?.backgroundColor = .lightGray
            tagLab?.textColor = .white
            addSubview(tagLab!)
        }
        alpha = 0
        backgroundColor = .purple
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func show() {
        
        tagLab?.text = "弹出第\(count)个测试框"
        addSubview(tagLab!)
        UIView.animate(withDuration: 0.35) {
            self.alpha = 1
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            UIView.animate(withDuration: 0.35, animations: {
                self.alpha = 0
            }, completion: { (_) in
                self.tagLab!.removeFromSuperview()
            })
        }
    }
}
