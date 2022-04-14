//
//  ParkingSign.swift
//  ParkDaddy
//
//  Created by Rayan Moarkech on 2022-04-13.
//

import Foundation

class ParkingSign {
    
    private var startTime: Date;
    private var endTime: Date;
    
    init(startTime: Date, endTime: Date) {
        self.startTime = startTime;
        self.endTime = endTime;
    }
    
    public func getStartTime() -> Date {
        return self.startTime;
    }
    
    public func getEndTime() -> Date {
        return self.endTime;
    }
    
    public func isAllowed(time: Date) -> Bool {
        
        // Check hours
        let startHours = (Calendar.current.component(.hour, from: startTime))
        let currentHours = (Calendar.current.component(.hour, from: time))
        let endHours = (Calendar.current.component(.hour, from: endTime))
        if (currentHours < startHours || currentHours > endHours) {
            return false;
        }
        
        // Check minutes
//        let startMinutes = (Calendar.current.component(.minute, from: startTime))
//        let currentMinutes = (Calendar.current.component(.minute, from: time))
//        let endMinutes = (Calendar.current.component(.minute, from: endTime))
//        if (currentMinutes < startMinutes || currentMinutes > endMinutes) {
//            return false;
//        }
        
        return true;
    }
    
    public static func == (lhs: ParkingSign, rhs: ParkingSign) -> Bool {
        return (lhs.getStartTime() == rhs.getStartTime()) && (lhs.getEndTime() == rhs.getEndTime());
    }
}
