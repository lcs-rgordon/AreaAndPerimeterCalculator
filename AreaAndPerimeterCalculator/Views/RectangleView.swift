//
//  RectangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Russell Gordon on 2023-01-17.
//

import SwiftUI

struct RectangleView: View {
    
    // MARK: Stored properties
    // @State is a property wrapper
    // Telling SwiftUI to "watch" these properties for changes
    // Update the user interface when they do change
    @State var length: Double = 70
    @State var width: Double = 25
    
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
            
            // Slider to control length
            Slider(value: $length,
                   in: 0...100,
                   label: { Text("Length") },
                   minimumValueLabel: { Text("0") },
                   maximumValueLabel: { Text("100") })
            
            // Use string interpolation \() to display length
            Text("\(length)")

            // Width
            Text("Width")
                .font(.title2)
                .bold()

            // Slider to control width
            Slider(value: $width,
                   in: 0...100,
                   label: { Text("Width") },
                   minimumValueLabel: { Text("0") },
                   maximumValueLabel: { Text("100") })

            
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
