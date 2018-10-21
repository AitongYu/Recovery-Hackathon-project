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
class FallingScene: SKScene, SKPhysicsContactDelegate {
    let trash = Trash(image: SKSpriteNode(imageNamed: "trash"))
   let noodle = SKSpriteNode(imageNamed: "noodle")
    let banana = SKSpriteNode(imageNamed: "banana")
   
    override func sceneDidLoad() {
//        trash.scale(to: CGSize(width: 100, height: 100))
//        trash.position = CGPoint(x: (frame.size.width/2) , y: 50)
        trash.physicsBody = SKPhysicsBody (edgeLoopFrom: CGRect (x: 0, y: 100, width: frame.size.width, height: frame.size.height))
     addChild(trash)
//     addChild(floor)
        
        dropBanana()
        dropNoodle()
//        view?.showsPhysics = true
        self.physicsWorld.contactDelegate = self
        
    }
        
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
    }
 
    
    //what happens when the user touches the garbage can
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.trash.move(touchLocation:(touches.first?.location(in:self))!)
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
         self.trash.move(touchLocation:(touches.first?.location(in:self))!)
    }
    func didBegin(_ contact: SKPhysicsContact) {
        if (contact.bodyB.categoryBitMask == trashCategory) && (contact.bodyA.categoryBitMask == nooCategory){
            contact.bodyA.node?.removeFromParent()
        }
        else if (contact.bodyA.categoryBitMask == trashCategory) && (contact.bodyB.categoryBitMask == nooCategory){
           contact.bodyB.node?.removeFromParent()
    }
    }
    
    func dropNoodle() {
    
       
        noodle.position = CGPoint(x: (frame.size.width/2)+50 , y: (frame.size.height/2)+300)
        noodle.scale(to: CGSize(width: 100, height: 100))
        addChild(noodle)
        let movePos = SKAction.move(to: CGPoint(x: CGFloat (arc4random_uniform(UInt32(frame.size.width))), y: (frame.size.height/2)+300), duration: 1)
        let hide = SKAction.hide()
        let show = SKAction.unhide()
        let moveAction = SKAction.moveBy(x: 0, y:-UIScreen.main.bounds.height, duration: 4)
        let seq = SKAction.sequence ([moveAction, hide, movePos,show])
        let loop = SKAction.repeat(seq, count: 20)
        noodle.run (loop)
        noodle.physicsBody?.categoryBitMask = nooCategory
        noodle.physicsBody?.contactTestBitMask = trashCategory
        noodle.physicsBody?.collisionBitMask = trashCategory
    }
    
        
        
    
    func dropBanana(){
        
        banana.position = CGPoint(x: (frame.size.width/2)+100, y: (frame.size.height/2)+300)
        banana.scale(to: CGSize(width: 100, height: 100))
        addChild(banana)
        let movePos = SKAction.move(to: CGPoint(x: (frame.size.width/2)-20, y: (frame.size.height/2)+300), duration: 1)
        let hide = SKAction.hide()
        let show = SKAction.unhide()
        let moveAction = SKAction.moveBy(x: 0, y:-UIScreen.main.bounds.height, duration: 2)
        let seq = SKAction.sequence ([moveAction, hide, movePos,show])
        let loop = SKAction.repeat(seq, count: 20)
        banana.run (loop)
       banana.physicsBody?.categoryBitMask = nooCategory
        banana.physicsBody?.contactTestBitMask = trashCategory
        banana.physicsBody?.collisionBitMask = trashCategory
        
       
        
        
    }
  
}


