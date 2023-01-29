//
//  ListsBootcamp.swift
//  SwiftfulThinking1
//
//  Created by Sanskriti Sinha on 29/01/23.
//

import SwiftUI

struct ListsBootcamp: View {
    
    @State var fruits: [String] = ["apple", "orange", "banana", "peach"]
    
    @State var veggies: [String] = ["tomatoes", "potatoes", "carrot"]
    
    var body: some View {
        
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }.font(.headline)
                        .foregroundColor(.orange)
                ){
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                                .font(.headline)
                                //.background(.pink)
                                .foregroundColor(.white)
                                //.frame(maxWidth: .infinity, maxHeight: .infinity)
                                .padding(.vertical)
                        }
                        .onDelete (perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.blue)
                    }
                
                Section(
                    header: Text("Veggies")){
                        ForEach(veggies, id: \.self) { veggies in
                            Text(veggies.capitalized)
                        }
                    }
            }
            .accentColor(.purple)
            //.listStyle(InsetGroupedListStyle())
            .navigationTitle("Grocery List")
            .navigationBarItems(leading: EditButton(), trailing: addButton)
            .accentColor(.red)
        }
    }
    
    
    var addButton: some View {
        Button("Add", action: { add() })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
    
}

struct ListsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListsBootcamp()
    }
}
