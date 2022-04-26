//
//  TutorialView.swift
//  ParkDaddy
//
//  Created by Rayan Moarkech on 2022-04-13.
//

import SwiftUI
import UIKit
import AVFoundation

struct FirstTutorialView: View {
    
    var body: some View {
                        
            VStack {
                
                Image("Car")
                    .resizable()
                    .frame(width: 319, height: 225)
                
                Text("Just The Right Spot")
                    .font(.callout)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.231, green: 0.256, blue: 0.294))
                    .padding()
                
                Text("Parking tickets are a thing of the past")
                    .font(.callout)
                    .fontWeight(.light)
                    .foregroundColor(Color(red: 0.231, green: 0.256, blue: 0.294))
                    .padding()
                
                NavigationLink( destination: SecondTutorialView(), label: {
                    Text("Next →")
                        .padding()
                        .background(Color(red: 0.999, green: 0.272, blue: 0.17))
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .frame(maxHeight: 100, alignment: .bottom)
                })
                
                ProgressView(value: 0.33).tint(.red).frame(maxHeight: 100, alignment: .bottom)
                
        }
    }
}

struct SecondTutorialView: View {
    
    var body: some View {

            VStack {
                
                Image("Map")
                    .resizable()
                    .frame(width: 319, height: 225)
                
                Text("Quick Navigation")
                    .font(.callout)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.231, green: 0.256, blue: 0.294))
                    .padding()
                
                Text("All Montreal Area")
                    .font(.callout)
                    .fontWeight(.light)
                    .foregroundColor(Color(red: 0.231, green: 0.256, blue: 0.294))
                    .padding()
                
                NavigationLink( destination: ThirdTutorialView(), label: {
                    Text("Next →")
                        .padding()
                        .background(Color(red: 0.999, green: 0.272, blue: 0.17))
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .frame(maxHeight: 100, alignment: .bottom)
                    
                })
                
                ProgressView(value: 0.66).tint(.red).frame(maxHeight: 100, alignment: .bottom)
                
        }
    }
}

struct ThirdTutorialView: View {
    
    var body: some View {

            VStack {
                
                Image("Meter")
                    .resizable()
                    .frame(width: 319, height: 225)
                
                Text("Easy Scanning")
                    .font(.callout)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(red: 0.231, green: 0.256, blue: 0.294))
                    .padding()
                
                Text("Scan the parking signs and we'll do the rest")
                    .font(.callout)
                    .fontWeight(.light)
                    .foregroundColor(Color(red: 0.231, green: 0.256, blue: 0.294))
                    .padding()
                
                NavigationLink(destination: HomeView(), label: {
                    Text("Get Started")
                        .padding()
                        .background(Color(red: 0.999, green: 0.272, blue: 0.17))
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .frame(maxHeight: 100, alignment: .bottom)
                    
                })
                
                ProgressView(value: 1).tint(.red).frame(maxHeight: 100, alignment: .bottom)
                
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTutorialView()
        SecondTutorialView()
        ThirdTutorialView()
    }
}
