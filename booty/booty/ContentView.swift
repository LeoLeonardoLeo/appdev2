import SwiftUI

struct ContentView: View {
    @State private var number1: Int = 0
    @State private var number2: Int = 0
    @State private var added: Int = 0
    @State private var results: [Int] = []

    func addNumbers(a: Int, b: Int) {
        added = a + b
        results.append(added)
    }

    var body: some View {
        NavigationView {
            VStack {
                Text("Add ur numbers")
                    .font(.title)

                TextField("Enter first number", value: $number1, formatter: NumberFormatter())
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                TextField("Enter second number", value: $number2, formatter: NumberFormatter())
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Button(action: {
                    addNumbers(a: number1, b: number2)
                }) {
                    Text("Add Numbers")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }

                Text("Result \(added)")
                    .padding()

                // Pass results to Gyattttttt using Binding
                NavigationLink(destination: Gyattttttt(results: $results)) {
                    Text("View all results here")
                        .padding()
                        .foregroundColor(.blue)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
