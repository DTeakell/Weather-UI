//
//  MainWeatherView.swift
//  Weather
//
//  Created by Dillon Teakell on 9/5/23.
//

import SwiftUI

struct CurrentWeatherView: View {
    @Binding var isNight: Bool

    var body: some View {
        
        // City and State (province)
        VStack {
            Text("Cupertino, CA")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .shadow(radius: 25)
                .padding()
            
            // Icon and Weather Data
            VStack (spacing: 5) {
                Image(systemName: isNight ? "moon.fill" : "sun.max.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 150)
                    .shadow(radius: 18)
                
                Text(isNight ? "74°F" : "77°F")
                    .font(.system(size: 65))
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .shadow(radius: 25)
                    .padding()
            }
        }
    }
}
