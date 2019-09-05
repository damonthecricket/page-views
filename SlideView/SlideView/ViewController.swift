//
//  ViewController.swift
//  SlideView
//
//  Created by Damon Cricket on 05.09.2019.
//  Copyright © 2019 DC. All rights reserved.
//

import UIKit

// MARK: - ViewController

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var scrollView: UIScrollView?
    
    @IBOutlet var views: [UIView] = []

    // MARK: - ViewController LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vWidth = scrollView!.bounds.width
        
        scrollView?.contentSize = CGSize(width: CGFloat(views.count)*vWidth, height: scrollView!.bounds.size.height)
        
        for (idx, v) in views.enumerated() {
            v.frame = CGRect(x: CGFloat(idx)*vWidth, y: 0.0, width: vWidth, height: scrollView!.bounds.height)
            scrollView?.addSubview(v)
        }
    }
}

