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
	
	override func loadView() {
		super.loadView()
		self.view = SKView(frame: self.view.frame)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		let scene = BreatheScene(size: view.bounds.size)
		let skView = self.view as! SKView
		skView.showsFPS = true
		skView.showsNodeCount = true
		skView.ignoresSiblingOrder = true
		scene.scaleMode = .ResizeFill
		skView.presentScene(scene)
	}
	
}
