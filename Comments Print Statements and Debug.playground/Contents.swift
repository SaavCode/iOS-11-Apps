//: Playground - noun: a place where people can play
//functions

import UIKit

//func getMilk(howManyMilkCartons : Int){ //takes an input in form of an int
//
//    print("got to the shops")
//    print("buy \(howManyMilkCartons) cartons of milk")
//
//    let priceToPay = howManyMilkCartons  * 2
//
//    print("pay $\(priceToPay)")
//    print("come home")
//
//}

func getMilk(howManyMilkCartons : Int, howMuchMoneryRobotWasGiven : Int) -> Int { //takes an input in form of an int, AND RETURNS AN INT
    
    print("got to the shops")
    print("buy \(howManyMilkCartons) cartons of milk")
    
    let priceToPay = howManyMilkCartons  * 2
    let change = howMuchMoneryRobotWasGiven - priceToPay
    
    print("pay $\(priceToPay)")
    print("come home")
    
    return change
}

var amountOfChange = getMilk(howManyMilkCartons: 4, howMuchMoneryRobotWasGiven: 10)

print("Hello master heres your amount $ \(amountOfChange) change")




