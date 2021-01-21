//
//  ContentView.swift
//  Shared
//
//  Created by Fulcherberguer, Fernanda on 2021-01-20.
//

import SwiftUI

struct ContentView: View {
    var sandwiches: [Sandwich] = []
    
    
    var body: some View {
        NavigationView{
            List {
               ForEach(sandwiches) { sandwich in
               SandwichCell(sandwich: sandwich)
                
                
               }
             
                HStack {
                    //Make it centered
                    Spacer()
                    Text("\(sandwiches.count) Sandwiches")
                        .foregroundColor(.secondary)
                    Spacer()
                    
                }
                
            }
            
        .navigationTitle("Sandwiches")
            
        Text("Select a sandwich")
            .font(.largeTitle)
            
                }
        
            }
            
        }
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sandwiches: testData)
    }
}



struct SandwichCell: View {
    var sandwich: Sandwich
    
    var body: some View {
        NavigationLink(destination: SandwichDetail(sandwich: sandwich)) {
            Image(sandwich.thumbnailName)
                .cornerRadius(8)
            
            
            VStack(alignment: .leading) {
                Text(sandwich.name)
                Text("\(sandwich.ingredientCount)ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                
                
            }
        }
    }
}
