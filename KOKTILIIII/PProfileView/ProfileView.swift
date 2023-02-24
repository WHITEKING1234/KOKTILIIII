//
//  ProfileView.swift
//  KOKTILIIII
//
//  Created by Mac on 23/2/23.
//

import UIKit

class ProfileView: UIViewController {
    
    
    
    
    
    @IBOutlet weak var EmailTextfeld: UITextField!
    
    
    
    
    @IBOutlet weak var DateTextfeld: UITextField!
    
    
    
    @IBOutlet weak var AdreesTextfeld: UITextField!
    
    
    @IBOutlet weak var SaveButton: UIButton!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        SaveButton.addTarget(self, action: #selector(Savetarget), for: .touchUpInside)
        EmailTextfeld.text = UserDefaults.standard.string(forKey: "email")
        DateTextfeld.text = UserDefaults.standard.string(forKey: "date")
        AdreesTextfeld.text = UserDefaults.standard.string(forKey: "adress")
    }
    @objc func Savetarget(){
        guard let text = EmailTextfeld.text else {return}
        UserDefaults.standard.set(text, forKey: "email")
        guard let text1 = DateTextfeld.text else {return}
        UserDefaults.standard.set(text, forKey: "date")
        guard let text2 = AdreesTextfeld.text else {return}
        UserDefaults.standard.set(text, forKey: "adress")
        
    }
    
       }
    

