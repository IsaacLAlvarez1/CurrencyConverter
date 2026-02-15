//
//  ccLogic.swift
//  CurrencyConverter
//
//  Created by Isaac Alvarez on 2/14/26.
//
import Foundation
struct ccLogic {
    var usd : Int = 0

    var eurSwitch = false
    var jpySwitch = false
    var gbpSwitch = false
    var rubSwitch = false
    mutating func setUSD(_ usdTF: Int) {
        usd = usdTF
    }
    mutating func setEURswitch(_ eurS: Bool) {
        if eurS {
            eurSwitch = true
        } else {
            eurSwitch = false
        }
    }
    mutating func setJPYswitch(_ jpyS: Bool) {
        if jpyS {
            jpySwitch = true
        } else {
            jpySwitch = false
        }
    }
    mutating func setGBPswitch(_ gbpS: Bool) {
        if gbpS {
            gbpSwitch = true
        } else {
            gbpSwitch = false
        }
    }
    mutating func setRUBswitch(_ rubS: Bool) {
        if rubS {
            rubSwitch = true
        } else {
            rubSwitch = false
        }
    }
    func getUSD() -> String {
        return "USD: $\(usd)"
    }
    func getEUR() -> String {
        if eurSwitch {
            return "EUR: €" + String(format: "%.2f", (Float(usd) * 0.84))
        } else {
            return "EUR not requested"
        }
    }
    func getJPY() -> String {
        if jpySwitch {
            return "JPY: ¥" + String(format: "%.2f", (Float(usd) * 152.7))
        } else {
            return "JPY not requested"
        }
    }
    func getGBP() -> String {
        if gbpSwitch {
            return "GBP: £" + String(format: "%.2f", (Float(usd) * 0.73))
        } else {
            return "GBP not requested"
        }
    }
    func getRUB() -> String {
        if rubSwitch {
            return "RUB: ₽" + String(format: "%.2f", (Float(usd) * 76.7))
        } else {
            return "RUB not requested"
        }
    }
}
