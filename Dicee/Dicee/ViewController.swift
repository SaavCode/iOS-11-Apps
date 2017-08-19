//
//  ViewController.swift
//  Dicee
//
//  Created by Nestor Saavedra on 8/18/17.
//  Copyright © 2017 com.SAAVFOXDEV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //store random numbers
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    //create  an array for dice images
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
       
       updateDiceImages()
        
        
    }
    
    func updateDiceImages(){
        //generate random numbers from 0 to 5
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print(randomDiceIndex1)
        print(randomDiceIndex2)
        
        //changing image for diceView
        
        //select a random die face
        //diceImageView1.image = #imageLiteral(resourceName: "dice2") // or = UIImage(named: "dice2")
        diceImageView1.image = UIImage(named:diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named:diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    
    
}

