//
//  BackgroundView.swift
//  Weather
//
//  Created by Dillon Teakell on 9/6/23.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .gray : .blue, isNight ? .black: .white]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea(.all)
    }
}
