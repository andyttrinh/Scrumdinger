//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Andy Trinh on 9/6/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
