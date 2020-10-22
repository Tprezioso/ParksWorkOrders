//
//  DetailWorkOrderView.swift
//  ParksDepartmentWorkOrders
//
//  Created by Thomas Prezioso on 10/22/20.
//

import SwiftUI

struct DetailWorkOrderView: View {
    var body: some View {
        ScrollView {
            Image("PlaceholderImage")
                .resizable()
                .scaledToFit()
            
            VStack(alignment: .leading) {
                Text("Work Order Completed XX/XX/XXXX")
                    .font(.title3)
                    .lineLimit(0)
                
                HStack(spacing: 30) {
                    VStack(alignment: .leading) {
                        Text("Crew:")
                            .font(.title3)
                        Text("Tom")
                            .font(.subheadline)
                    }
                    
                    Spacer().frame(width: 100)
                    VStack(alignment: .leading) {
                        Text("Materials:")
                            .font(.title3)
                        Text("10 Cold Patch")
                            .font(.subheadline)
                    }
                }.padding(5)
                
                HStack(spacing: 30) {
                    VStack(alignment: .leading) {
                        Text("Work Time:")
                            .font(.title3)
                        Text("1 hour")
                            .font(.subheadline)
                    }
                    
                    Spacer().frame(width: 50)
                    VStack(alignment: .leading) {
                        Text("Travel Time:")
                            .font(.title3)
                        Text("40 mins")
                            .font(.subheadline)
                    }
                }.padding(5)
            
            }
            Image("PlaceholderImage")
                .resizable()
                .scaledToFit()

            Image("PlaceholderImage")
                .resizable()
                .scaledToFit()


        }
    }
}

struct DetailWorkOrderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailWorkOrderView()
    }
}
