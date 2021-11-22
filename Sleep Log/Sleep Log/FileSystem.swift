//
//  FileSystem.swift
//  Sleep Log
//
//  Created by James on 11/21/21.
//

import Foundation

struct DefaultsKeys {
    static let username = " "
    static let wakeuptime = " "
    static let sleepdifficulty = " "
    static let wakeupnight = " "
    static let wakeupearly = " "
    static let tooknap = " "
    static let onestart = " "
    static let oneend = " "
    static let twostart = " "
    static let twoend = " "
    static let threestart = " "
    static let threeend = " "
    static let bedtime = " "
    static let fatiguelvl = " "
    static let sleepinesslvl = " "
}

func write_val(name: String, value: String){
    let defaults = UserDefaults.standard
    if name == "username" {
        defaults.set(value, forKey: DefaultsKeys.username)
    }
    if name == "wakeuptime" {
        defaults.set(value, forKey: DefaultsKeys.wakeuptime)
    }
    if name == "sleepdifficulty" {
        defaults.set(value, forKey: DefaultsKeys.sleepdifficulty)
    }
    if name == "wakeupnight" {
        defaults.set(value, forKey: DefaultsKeys.wakeupnight)
    }
    if name == "wakeupearly" {
        defaults.set(value, forKey: DefaultsKeys.wakeupearly)
    }
    if name == "tooknap" {
        defaults.set(value, forKey: DefaultsKeys.tooknap)
    }
    if name == "onestart" {
        defaults.set(value, forKey: DefaultsKeys.onestart)
    }
    if name == "oneend" {
        defaults.set(value, forKey: DefaultsKeys.oneend)
    }
    if name == "twostart" {
        defaults.set(value, forKey: DefaultsKeys.twostart)
    }
    if name == "twoend" {
        defaults.set(value, forKey: DefaultsKeys.twoend)
    }
    if name == "threestart" {
        defaults.set(value, forKey: DefaultsKeys.threestart)
    }
    if name == "threeend" {
        defaults.set(value, forKey: DefaultsKeys.threeend)
    }
    if name == "bedtime" {
        defaults.set(value, forKey: DefaultsKeys.bedtime)
    }
    if name == "fatiguelvl" {
        defaults.set(value, forKey: DefaultsKeys.fatiguelvl)
    }
    if name == "sleepinesslvl" {
        defaults.set(value, forKey: DefaultsKeys.sleepinesslvl)
    }
}

func read_val(){
    let defaults = UserDefaults.standard
    if let stringOne = defaults.string(forKey: DefaultsKeys.username) {
        print("username: ", stringOne) // Some String Value
    }
    if let stringOne = defaults.string(forKey: DefaultsKeys.wakeuptime) {
        print("wakeuptime: ", stringOne) // Some String Value
    }
    if let stringOne = defaults.string(forKey: DefaultsKeys.sleepdifficulty) {
        print("sleepdifficulty: ", stringOne) // Some String Value
    }
    if let stringOne = defaults.string(forKey: DefaultsKeys.wakeupnight) {
        print("wakeupnight: ", stringOne) // Some String Value
    }
    if let stringOne = defaults.string(forKey: DefaultsKeys.wakeupearly) {
        print("wakeupearly: ", stringOne) // Some String Value
    }
    if let stringOne = defaults.string(forKey: DefaultsKeys.tooknap) {
        print("tooknap: ", stringOne) // Some String Value
    }
    if let stringOne = defaults.string(forKey: DefaultsKeys.onestart) {
        print("onestart: ", stringOne) // Some String Value
    }
    if let stringOne = defaults.string(forKey: DefaultsKeys.oneend) {
        print("oneend: ", stringOne) // Some String Value
    }
    if let stringOne = defaults.string(forKey: DefaultsKeys.twostart) {
        print("twostart: ", stringOne) // Some String Value
    }
    if let stringOne = defaults.string(forKey: DefaultsKeys.twoend) {
        print("twoend: ", stringOne) // Some String Value
    }
    if let stringOne = defaults.string(forKey: DefaultsKeys.threestart) {
        print("threestart: ", stringOne) // Some String Value
    }
    if let stringOne = defaults.string(forKey: DefaultsKeys.threeend) {
        print("threeend: ", stringOne) // Some String Value
    }
    if let stringOne = defaults.string(forKey: DefaultsKeys.bedtime) {
        print("bedtime: ", stringOne) // Some String Value
    }
    if let stringOne = defaults.string(forKey: DefaultsKeys.fatiguelvl) {
        print("fatiguelvl: ", stringOne) // Some String Value
    }
    if let stringOne = defaults.string(forKey: DefaultsKeys.sleepinesslvl) {
        print("sleepinesslvl: ", stringOne) // Some String Value
    }
}
