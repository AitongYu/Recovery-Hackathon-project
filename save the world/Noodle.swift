//
//  Noodle.swift
//  save the world
//
//  Created by aitong yu on 2018/10/20.
//  Copyright © 2018 aitong yu. All rights reserved.
//

import SpriteKit
import GameplayKit

class Noodle: SKNode {
    init(image:SKSpriteNode){
        super.init()
    self.setScale(0.4)
        //apply physics body to node
        self.physicsBody = SKPhysicsBody(texture: SKTexture(imageNamed:"noodle"),size:CGSize(width:image.size.width * 0.01, height:image.size.height * 0.1) )
        self.physicsBody?.restitution = 1.0
        self.physicsBody?.friction = 0
        self.physicsBody?.linearDamping = 0
        //self.physicsBody?.velocity = CGVector (dx: 0, dy: (self.physicsBody?.velocity.dy)! - 100)
        //add the image to the object
        self.addChild(image)
        
    
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
