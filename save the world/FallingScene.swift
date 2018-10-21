//
//  FallingScene.swift
//  save the world
//
//  Created by aitong yu on 2018/10/20.
//  Copyright © 2018 aitong yu. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit
class FallingScene: SKScene {
   
    override func sceneDidLoad() {
       
        //noodle
       
        let moveAction = SKAction.moveBy(x: 0, y:-UIScreen.main.bounds.height, duration: 3)
        let noodle = SKSpriteNode(imageNamed: "noodle")
        noodle.position = CGPoint(x: (frame.size.width/2)+50, y: (frame.size.height/2)+300)
        noodle.scale(to: CGSize(width: 100, height: 100))
        let moveFiveTimes = SKAction.repeat(moveAction, count: 5)
        noodle.run(moveFiveTimes)
        noodle.run(moveAction)
        addChild(noodle)
        dropBanana()
    }
        
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
    }
    
    
        
        
    
    func dropBanana(){
        let banana = SKSpriteNode(imageNamed: "banana")
        banana.position = CGPoint(x: (frame.size.width/2)+100, y: (frame.size.height/2))
        banana.scale(to: CGSize(width: 100, height: 100))
        let moveAction = SKAction.moveBy(x: 5, y:-UIScreen.main.bounds.height, duration: 3)
        banana.run(moveAction)
        addChild(banana)
    }
}


