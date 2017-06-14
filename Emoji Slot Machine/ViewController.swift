//
//  ViewController.swift
//  Emoji Slot Machine
//
//  Created by Alden Prokup on 6/14/17.
//  Copyright © 2017 Alden Prokup. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var firstSlot: UILabel!
    @IBOutlet weak var secondSlot: UILabel!
    @IBOutlet weak var thirdSlot: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var jackpot: UILabel!
    
    var emojis = ["😑", "😎", "😂", "😤", "😀", "🤡", "😢", "😫", "😏", "😦"]
    var score = 0
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        scoreLabel.alpha = 0.0
        jackpot.alpha = 0.0
    }

    @IBAction func spinButtonTouched(_ sender: Any)
    {
        let randomEmoji1 = Int(arc4random_uniform(UInt32(emojis.count)))
        firstSlot.text = emojis[randomEmoji1]
        //firstSlot.adjustsFontSizeToFitWidth
        let randomEmoji2 = Int(arc4random_uniform(UInt32(emojis.count)))
        secondSlot.text = emojis[randomEmoji2]
        //secondSlot.adjustsFontSizeToFitWidth
        let randomEmoji3 = Int(arc4random_uniform(UInt32(emojis.count)))
        thirdSlot.text = emojis[randomEmoji3]
        //thirdSlot.adjustsFontSizeToFitWidth
        
        //Three-clown jackpot and two clown points added (With message)
        
        if firstSlot.text == secondSlot.text
        {
            if firstSlot.text == thirdSlot.text
            {
                if thirdSlot.text == secondSlot.text
                {
                    jackpot.alpha = 1.0
                    jackpot.text = "Jackpot! Instant Winner!!!"
                    score += 10000
                    

                }
                else
                {
                    jackpot.alpha = 1.0
                    jackpot.text = "You scored 2 Clowns! 1000 Points!"
                    score += 1000

                }
            }
        }
        scoreLabel.text = "\(score)"
        scoreLabel.alpha = 1.0
    }

}






