//
//  MoreInfoButton.swift
//  Weather
//
//  Created by Dillon Teakell on 9/5/23.
//

import SwiftUI

struct MoreInfoButton: View {
    @Binding var isNight: Bool
    var body: some View {
        Button {
            isNight.toggle()
        } label: {
        Text("Change Time of Day")
            .font(.headline)
            .foregroundStyle(.blue)
            .padding()
            .background(.ultraThinMaterial, in: Capsule())
            
        }
        Spacer()
        
    }
}
