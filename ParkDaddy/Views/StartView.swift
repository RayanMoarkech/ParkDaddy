//
//  SwiftUIView.swift
//  ParkDaddy
//
//  Created by Rayan Moarkech on 2022-04-13.
//

import SwiftUI
import UIKit
import AVFoundation

struct StartView: View {
    var body: some View {
        NavigationView{
            VStack {
                Image("ParkDaddy")
                    .resizable()
                    .frame(width: 300, height: 300)
                Text("Your No.1 parking assistant")
                    .font(.callout)
                    .fontWeight(.light)
                    .foregroundColor(Color(red: 0.231, green: 0.256, blue: 0.294))
                    .padding()
                
                NavigationLink( destination: FirstTutorialView(), label: {
                    Text("Let's Get Started →")
                        .padding()
                        .background(Color(red: 0.999, green: 0.272, blue: 0.17))
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .frame(maxHeight: 100, alignment: .bottom)
                    
                })
                
                .scaleEffect(1)
                
                
            }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
