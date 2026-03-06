//
//  PracticeTextField.swift
//  GNRepresentableView
//
//  Created by joe on 3/5/26.
//

import SwiftUI

struct PracticeTextField: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let textField = UITextField()
        textField.borderStyle = .line
        textField.delegate = context.coordinator
        textField.setContentHuggingPriority(.defaultHigh, for: .vertical)
        return textField
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator()
    }
    
    class Coordinator: NSObject, UITextFieldDelegate {
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            if string.isEmpty {
                return true
            }
            return Int(string) != nil
        }
    }
}
