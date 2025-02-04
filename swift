var text = "hello"
print(text)

func area(length:Int, width: Int)-> Int{
    return length * width
}

print(area(length: 2, width: 4))

//using variables
func areaWithVariables(length:Int, width: Int)-> Int{
    let area = length * width
    return area
}
print()
let length = 10
let width = 2
print(areaWithVariables(length: length, width: width))


//formats a name
func formatName(firstName: String, lastName: String)-> String{
    let name = firstName + " " + lastName
    return name
}
print()

let formattedName = formatName(firstName: "Leo", lastName: "P")
print("Formatted Name: \(formattedName)")

print()
func addNumber(number: Int) -> Int{
    let numAddedWithItself = number + number    
    return numAddedWithItself
}
let total = addNumber(number: 10)
print(total)

print()

struct Book {
    let title: String
    let price: Double
}

func calculateTotalCost(_ books: [Book]) -> Double{
    var addedPrice: Double = 0.0
    for book in books{
        addedPrice += book.price
    }
    return addedPrice
}

let books = [
    Book(title: "Poop", price: 50.99), 
    Book(title: "Poop 2", price: 10000.00) 
]

let totalCost = calculateTotalCost(books)
print("Total cost of books: \(totalCost)")

print()

func areaTriangle(base: Int, height: Int) -> Int{
    let area = base * height / 2
    return area
}

let findArea = areaTriangle(base: 10, height: 10)
print(findArea)

print()

func isEqual(num1: Int, num2: Int) -> Bool{
  if (num1 == num2){
      return true
  }  
  else{
      return false
  }
}

let findEqualNum = isEqual(num1: 2, num2: 2)
print(findEqualNum)

print()

func printHello(word: String)->String{
    if(word != "hello"){
        print("not hello")
        return "not hello"
    }
    else{
        print("what up")
        return "what up"
    }
}

let printHelloWord = printHello(word: "shit")
print(printHelloWord)

print()

let loop: Int = 10
var i = 0
while i < loop{
    print("hello")
    i += 1
}