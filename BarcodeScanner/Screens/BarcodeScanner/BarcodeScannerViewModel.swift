//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Busha on 15/07/2024.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
       return scannedCode.isEmpty ? "Scanning..." : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .white : .green
    }
}
