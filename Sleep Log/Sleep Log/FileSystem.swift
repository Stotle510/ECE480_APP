//
//  FileSystem.swift
//  Sleep Log
//
//  Created by James on 11/21/21.
//

import Foundation

struct DefaultsKeys {
    static var username = "Aristotle"
    static var wakeuptime = "8AM"
    static var sleepdifficulty = "Somewhat"
    static var wakeupnight = "Somewhat"
    static var wakeupearly = "Somewhat"
    static var tooknap = "Yes"
    static var onestart = "10AM"
    static var oneend = "11AM"
    static var twostart = "1PM"
    static var twoend = "2PM"
    static var threestart = "5PM"
    static var threeend = "6PM"
    static var bedtime = "9PM"
    static var fatiguelvl = "5"
    static var sleepinesslvl = "5"
}

func write_val(name: String, value: String){
    if name == "username" {
        DefaultsKeys.username = value
    }
    if name == "wakeuptime" {
        DefaultsKeys.wakeuptime = value
    }
    if name == "sleepdifficulty" {
        DefaultsKeys.sleepdifficulty = value
    }
    if name == "wakeupnight" {
        DefaultsKeys.wakeupnight = value
    }
    if name == "wakeupearly" {
        DefaultsKeys.wakeupearly = value
    }
    if name == "tooknap" {
        DefaultsKeys.tooknap = value
    }
    if name == "onestart" {
        DefaultsKeys.onestart = value
    }
    if name == "oneend" {
        DefaultsKeys.oneend = value
    }
    if name == "twostart" {
        DefaultsKeys.twostart = value
    }
    if name == "twoend" {
        DefaultsKeys.twoend = value
    }
    if name == "threestart" {
        DefaultsKeys.threestart = value
    }
    if name == "threeend" {
        DefaultsKeys.threeend = value
    }
    if name == "bedtime" {
        DefaultsKeys.bedtime = value
    }
    if name == "fatiguelvl" {
        DefaultsKeys.fatiguelvl = value
    }
    if name == "sleepinesslvl" {
        DefaultsKeys.sleepinesslvl = value
    }
}

func read_val(){
    print("username: ", DefaultsKeys.username) // Some String Value

    print("wakeuptime: ", DefaultsKeys.wakeuptime) // Some String Value
    
    print("sleepdifficulty: ", DefaultsKeys.sleepdifficulty) // Some String Value
    
    print("wakeupnight: ", DefaultsKeys.wakeupnight) // Some String Value
    
    print("wakeupearly: ", DefaultsKeys.wakeupearly) // Some String Value
    
    print("tooknap: ", DefaultsKeys.tooknap) // Some String Value
    
    print("onestart: ", DefaultsKeys.onestart) // Some String Value
    
    print("oneend: ", DefaultsKeys.oneend) // Some String Value
    
    print("twostart: ", DefaultsKeys.twostart) // Some String Value
    
    print("twoend: ", DefaultsKeys.twoend) // Some String Value
    
    print("threestart: ", DefaultsKeys.threestart) // Some String Value
    
    print("threeend: ", DefaultsKeys.threeend) // Some String Value
    
    print("bedtime: ", DefaultsKeys.bedtime) // Some String Value
    
    print("fatiguelvl: ", DefaultsKeys.fatiguelvl) // Some String Value
    
    print("sleepinesslvl: ", DefaultsKeys.sleepinesslvl) // Some String Value
}
