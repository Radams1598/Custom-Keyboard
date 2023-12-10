//
//  KeyboardViewController.swift
//  Keyboard
//
//  Created by Raymond Adams on 12/8/23.
//

import UIKit
import SwiftUI

class KeyboardViewController: UIInputViewController {

    private var hostingController: UIHostingController<KeyboardView>!
    @IBOutlet var nextKeyboardButton: UIButton!
    
    private var textDocumentProxyWrapper: TextDocumentProxyWrapper!
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        // Add custom view sizing constraints here
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Perform custom UI setup here
        self.nextKeyboardButton = UIButton(type: .system)
        
        self.nextKeyboardButton.setTitle(NSLocalizedString("Next Keyboard", comment: "Title for 'Next Keyboard' button"), for: [])
        self.nextKeyboardButton.sizeToFit()
        self.nextKeyboardButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.nextKeyboardButton.addTarget(self, action: #selector(handleInputModeList(from:with:)), for: .allTouchEvents)
        
        self.view.addSubview(self.nextKeyboardButton)
        
        self.nextKeyboardButton.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        self.nextKeyboardButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    
        /*
        // Create a new instance of the KeyboardView and wrap it in a UIHostingController
        hostingController = UIHostingController(rootView: KeyboardView())
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        
        addChild(hostingController)
        view.addSubview(hostingController.view)
        hostingController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        hostingController.didMove(toParent: self)
        
        */
        
        
        // Create a TextDocumentProxyWrapper instance and pass it as an environment object
        textDocumentProxyWrapper = TextDocumentProxyWrapper(textDocumentProxy: textDocumentProxy)
               
        let hostingController = UIHostingController(
            rootView: KeyboardView().environmentObject(textDocumentProxyWrapper)
        )
        /*
        // setup for virtual controller. Over
        let hostingController = UIHostingController(rootView: KeyboardView())
         */
        hostingController.view.frame = UIScreen.main.bounds
        view.addSubview(hostingController.view)
        hostingController.view.backgroundColor = .init(red: 27/255, green: 31/255, blue: 39/255, alpha: 1)
        // Configure constraints
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            hostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            hostingController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        
        //overlays the virtual controller over the available screen
        //hostingController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //hostingController.modalPresentationStyle = .overFullScreen
        //hostingController.modalTransitionStyle = .flipHorizontal
        //hostingController.view.backgroundColor = .init(red: 27/255, green: 31/255, blue: 39/255, alpha: 1)
        //hostingController.edgesForExtendedLayout = .all
        
        //present(hostingController, animated: true, completion: nil)
         
    }
    
    override func viewWillLayoutSubviews() {
        self.nextKeyboardButton.isHidden = !self.needsInputModeSwitchKey
        super.viewWillLayoutSubviews()
    }
    
    override func textWillChange(_ textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }
    
    override func textDidChange(_ textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
        
        var textColor: UIColor
        let proxy = self.textDocumentProxy
        if proxy.keyboardAppearance == UIKeyboardAppearance.dark {
            textColor = UIColor.white
        } else {
            textColor = UIColor.black
        }
        self.nextKeyboardButton.setTitleColor(textColor, for: [])
    }

}
