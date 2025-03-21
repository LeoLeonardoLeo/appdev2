import SwiftUI

struct Gyattttttt: View {
    @Binding var results: [Int]
    @Environment(\.managedObjectContext) private var viewContext  

    private func delete(offsets: IndexSet) {
        withAnimation {
            // Here, you would delete the items from Core Data if you're saving to it
            // But since you're working with an array, let's just remove from the array.
            offsets.map { results[$0] }.forEach { result in
                // Perform deletion logic here, assuming result is related to Core Data
                // viewContext.delete(result) // Example Core Data delete
            }

            // If you're managing Core Data objects, save changes like this:
            do {
                try viewContext.save()
            } catch {
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }

            // Or simply update the results array if you're not using Core Data.
            results.remove(atOffsets: offsets)
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                Text("View all results here")
                    .font(.title)
                    .padding()

                List {
                    ForEach(results, id: \.self) { result in
                        Text("Result: \(result)")
                    }
                    .onDelete(perform: delete)  // Enable swipe-to-delete functionality
                }
            }
            .navigationTitle("All Results History")
        }
    }
}

struct Gyattttttt_Previews: PreviewProvider {
    static var previews: some View {
        // Example of passing an empty list to the view
        Gyattttttt(results: .constant([1, 2, 3, 4]))  // Use constant to simulate binding
    }
}
