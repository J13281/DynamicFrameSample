//
//  MyGrid.swift
//  1118
//
//  Created by 谷出広大 on 2019/11/18.
//  Copyright © 2019 谷出広大. All rights reserved.
//

import UIKit

enum TouchType {
    case left
    case top
    case right
    case bottom
}

protocol MyGridDelegate {
    func onClick(type: TouchType)
}

class MyGrid: UIView {
    
    var delegate: MyGridDelegate?
    var layouts: [() -> ()] = []
    
    func load() {
        
        let rects = [
        { CGRect(x: 0, y: self.frame.height / 3, width: self.frame.width / 3, height: self.frame.height / 3) },
        { CGRect(x: self.frame.width / 3, y: 0, width: self.frame.width / 3, height: self.frame.height / 3) },
        ]
        
        for item in rects {
            let v = UIView()
            layouts.append { v.frame = item() }
            v.backgroundColor = .systemBlue
            addSubview(v)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layouts.forEach { $0() }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        load()
    }
    
    required init?(coder : NSCoder) {
        super.init(coder: coder)
        load()
    }
}
