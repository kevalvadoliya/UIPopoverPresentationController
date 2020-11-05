//
//  ViewController.swift
//  UIPopoverPresentationController
//
//  Created by Keval Vadoliya on 05/11/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showPopoverAction(_ sender: UIBarButtonItem) {
        guard let tableViewController = self.storyboard?.instantiateViewController(withIdentifier: "TableViewController") as? TableViewController else {
            return
        }
        tableViewController.preferredContentSize = CGSize(width: 200, height: 200)
        tableViewController.modalPresentationStyle = .popover
        let popover: UIPopoverPresentationController = tableViewController.popoverPresentationController!
        popover.delegate = self
        popover.sourceView = self.view
        popover.barButtonItem = sender
        present(tableViewController, animated: true, completion:nil)
    }
    
}

extension ViewController: UIPopoverPresentationControllerDelegate {
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
}
