//
//  GameStory.swift
//  save the world
//
//  Created by aitong yu on 2018/10/19.
//  Copyright © 2018 aitong yu. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit
class GameStory: SKScene {
    var backButton: SKSpriteNode!
    var continueButton:SKSpriteNode!
    var storyLine: SKSpriteNode!
    
    override func sceneDidLoad() {
        
        //background story Line
        let back = #imageLiteral(resourceName: "story")
        let text = SKTexture(image:back)
        storyLine = SKSpriteNode(texture: text)
        storyLine.zPosition = 0
       
        storyLine.position = CGPoint(x: frame.size.width/2, y: (frame.size.height/2))
        addChild(storyLine)
        
        //backButton
        let image = #imageLiteral(resourceName: "backArrow")
        let texture = SKTexture(image:image)
        backButton = SKSpriteNode(texture: texture)
        backButton.name = "backButton"
        backButton.scale(to: CGSize(width: 25, height: 25))
        backButton.position = CGPoint(x: frame.size.width-350, y: (frame.size.height-50))
   
        addChild(backButton)
        //Continue
        let image1 = #imageLiteral(resourceName: "forwardArrow")
        let contin = SKTexture(image:image1)
        backButton = SKSpriteNode(texture: contin)
        backButton.name = "continueButton"
        backButton.scale(to: CGSize(width: 25, height: 25))
        backButton.position = CGPoint(x: frame.size.width-50, y: (frame.size.height-400))
        
        addChild(backButton)
        //storyLine
       
        
        
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            let location = touch.location(in:self)
            let touchedNode = self.nodes(at:location)
            for node in touchedNode{
                if node.name == "backButton"{
                    let reveal = SKTransition.reveal(with: .left,
                                                     duration: 1)
                    let gameScene = GameScene(size: CGSize(width: frame.size.width
                        , height: frame.size.height))
                    
                    scene?.view?.presentScene(gameScene,
                                       transition: reveal)
                }
               if node.name == "continueButton"{
                    let reveal = SKTransition.reveal(with: .left,
                                                     duration: 1)
                    let levelScene = Level(size: CGSize(width: frame.size.width
                        , height: frame.size.height))
                    
                    scene?.view?.presentScene(levelScene,transition: reveal)
                }
                }
            }
        }
    
    override func update(_ currentTime: TimeInterval) {
    // Called before each frame is rendered
    
}
   

}
