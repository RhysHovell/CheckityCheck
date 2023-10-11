//
//  ContentView.swift
//  CheckityCheck
//
//  Created by Rhys Hovell on 11/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isCheckInButtonActive = false
    
    var body: some View {
        VStack {
                    HStack {
                        Image("logo.png") // Replace "YourProfileImage" with the name of your profile image asset
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                            .padding(.leading, 20)

                        Spacer()

                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.trailing, 20)
                    }

            Spacer()
            
            Text("Appointment at 17:00 with Alice")
                            .font(.headline)
                            .padding(.top, 10)
                    
                    Button(action: {
                        // Perform the check-in action here
                        isCheckInButtonActive = true
                    }) {
                        Text("Check In")
                            .frame(width: 150, height: 50)
                            .background(isCheckInButtonActive ? Color.green : Color.blue)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }

                    Button(action: {
                        // Perform the check-out action here
                    }) {
                        Text("Check Out")
                            .frame(width: 150, height: 50)
                            .background(isCheckInButtonActive ? Color.blue : Color.gray)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .disabled(!isCheckInButtonActive)
                    }
            Spacer()

                    HStack {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "bell.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.blue)
                        }
                        .frame(width:60, height: 50)

                        Spacer()

                        Button(action: {
                            // Handle the alarm button action here
                        }) {
                            Image(systemName: "exclamationmark.triangle.fill")
                                .font(.system(size: 40)) // Adjust the font size as needed
                                .foregroundColor(.red)
                        }
                        .frame(width: 60, height: 50)
                    }
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                }
            }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// Custom button style to make buttons rounded and give them a muted blue color
struct RoundedButtonStyle: ButtonStyle {
    var backgroundColor: Color
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .padding()
            .background(backgroundColor.opacity(0.7))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
