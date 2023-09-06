//
//  WeatherListView.swift
//  Weather
//
//  Created by Dillon Teakell on 9/5/23.
//

import SwiftUI

struct WeatherListView: View {
    var body: some View {
        HStack {
            DayView(dayOfWeek: "SUN", imageName: "cloud.fill", temperature: 72)
            DayView(dayOfWeek: "MON", imageName: "cloud.sun.fill", temperature: 75)
            DayView(dayOfWeek: "TUE", imageName: "sun.max.fill", temperature: 82)
            DayView(dayOfWeek: "WED", imageName: "cloud.fill", temperature: 71)
            DayView(dayOfWeek: "THU", imageName: "cloud.drizzle.fill", temperature: 70)
        }
        .padding()
    }
}

#Preview {
    WeatherListView()
}

struct DayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack {
            // Day of the Week
            Text("\(dayOfWeek)")
                .font(.title3)
                .foregroundStyle(.white)
                
            
            Image(systemName: "\(imageName)")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 25)
            
            Text("\(temperature)°")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .padding()
            
            
        }
    }
}
