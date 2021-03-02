//Creating the getMilk() Function
    //func getMilk() {
    //    print("Go to the shops.")
    //    print("Buy 2 cartons of milk.")
    //    print("Pay $2")
    //    print("Come Home")
    //}

func getMilk(howManyMilkCartons : Int, howMuchMoneyRobotWasGiven : Int) -> Int {
    let priceToPay = howManyMilkCartons * 2
    print("Go to the shops.")
    print("Buy \(howManyMilkCartons) cartons of milk.")
    print("Pay $\(priceToPay)")
    print("Come Home")
    
    let change = howMuchMoneyRobotWasGiven - (howManyMilkCartons * priceToPay)
    
    return change
    
}


//Call the getMilk() Function
    var ammountOfChange = getMilk(howManyMilkCartons: 2, howMuchMoneyRobotWasGiven: 1)
if ammountOfChange < 0 {
    let changeNonNegative = abs(ammountOfChange)
    print("Sorry master, I did not have enough money. I was $\(changeNonNegative) short.")
} else {
    print("Hello master, I have returned with $\(ammountOfChange) change.")
}
