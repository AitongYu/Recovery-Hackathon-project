//
//  Floor.swift
//  save the world
//
//  Created by aitong yu on 2018/10/21.
//  Copyright © 2018 aitong yu. All rights reserved.
//

import SpriteKit
import GameplayKit

class Floor: SKNode {
    override init(){
        super.init()
        
        //size and pos
        self.position = CGPoint(x:0, y:UIScreen.main.bounds.height/2)
        self.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: UIScreen.main.bounds.width*2, height: 20))
        //apply physics to node
        self.physicsBody?.isDynamic = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
