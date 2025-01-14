import UIKit

var greeting = "Hello, playground"

func sum(a:Int, b:Int)->Int{
    return a + b
}

func sum(a: Double, b: Double) -> Double{
    return a + b
}

func greetings(name: String)->Void{
    if name.count > 0{
        let msg = "Hello, \(name)"
        print(msg)
    }
    else{
        print("name is less than 0 letters")
    }
}

greetings(name: "") //should print the else

greetings(name: "Leo")
sum(a: 1, b: 1)

for i in 0...10{
    print(sum(a:10, b:i))
}

//a function that checks if a number is the first or last element
//within an array
func test1(x:Int, arr:[Int])->Bool{
    var result = false
    
    let size = arr.count
    if (size == 0){
        result = false
    }
    else{
        result = (arr[0] == x) || (arr[size-1] == x)
    }
    
    return result
}


test1(x: 1, arr: [1, 2, 3]) //first (true)
test1(x: 1, arr: [2, 3, 1]) //last (true)
test1(x: 1, arr: [0, 1, 2, 3]) //middle (false)
test1(x: 1, arr: []) //none (false)



func find(x: Int, arr: [Int])->Int?{
    for i in 0..<arr.count{
        if arr[i] == x {
            return i
        }
    }
    return nil

}

let arr = [2, 3, 4]
let i = find(x: 1, arr: arr)
if let idx = i{
    arr[idx]
}


func score(touchingPowerUp: Bool, touchingSeed: Bool)-> Bool{
    return touchingSeed || touchingPowerUp
}

func xor(a:Bool, b:Bool)->Bool{
    return (a||b) && !(a&&b)
}

score(touchingPowerUp: false, touchingSeed: true)


func calculator(a:Int, b:Int, op:String)->Int?{
    switch op{
    case "+":
        return a + b
    case "-":
        return a - b
    case "*":
        return a * b
    default:
        return nil
    }
}
 var op = "x"
if let result = calculator(a: 1, b: 2, op: op){
    print(result)
}
else{
    print("Incorrect operator")
}
