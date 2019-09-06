//
//  ViewController.swift
//  StopWatch
//
//  Created by olive on 2019/9/6.
//  Copyright © 2019 olive. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let box = UIView()
        box.backgroundColor = .green
        self.view.addSubview(box)
        
        let time = UILabel()
        time.text = "0"
        time.font = UIFont.systemFont(ofSize: 100)
        box.addSubview(time)
        
        let reset = UIButton()
        reset.setTitle("Reset", for: .normal)
        reset.setTitleColor(.black, for: .normal)
        reset.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        reset.addTarget(self, action: #selector(resetClick), for: .touchUpInside)
        box.addSubview(reset)
        
        let leftBtn = UIButton()
        leftBtn.backgroundColor = .blue
        self.view.addSubview(leftBtn)
        
        let rightBtn = UIButton()
        rightBtn.backgroundColor = .red
        self.view.addSubview(rightBtn)
        
        box.snp.makeConstraints { (make) -> Void in
            make.top.left.right.equalTo(self.view)
            make.height.equalTo(self.view.bounds.size.height/2)
        }
        
        leftBtn.snp.makeConstraints{ (make) -> Void in
            make.left.bottom.equalTo(self.view)
            make.top.equalTo(self.view.bounds.size.height/2)
            make.width.equalTo(self.view.bounds.size.width/2)
        }
        
        rightBtn.snp.makeConstraints { (make) -> Void in
            make.right.bottom.equalTo(self.view)
            make.top.equalTo(self.view.bounds.size.height/2)
            make.left.equalTo(leftBtn.snp_rightMargin)
        }
        
        time.snp.makeConstraints { (make) -> Void in
            make.width.height.equalTo(100)
            make.center.equalToSuperview()
        }
        
        reset.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(50)
            make.right.equalTo(-50)
            make.width.height.equalTo(100)
        }
        
    }
    
    @objc func resetClick() -> Void {
        print(".....")
    }


}

