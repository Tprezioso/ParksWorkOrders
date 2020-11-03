//
//  DetailWorkOrderView.swift
//  ParksDepartmentWorkOrders
//
//  Created by Thomas Prezioso on 10/22/20.
//

import SwiftUI

struct DetailWorkOrderView: View {
    var names = ["Tom", "Ed", "Julio"]
    var materials = ["10 Cold Patch", "5 bottles of Cold Flow"]
    
    var body: some View {
        ZStack {
            WorkOrderCompletedView(names: names, materials: materials)
        }
    }
}

struct DetailWorkOrderView_Previews: PreviewProvider {
    static var previews: some View {
        DetailWorkOrderView()
    }
}

struct WorkOrderCompletedView: View {
    var names = [""]
    var materials = [""]
    var body: some View {
        ScrollView {
            Image("PlaceholderImage")
                .resizable()
                .scaledToFit()
                .padding()
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Work Order Completed:")
                    .font(.title)
                Text("XX/XX/XXXX")
                    .font(.title2)
                
                Text("Crew:")
                    .font(.title3)
                    .font(.subheadline)
                ForEach(names, id: \.self) { name in
                    VStack {
                        Text(name)
                            .font(.subheadline)
                    }
                    
                }
                
                Text("Materials:")
                    .font(.title3)
                
                ForEach(materials, id: \.self) { material in
                    VStack {
                        Text(material)
                            .font(.subheadline)
                    }
                }
                
                Text("Work Time:")
                    .font(.title3)
                Text("1 hour")
                    .font(.subheadline)
                
                Text("Travel Time:")
                    .font(.title3)
                Text("40 mins")
                    .font(.subheadline)
                
            }.padding()
            Image("PlaceholderImage")
                .resizable()
                .scaledToFit()
                .padding()
            
            Image("PlaceholderImage")
                .resizable()
                .scaledToFit()
                .padding()
            
        }
    }
}
