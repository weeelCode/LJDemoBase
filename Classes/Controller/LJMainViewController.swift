//
//  LJMainViewController.swift
//  LJDemoBase_Example
//
//  Created by 丿番茄 on 2019/7/15.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

public class LJMainViewController: UIViewController {

    public var tagView: LJTagView?
    
    override public func viewDidLoad() {
        
        super.viewDidLoad()
        
        if nil == tagView {
            tagView = LJTagView()
            tagView?.frame = CGRect.init(x: 32, y: 128, width: view.frame.width - 64, height: 100)
            view.addSubview(tagView!)
        }
        view.backgroundColor = .white
    }
    
    override public func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        tagView?.show()
    }
}
