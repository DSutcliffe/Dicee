//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftDiceImage: UIImageView!
    @IBOutlet weak var rightDiceImage: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Not required, was a challenge in the course
//        leftDiceImage.alpha = 0.5
//        rightDiceImage.alpha = 0.5
        
        // Use Image Literal to see images in code
//        leftDiceImage.image = #imageLiteral(resourceName: "DiceSix")
//        rightDiceImage.image = #imageLiteral(resourceName: "DiceTwo")
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("Button got tapped.")
//        leftDiceImage.image = #imageLiteral(resourceName: "DiceFour")
//        rightDiceImage.image = #imageLiteral(resourceName: "DiceFour")
        
//        leftDiceImage.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][leftDiceNumber]
//        rightDiceImage.image = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")][rightDiceNumber]
        
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        // Lower_Bound...Upper_Bound inclusive
        leftDiceImage.image = diceArray[Int.random(in: 0...5)]
        rightDiceImage.image = diceArray[Int.random(in: 0...5)]
    }
    
}

