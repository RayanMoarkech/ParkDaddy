//
//  HomeView.swift
//  ParkDaddy
//
//  Created by Rayan Moarkech on 2022-04-13.
//

import SwiftUI
import UIKit
import AVFoundation

struct HomeView: View {
    var body: some View {

            VStack {
                    Color(red: 0.999, green: 0.272, blue: 0.17).frame(height: 100, alignment: .top).ignoresSafeArea()

                Spacer()
                
                //if statement of good or bad sign will go here
                
                NavigationLink( destination: CameraView(), label: {
                    Image("Park")
                        .resizable()
                        .frame(width: 302, height: 297)
                    
                }) . navigationBarBackButtonHidden(true)

               
                Text("Tap to Start Scanning")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.231, green: 0.256, blue: 0.294))
                    .padding()
                
                
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
