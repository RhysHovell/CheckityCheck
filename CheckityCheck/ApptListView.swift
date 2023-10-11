//
//  ApptListView.swift
//  CheckityCheck
//
//  Created by Rhys Hovell on 11/10/2023.
//

import SwiftUI

struct AppointmentListView: View {
    var body: some View {
        List {
            Text("1. Appointment with John at 10:00 AM")
            Text("2. Appointment with Sarah at 2:30 PM")
            Text("3. Appointment with Mike at 4:45 PM")
            // Add more appointment items as needed
        }
        .navigationTitle("Appointments for Today")
    }
}

struct ApptListView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentListView()
    }
}
