//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Andy Trinh on 9/19/23.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.emptyScrum
    @State private var newAttendeeName = ""
    
    var body: some View {
        
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $scrum.title)
            }
            HStack {
                Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
                    Text("Length")
                }
                .accessibilityLabel("\(scrum.lengthInMinutes) minutes")
                Spacer()
                Text("\(scrum.lengthInMinutes) Minutes")
                    .accessibilityHidden(true)
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indeces in
                    scrum.attendees.remove(atOffsets: indeces)
                }
                HStack {
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action: {
                        withAnimation {
                            let attendee = DailyScrum.Attendee(name: newAttendeeName)
                            scrum.attendees.append(attendee)
                            newAttendeeName = ""
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("Add attendee")
                    }
                    .disabled(newAttendeeName.isEmpty)
                }
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailEditView()
    }
}
