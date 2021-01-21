//
//  SandwichDetail.swift
//  Sandwiches
//
//  Created by Fulcherberguer, Fernanda on 2021-01-20.
//

import SwiftUI

struct SandwichDetail: View {
    let sandwich: Sandwich
    @State private var zoomed = false
    
    
    var body: some View {
        VStack {
            Spacer(minLength: 0)
            
            Image(sandwich.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation{
                    zoomed.toggle()
                        
                    }
                }
            
            Spacer(minLength: 0)
            
            Label("Spicy", systemImage: "flame.fill")
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            
        }
        
        .navigationTitle(sandwich.name)
        .edgesIgnoringSafeArea(.bottom)
        
    }
}




struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        SandwichDetail(sandwich: testData[0])
        }
    }
}
