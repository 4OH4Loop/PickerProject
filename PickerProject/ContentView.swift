//
//  ContentView.swift
//  PickerProject
//
//  Created by Carolyn Ballinger on 3/10/25.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedCountry: String? = nil
    let countries = ["Australia", "USA", "UK", "China"]
    
    var body: some View {
        VStack {
            Text("This is a menu picker:")
                .font(.largeTitle)
            
            HStack {
                Text("Select a country:")
                
                Spacer()
                
                Picker("NO TITLE!", selection: $selectedCountry) {
                    
                    Text("No country selected")
                        .tag(nil as String?)
                    
                    ForEach(countries, id: \.self) { country in
                        Text(country)
                            .tag(country as String?)
                    }
                }
            }
            .font(.largeTitle)

//            Text("Current selection is: \(selectedCountry)")
//                .font(.largeTitle)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
