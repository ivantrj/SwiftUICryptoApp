//
//  Double.swift
//  SwiftUICrypto
//
//  Created by Ivan Trajanovski  on 05.02.24.
//

import Foundation

extension Double {
    
    /// Converts a double to currency with 2 to 6 decimal places
    ///```
    /// Convert 1234.56 to $1234.56
    ///```
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        //formatter.locale = .current
        //formatter.currencyCode = "eur"
        //formatter.currencySymbol = " €"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    /// Converts a double to currency as a string with 2 to 6 decimal places
    ///```
    /// Convert 1234.56 to "$1234.56"
    ///```
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    /// Converts a double to currency with 2 to 6 decimal places
    ///```
    /// Convert 1234.56 to $1234.56
    /// Convert 12.3456 to $12.3456
    ///```
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        //formatter.locale = .current
        //formatter.currencyCode = "eur"
        //formatter.currencySymbol = " €"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    /// Converts a double to currency as a string with 2 to 6 decimal places
    ///```
    /// Convert 1234.56 to "$1234.56"
    /// Convert 12.3456 to "$12.3456"
    ///```
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
    
    
    /// Converts a double to string representation
    ///```
    /// Convert 1.23456 to "1.23"
    ///```
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    
    /// Converts a double to string representation with percent sign
    ///```
    /// Convert 1.23456 to "1.23%"
    ///```
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
}
