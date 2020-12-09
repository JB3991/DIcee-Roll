//
//  ViewController.swift
//  DIcee Roll
//
//  Created by Jonathan Burnett on 09/12/2020.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceeIndex1 : Int = 0
    var randomDiceeIndex2 : Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        updateDiceImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImage()
    }
    
    func updateDiceImage() {
        
        randomDiceeIndex1 = Int(arc4random_uniform(6)+1)
        randomDiceeIndex2 = Int(arc4random_uniform(6)+1)
        
        diceImageView1.image = UIImage(named: "dice\(randomDiceeIndex1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceeIndex2)")
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }

}
