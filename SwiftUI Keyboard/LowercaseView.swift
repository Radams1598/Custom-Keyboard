//
//  LowercaseView.swift
//  Custom Keyboard
//
//  Created by Raymond Adams on 8/18/23.
//

import SwiftUI
import UIKit
import Foundation

struct LowercaseView: View {
    @Binding var currentKeyboardState: KeyboardState
    
    
    @EnvironmentObject var textDocumentProxyWrapper: TextDocumentProxyWrapper
    
    //@GestureState private var isLongPressing = false
    @State private var selectedSymbol: String?
    @State private var isQuickPuncVisible = false
    @State private var selectedAccent: String? // Define a state property to hold the selected accent
    //Variables to handle delete button
    @State private var repeatTimer: Timer?
    @State private var buttonTapped = false
    @State private var isHoldingDelete = false
    @State private var selectedIndex = 1 // Default selected index
    @State private var xPosition: CGFloat = 30.0*(4)
    @State private var dragOffset: CGSize = .zero
    @State private var startLocation: CGPoint?
    @State private var isKeyMagnified = false
    
    
    @State private var charPressed = false
    
    let symbols = ["!", "@", "#", ",", ".", "?"]
    //    Time function
    //    let startTime = Date()
    //
    //    let endTime = Date()
    //    let elapsedTime = endTime.timeIntervalSince(startTime)
    //    print("Elapsed time: \(elapsedTime*1000) milliseconds")
    
    
    var body: some View {
        
        ZStack{
            
            VStack{
                Spacer()
                HStack(spacing: 6) {
                    Button(action: {
                        // When a character button is pressed, we check whether capsLockOn is true
                        
                    }) {
                        Text("Typed Word | Translated Word")
                        //.frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        //.cornerRadius(5)
                            .foregroundColor(.white)
                    }
                }
                HStack(spacing: 6) {
                    // lowercase "q" button action
                    Button(action: {
                        
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("q")
                    }) {
                        ZStack{
                            Text("q")
                                .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                                .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                                .cornerRadius(5)
                                .foregroundColor(.white)
                            
                        }
                    }
                    
                    // lowercase "w" button action
                    Button(action: {
                        
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("w")
                        
                    }) {
                        Text("w")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "e" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("e")
                    }) {
                        Text("e")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "r" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("r")
                    }) {
                        Text("r")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "t" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("t")
                    }) {
                        Text("t")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "y" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("y")
                    }) {
                        Text("y")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "u" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("u")
                    }) {
                        Text("u")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "i" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("i")
                    }) {
                        Text("i")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "o" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("o")
                    }) {
                        Text("o")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "p" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("p")
                    }) {
                        Text("p")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                }
                HStack(spacing: 6) {
                    // lowercase "a" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("a")
                    }) {
                        Text("a")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "s" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("s")
                    }) {
                        Text("s")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "d" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("d")
                    }) {
                        Text("d")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "f" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("f")
                    }) {
                        Text("f")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "g" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("g")
                    }) {
                        Text("g")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "h" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("h")
                        
                    }) {
                        Text("h")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
//                        ZStack{
//                            Text("h")
//                                .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
//                                .background(Color(red: 56/255, green: 58/255, blue: 64/255))
//                                .cornerRadius(5)
//                                .foregroundColor(.white)
//                                .overlay(
//                                    Group{
//                                        if charPressed{
//                                            CharacterPreview()
//                                        }
//                                    }
//                                )
//                                .gesture(
//                                    LongPressGesture(minimumDuration: 1.5)
//                                        .onChanged { _ in
//                                            // Handle the button being held down
//                                            charPressed = true
//                                        }
//                                        .onEnded { _ in
//                                            // Handle the button being released
//                                            charPressed = false
//                                        }
//                                )
//                            
//                        }
                    }
                    // lowercase "j" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("j")
                    }) {
                        Text("j")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "k" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("k")
                    }) {
                        Text("k")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "l" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("l")
                    }) {
                        Text("l")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    
                }
                HStack(spacing: 6) {
                    Button(action: {
                        // Switch to uppercase state of Keyboard
                        currentKeyboardState = .uppercase
                        
                    }) {
                        //Text(Image(systemName: "capslock.fill")) uppercase
                        Text(Image(systemName: "capslock"))
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)                                    .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "z" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("z")
                    }) {
                        Text("z")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "x" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("x")
                    }) {
                        Text("x")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "c" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("c")
                    }) {
                        Text("c")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "v" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("v")
                    }) {
                        Text("v")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "b" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("b")
                    }) {
                        Text("b")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "n" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("n")
                    }) {
                        Text("n")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                    // lowercase "m" button action
                    Button(action: {
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("m")
                    }) {
                        Text("m")
                            .frame(width: UIScreen.main.bounds.width / 12, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                            .alignmentGuide(.top, computeValue: { d in
                                d[VerticalAlignment.top]
                            })
                    }
                    Button(action: {
                        //executed after a long press detected
                        if self.isHoldingDelete && self.textDocumentProxyWrapper.textDocumentProxy.hasText {
                            print("Hold complete")
                            stopRepeatingAction()
                            buttonTapped = false
                            isHoldingDelete = false
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
                        isHoldingDelete = true
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
                        //self.textDocumentProxyWrapper.textDocumentProxy.insertText(" ")
                    }) {
                        Text("Keyboard")
                        //.fontWeight(.light)
                            .fontWeight(.ultraLight)
                            .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.width / 8)
                            .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        //.background(Color(red: 56/255, green: 58/255, blue: 64/255))
                            .cornerRadius(5)
                            .foregroundColor(.white)
                        
                    }
                    // If the user double taps the space bar insert a period
                    .simultaneousGesture(
                        TapGesture(count: 2)
                            .onEnded {
                                self.textDocumentProxyWrapper.textDocumentProxy.deleteBackward()
                                self.textDocumentProxyWrapper.textDocumentProxy.insertText(".")
                                self.textDocumentProxyWrapper.textDocumentProxy.insertText(" ")
                            }
                    )
                    // If the user taps the space bar insert an empty space " "
                    .simultaneousGesture(
                        TapGesture(count: 1)
                            .onEnded {
                                self.textDocumentProxyWrapper.textDocumentProxy.insertText(" ")
                            }
                    )
                    
                    Button(action: {
                        // button action
                        //self.textDocumentProxyWrapper.textDocumentProxy.insertText(".")
                        //                        isQuickPuncVisible = true
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
                    .simultaneousGesture(
                        TapGesture(count: 1)
                            .onEnded {
                                // Handle tap gesture here
                                self.textDocumentProxyWrapper.textDocumentProxy.insertText(".")
                            }
                            .exclusively(before: LongPressGesture(minimumDuration: 0.3)
                                .onEnded { pressing in
                                    // Show the overlay when long-pressed for 0.3 seconds
                                    self.isQuickPuncVisible = true                                }
                            )
                            .simultaneously(with: DragGesture(minimumDistance: 0)
                                .onChanged { value in
                                    self.xPosition = value.location.x + 30.0 * 4
                                }
                                .onEnded { value in
                                    if value.location.x.isEqual(to: 30.0 * 4) {
                                        // Default to "." if no drag movement
                                        self.textDocumentProxyWrapper.textDocumentProxy.insertText(".")
                                    }
                                
                                    self.isQuickPuncVisible = false
                                }
                            )
                        )


                    if isQuickPuncVisible {
                        // A semi-transparent black overlay
                        Color.black.opacity(0.5)
                        //.edgesIgnoringSafeArea(.all)
                            .overlay(
                                SwiftUIView(isVisible: $isQuickPuncVisible, xPosition: $xPosition)
                            )
                            .position(x: -60, y: 0)
                        
                    }
                    
                    Button(action: {
                        // button action
                        self.textDocumentProxyWrapper.textDocumentProxy.insertText("\n")
                    }) {
                        Text(Image(systemName: "arrow.turn.down.left"))
                            .frame(width: UIScreen.main.bounds.width / 10, height: UIScreen.main.bounds.width / 8)
                            .cornerRadius(5)
                            .foregroundColor(.white)
                    }
                }
                
            }
        }
    }
    
    func insertCharacter(text: String){
        return self.textDocumentProxyWrapper.textDocumentProxy.insertText(text)
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

//struct LowercaseView_Previews: PreviewProvider {
//    static var previews: some View {
//        LowercaseView(currentKeyboardState: .constant(.lowercase))
//    }
//}
