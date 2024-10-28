//
//  ContentView.swift
//  HelloWorld
//
//  Created by Maximilian Herrmann on 14.10.24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    var body: some View {
        VStack {
            Text("Hello, world!\nFirst step: Done!")
                .multilineTextAlignment(.center)

            ToggleImmersiveSpaceButton()
            
            HStack(spacing: 20) {
                ButtonGametypeWeiter()
                ButtonGametypeRufspiel()
                ButtonGametypeSolo()
                ButtonGametypeWenz()
            }
        }
        .padding()
    }
}

struct ButtonGametypeSolo: View {
    var body: some View {
        Button(action: {
            // Action
            print("Solo selected")
        }) {
            VStack {
                Text("Solo")
                HStack {
                    Image(systemName: "o.circle")
                    Image(systemName: "person.fill")
                    Image(systemName: "u.circle")
                }
            }
            .padding()
            .frame(width: 100, height: 100)
            .background(Color.gray)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 2)
            )
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct ButtonGametypeWeiter: View {
    var body: some View {
        Button(action: {
            // Action
            print("Weiter selected")
        }) {
            VStack {
                Text("Weiter")
                Image(systemName: "xmark.circle")
            }
            .padding()
            .frame(width: 100, height: 100)
            .background(Color.gray)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 2)
            )
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct ButtonGametypeRufspiel: View {
    var body: some View {
        Button(action: {
            // Action
            print("Rufspiel selected")
        }) {
            VStack {
                Text("Rufspiel")
                Image(systemName: "person.2.fill")
            }
            .padding()
            .frame(width: 100, height: 100)
            .background(Color.gray)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 2)
            )
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct ButtonGametypeWenz: View {
    var body: some View {
        Button(action: {
            // Action
            print("Wenz selected")
        }) {
            VStack {
                Text("Wenz")
                HStack {
                    Image(systemName: "circle")
                    Image(systemName: "person.fill")
                    Image(systemName: "u.circle")
                }
            }
            .padding()
            .frame(width: 100, height: 100)
            .background(Color.gray)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 2)
            )
        }
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}
