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
        return true;
    }
    
    public static func == (lhs: ParkingSign, rhs: ParkingSign) -> Bool {
        return (lhs.getStartTime() == rhs.getStartTime()) && (lhs.getEndTime() == rhs.getEndTime());
    }
}
