

func calcBMI (weight : Double, height : Double) {


    let BMI : Double = weight / (height * height)
        if BMI > 25 {
            print("Your BMI is \(BMI), which indicates you are overweight (over 25).")
        } else if BMI > 18.5 {
            print("Your BMI is \(BMI), which indiates you in the healthy range (between 18.5 and 25)!")
        } else {
            print("Your BMI is \(BMI), which indicates you are underweight (under 18.5).")
        }
}

calcBMI(weight: 77.1, height: 1.828)

