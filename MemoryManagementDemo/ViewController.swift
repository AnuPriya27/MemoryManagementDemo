//
//  ViewController.swift
//  MemoryManagementDemo
//
//  Created by Anupriya on 23/07/19.
//  Copyright © 2019 smartitventures. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    // To avoid this we define scope to that class Property
  
    
    var emp : Employee?
    var add : Address?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
          // Do any additional setup after loading the view, typically from a nib.
        
        /*
         1 - variable will not Dellocated because it will never Out of scope for this class.
         Here i have Created a property emp of UIViewController class and it has  refference of Employee class
         Here the Object initialise allocated space in memory but will not dellocated because it will never Out Of Scope for this class (You can simple build this project and chek the console you get only one print Statement that is in initialisation of Employee Class Property.)
         emp = Employee(name: "Annu", age: "23", designation: "iOS Dev.")
         */
        
          /*
           example 2
           getEmpDetails()
        */
        
        /*
         Example 3
         getEmpDetails()
        */
        
        getEmployee()
        
        
    }

   /* Example 2 - Define scope to variable so that it dellocated after the scope .
     Here i am creating a method in which i will create variable that has reffernce to class employee.
     As the scope of this method close the variable dellocated
     Call this method in ViewController Class and build the project you will see both (init and init) print statement in console
         func getEmpDetails(){
            emp = Employee(name: "Annu", age: "23", designation: "iOS Dev.")
        }
     Example 2 -  is working fine because there is no Strong Refference.
     */
    
    
    
  /*
     Example 3 - Here i am creating two variables emp which has reffrence of Employee Object and add which has reffrence of Address Object in a method getEmpDetails
     Call this method in ViewDidLoad Method .
     you will see both variable allocate memory as the created and dellocate memory as the scope ends
     this example also work fine with Arc because there is no Strong Reffrences.
    
    func getEmpDetails(){
          emp = Employee(name: "Annu", age: "23", designation: "iOS Dev.")
          add = Address(city: "ARA", state: "BIHAR", phone: "9534811432")
    }
    */
    
    
    /*
      Example 4 -
      Strong Refference Created and property will not delocated means this case fools Arc(ARC Not Work in Strong Reffrence)
     Here we See How Strong Refference Created.
     var emp has reffrence to Employee , var add has refference to Address Class and Classs Employee has a property of add which has refference of Address Class , i.e each Object(Employee and Address) has reffrence to each other and have variables have refference to them .
    After assign nil to instanace emp and add reference count is not Zero.
    These to object have always reffernce count 1 (Because they have reffrence to each other) , ThereFore these object will never dellocated.
   you can check this by build the project and you will only init() statement will print for both objects.
   To avoid this we will create weak reffrence of objects that reffres to each other.
   ARC automatically sets weak reference to nil when the instance is deallocated.

     
     func getEmployee(){
     emp = Employee(name: "Annu", age: "23", designation: "iOS Dev.")
     add = Address(city: "ARA", state: "BIHAR", phone: "9534811432")
     emp!.add = add
     emp = nil
     add = nil
     }
     
     */
    
    func getEmployee(){
        emp = Employee(name: "Annu", age: "23", designation: "iOS Dev.")
        add = Address(city: "ARA", state: "BIHAR", phone: "9534811432")
        emp!.add = add
        emp = nil
        add = nil
    }
}

