//
//  SwiftUIView.swift
//  Custom Keyboard
//
//  Created by Raymond Adams on 1/29/23.
//

import SwiftUI
import UIKit
import Foundation


class TextDocumentProxyWrapper: ObservableObject {
    @Published var textDocumentProxy: UITextDocumentProxy
    
    init(textDocumentProxy: UITextDocumentProxy) {
        self.textDocumentProxy = textDocumentProxy
    }
    
}
struct KeyboardView: View {
    
    
    // creates an instance of TextDocumentProxy using the @EnvironmentObject property wrapper
    @EnvironmentObject var textDocumentProxyWrapper: TextDocumentProxyWrapper
    
    // @State is used to store simple values or collections of values that can be modified within a view. When the value of a @State property changes, the view is recomputed and updated.
    // capsLockOn state variable that keeps track of whether the caps lock button has been pressed.
    @State private var capsLockOn = false
    //@State private var isQuickPuncVisible = false
    //@State private var isPopupVisible = false
//    @State private var selectedSymbol: String?
    //@GestureState private var isLongPressing = false
    //@State private var isLongPressing = false
    @State private var count = 0
    @State private var repeatTimer: Timer?
    //@State private var buttonTapped = false
    
    // Define the different keyboard states/layouts
    // An enum is short for enumeration. It is a user-defined data type that represents a group of related values. Enums allow you to define a set of named constants, which can then be used throughout your code
    
    
    
    // Keep track of the current keyboard state/layout. Default state is .lowercase
    @State private var currentKeyboardState: KeyboardState = .lowercase
    
    
    var body: some View {
        
        VStack(spacing: 0){
            // Define the buttons for each keyboard state/layout
            switch currentKeyboardState {
            case .lowercase:
                // Lowercase keyboard state/layout
                LowercaseView(currentKeyboardState: $currentKeyboardState)
            case .uppercase:
                // Uppercase keyboard state/layout
                UppercaseView(currentKeyboardState: $currentKeyboardState)
            case .numbers:
                // Numbers keyboard state/layout
                NumbersView(currentKeyboardState: $currentKeyboardState)
            case .symbols:
                // Symbols keyboard state/layout
                SymbolsView(currentKeyboardState: $currentKeyboardState)
            }
        }
        .background(Color(red: 27/255, green: 31/255, blue: 39/255))
        
    }
    
//    private let punctuationOptions = ["!", "@", "#", ",", ".", "?"]
    
    private func deleteCharacter() {
        if self.textDocumentProxyWrapper.textDocumentProxy.hasText {
            // Text is empty or context before input is empty
            self.textDocumentProxyWrapper.textDocumentProxy.deleteBackward()
        }
    }
    
//    func startRepeatingAction() {
//        print("Begin startRepeatingAction")
//        repeatTimer = Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { _ in
//            if isLongPressing {
//                // Perform the repeating action
//                self.textDocumentProxyWrapper.textDocumentProxy.deleteBackward()
//            } else {
//                stopRepeatingAction()
//            }
//        }
//    }
    
    func startRepeatingAction() {
        print("Begin startRepeatingAction")
        repeatTimer = Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { _ in
            // Perform the repeating action
            self.textDocumentProxyWrapper.textDocumentProxy.deleteBackward()
            
        }
    }

    func stopRepeatingAction() {
        repeatTimer?.invalidate()
        repeatTimer = nil
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView()
        
    }
}


