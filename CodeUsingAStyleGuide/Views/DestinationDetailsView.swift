//
//  DestinationDetailsView.swift
//  CodeUsingAStyleGuide
//
//  Created by Tyler Lawrence1 on 12/1/23.
//

import SwiftUI

struct DestinationDetailsView: View {
    
    @State private var showingOrderAlert = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0){
                
                FeatureRowView(title: "Legendary Snow", copy: "More than 400 inches of snowfall", iconPath: "snowflake")
                #warning("add the featureRowView for Huge Terrain")
                
                #warning("add the calloutRowView")
                
                Button("Order Now!"){
                    showingOrderAlert.toggle()
                }
                .padding()
                #warning("Make a button style")
            }
            .navigationTitle("Tahoe")
            .alert(isPresented: $showingOrderAlert, content: {
                Alert(title: Text("Purchase Complete"))
            })
        }
        .background{
            Color.background.ignoresSafeArea()
        }
    }
}

#Preview {
    DestinationDetailsView()
}

#Preview {
    DestinationDetailsView()
        .preferredColorScheme(.dark)
}
