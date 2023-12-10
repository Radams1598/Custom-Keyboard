//
//  QuickPunctuationView.swift
//  Custom Keyboard
//
//  Created by Raymond Adams on 8/18/23.
//

import SwiftUI
import UIKit

enum DragState {
    case inactive
    case pressing
    case dragging(translation: CGSize)
}


struct QuickPunctuationView: View {
    /*@Binding is a property wrapper in SwiftUI that allows you to create a two-way connection between a property in a child view and a property in a parent view. It enables you to pass data from a parent view to a child view and also update that data from the child view, and have those changes reflected back in the parent view.
     
     Here's how @Binding works:
     
     Parent View: The parent view has a property that holds the data you want to share with the child view. This property is typically annotated with the @State property wrapper.
     
     Child View: The child view receives the data as a Binding property, which means it can read and modify the data.
     
     Two-Way Binding: Any changes made to the Binding property in the child view are directly reflected in the parent view's property. Conversely, if the parent view's property changes, those changes are reflected in the child view through the binding.*/
    
    //The selected represent which tab is selected on the menu, and options holds the string values that will be displayed. Now time to build out the view.
    //    @Binding var selected: Int
    //    var options: [String]
    @Binding var isVisible: Bool
    
    // creates an instance of TextDocumentProxy using the @EnvironmentObject property wrapper
    @EnvironmentObject var textDocumentProxyWrapper: TextDocumentProxyWrapper
    
    @State var selection: Int?
    let symbols = ["!", "@", "#", ",", ".", "?"]
    
    @State private var selectedSegment = 0

    
    var body: some View {
        
        
        HStack{
            Picker("", selection: $selection) {
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("!")
                }) {
                    Text("!")
                        .tag(1 as Int?)
                        .frame(width: UIScreen.main.bounds.width / 8, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("@")
                }) {
                    Text("@")
                        .tag(2 as Int?)
                        .frame(width: UIScreen.main.bounds.width / 8, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("#")
                }) {
                    Text("#")
                        .tag(3 as Int?)
                        .frame(width: UIScreen.main.bounds.width / 8, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText(",")
                }) {
                    Text(",")
                        .tag(4 as Int?)
                        .frame(width: UIScreen.main.bounds.width / 8, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText(".")
                }) {
                    Text(".")
                        .tag(5 as Int?)
                        .frame(width: UIScreen.main.bounds.width / 8, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                Button(action: {
                    self.textDocumentProxyWrapper.textDocumentProxy.insertText("?")
                }) {
                    Text("?")
                        .tag(6 as Int?)
                        .frame(width: UIScreen.main.bounds.width / 8, height: UIScreen.main.bounds.width / 8)
                        .background(Color(red: 56/255, green: 58/255, blue: 64/255))
                        .cornerRadius(5)
                        .foregroundColor(.white)
                }
                
                
            }
            .pickerStyle(.segmented)
            //.frame(width: 300)
            .frame(minHeight: 500) // Adjust the height of this spacer to control Picker's height
            //.background(Color(red: 56/255, green: 58/255, blue: 64/255))
            //.foregroundColor(.white)
            
        }
        .frame(minHeight: 300)
        .background(Color.green)
         // Adjust width and height as needed
        .cornerRadius(5)
//        .onChange(of: selection) { value in
//            switch value{
//            case 1:
//                self.textDocumentProxyWrapper.textDocumentProxy.insertText("!")
//                print("!")
//                isVisible = false
//            case 2:
//                self.textDocumentProxyWrapper.textDocumentProxy.insertText("@")
//                print("@")
//                isVisible = false
//            case 3:
//                self.textDocumentProxyWrapper.textDocumentProxy.insertText("#")
//                print("#")
//                isVisible = false
//            case 4:
//                self.textDocumentProxyWrapper.textDocumentProxy.insertText(",")
//                print(",")
//                isVisible = false
//            case 5:
//                self.textDocumentProxyWrapper.textDocumentProxy.insertText(".")
//                print(".")
//                isVisible = false
//            case 6:
//                self.textDocumentProxyWrapper.textDocumentProxy.insertText("?")
//                print("?")
//                isVisible = false
//            default:
//                isVisible = false
//            }
//            if let value = value {
//                print("You clicked on \(value)")
//            } else {
//                print("Empty!")
//            }
//        }
        
    }
    
}

struct QuickPunctuationView_Previews: PreviewProvider {
    //@State private var selected = 0 // Set an initial selected index

    static var previews: some View {
        QuickPunctuationView(isVisible: .constant(false))
        //QuickPunctuationView()
    }
}
