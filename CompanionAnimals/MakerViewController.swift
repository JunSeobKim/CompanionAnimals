//
//  MakerViewController.swift
//  CompanionAnimals
//
//  Created by 김준섭 on 2020/12/08.
//

import UIKit

class MakerViewController: UIViewController {

    @IBOutlet weak var descriptionTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.descriptionTextView.text = """
            Hello!
            Made by JunSeobKim
            https://github.com/JunSeobKim
            """
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpInsideDismissButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
