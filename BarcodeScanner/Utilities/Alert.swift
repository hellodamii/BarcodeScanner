//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Busha on 15/07/2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                              message: "Something is wrong with the camera. We are unable to capture the input.",
                                              dismissButton: .default(Text("Ok")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scanned Type", message: "The value scanned is not valid. This app scans EAN-8, EAN-13 and QR", dismissButton: .default(Text("Ok")))
}
