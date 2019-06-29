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
            $0.top.equal(to: view.topAnchor, offsetBy: 32)
            $0.leading.equal(to: view.leadingAnchor, offsetBy: 16)
            $0.height.equal(to: 80)
        }
        
        label2.layout {
            $0.top.equal(to: label.bottomAnchor, offsetBy: 16)
            $0.leading.equal(to: label.leadingAnchor)
            $0.width.equal(to: label.widthAnchor)
            $0.height.equal(to: label.heightAnchor)
        }
    }


}

