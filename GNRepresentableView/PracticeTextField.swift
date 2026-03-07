//
//  PracticeTextField.swift
//  GNRepresentableView
//
//  Created by joe on 3/5/26.
//

import SwiftUI

struct PracticeTextField: UIViewRepresentable {
    @Binding var value: String
    
    func makeUIView(context: Context) -> UITextField {
        let textField = UITextField()
        textField.borderStyle = .line
        textField.delegate = context.coordinator
        textField.setContentHuggingPriority(.defaultHigh, for: .vertical)
        return textField
    }
    
    func updateUIView(_ uiView: UITextField, context: Context) {
        uiView.text = value
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(value: $value)
    }
    
    class Coordinator: NSObject, UITextFieldDelegate {
        @Binding var value: String
        
        init(value: Binding<String>) {
            self._value = value
        }
        
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            if string.isEmpty {
                return true
            }
            if Int(string) != nil {
                value = textField.text ?? ""
                return true
            }
            return false
        }
    }
}
