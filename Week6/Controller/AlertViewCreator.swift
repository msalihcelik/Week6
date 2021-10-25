//
//  ShowAlertView.swift
//  Week6
//
//  Created by Mehmet Salih ÇELİK on 25.10.2021.
//

import Foundation
import UIKit

class AlertViewCreator {
    
    static let shared = AlertViewCreator()
    
    func showAlertView(viewController: UIViewController) {
        let alert = UIAlertController(title: "Lütfen boş alan bırakmayınız!", message: "", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        viewController.present(alert, animated: true)
    }
    
}
