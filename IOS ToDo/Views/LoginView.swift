//
//  LoginView.swift
//  IOS ToDo
//
//  Created by Dheeraj Nandigama on 3/27/24.
//

import SwiftUI

struct LoginView: View {
<<<<<<< HEAD
    var body: some View {
        VStack {
            //Header
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(.pink)
                    .rotationEffect(Angle(degrees: 15))
                    
                VStack {
                    Text("To Do List")
                        .font(.system(size: 50))
                        .foregroundColor(Color.white)
                    Text("Get things done")
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                }
                .padding(.top, 30)
            }
            .frame(width: UIScreen.main.bounds.width * 3,
                   height: 300)
            .offset(y: -100)
            //LoginForm
            //CreateAccount
            Spacer()
=======
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView(title: "To Do List", subtitle: "Get things done", angle: 15, background: .pink)
                
                //LoginForm
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    
                    SecureField("Passsword", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TLButton(title: "Login", background: .blue){
                        viewModel.login()
                    }
                    .padding()
                }
                .offset(y: -50)
                
                //CreateAccount
                VStack{
                    Text("New around here?")
                    NavigationLink("Create an Account", destination: RegisterView())
                }
                
                Spacer()
            }
>>>>>>> ff887e6 (added base)
        }
    }
}

#Preview {
    LoginView()
}
