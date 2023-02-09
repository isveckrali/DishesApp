//
//  ColdingStagesView.swift
//  Dishes
//
//  Created by Mehmet Seyhan on 27/01/2023.
//

import SwiftUI

struct ColdingStagesView: View {
    // MARK: - PROPERTIES
    var coldingStage:[Colding] = coldingData
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack{
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(coldingStage) { item in
                        ColdingView(colding: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - PREVIEW
struct ColdingStagesView_Previews: PreviewProvider {
    static var previews: some View {
        ColdingStagesView(coldingStage: coldingData)
    }
}
