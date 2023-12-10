//
//  UppercaseView.swift
//  Custom Keyboard
//
//  Created by Raymond Adams on 8/18/23.
//

import SwiftUI
import UIKit
import Foundation

struct UppercaseView: View {
    
    @State private var isQuickPuncVisible = false
    //Variables to handle delete button
    @State private var repeatTimer: Timer?
    @State private var buttonTapped = false
    @State private var LongPressDetected = false
    
    @Binding var currentKeyboardState: KeyboardState
    @EnvironmentObject var textDocumentProxyWrapper: TextDocumentProxyWrapper
    
    
    var body: some View {
        ZStack{
            
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
                    // uppercase "Q" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("Q")
                    }) {
                        Text("Q")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "W" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("W")
                    }) {
                        Text("W")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "E" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("E")
                    }) {
                        Text("E")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "R" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("R")
                    }) {
                        Text("R")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "T" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("T")
                    }) {
                        Text("T")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "Y" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("Y")
                    }) {
                        Text("Y")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "U" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("U")
                    }) {
                        Text("U")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "I" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("I")
                    }) {
                        Text("I")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "O" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("O")
                    }) {
                        Text("O")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "P" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("P")
                    }) {
                        Text("P")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                }
                HStack(spacing: 6) {
                    // uppercase "A" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("A")
                    }) {
                        Text("A")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "S" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("S")
                    }) {
                        Text("S")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "D" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("D")
                    }) {
                        Text("D")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "F" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("F")
                    }) {
                        Text("F")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "G" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("G")
                    }) {
                        Text("G")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "H" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("H")
                    }) {
                        Text("H")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "J" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("J")
                    }) {
                        Text("J")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "K" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("K")
                    }) {
                        Text("K")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "L" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("L")
                    }) {
                        Text("L")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    
                }
                HStack(spacing: 6) {
                    Button(action: {
                        // Switch to uppercase state of Keyboard
                        currentKeyboardState = .lowercase
                    }) {
                        Text(Image(systemName: "capslock.fill"))
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)                                    .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "Z" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("z")
                    }) {
                        Text("Z")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "X" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("X")
                    }) {
                        Text("X")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "C" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("C")
                    }) {
                        Text("C")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "V" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("V")
                    }) {
                        Text("V")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "B" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("B")
                    }) {
                        Text("B")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "N" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("N")
                    }) {
                        Text("N")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // uppercase "M" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("M")
                    }) {
                        Text("M")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
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
                        // Switch to numbers state of Keyboard
                        currentKeyboardState = .numbers
                    }) {
                        Text("123")
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

struct UppercaseView_Previews: PreviewProvider {
    static var previews: some View {
        UppercaseView(currentKeyboardState: .constant(.uppercase))
    }
}
