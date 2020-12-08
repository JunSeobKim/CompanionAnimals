//
//  MainViewController.swift
//  CompanionAnimals
//
//  Created by 김준섭 on 2020/12/08.
//

import UIKit

class MainViewController: UIViewController {
    
    private enum ButtonTag: Int {
        case dog = 101
        case cat, rabbit, hedgehog
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: Privates
    private func animalInfo(for tag: ButtonTag) -> AnimalInfo? {
        
        let assetName: String
        
        switch tag {
        case ButtonTag.dog:
            assetName = "Dog"
        case ButtonTag.cat:
            assetName = "Cat"
        case ButtonTag.rabbit:
            assetName = "Rabbit"
        case ButtonTag.hedgehog:
            assetName = "Hedgehog"
        }
        
        return AnimalInfo.decode(from: assetName)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 들어온 segue가 button인지 확인
        guard let button: UIButton = sender as? UIButton else {
            return
        }
        // 들어온 segue가 DescriptionVC로 가는지 확인
        guard let nextViewController: DescriptionViewController = segue.destination as? DescriptionViewController else {
            return
        }
        
        guard let tag: ButtonTag = ButtonTag(rawValue: button.tag) else {
            print("버튼의 태그를 enum으로 변경불가")
            return
        }
        
        guard let info: AnimalInfo = self.animalInfo(for: tag) else {
            return
        }
        
        nextViewController.animalInfo = info
    }

}
