//
//  ViewController.swift
//  MagicEight
//
//  Created by Charles Nolan on 8/22/18.
//  Copyright © 2018 Charles Nolan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var eightBallView: UIImageView!
    
    var ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallNumber : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        shakeTheBall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        shakeTheBall()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        shakeTheBall()
    }
    
    func shakeTheBall() {
        randomBallNumber = Int(arc4random_uniform(5))
        eightBallView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
}

