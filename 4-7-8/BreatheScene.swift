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
	var circle = SKShapeNode(circleOfRadius: 40)
	
	var startPoint = CGPoint()
	var endPoint = CGPoint()
	
	
	override func didMoveToView(view: SKView) {
		
//		startPoint = CGPoint(x: view.frame.height / 10, y: view.frame.width / 2)
//		endPoint = CGPoint(x: view.frame.height / 1.2, y: view.frame.width / 2)
		
		backgroundColor = SKColor.whiteColor()
		box = SKSpriteNode(color: UIColor.belizeHoleColor(), size: CGSizeMake(20, 20))
		box.position = startPoint
		
		let centerScreen = CGPoint(x: view.frame.width / 2, y: view.frame.height / 2)
		circle.fillColor = UIColor.blueColor()
		
		circle.position = centerScreen
		addChild(circle)
		
		animateCircle()
	}
	
//	func animate() {
//		
//		let fourAction = SKAction.moveTo(CGPoint(x: 50, y: 50), duration: 4)
//		let sevenAction = SKAction.moveTo(CGPoint(x: 200, y: 500), duration: 7)
//		let eightAction = SKAction.moveTo(CGPoint(x: 50, y: 500 ), duration: 8)
//		
//		let sequence = SKAction.sequence([fourAction, sevenAction, eightAction])
//		
//		box.runAction(SKAction.repeatActionForever(sequence))
//		addChild(box)
//	}
	
	func animateCircle() {
		
		let growAction = SKAction.scaleBy(2, duration: 4)
		let waitAction = SKAction.waitForDuration(7)
		let shrinkAction = SKAction.scaleBy(0.5, duration: 8)
		
		let sequence = SKAction.sequence([growAction, waitAction, shrinkAction])
		
		circle.runAction(SKAction.repeatActionForever(sequence))
		
	}
	
	func animateBar() {
		
	}
	

	
	
	
	
	
}