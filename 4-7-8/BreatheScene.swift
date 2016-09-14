//
//  BreatheScene.swift
//  4-7-8
//
//  Created by David Park on 9/9/16.
//  Copyright © 2016 DavidVY. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit


class BreatheScene: SKScene {
	
	var box = SKSpriteNode()
	
	var startPoint = CGPoint()
	var endPoint = CGPoint()
	
	
	override func didMoveToView(view: SKView) {
		
		startPoint = CGPoint(x: view.frame.height / 10, y: view.frame.width / 2)
		endPoint = CGPoint(x: view.frame.height / 1.2, y: view.frame.width / 2)
		
		backgroundColor = SKColor.whiteColor()
		box = SKSpriteNode(color: UIColor.peterRiverColor(), size: CGSizeMake(20, 20))
		box.position = startPoint
		
		animate()
	}
	
	func animate() {
	
		
		let fourAction = SKAction.moveTo(CGPoint(x: 50, y: 50), duration: 4)
		let sevenAction = SKAction.moveTo(CGPoint(x: 200, y: 500), duration: 7)
		let eightAction = SKAction.moveTo(CGPoint(x: 50, y: 500 ), duration: 8)
		
		let sequence = SKAction.sequence([fourAction, sevenAction, eightAction])
		
		box.runAction(SKAction.repeatActionForever(sequence))
		addChild(box)
	}
	

	
	
	
	
	
}