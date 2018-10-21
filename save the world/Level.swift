//
//  Level.swift
//  save the world
//
//  Created by aitong yu on 2018/10/19.
//  Copyright © 2018 aitong yu. All rights reserved.
//


import SpriteKit
import GameplayKit

class Level: SKScene {
    var one: SKSpriteNode!
    var two:SKSpriteNode!
    var three:SKSpriteNode!
    var four:SKSpriteNode!
    var homeButton:SKSpriteNode!
    var background: SKSpriteNode!
    
    override func sceneDidLoad() {
      //background
        let image = #imageLiteral(resourceName: "level")
        let text = SKTexture(image:image)
        background = SKSpriteNode(texture: text)
        background.name = "background"
        
        background.zPosition = 0
        background.position = CGPoint(x: frame.size.width/2, y: (frame.size.height/2))
        addChild(background)
        
        //level one
        let image1 = #imageLiteral(resourceName: "one")
        let text1 = SKTexture(image:image1)
        one = SKSpriteNode(texture: text1)
        one.name = "levelOne"
        one.scale(to: CGSize(width: 100, height: 100))
        one.position = CGPoint(x: (frame.size.width/2)-100 , y: (frame.size.height/2 )-200)
        addChild(one)
        //level two
        let image2 = #imageLiteral(resourceName: "two")
        let text2 = SKTexture(image:image2)
        two = SKSpriteNode(texture: text2)
        two.name = "levelTwo"
        two.scale(to: CGSize(width: 100, height:100 ))
        two.position = CGPoint(x: (frame.size.width/2)+100, y: (frame.size.height/2)-100)
        addChild(two)
        //level three
        
        let image3 = #imageLiteral(resourceName: "three")
        let text3 = SKTexture(image:image3)
        three = SKSpriteNode(texture: text3)
        three.name = "levelThree"
        three.scale(to: CGSize(width: 100, height: 100))
        three.position = CGPoint(x: (frame.size.width/2)-50, y: (frame.size.height/2)+70)
        addChild(three)
        //level four
        let image4 = #imageLiteral(resourceName: "four")
        let text4 = SKTexture(image:image4)
        four = SKSpriteNode(texture: text4)
        four.name = "levelFour"
        four.scale(to: CGSize(width: 100, height: 100))
        four.position = CGPoint(x: (frame.size.width/2)+70, y: (frame.size.height/2)+250)
        addChild(four)
        //home Button
        let image5 = #imageLiteral(resourceName: "backArrow")
        let text5 = SKTexture(image:image5)
        homeButton = SKSpriteNode(texture: text5)
        homeButton.name = "homeButton"
        homeButton.scale(to: CGSize(width: 50, height: 50))
        homeButton.position = CGPoint(x: frame.size.width-350, y: (frame.size.height-100))
        addChild(homeButton)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            let location = touch.location(in:self)
            let touchedNode = self.nodes(at:location)
            for node in touchedNode{
                if node.name == "levelOne"{
                    let reveal = SKTransition.reveal(with: .up,
                                                     duration: 1)
                    let newScene = FallingScene(size: CGSize(width: frame.size.width, height: frame.size.height))
                    
                    scene?.view?.presentScene(newScene,
                                              transition: reveal)
                
                }
                if node.name == "levelTwo"{
                    let reveal = SKTransition.reveal(with: .up,
                                                     duration: 1)
                    let newScene = LightSwitch(size: CGSize(width: frame.size.width, height: frame.size.height))
                    
                    scene?.view?.presentScene(newScene,
                                              transition: reveal)
                    
                }
                if node.name == "levelThree"{
                    let reveal = SKTransition.reveal(with: .up,
                                                     duration: 1)
                    let newScene = WaterFlow(size: CGSize(width: frame.size.width, height: frame.size.height))
                    
                    scene?.view?.presentScene(newScene,
                                              transition: reveal)
                    
                }
                if node.name == "levelFour"{
                    let reveal = SKTransition.reveal(with: .up,
                                                     duration: 1)
                    let newScene = Last(size: CGSize(width: frame.size.width, height: frame.size.height))
                    
                    scene?.view?.presentScene(newScene,
                                              transition: reveal)
                    
                }
                if node.name == "homeButton"{
                    let reveal = SKTransition.reveal(with: .down,
                                                     duration: 1)
                    let newScene = GameScene(size: CGSize(width: frame.size.width, height: frame.size.height))
                    
                    scene?.view?.presentScene(newScene,
                                              transition: reveal)
                    
                }
            }
        }
    }
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
    }
    
}
