//
//  ProfileViewController.swift
//  Less7HW
//

//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var avaImageView: UIImageView!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var eMailLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    private let dataProvider = DataProviderService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loadUserDataButtonAction(_ sender: UIButton) {
        
        dataProvider.loadUserData { profile in
            updateUI(profile)
        }
    }
    
    @IBAction func loadAdminDataButtonAction(_ sender: UIButton) {
        
        dataProvider.loadAdminData {admin in
            updateUI(admin)
        }
    }
    
    func updateUI(_ profileData: ProfileData) {
        
        avaImageView.image = UIImage(named: "\(profileData.avatarName)")
        firstNameLabel.text = profileData.firstName
        lastNameLabel.text = profileData.lastName
        eMailLabel.text = profileData.email
        addressLabel.text = profileData.adress
    }
}
