//
//  MainViewController.swift
//  4-7-8
//
//  Created by David Park on 9/8/16.
//  Copyright © 2016 DavidVY. All rights reserved.
//

import UIKit
import SpriteKit
import SnapKit

class MainViewController: UIViewController {
	
	var box = UIView()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupScene()
		
		startSequence()
	}
	
	func setupScene() {
		view.backgroundColor = UIColor.peterRiverColor()
		
		view.addSubview(box)
		box.snp_makeConstraints { (make) in
			make.width.equalTo(view.snp_width).dividedBy(10)
			make.height.equalTo(view.snp_width).dividedBy(10)
			
		}
		
	}
	
	func startSequence() {
		
		//4 seconds in
		
		
		//7 seconds hold
		
		
		//8 seconds out
	}
	
	
}
