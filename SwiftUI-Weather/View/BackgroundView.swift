//
//  BackgroundView.swift
//  SwiftUI-Weather
//
//  Created by Xiaolong Wang on 26/3/2024.
//

import SwiftUI

struct BackgroundView: View {
    var isNight: Bool
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
    }
}

//#Preview {
//    @State var isNight: Bool = false
//    BackgroundView(isNight: $isNight)
//}
