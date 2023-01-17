//
//  RectangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Russell Gordon on 2023-01-17.
//

import SwiftUI

struct RectangleView: View {
    
    // MARK: Stored properties
    let length: Double = 7
    let width: Double = 5
    
    // MARK: Computed properties
    var area: Double {
        return length * width
    }
    
    // Shows our user interface
    var body: some View {
        VStack {
            
            HStack {
                Image("Rectangle")
                    .resizable()
                    .scaledToFit()
                .frame(width: 250)
                
                Spacer()
            }
            
            // Length
            Text("Length")
                .font(.title2)
                .bold()
            // Use string interpolation \() to display length
            Text("\(length)")

            // Width
            Text("Width")
                .font(.title2)
                .bold()
            // Use string interpolation \() to display width
            Text("\(width)")

            // Area
            Text("Area")
                .font(.title2)
                .bold()
            // Use string interpolation \() to display area
            Text("\(area)")

            
            
            Spacer()
            
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
