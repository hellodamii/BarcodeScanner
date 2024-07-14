//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Damilare on 08/07/2024.
//

import SwiftUI


struct AlertItem {
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input", message: "Something is wrong with the camera. We are unable to capture the input.", dismissButton: .default(Text("Ok")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scanned Type", message: "The value scanned is not valid. This app scans EAN-8, EAN-13 and QR", dismissButton: .default(Text("Ok")))
}
struct BarcodeScannerView: View {
    
    @State private var scannedCode = ""
    @State private var alertItem: AlertItem?
    @State private var isShowingAlert = false
    
    var body: some View {
        ZStack {
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
                    Spacer()
                    Text("Place the QR code inside the area")
                        .fontWeight(.medium)
                        .font(.system(size: 18))
                    Text("Scanning will start automatically")
                        .font(.callout)
                        .opacity(0.5)
                    
                        .padding(.bottom)
                    
                    ZStack{
                       
                            ScannerView(scannedCode: $scannedCode)
                            .cornerRadius(36)
                            .background(
                                
                                ForEach(0...4, id: \.self){
                                    index in let rotation = Double(index * 90)
                               
                            
                                    RoundedRectangle(cornerRadius: 36, style: .circular)
                                    .trim(from: 0.57, to: 0.67)
                                    .stroke(Color(.newGray), style: StrokeStyle(lineWidth: 6,
                                                                                lineCap: .round, lineJoin: .round))
                                    .rotationEffect(.init(degrees: rotation))
                                }
                            )
                    }
                    .frame(width: 244, height: 244)
                    Spacer()
                    
                    
                    Text(scannedCode.isEmpty ? "Scanning..." : scannedCode)
                        .font(scannedCode.isEmpty ? .headline: .title3)
                        .fontWeight(scannedCode.isEmpty ? .regular : .bold)
                        .foregroundColor(scannedCode.isEmpty ? .white : .green)
                        .padding()
        
                    Button{
                        isShowingAlert = true
                    } label: {
                        Label ("Enter manually", systemImage: "keyboard")
                    }
                    .foregroundColor(.white)
                    .buttonBorderShape(.capsule)
                    .buttonStyle(.bordered)
                    .controlSize(.extraLarge)
                    .tint(.newGray)
                }
                .alert(isPresented: $isShowingAlert, content: {
                    Alert(title: Text("Manual input unsupported"), message: Text("Update your app to use this function"), dismissButton: .default(Text("Update app")))
                })
                .padding(24)
                
                Spacer()
                
            }
            
            
        }
       
    }
}

#Preview {
    BarcodeScannerView()
        .preferredColorScheme(.dark)
}
