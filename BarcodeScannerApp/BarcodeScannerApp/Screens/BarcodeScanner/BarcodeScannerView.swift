//
//  ContentView.swift
//  BarcodeScannerApp
//
//  Created by luna.henseler on 23/1/25.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth:.infinity, maxHeight: 300)
                
                Spacer(minLength: 60)
                    
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                    
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.statusTextColor)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      Group {

          BarcodeScannerView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 16 Pro"))
            .previewDisplayName("iPhone XS")
          
          BarcodeScannerView()
            .previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
            .previewDisplayName("iPhone SE")
       
      }
   }
}
