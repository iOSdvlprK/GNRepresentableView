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
        textField.setContentHuggingPriority(.defaultHigh, for: .vertical)
        return textField
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
