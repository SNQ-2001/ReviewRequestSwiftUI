//
//  SVGView.swift
//  
//
//  Copyright (c) 2022 MIYAMOTO TAISHIN
//

import SwiftUI

struct SVGView: UIViewControllerRepresentable {
    let name: String
    func makeCoordinator() -> Coordinator {
        Coordinator(name: name)
    }
    func makeUIViewController(context: UIViewControllerRepresentableContext<SVGView>) -> UIViewController {
        context.coordinator
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<SVGView>) {
    }
    class Coordinator: UIViewController {
        let name: String
        init(name: String) {
            self.name = name
            super.init(nibName: nil, bundle: nil)
        }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        override func loadView() {
            view = UIImageView(image: UIImage(named: name, in: Bundle.module, compatibleWith: nil))
        }
    }
}
