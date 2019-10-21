//
//  GameViewController.swift
//  snakeGame
//
//  Created by Tamara Erlij on 20/10/19.
//  Copyright © 2019 Tamara Erlij. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Criação da cena
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            view.showsFPS = false
            view.showsNodeCount = false
        }
    }
    // Jogo pode rotacionar
    override var shouldAutorotate: Bool {
        return true
    }
    
    // Orientação da tela
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
    // Não apresentar StatusBar
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
