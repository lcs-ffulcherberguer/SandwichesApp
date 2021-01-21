//
//  ContentView.swift
//  Shared
//
//  Created by Fulcherberguer, Fernanda on 2021-01-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            Image(systemName: "photo")
            
            
          
            VStack(alignment: .leading) {
                Text("My sandwich!")
                Text("3 ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                        
                        
                        
            }
            .frame(width: 0.0)
            }
        }
            
    }
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


