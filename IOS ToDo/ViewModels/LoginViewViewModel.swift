//
//  LoginViewViewModel.swift
//  IOS ToDo
//
//  Created by Dheeraj Nandigama on 3/27/24.
//

import Foundation

class LoginViewViewModel : ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login(){
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
                !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            
            errorMessage = "Please fill in all fields"
            
            return
        }
        
    }
    
    func validate(){
        
    }
}
