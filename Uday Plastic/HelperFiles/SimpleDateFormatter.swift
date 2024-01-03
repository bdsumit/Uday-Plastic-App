//
//  SimpleDateFormatter.swift
//  VetiFly
//
//  Created by IDEV on 04/02/20.
//  Copyright © 2020 Arun Amuri. All rights reserved.
//

import Foundation
//yyyy-MM-dd'T'HH:mm:ss.SSS'Z' 
struct DateFormat {
    static let localeIdentifier = "en_US_POSIX"
    
    static let timeFormat24Hours = "HH:mm"
    
    static var yearFormat = "YYYY-MM-dd"
    static let timeComplete = "HH:mm:ss"
    static let timeCalculationFormat = "HH.mm"
    static let birthDateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
    static let viewCommentDateFormat = "yyyy-MM-dd'T'HH:mm:ss"
    static let selectedReservationDate = "dd/MM/yyyy"
    static let walletTransactionDate = "dd MMM yyyy"
    static let tripDate = "EEE, dd MMM yyyy"
    
    //----------
    static let formateInApi = "yyyy-MM-dd HH:mm:ss"
    static let dateFormateInApi = "dd-MMM-yy"
    
    static let dayMonthFormate = "dd MMM"
    static let timeFormatAmPm = "hh:mm a"
    static let timeFormat = "HH:mm"
    
    static let weakDayFormate = "EEEE"
    static let halfWeakDayFormate = "EEE"
    
    
   
    
    static let dayFullMonthNameFormate = "dd MMMM"
    static let monthYearFormate = "MMMM,YYYY"
    static let monthDateYearFormate = "MMM,dd,yyyy"
   
    
    static let yearMonthFormateNextLine = "YYYY\nMMMM"
    
    static let shortMonthYearFormate = "MMM, yyyy"
    static let shortDayMonthYearFormate = "dd MMMM, yyyy"
    static let dayMonthYearFormate = "dd MMMM,yyyy"
    static let singleDateFormate = "dd"
    
   
}


extension Date{
    
    func changeDataFormate(dateInString : String,formate : String) -> String{
        //"2021-10-21 20:23:00" 
        
        //----------------------------------
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = DateFormat.formateInApi//"yyyy-MM-dd HH:mm:ss"
        let dataFromString = dateFormater.date(from: dateInString) ?? Date()
        //----------------------------------
        
        //----------------------------------
        dateFormater.dateFormat = formate
        return dateFormater.string(from: dataFromString)
        //----------------------------------
        
    }
    
    func amPmFrom24Formate(dateInString : String) -> String{
        //"2021-10-21 20:23:00"
        
        //----------------------------------
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = DateFormat.timeFormat
        let dataFromString = dateFormater.date(from: dateInString) ?? Date()
        //----------------------------------
        
        //----------------------------------
        dateFormater.dateFormat = DateFormat.timeFormatAmPm
        return dateFormater.string(from: dataFromString)
        //----------------------------------
        
    }
    
    func timeConvAmPmTo24(time12: String) -> String {
        let dateAsString = time12
        let df = DateFormatter()
        df.dateFormat = DateFormat.timeFormatAmPm
        
        let date = df.date(from: dateAsString)
        df.dateFormat = DateFormat.timeFormat
        
        let time24 = df.string(from: date!)
        print(time24)
        return time24
    }
    
    
    func startOfMonth() -> Date {
        return Calendar.current.date(from: Calendar.current.dateComponents([.year, .month], from: Calendar.current.startOfDay(for: self)))!
    }
    
    func endOfMonth() -> Date {
        return Calendar.current.date(byAdding: DateComponents(month: 1, day: -1), to: self.startOfMonth())!
    }
    
    func getDaysInMonth() -> Int{
        let calendar = Calendar.current
        
        let dateComponents = DateComponents(year: calendar.component(.year, from: self), month: calendar.component(.month, from: self))
        let date = calendar.date(from: dateComponents)!
        
        let range = calendar.range(of: .day, in: .month, for: date)!
        let numDays = range.count
        
        return numDays
    }
  
}

