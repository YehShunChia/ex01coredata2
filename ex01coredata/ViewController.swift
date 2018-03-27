//
//  ViewController.swift
//  ex01coredata
//
//  Created by megasilver on 2018/3/23.
//  Copyright © 2018年 com.megasilver. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController  {

    @IBAction func doJob(_ sender: Any) {
        
        let dd = (UIApplication.shared.delegate as! AppDelegate  ).dataController
        let empoylee = NSEntityDescription.insertNewObject(forEntityName: "Empoylee", into: (dd?.managedObjectContext)!) as! Empoylee
        
        
        
        let orders = NSEntityDescription.insertNewObject(forEntityName: "Orders", into: (dd?.managedObjectContext)!) as! Orders
        
        let items = NSEntityDescription.insertNewObject(forEntityName: "Items", into: (dd?.managedObjectContext)!) as! Items
        
        
        
        empoylee.name = "哈@@羅"
        empoylee.age = 17
        empoylee.gid = 18
        empoylee.address = "address"
        empoylee.tel = "9999"
        
        
        //
        orders.gid = 17
        orders.orderdate = Date() as NSDate
        orders.title = "title"
        
        //
        
        items.amt = 100.0
        items.gid = 8
        items.itemcount = 1
        items.itemname = "NCU"
        items.item = orders
        
        
        
        do{
            try (dd?.managedObjectContext)!.save()
        }catch{
            print("\(error)")
        }
        
        
        
        
        showdataa()
        

        
        
        
        
        
    }
    
    
    func showdataa(){
        //read data
        let dd = (UIApplication.shared.delegate as! AppDelegate  ).dataController
        
        
        let request = NSFetchRequest<Empoylee>(entityName: "Empoylee")
        
        request.sortDescriptors = [NSSortDescriptor(key: "age", ascending: true  )]
        
        do{
            
            let results =
                try (dd?.managedObjectContext)!.fetch(request) as! [Empoylee]
            
            for result in results{
                print("\(result.gid)    \(result.age)   \(result.name)  "  )
                
                print("Address ==>  \(result.address ?? "EMPTY"  )  "  )
                print("Tel ==>  \(result.tel ?? "EMPTY"  )  "  )
                
                
                
                
            }
            
        }catch{
            print("\(error)")
        }
        
        
        
        
        
        //************************************************************//
        let request2 = NSFetchRequest<Orders>(entityName: "Orders")
        
        request2.sortDescriptors = [NSSortDescriptor(key: "gid", ascending: true  )]
        
        do{
            
            let results =
                try (dd?.managedObjectContext)!.fetch(request2) as! [Orders]
            
            for result in results{
                print("\(result.gid)    \(result.title)  \(result.orderdate) "  )
           
                print(" items count =  \(result.orderitems?.count)")
                
                for oooo in result.orderitems! {
                    
                    let ff = oooo as! Items
                    
                    
                    print("item name =  \(ff.itemname)")
                    
                }
                
                
            }
            
        }catch{
            print("\(error)")
        }
        
        //************************************************************//
        let request3 = NSFetchRequest<Items>(entityName: "Items")
        
        request3.sortDescriptors = [NSSortDescriptor(key: "gid", ascending: true  )]
        
        do{
            
            let results =
                try (dd?.managedObjectContext)!.fetch(request3) as! [Items]
            
            for result in results{
                
                
                
                print("\(result.gid)    \(result.amt)   \(result.itemcount)   \(result.itemname)"  )
                
                print("order title ==> \(result.item?.title )")
                
                
            }
            
        }catch{
            print("\(error)")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        showdataa()
        
        
        
        
        
        
        
        
        
    }
    
    
    
    

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

