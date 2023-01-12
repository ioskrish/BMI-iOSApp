

import Foundation
import UIKit
struct calculateBrain {
    var bmi : BMI?
    func getbmivalue () -> String{
        let bmicalculate = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmicalculate
        
    }
    
    func getAdvice () -> String {
        return bmi?.advice ?? "not advice"
    }
    
    func getColor () -> UIColor {
        return bmi?.color ?? .white
    }
    mutating func calculateBMI(height:Float ,weight:Float){
     let bmivalue =  weight / (height * height)
        if bmivalue < 18.5 {
            bmi = BMI(value: bmivalue, advice: "Eat More Pies", color: .blue)
        }else if bmivalue < 24.9 {
            bmi = BMI(value: bmivalue, advice: "Fit as Fiddle", color: .green)
            
        }else {
            bmi = BMI(value: bmivalue, advice: "Eat less pie", color: .red)
        }
       
        
    }
    
}
