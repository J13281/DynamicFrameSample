//
//  ViewController.swift
//  1118
//
//  Created by 谷出広大 on 2019/11/18.
//  Copyright © 2019 谷出広大. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mygrid: MyGrid!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onminus(_ sender: Any) {
        mygrid.frame = mygrid.frame.offset(x: 0, y: 0, width: -10, height: 0)
    }
    
    @IBAction func onplus(_ sender: Any) {
        mygrid.frame = mygrid.frame.offset(x: 0, y: 0, width: 10, height: 0)
    }
}

extension CGRect {
    func offset(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> CGRect {
        return CGRect(
            x: x + self.origin.x,
            y: y + self.origin.y,
            width: width + self.size.width,
            height: height + self.size.height)
    }
}
