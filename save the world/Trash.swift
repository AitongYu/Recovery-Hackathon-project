//
//  Person.swift
//  save the world
//
//  Created by aitong yu on 2018/10/21.
//  Copyright © 2018 aitong yu. All rights reserved.
//

import SpriteKit
import GameplayKit

class Trash: SKNode {
    
    init(image:SKSpriteNode){
        super.init()
        self.position = CGPoint(x: (frame.size.width/2)+50 , y: 100)
        self.xScale = 0.5
        self.yScale = 0.5
        
        //physics body
  
        self.physicsBody = SKPhysicsBody(texture: SKTexture(imageNamed: "trash"), size: CGSize(width: image.size.width * 0.5, height: image.size.height*0.5))
    
    self.addChild(image)
     self.physicsBody?.categoryBitMask = trashCategory
        self.physicsBody?.contactTestBitMask = nooCategory; bananaCat
        self.physicsBody?.collisionBitMask = nooCategory ; bananaCat
  
}
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
}
//ability to drag trashcan
    func move(touchLocation:CGPoint){
        if self.calculateAccumulatedFrame().contains(touchLocation){
            self.position.x = touchLocation.x
        }
}
}



