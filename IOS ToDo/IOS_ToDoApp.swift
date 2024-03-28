//
//  IOS_ToDoApp.swift
//  IOS ToDo
//
//  Created by Dheeraj Nandigama on 3/27/24.
//

import FirebaseCore
import SwiftUI

@main
struct IOS_ToDoApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
