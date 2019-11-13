//
//  ModalClass.swift
//  MemoryManagementDemo
//
//  Created by Anupriya on 23/07/19.
//  Copyright © 2019 smartitventures. All rights reserved.
//

import Foundation
class Employee {
    var name : String
    var age : String
    var designation : String
    init(name : String , age : String , designation : String) {
        self.name = name
        self.age = age
        self.designation = designation
         print("Employee detail allocated!")
    }
    /*
     when we use this property this will arises case of Strong Reffrence as explained in Example 4 -
    var add : Address?
    To avoid this we will use weak property you see the result in console by building example 5 code
     */
    weak var add : Address?
    
    deinit {
        print("Employee detail Delloacted!")
    }
    
}

class Address{
    var city : String
    var state : String
    var phone : String
    init(city : String , state : String , phone : String) {
         self.city = city
        self.state = state
        self.phone = phone
        print("Employee Address allocated!")
    }
    
    deinit {
        print("Employee Address Dellocated!")
    }
    
    
}
