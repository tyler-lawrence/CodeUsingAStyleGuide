//
//  DestinationsView.swift
//  CodeUsingAStyleGuide
//
//  Created by Tyler Lawrence1 on 11/29/23.
//

import SwiftUI

struct DestinationsView: View {
    let destinations = ["Tahoe", "Also Tahoe", "Still Tahoe", "Tahoe is the only mountain on this app"]
    var body: some View {
        NavigationStack{
            List(destinations, id: \.self){ destination in
                NavigationLink(destination){
                    DestinationDetailsView()
                        .toolbarRole(.editor)
                }
                .listRowBackground(Color.text)
                .foregroundStyle(Color.background)
            }
            .background{
                Color.background
                    .ignoresSafeArea()
            }
            .scrollContentBackground(.hidden)
        }
        
    }
}

#Preview {
    DestinationsView()
}

#Preview {
    DestinationsView()
        .preferredColorScheme(.dark)
}
