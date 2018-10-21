//
//  GameScene.swift
//  save the world
//
//  Created by aitong yu on 2018/10/19.
//  Copyright © 2018 aitong yu. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit
class GameScene: SKScene {
    var gameName: SKLabelNode!
    var message: SKLabelNode!
    var startButton: SKShapeNode!
    var background:SKSpriteNode!
    
  override func sceneDidLoad() {
       //background
    let image = #imageLiteral(resourceName: "background-1")
    let back = SKTexture(image:image)
    background = SKSpriteNode(texture: back)
    background.zPosition = 0
    background.position = CGPoint(x: frame.size.width/2, y: (frame.size.height/2))
    addChild(background)
    
    //gameName
        gameName = SKLabelNode(fontNamed: "shink")
        gameName.text = "Recovery"
    
        gameName.fontColor = .white
        gameName.fontSize = 70
        gameName.position = CGPoint(x: frame.size.width / 2, y:(frame.size.height / 2)+200)
        self.addChild(gameName)
    
        
        //message
        message = SKLabelNode(fontNamed: "Baskerville-Bold")
        message.text = "You can make a change"
        message.fontColor = .white
    
        message.fontSize = 35
        message.position = CGPoint(x: frame.size.width / 2, y:(frame.size.height / 2) + 70)
        self.addChild(message)
    
        //startButton
    let gradientShader = SKShader(source: "void main() {" +
        "float normalisedPosition = v_path_distance / u_path_length;" +
        "gl_FragColor = vec4(normalisedPosition, normalisedPosition, 0.7, 1.0);" +
        "}")
    startButton = SKShapeNode(rectOf: CGSize(width: 100, height: 50 ),cornerRadius: 20)
      startButton.name = "startButton"
    
      startButton.position = CGPoint (x:frame.size.width / 2, y:(frame.size.height / 2)-300)
    startButton.fillColor = .clear
    startButton.strokeShader = gradientShader
    startButton.lineWidth = 5
    self.addChild(startButton)

       
        
  
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            let location = touch.location(in:self)
            let touchedNode = self.nodes(at:location)
            for node in touchedNode{
                if node.name == "startButton"{
                    let reveal = SKTransition.reveal(with: .left,
                                                    duration: 1)
                    let newScene = GameStory(size: CGSize(width: frame.size.width, height: frame.size.height))
                    
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
