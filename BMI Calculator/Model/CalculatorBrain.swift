import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    func getBMIValue() -> String{
        let bmiToDecimalValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToDecimalValue
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "nil"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight/(height*height)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor(red: 33/255, green: 150/255, blue: 243/255, alpha: 1.0))
        }
        else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor(red: 76/255, green: 175/255, blue: 80/255, alpha: 1.0))
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor(red: 244/255, green: 67/255, blue: 54/255, alpha: 1.0))
        }
    }

}
