//
//  ViewController.swift
//  LoginUIAnimation
//
//  Created by Ibrahim Hamed on 10/12/21.
//

import UIKit

class LoginVC: UIViewController {
    // Outlets
    @IBOutlet var loginLabel: UILabel!
    
    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!

    @IBOutlet var cloud1ImageView: UIImageView!
    @IBOutlet var cloud2ImageView: UIImageView!
    @IBOutlet var cloud3ImageView: UIImageView!
    @IBOutlet var cloud4ImageView: UIImageView!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var loginLabelCenterConstraint: NSLayoutConstraint!
    @IBOutlet weak var usernameLabelCenterConstraint: NSLayoutConstraint!
    @IBOutlet weak var PasswordLabelCenterConstraint: NSLayoutConstraint!
    @IBOutlet weak var loginButtonCenterConstraint: NSLayoutConstraint!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        changeButtonBGColor()
        loginLabelCenterConstraint.constant -= view.bounds.width
        usernameLabelCenterConstraint.constant -= view.bounds.width + 40
        PasswordLabelCenterConstraint.constant -= view.bounds.width + 70
        loginButtonCenterConstraint.constant -= view.bounds.width - 100
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateClouds()
        animateUI()

    }
}

extension LoginVC {
    
    private func changeButtonBGColor(){
        UIView.animate(withDuration: 0.6,
                           delay: 1,
                           options: .curveEaseInOut ,
                           animations: { [weak self] in
                            self?.loginButton.backgroundColor = .systemGreen
              }, completion: nil)
    }
    
    private func animateUI(){
        

        
        UIView.animate(withDuration: 1.8 , delay: 0 , options: .curveEaseInOut) { [weak self] in
            self?.loginLabelCenterConstraint.constant = 0
            self?.usernameLabelCenterConstraint.constant = 0
            self?.PasswordLabelCenterConstraint.constant = 0
            self?.loginButtonCenterConstraint.constant = 0
              self?.view.layoutIfNeeded()
            }
    }
    
    private func animateClouds() {
        let optionsAnimation : UIView.AnimationOptions = [.curveEaseInOut, .repeat, .autoreverse]
        
        UIView.animate(withDuration: 2.9,
                       delay: 0,
                       options: optionsAnimation,
                       animations: { [weak self] in
                        
                        self?.cloud1ImageView.frame.size.height *= 1.18
                        self?.cloud1ImageView.frame.size.width *= 1.18

        }, completion: nil)
        
        UIView.animate(withDuration: 2.7,
                       delay: 0.3,
                       options: optionsAnimation,
                       animations: { [weak self] in
                        
                        self?.cloud2ImageView.frame.size.height *= 1.18
                        self?.cloud2ImageView.frame.size.width *= 1.18
                    
        }, completion: nil)
        
        UIView.animate(withDuration: 2.2,
                       delay: 0.5,
                       options: optionsAnimation,
                       animations: { [weak self] in
                        
                        self?.cloud3ImageView.frame.size.height *= 1.2
                        self?.cloud3ImageView.frame.size.width *= 1.2
                        
        }, completion: nil)
        
        UIView.animate(withDuration: 2.4,
                       delay: 0.2,
                       options: optionsAnimation,
                       animations: { [weak self] in
                        
                        self?.cloud4ImageView.frame.size.height *= 1.15
                        self?.cloud4ImageView.frame.size.width *= 1.15
                        
        }, completion: nil)
    }
}
