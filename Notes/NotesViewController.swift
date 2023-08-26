//
//  NotesViewController.swift
//  Notes
//
//  Created by Mitali Gupta on 25/08/23.
//

import UIKit

class NotesViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UITextField!
    @IBOutlet var noteLabel: UITextView!
    public var noteTitle: String = ""
    public var note: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = noteTitle
        noteLabel.text = note
        // Do any additional setup after loading the view.
    }
    

    

}
