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
    
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    @State private var selectedImage: UIImage?
    @State private var isImagePickerDisplay = false
    @State private var goToGoodResultScreen = false
    @State private var goToBadResultScreen = false
    
    var body: some View {
            
        VStack {
            
            NavigationLink(destination: BadResultView(), isActive: $goToBadResultScreen) { EmptyView() }
            NavigationLink(destination: GoodResultView(), isActive: $goToGoodResultScreen) { EmptyView() }
            
            // If statement of good or bad sign
            
            Color(red: 0.999, green: 0.272, blue: 0.17)
                .frame(height: 100, alignment: .top)
                .ignoresSafeArea()

            Spacer()
            
            Button(action: {
                self.sourceType = .camera
                self.isImagePickerDisplay.toggle()
            }, label: {
                Image("Park")
                    .resizable()
                    .frame(width: 302, height: 297)
            })
           
            Text("Tap to Start Scanning")
                .font(.headline)
                .fontWeight(.semibold)
                .foregroundColor(Color(red: 0.231, green: 0.256, blue: 0.294))
                .padding()
            
        }
        .sheet(isPresented: self.$isImagePickerDisplay, onDismiss: {
            print("onDismiss")
            self.switchView()
        }) {
            ImagePickerView(selectedImage: self.$selectedImage, sourceType: self.sourceType)
                .onDisappear {
                    print("onDisappear")
//                    self.switchView()
                }
        
        }
        .navigationBarBackButtonHidden(true)
        
    }
    
    func switchView() {
//        if self.selectedImage != nil {
            var startTime = DateComponents()
            startTime.hour = 8
            startTime.minute = 0;
            var endTime = DateComponents()
            endTime.hour = 18
            endTime.minute = 59;
            let parkingSign = ParkingSign(startTime: Calendar.current.date(from: startTime)!, endTime: Calendar.current.date(from: endTime)!)
            if parkingSign.isAllowed(time: Date()) {
                self.goToGoodResultScreen.toggle()
            } else {
                self.goToBadResultScreen.toggle()
            }
//        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
