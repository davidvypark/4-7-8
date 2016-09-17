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
	var circle = SKShapeNode(circleOfRadius: 120)
	
	var startPoint = CGPoint()
	var endPoint = CGPoint()
	
	let countSequence = ["1", "2", "3", "4", "1", "2", "3", "4", "5", "6", "7", "1", "2", "3", "4", "5", "6", "7", "8"]
	let numberLabel = SKLabelNode(text: "Start")
	
	
	override func didMoveToView(view: SKView) {
		
		setupScene()
		
		animateCircle()
		animateNumber()
		
//		startPoint = CGPoint(x: view.frame.height / 10, y: view.frame.width / 2)
//		endPoint = CGPoint(x: view.frame.height / 1.2, y: view.frame.width / 2)
		
	}
	
	func setupScene() {
		backgroundColor = SKColor.softBlue()
		box = SKSpriteNode(color: UIColor.belizeHoleColor(), size: CGSizeMake(20, 20))
		box.position = startPoint
		
		let centerScreen = CGPoint(x: view!.frame.width / 2, y: view!.frame.height / 2)
		circle.fillColor = UIColor.emeraldColor()
		circle.lineWidth = 3
		circle.position = centerScreen
		
		addChild(circle)
		
		let smallerCircle = SKShapeNode(circleOfRadius: 30)
		smallerCircle.position = centerScreen
		smallerCircle.fillColor = UIColor.clearColor()
		smallerCircle.lineWidth = 1
		smallerCircle.strokeColor = UIColor.sunflowerColor()
		
		addChild(smallerCircle)
		
		let largerCircle = SKShapeNode(circleOfRadius: 120)
		largerCircle.position = centerScreen
		largerCircle.fillColor = UIColor.clearColor()
		largerCircle.lineWidth = 1
		largerCircle.strokeColor = UIColor.sunflowerColor()
		
		addChild(largerCircle)
		
		let scaleAction = SKAction.scaleBy(0.25, duration: 0)
		circle.runAction(scaleAction)
		
		numberLabel.position = CGPoint(x: view!.frame.width / 2, y: view!.frame.height / 5)
		
		addChild(numberLabel)
		
		let typeLabel = SKLabelNode(text: "4-7-8")
		typeLabel.position = CGPoint(x: view!.frame.width / 6, y: view!.frame.height / 1.1)
		
		addChild(typeLabel)
		
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
		
		let growAction = SKAction.scaleBy(4, duration: 4)
		let waitAction = SKAction.waitForDuration(7)
		let shrinkAction = SKAction.scaleBy(0.25, duration: 8)
		
		let sequence = SKAction.sequence([growAction, waitAction, shrinkAction])
		
		circle.runAction(SKAction.repeatActionForever(sequence))
		
	}
	
	func animateBar() {
		
	}
	
	func animateNumber() {
		let waitAction = SKAction.waitForDuration(1)
		var i = 0
		let update = SKAction.runBlock {
			self.numberLabel.text = self.countSequence[i]
			print (i)
			if i == 18 {
				i = 0
			} else {
				i += 1
			}
		}
		
		let sequence = SKAction.sequence([update, waitAction])
		
		numberLabel.runAction(SKAction.repeatActionForever(sequence))
		
	}
	

	
	
	
	
	
}