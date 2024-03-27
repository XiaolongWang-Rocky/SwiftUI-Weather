//
//  DailyWeatherView.swift
//  SwiftUI-Weather
//
//  Created by Xiaolong Wang on 25/3/2024.
//

import SwiftUI

struct DailyWeatherView: View {
    var dailyWeather: DailyWeather
    
    var body: some View {
        VStack {
            Text(dailyWeather.day)
                .font(.system(size: 18, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: dailyWeather.icon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(dailyWeather.temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

//#Preview {
//    DailyWeatherView()
//}
