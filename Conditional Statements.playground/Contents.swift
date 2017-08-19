//: Playground - noun: a place where people can play

import UIKit


func loveCalculator (yourName : String, theirName : String) -> String{
    
    let loveScore = arc4random_uniform(101) //returns value from 0 to 101-1
    
    if loveScore > 80 {
        
        
        return "love is great : love score \(loveScore)"
    }
    else if loveScore > 40 && loveScore <= 80{
        return "youre great together : love score \(loveScore)"

    }
    else{
        return "there is no love : love score \(loveScore)"
        
    }

}

print(loveCalculator(yourName: "Nestor", theirName: "Melissa"))
