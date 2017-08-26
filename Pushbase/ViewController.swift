//
//  ViewController.swift
//  Pushbase
//
//  Created by Tyler Furby on 8/25/17.
//  Copyright © 2017 Furby Studios. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
   
    @IBOutlet var txtUsername: UITextField!
    @IBOutlet var txtPassword: UITextField!
    
    @IBAction func btnLogin() {
        let appDel:AppDelegate = (UIApplication.shared.delegate as! AppDelegate)
        let context = appDel.persistentContainer.viewContext
        
        let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context) as NSManagedObject
        newUser.setValue(txtUsername.text, forKey: "username")
        newUser.setValue(txtPassword.text, forKey: "password")
        
        do {
            try context.save()
        } catch let error {
            print("Could not cache the response \(error)")
        }
        
        print(newUser)
        print("Object Saved.")
        
    }
    
    @IBAction func btnAuth() {
        let appDel:AppDelegate = (UIApplication.shared.delegate as! AppDelegate)
        let context = appDel.persistentContainer.viewContext
        
        let request:NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "Users")
        request.returnsObjectsAsFaults = false
        request.predicate = NSPredicate(format: "username = %@", txtUsername.text!)
        var results:NSArray = []
        
        
        do {
            results = try context.fetch(request) as NSArray
        } catch let error {
            print("Could not cache the response \(error)")
        }
        
        if(results.count > 0) {
            let res = results[0] as! NSManagedObject
            if (txtUsername.text == res.value(forKey: "username") as! String? && txtPassword.text == res.value(forKey: "password") as! String?) {
                let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                
                let nextViewController = storyBoard.instantiateViewController(withIdentifier: "newsFeed") as! NewsFeedViewController
                self.present(nextViewController, animated:true, completion:nil)
            }
        } else {
            print("0 Results Returned... Potential Error.")
        }
    }
    
   override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

