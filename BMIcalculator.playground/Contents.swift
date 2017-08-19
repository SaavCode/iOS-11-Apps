//: Playground - noun: a place where people can play

import UIKit

func getBMI(weight : Double, height : Double ) ->String {
    let bmi = weight / pow(height, 2)
    
    let shortenedBMI = String(format: "%.2f", bmi)//two decimal places format, gets rounded to two decimal places

    var interpretation = ""
    
    if bmi > 25 {
        
        interpretation = "you are overweight"
    }
    else if (bmi >= 18.5 && bmi < 25){
        
        interpretation = "you are normal weight"
    }
    else {
        
        interpretation = "you are underweight"
    }
   
    return "your bmi is \(shortenedBMI) and \(interpretation)"
}

var bmiResult = getBMI(weight: 63, height: 1.8)
print(bmiResult)


//func bmiCalculatorImperialUnits(weightInPounds: Double, heightInFeet : Double, remainderInInches : Double){
//
//    let weightInKg = weightInPounds * 0.45359237
//    let totalInches = heightInFeet * 12  + remainderInInches
//    let heightInM = totalInches * 0.0254
//
//    let bmi = weightInKg / pow(heightInM, 2)
//}
//bmiCalculatorImperialUnits(weightInPounds: 140, heightInFeet: 5, remainderInInches: 11)

