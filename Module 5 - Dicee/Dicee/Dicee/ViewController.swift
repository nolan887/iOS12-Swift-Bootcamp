//
//  ViewController.swift
//  Dicee
//
//  Created by Charles Nolan on 8/16/18.
//  Copyright © 2018 Charles Nolan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollTheDice()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollTheDice()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rollTheDice()
    }
    
    func rollTheDice() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        leftDice.image = UIImage(named: diceArray[randomDiceIndex1])
        
        randomDiceIndex2 = Int(arc4random_uniform(6))
        rightDice.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
}

