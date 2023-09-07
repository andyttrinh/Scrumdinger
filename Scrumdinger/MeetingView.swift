//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Andy Trinh on 9/6/23.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 1, total: 15)
        }
        
        HStack {
            Text("Seconds Elapsed")
            Text("Seconds Remaining")
        }
    }
}

struct MeetingView_Preview: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
