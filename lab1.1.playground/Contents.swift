import Foundation

func add(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func subtract(_ a: Double, _ b: Double) -> Double {
    return a - b
}

func multiply(_ a: Double, _ b: Double) -> Double {
    return a * b
}

func divide(_ a: Double, _ b: Double) -> Double? {
    if b != 0 {
        return a / b
    } else {
        print("You can't divide by zero!")
        return nil
    }
}

func power(_ a: Double, _ b: Double) -> Double {
    return Foundation.pow(a, b)
}

func calculator() {
    print("Enter the first number:", terminator: " ")
    guard let a = Double(readLine() ?? "") else {
        print("Incorrect input of the first number!")
        return
    }
    
    print("Enter the second number:", terminator: " ")
    guard let b = Double(readLine() ?? "") else {
        print("Incorrect input of the second number!")
        return
    }
    
    print("Choose an operation (+, -, *, /, ^):", terminator: " ")
    guard let operatorInput = readLine(), let operation = operatorInput.first else {
        print("Incorrect operator!")
        return
    }
    
    var result: Double = 0.0
    
    switch operation {
    case "+":
        result = add(a, b)
    case "-":
        result = subtract(a, b)
    case "*":
        result = multiply(a, b)
    case "/":
        if let divisionResult = divide(a, b) {
            result = divisionResult
        } else {
            return
        }
    case "^":
        result = power(a, b)
    default:
        print("Incorrect operator!")
        return
    }
    
    print("Result: \(result)")
}

calculator()
