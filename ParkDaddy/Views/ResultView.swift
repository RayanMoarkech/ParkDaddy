//
//  ContentView.swift
//  ParkDaddy
//
//  Created by Rayan Moarkech on 2022-03-29.
//

import SwiftUI
import UIKit
import AVFoundation

// This should not be a view, but will be temporarily placed here until the logic is implementer for the capturing the parking sign
struct GoodResultView: View {
    
    var body : some View {
        
        VStack{
            
            Image("Good")
                .resizable()
                .frame(width: 250, height: 220)
            
            Text("Safe to park!")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(red: 0.231, green: 0.256, blue: 0.294))
                .padding()
                
        }
    }
}

// This should not be a view, but will be temporarily placed here until the logic is implementer for the capturing the parking sign
struct BadResultView: View {
    
    var body : some View {
        
        VStack{
            
            Image("Bad")
                .resizable()
                .frame(width: 250, height: 220)
           
            Text("Parking spot not available!")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(red: 0.231, green: 0.256, blue: 0.294))
                .padding()

        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CameraView()
            GoodResultView()
            BadResultView()
        }
    }
}


