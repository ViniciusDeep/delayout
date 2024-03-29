//
//  ViewController.swift
//  delayout
//
//  Created by Bruno Rocha on 29/06/19.
//  Copyright © 2019 Bruno Rocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        label.text = "Um texto legal"
        label.backgroundColor = UIColor.lightGray
        view.addSubview(label)
        
        let label2 = UILabel()
        label2.text = "Um texto legal"
        label2.backgroundColor = UIColor.gray
        view.addSubview(label2)                
        
        label.layout {
            $0.top == view.topAnchor + 32
            $0.leading == view.leadingAnchor + 16
            $0.trailing >= view.trailingAnchor
            $0.height == 80
        }
        
        label2.layout {
            $0.top == label.bottomAnchor + 16
            $0.leading == label.leadingAnchor
            $0.width == label.widthAnchor
            $0.height == view.heightAnchor * 0.5
        }
    }


}

