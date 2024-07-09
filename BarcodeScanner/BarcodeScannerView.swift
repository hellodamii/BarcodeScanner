//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Busha on 08/07/2024.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        ZStack {
            Color.black.opacity(0.7)
                .ignoresSafeArea(.all)
            VStack {
                Button {
                    
                } label: {
                    Label ("Enter manually", systemImage: "flashlight.off.fill")
                }
                .buttonBorderShape(.circle)
                .foregroundColor(.white)
                .buttonStyle(.bordered)
                .controlSize(.extraLarge)
                .tint(.newGray)
                Spacer()
                
                
                VStack {
                    Text("Scan the QR code")
                        .fontWeight(.medium)
                        .font(.system(size: 18))
                    Rectangle()
                        .strokeBorder(style: StrokeStyle(lineWidth: 8, lineCap: .round, lineJoin: .round, dash: []))
                        .foregroundColor(.newGray)
                        .frame(width: 244, height: 244)
                        .cornerRadius(36)
                        .padding()
                    
                    Button {
                        
                    } label: {
                        Label ("Enter manually", systemImage: "keyboard")
                    }
                    .foregroundColor(.white)
                    .buttonBorderShape(.capsule)
                    .buttonStyle(.bordered)
                    .controlSize(.extraLarge)
                    .tint(.newGray)
                }
                .padding(24)
                
                Spacer()
                
            }
            
            
        }
       
    }
}

#Preview {
    BarcodeScannerView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
