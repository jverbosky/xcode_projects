//
//  ViewController.swift
//  jen_tutorial
//
//  Created by something on 4/20/17.
//  Copyright © 2017 something. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var menuShowing = false
    
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var myShadowView: UIView!
    @IBOutlet weak var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myScrollView.contentSize.height = 1000
        myShadowView.layer.shadowOpacity = 1
        myShadowView.layer.shadowRadius = 6
        let url=URL(string: "http://mentor-mentee-app.herokuapp.com/")
        myWebView.loadRequest(URLRequest(url: url!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func openMenu(_ sender: Any) {
        if (menuShowing) {
            leadingConstraint.constant = -250
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        else {
            leadingConstraint.constant = 0
            UIView.animate(withDuration: 0.3, animations: {
                self.view.layoutIfNeeded()
            })
        }
        menuShowing = !menuShowing
    }

}

