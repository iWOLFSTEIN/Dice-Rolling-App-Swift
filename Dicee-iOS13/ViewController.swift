//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceView1: UIImageView!
    @IBOutlet weak var diceView2: UIImageView!
    
    func randomDiceGenerator(){
        let randomInt1 = Int.random(in: 0..<6)
        let randomInt2 = Int.random(in: 0..<6)
        
        let diceList: [String] = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
        
        diceView1.image = UIImage(imageLiteralResourceName: diceList[randomInt1])
        diceView2.image = UIImage(imageLiteralResourceName: diceList[randomInt2])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randomDiceGenerator()
    }

    @IBAction func rollDice(_ sender: UIButton) {
        
        randomDiceGenerator()
    }
    
    
    
}

