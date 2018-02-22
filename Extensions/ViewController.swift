//
//  ViewController.swift
//  Extensions
//
//  Created by Mansi Shah on 2/22/18.
//  Copyright © 2018 Mansi Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnShake: UIButton!
    @IBOutlet var label: UILabel!
    @IBOutlet weak var innerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "I need your attention!"
        label.textColor = .white
        innerView.backgroundColor = .red
        btnShake.setTitle("Hit me!", for: .normal)
        innerView.roundedCorners()
        innerView.setViewBorder(color: .white)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func btnShakeTapped(_ sender: UIButton) {
        innerView.shakeVertically()
    }
    
}

