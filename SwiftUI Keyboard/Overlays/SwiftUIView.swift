//
//  SwiftUIView.swift
//  Custom Keyboard
//
//  Created by Raymond Adams on 9/30/23.
//

import SwiftUI

struct SwiftUIView: View {
    @Binding var isVisible: Bool
    @Binding var xPosition: CGFloat
    
    @State private var selectedIndex: Int = 4 // Initialize as optional
    //    @State private var selectedIndex: Int? // Initialize as optional
    @State private var lastIndex: Int? // Initialize as optional
    @State private var newPositionOnDisappear = 4 // Initialize with the default value
    
    let symbols = ["!", "@", "#", ",", ".", "?"]
    @EnvironmentObject var textDocumentProxyWrapper: TextDocumentProxyWrapper
    @State private var newPosition: Int = 4
    
    
    var body: some View {
        VStack {
            HStack(alignment: .bottom, spacing: 0) {
                ForEach(0..<symbols.count, id: \.self) { index in
                    Button(action: {
                        isVisible = false
                    }) {
                        Text("\(symbols[index])")
                            .padding(.bottom, 80)
                            .font(.title)
                            .frame(width: 30, height: 120)
                            .background(selectedIndex == index ? Color(.gray) : Color(red: 56/255, green: 58/255, blue: 64/255))
                            .foregroundColor(.white)
                            .onChange(of: xPosition, initial: true) { _, new_xPosition in
                                let buttonWidth = 30.0
                                newPosition = max(0, min(Int(new_xPosition / buttonWidth), symbols.count - 1))
                                
                                print("newPosition: \(newPosition)")
                                if newPosition != selectedIndex {
                                    lastIndex = selectedIndex // Capture the last index
                                    selectedIndex = newPosition
                                    
                                }
                                
                                //newPositionOnDisappear = newPosition
                            }
                    }
                }
            }
            .cornerRadius(5)
            .onDisappear {
                if lastIndex == nil{
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText(symbols[selectedIndex])
                }
                else{
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText(symbols[newPosition])
                }
                
            }
            
        }
        .frame(width: 180, height: 120)
        .cornerRadius(5)
    }
}

//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        SwiftUIView(isVisible: .constant(false), xPosition: .constant(0.0), defaultIndex: 4)
//    }
//}

