//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Nestor Saavedra on 8/18/17.
//  Copyright © 2017 com.SAAVFOXDEV. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    //array of ball images
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    //holds a random number to select random ball image
    var randomBallNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()//call function
    }
    //
    //function to set random image
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(5))//generate random
        
        imageView.image = UIImage(named:ballArray[randomBallNumber])//set uiiamge
    }
    //Motion Ended method for shake gesture
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage() //call cuntion
    }
}

