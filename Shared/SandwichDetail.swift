//
//  SandwichDetail.swift
//  Sandwiches
//
//  Created by Fulcherberguer, Fernanda on 2021-01-20.
//

import SwiftUI

struct SandwichDetail: View {
    var sandwich: Sandwich
    
    
    var body: some View {
        Image(sandwich.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct SandwichDetail_Previews: PreviewProvider {
    static var previews: some View {
        SandwichDetail(sandwich: testData[0])
    }
}
