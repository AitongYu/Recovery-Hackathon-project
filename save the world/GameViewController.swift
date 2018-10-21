//
//  GameViewController.swift
//  save the world
//
//  Created by aitong yu on 2018/10/19.
//  Copyright © 2018 aitong yu. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    var scene: GameScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let sKView = view as! SKView
        scene = GameScene(size: sKView.bounds.size)
        sKView.presentScene(scene)
        scene.physicsWorld.speed = 0.999
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
