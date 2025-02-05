//
//  AlertItem.swift
//  BarcodeScannerApp
//
//  Created by luna.henseler on 27/1/25.
//
import SwiftUI

struct AlertItem : Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                                message: "Something is wrong with the camera. We are unable to capture the input.",
                                                dismissButton: .default(Text("Ok")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scanned type",
                                                message: "The value scanned is not valid. This app scans EAN-8 and EAN-13.",
                                                dismissButton: .default(Text("Ok")))
}
