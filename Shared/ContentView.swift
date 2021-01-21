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
        List(sandwiches) { sandwich in
            Image(sandwich.thumbnailName)
            
            
          
            VStack(alignment: .leading) {
                Text(sandwich.name)
                Text("\(sandwich.ingredientCount)ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                        
                        
                        
            }
            .frame(width: 0.0)
            }
        }
            
    }
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sandwiches: testData)
    }
}


