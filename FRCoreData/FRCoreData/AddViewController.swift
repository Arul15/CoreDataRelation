//
//  AddViewController.swift
//  FRCoreData
//
//  Created by Parthiban M on 11/03/18.
//  Copyright © 2018 Parthiban M. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    private var appdelegate = UIApplication.shared.delegate as! AppDelegate
    private let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var ownerObj: Author!
    
    @IBOutlet weak var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionSave(_ sender: Any) {
        let authorObj = Author(entity: Author.entity(), insertInto: context)
        authorObj.name = name.text
        appdelegate.saveContext()
    }
    
    @IBAction func actionSaveBook(_ sender: Any) {
        let bookObj = Book(entity: Book.entity(), insertInto: context)
        bookObj.name = name.text
        bookObj.owner = ownerObj
        appdelegate.saveContext()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
