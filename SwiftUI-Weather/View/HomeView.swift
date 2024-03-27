//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Xiaolong Wang on 24/3/2024.
//

import SwiftUI

struct HomeView: View {
    @State private var isNight: Bool = false
    var weatherList: [DailyWeather] = [
        .init(day: "TUE", icon: "cloud.sun.fill", temperature: 56),
        .init(day: "WED", icon: "sun.max.fill", temperature: 77),
        .init(day: "THU", icon: "wind", temperature: 67),
        .init(day: "FRI", icon: "cloud.sun.fill", temperature: 58),
        .init(day: "SAT", icon: "cloud.rain.fill", temperature: 46),
    ]
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                CityTextView(cityName: "Cupertino, CA")
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 76)
                HStack(spacing: 20) {
                    ForEach(weatherList, id: \.day) { dailyWeather in
                        DailyWeatherView(dailyWeather: dailyWeather)
                    }
                }
                Spacer()
                Button {
                    isNight.toggle()
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.cyan.gradient)
                        .foregroundColor(.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    HomeView()
}
