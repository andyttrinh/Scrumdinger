//
//  CardView.swift
//  Scrumdinger
//
//  Created by Andy Trinh on 9/7/23.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack {
            Text(scrum.title).font(.headline)
            Spacer()
            HStack {
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: "clock")
            }
        }
        
        
    }
}

struct CardView_Preview:
    PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    
    static var previews: some View {
        CardView(scrum: scrum)
            .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
            .previewDisplayName("iPhone 14")
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
