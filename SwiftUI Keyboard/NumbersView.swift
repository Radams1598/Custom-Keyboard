//
//  NumbersView.swift
//  Custom Keyboard
//
//  Created by Raymond Adams on 8/18/23.
//

import SwiftUI
import UIKit
import Foundation

struct NumbersView: View {
    @Binding var currentKeyboardState: KeyboardState
    @EnvironmentObject var textDocumentProxyWrapper: TextDocumentProxyWrapper
    @State private var isQuickPuncVisible = false
    //Variables to handle delete button
    @State private var repeatTimer: Timer?
    @State private var buttonTapped = false
    @State private var LongPressDetected = false
    
    var body: some View {
        VStack{
            Spacer()
            HStack(spacing: 6) {
                Button(action: {
                    // When a character button is pressed, we check whether capsLockOn is true
                    
                }) {
                    Text("Translated words will appear here")
                    //.frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                    //.cornerRadius(5)
                        .foregroundColor(.white)
                }
            }
            HStack(spacing: 6) {
                // .numbers "1" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("1")
                }) {
                    Text("1")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "2" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("2")
                }) {
                    Text("2")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "3" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("3")
                }) {
                    Text("3")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "4" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("4")
                }) {
                    Text("4")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "5" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("5")
                }) {
                    Text("5")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "6" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("6")
                }) {
                    Text("6")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "7" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("7")
                }) {
                    Text("7")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "8" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("8")
                }) {
                    Text("8")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "9" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("9")
                }) {
                    Text("9")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "10" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("10")
                }) {
                    Text("10")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
            }
            HStack(spacing: 6) {
                // .numbers "-" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("-")
                }) {
                    Text("-")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "/" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("/")
                }) {
                    Text("/")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers ":" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText(":")
                }) {
                    Text(":")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers ";" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText(";")
                }) {
                    Text(";")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "(" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("(")
                }) {
                    Text("(")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers ")" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText(")")
                }) {
                    Text(")")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "$" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("$")
                }) {
                    Text("$")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "&" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("&")
                }) {
                    Text("&")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "@" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("@")
                }) {
                    Text("@")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers '"' button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("\"")
                }) {
                    Text("\"")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
            }
            HStack(spacing: 6) {
                Button(action: {
                    // Switch to symbols state of Keyboard
                    currentKeyboardState = .symbols
                }) {
                    Text("#+=")
                        .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)                                    .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "." button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText(".")
                }) {
                    Text(".")
                        .frame(width: UIScreen.main.bounds.width / 6, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "," button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText(",")
                }) {
                    Text(",")
                        .frame(width: UIScreen.main.bounds.width / 8, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "?" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("?")
                }) {
                    Text("?")
                        .frame(width: UIScreen.main.bounds.width / 8, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "!" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("!")
                }) {
                    Text("!")
                        .frame(width: UIScreen.main.bounds.width / 8, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                // .numbers "'" button action
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("'")
                }) {
                    Text("'")
                        .frame(width: UIScreen.main.bounds.width / 8, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                Button(action: {
                    //executed after a long press detected
                    if self.LongPressDetected && self.textDocumentProxyWrapper.textDocumentProxy.hasText {
                        print("Hold complete")
                        stopRepeatingAction()
                        buttonTapped = false
                        LongPressDetected = false
                    }
                    //executed after a tap detected
                    else{
                        self.textDocumentProxyWrapper.textDocumentProxy.deleteBackward()
                        print("Tapped")
                                                }
                }) {
                    Text(Image(systemName: "delete.backward"))
                        .frame(width: UIScreen.main.bounds.width / 8, height: UIScreen.main.bounds.width / 8)
                    //.background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                .simultaneousGesture(LongPressGesture(minimumDuration: 0.5).onEnded({ _ in
                    print("Holding...")
                    startRepeatingAction()
                    buttonTapped = true
                    LongPressDetected = true
                }))
            }
            HStack(spacing: 6){
                Button(action: {
                    // button action
                    // Switch to lowercase state of Keyboard
                    currentKeyboardState = .lowercase
                }) {
                    Text("abc")
                        .frame(width: UIScreen.main.bounds.width / 10, height: UIScreen.main.bounds.width / 8)
                    //.background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                Button(action: {
                    // button action
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText(" ")
                }) {
                    VStack(spacing: -12){
                        Text("...")
                            .font(.footnote)
                            .fontWeight(.light)
                            .foregroundColor(.white)
                        Text(Image(systemName: "face.smiling"))
                            .frame(width: UIScreen.main.bounds.width / 10, height: UIScreen.main.bounds.width / 8)
                        //.background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                }
                //Spacebar
                Button(action: {
                    // button action
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText(" ")
                }) {
                    Text("Custom Keyboard")
                    //.fontWeight(.light)
                        .fontWeight(.ultraLight)
                        .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                Button(action: {
                    // button action
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText(".")
                    isQuickPuncVisible = true
                }) {
                    VStack(spacing: -25){
                        Text("?!,")
                            .font(.footnote)
                            .fontWeight(.light)
                            .foregroundColor(.white)
                        Text(".")
                            .font(.title)
                            .frame(width: UIScreen.main.bounds.width / 10, height: UIScreen.main.bounds.width / 8)
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                }
                // Overlay view conditionally
                if isQuickPuncVisible {
                    Color.black.opacity(0.5) // A semi-transparent black overlay
                    //.edgesIgnoringSafeArea(.all)
                        .overlay(
                            QuickPunctuationView(isVisible: $isQuickPuncVisible)
                        )
                        .position(x: -50, y: -50)
                    
                }
                Button(action: {
                    // button action
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("\n")
                }) {
                    Text(Image(systemName: "arrow.turn.down.left"))
                        .frame(width: UIScreen.main.bounds.width / 10, height: UIScreen.main.bounds.width / 8)
                    //.background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
            }
        }
    }
    
    func startRepeatingAction() {
        print("Begin startRepeatingAction")
        repeatTimer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            // Perform the repeating action
            if self.textDocumentProxyWrapper.textDocumentProxy.hasText {
                self.textDocumentProxyWrapper.textDocumentProxy.deleteBackward()
            }
            else{
                stopRepeatingAction()
            }
        }
    }

    func stopRepeatingAction() {
        repeatTimer?.invalidate()
        repeatTimer = nil
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(currentKeyboardState: .constant(.numbers))
    }
}
