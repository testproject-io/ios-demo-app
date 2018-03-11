//
//  ViewController.swift
//  Helper
//
//  Created by Marat Strelets on 28/07/2017.
//  Copyright © 2017 TestProject. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var personsList: UITableView!
    
    var persons = [String]();

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.persons.count;
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Simple", for: indexPath)
        
        cell.textLabel?.text = persons[indexPath.row];
        
        return cell
    }
    
    func updateFullName() {
        self.fullName.text = self.firstName.text! + " " + self.lastName.text!;
    }
    
    @IBAction func addPerson(_ sender: Any) {
        self.persons.append(self.fullName.text ?? "");
        personsList.reloadData();
    }

    @IBAction func firstNameChanged(_ sender: Any) {
        updateFullName();
    }
    
    @IBAction func lastNameChanged(_ sender: Any) {
        updateFullName();
    }
}

