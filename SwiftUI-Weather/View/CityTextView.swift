//
//  CityTextView.swift
//  SwiftUI-Weather
//
//  Created by Xiaolong Wang on 26/3/2024.
//

import SwiftUI

struct CityTextView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

#Preview {
    CityTextView(cityName: "Bejing, China")
}
