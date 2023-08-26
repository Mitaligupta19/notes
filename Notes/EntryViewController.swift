////
////  EntryViewController.swift
////  Notes
////
////  Created by Mitali Gupta on 25/08/23.
////
//
//import UIKit
//
//class EntryViewController: UIViewController {
//
//    @IBOutlet var titlefield: UITextField!
//    @IBOutlet var notefield: UITextView!
//
//
//    public var completion: ((String, String) -> Void)?
//        override func viewDidLoad() {
//            super.viewDidLoad()
//            titlefield.becomeFirstResponder()
//            navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(didTapSave))
//        }
//    @objc func didTapSave(){
//        if let text = titlefield.text, !text.isEmpty, !notefield.text.isEmpty{
//            completion?(text, notefield.text)
//        }
//    }
//
//
//
//
//}
import UIKit
import CoreData

class EntryViewController: UIViewController {

    @IBOutlet  var titlefield: UITextField!
    @IBOutlet var notefield: UITextView!

    public var completion: ((String, String) -> Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        titlefield.becomeFirstResponder()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(hello))

        

       
    }

    @IBAction func hello(_ sender: Any) {
        debugPrint("hello 123")
        if let text = titlefield.text, notefield.text.isEmpty{
            completion?(text, notefield.text)
    }
//    @objc func didTapSave() {
//        debugPrint("hello 123")
//        if let text = titlefield.text, !text.isEmpty, notefield.text.isEmpty{
//            completion?(text, notefield.text)
//
//        }
    }

}
