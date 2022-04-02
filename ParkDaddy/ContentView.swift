//
//  ContentView.swift
//  ParkDaddy
//
//  Created by Rayan Moarkech on 2022-03-29.
//

import SwiftUI
import UIKit
import AVFoundation

struct StartPage: View {
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
                
                NavigationLink( destination: Tutorial_1(), label: {
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

struct Tutorial_1: View {
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
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.231, green: 0.256, blue: 0.294)/*@END_MENU_TOKEN@*/)
                    .padding()
            
                
                NavigationLink( destination: Tutorial_2(), label: {
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


struct Tutorial_2: View {
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
                
                
                NavigationLink( destination: Tutorial_3(), label: {
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

struct Tutorial_3: View {
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
                
                
                NavigationLink( destination: HomePage(), label: {
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

struct HomePage: View {
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
    //This should not be a view, but will be temporarily placed here until the logic is implementer for the capturing the parking sign
struct GoodView: View {
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


//This should not be a view, but will be temporarily placed here until the logic is implementer for the capturing the parking sign
struct BadView: View {
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



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StartPage()
            Tutorial_1()
            Tutorial_2()
            Tutorial_3()
            HomePage()
            CameraView()
            GoodView()
            BadView()
            
        }
    }
}


