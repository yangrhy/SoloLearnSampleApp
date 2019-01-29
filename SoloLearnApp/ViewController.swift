//
//  ViewController.swift
//  SoloLearnApp
//
//  Created by Ricky Yang on 1/27/19.
//  Copyright © 2019 Ricky Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var item: Item?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let item = item {
            nameTextField.text = item.name
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if sender as AnyObject? === saveButton{
            let name = nameTextField.text ?? ""
            item = Item(name:name)
        }
    }
    
    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!

    @IBAction func cancel(_ sender: UIBarButtonItem) {
        let isInAddMode = presentingViewController is UINavigationController
        
        if isInAddMode {
            dismiss(animated: true, completion: nil)
        }
        else {
            navigationController!.popViewController(animated: true)
        }
    }
}

