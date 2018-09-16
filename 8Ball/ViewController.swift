//
//  ViewController.swift
//  8Ball
//
//  Created by Mark Quinn on 16/09/2018.
//  Copyright © 2018 Mark Quinn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var ballIndex : Int = 0
    let ballImagesArray  = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var ballImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func shakeButtonPressed(_ sender: UIButton) {
    
    updateBallImage()
    
    }
    
    func updateBallImage(){
        ballIndex = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named : ballImagesArray[ballIndex])
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
}

