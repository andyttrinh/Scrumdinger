//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Andy Trinh on 9/17/23.
//

import SwiftUI

struct ScrumsView: View {
    let scrums: [DailyScrum]
    var body: some View {
        List(scrums) {
            scrum in CardView(scrum: scrum)
                .listRowBackground(scrum.theme.mainColor)
            
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: DailyScrum.sampleData)
            .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
            .previewDisplayName("iPhone 14")
    }
}
