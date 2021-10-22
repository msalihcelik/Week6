//
//  ViewController.swift
//  Week6
//
//  Created by Mehmet Salih ÇELİK on 20.10.2021.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureContents()
    }
    
    private func configureContents() {
        tabBarController?.tabBar.tintColor = UIColor.darkGray
        tabBarController?.tabBar.unselectedItemTintColor = UIColor.lightGray
        tabBarController?.tabBar.items?[0].setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "WickedHalloween", size: 15)], for: .normal)
        tabBarController?.tabBar.items?[0].image = UIImage(named: "icon11")
        tabBarController?.tabBar.items?[0].selectedImage = UIImage(named: "icon11")
        tabBarController?.tabBar.items?[1].setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "WickedHalloween", size: 15)], for: .normal)
        tabBarController?.tabBar.items?[1].image = UIImage(named: "icon22")
        tabBarController?.tabBar.items?[1].selectedImage = UIImage(named: "icon22")
    }
    
    @IBAction private func logInButtonTapped(_ sender: Any) {
        if (nameTextField.text == "" || passwordTextField.text == "") {
            showAlertView(viewController: self)
        } else {
            performSegue(withIdentifier: "toSuccessVC", sender: nil)
        }
    }
    
    func showAlertView(viewController: UIViewController) {
        let alert = UIAlertController(title: "Lütfen boş alan bırakmayınız!", message: "", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        viewController.present(alert, animated: true)
    }
    
}
