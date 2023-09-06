//
//  ContentView.swift
//  Weather
//
//  Created by Dillon Teakell on 9/4/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isNight = false
    
    var body: some View {
            ZStack {
                BackgroundView(isNight: $isNight)
                
                VStack {
                    CurrentWeatherView(isNight: $isNight)
                    
                    WeatherListView()

                    Spacer()
                    
                    MoreInfoButton(isNight: $isNight)
                    
                }
            }
            .animation(.interpolatingSpring(duration: 0.65), value: isNight)
        }
    }

#Preview {
    HomeView()
}
