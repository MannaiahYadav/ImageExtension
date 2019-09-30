//
//  LoginVC.swift
//  StaticPod
//
//  Created by Mac HD on 25/09/19.
//  Copyright © 2019 Mac HD. All rights reserved.
//

import UIKit
import CoreData


 public class LoginVC: UIViewController {

    override public func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 10.0, *) {
            self.saveContext()
        } else {
            // Fallback on earlier versions
        }
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        print("Mannaih")
        
        
    }
  

    // MARK: - Core Data stack
    @available(iOS 10.0, *)
    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
         */
        let container = NSPersistentContainer(name: "NewForm")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    @available(iOS 10.0, *)
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    //MARK:- <----CoreDB---->
    
   public func saveRecordinDB() {
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        if #available(iOS 10.0, *) {
            let context = persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "PersonDb", in: context)
            
            let newUser = NSManagedObject(entity: entity!, insertInto: context)
            
            newUser.setValue("Mannaiah", forKey: "userName")
            
            do {
                
                try context.save()
                print("---RecordSucesFullySaved---")
                
            } catch {
                
                print("Failed saving")
                
            }
            
            ////////
        } else {

         // Fallback on earlier versions
        }
        
     
    }
    
    
    
   public func getRecordFromDB() {
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "PersonDb")
        //request.predicate = NSPredicate(format: "age = %@", "12")
       
        
        if #available(iOS 10.0, *) {
            let managedContext =
                persistentContainer.viewContext
            request.returnsObjectsAsFaults = false
            do {
                
                let result = try managedContext.fetch(request)
                for data in result as! [NSManagedObject] {
                    let user_name = data.value(forKey: "userName") as! String
                    print(user_name)
                    
                    
                }
                
            }catch {
                
                print("Failed")
                
            }
        } else {
            // Fallback on earlier versions
        }
        
     
    }
    
    

}

extension UIImageView {
    public func circleImageView(borderColor: UIColor, borderWidth: CGFloat){
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = self.layer.frame.size.width / 2
        self.clipsToBounds = true
    }
}

