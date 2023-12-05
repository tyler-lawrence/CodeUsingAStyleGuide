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
                FeatureRowView(title: "Huge Terrain", copy: "270 trails and 23 bowls across 6,000 acres", iconPath: "mountain")
                CalloutRowView(title: "Local Hack", copy: "Explore the back bowls at Alpine Meadows from the Sherwood lift for wide open terrain with a variety of pitches, all with view of Lake Tahoe. Follow it up with a stop in at The Ice Bar for afternoon refreshments.", iconPath: "snowflake")
                Button("Order Now!"){
                    showingOrderAlert.toggle()
                }
                .buttonStyle(calloutButton())
                .padding()
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
