//
//  ViewController.swift
//  4-7-8
//
//  Created by David Park on 9/8/16.
//  Copyright © 2016 DavidVY. All rights reserved.
//

import UIKit
import SnapKit

class WelcomeViewController: UIViewController {
	
	let fullScreenButton = UIButton()

	override func viewDidLoad() {
		super.viewDidLoad()
		
		setupScene()
		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
	
	func screenTapped() {
		let mainVC = MainViewController()
		
		//need some sexy transition animation here
		self.presentViewController(mainVC, animated: true, completion: nil)
		
	}
	
	func setupScene() {
		view.backgroundColor = UIColor.belizeHoleColor()
		
		view.addSubview(fullScreenButton)
		fullScreenButton.snp_makeConstraints { (make) in
			make.edges.equalTo(view.snp_edges)
		}
		fullScreenButton.addTarget(self, action: #selector(screenTapped), forControlEvents: .TouchDown)
	}


}

