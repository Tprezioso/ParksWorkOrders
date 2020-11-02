//
//  ContentView.swift
//  ParksDepartmentWorkOrders
//
//  Created by Thomas Prezioso on 10/19/20.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
            NavigationView {
                VStack {
                List(0 ..< 5) { item in
                    NavigationLink("Work Order \(item + 1)", destination: DetailWorkOrderView())
                    
                }.navigationTitle("Work Orders")
                Button(action: openCamera) {
                    Text("Scan")
                }
                .padding()
                }.sheet(isPresented: self.$isShowingScannerSheet) { self.makeScannerView() }
        }
}
    
    @State private var isShowingScannerSheet = false
        @State private var text: String = ""
        
        private func openCamera() {
            isShowingScannerSheet = true
        }
        
        private func makeScannerView() -> ScannerView {
            ScannerView(completion: { textPerPage in
                if let text = textPerPage?.joined(separator: "\n").trimmingCharacters(in: .whitespacesAndNewlines) {
                    self.text = text
                }
                self.isShowingScannerSheet = false
            })
        }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
