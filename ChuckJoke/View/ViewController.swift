//
//  ViewController.swift
//  ChuckJoke
//
//  Created by Daniel Washington Ignacio on 27/10/21.
//

import UIKit
import SwiftGifOrigin

class ViewController: UIViewController {
    @IBOutlet weak var jokeLabel: UILabel!
    
    @IBOutlet weak var gifImage: UIImageView!
    var controller: JokeInfoController = JokeInfoController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //let jeremyGif = UIImage.gif(name: "taphere")
        
     
        gifImage.loadGif(asset: "taphere")
        
        self.controller.getJoke{ result, error in
            
            if result {
                print("entrei, e deu certo")
                print(self.controller.arrayJokeInfo.count)
                for n in self.controller.arrayJokeInfo{
                    self.jokeLabel.text = n.value
                }
            }else{
                print("aaa")
            }
            
        }
    }

    @IBAction func jokeButton(_ sender: Any) {
        self.controller.getJoke{ result, error in
            
            if result {
                print("entrei, e deu certowwwww")
                print(self.controller.arrayJokeInfo.count)
                for n in self.controller.arrayJokeInfo{
                    self.jokeLabel.text = n.value
                }
            }else{
                print("aaa")
            }
            
        }
    }
    
}

