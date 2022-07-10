//
//  ContentView.swift
//  bankAccount
//
//  Created by Артём Рябенко on 10.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var pass = ""
    @State private var isSecured: Bool = true
    var body: some View {
        ZStack {
            VStack(spacing: 27){
                
                Image("logo")
                    .offset(x: 0, y: 35)
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 22)
                        .frame(
                            width:UIScreen.main.bounds.width * 0.8,
                           height: 80
                        )
                        .foregroundColor(.white)
                        .shadow(color: .black.opacity(0.1) , radius: 15, y: 5)
                                
                    VStack(alignment: .leading, spacing: 8){
                        Text("Email Address")
                            .foregroundColor(Color("colortext"))
                        HStack{
                            Image(systemName: "mail")
                                .foregroundColor(Color("colortext"))
                            TextField("Enter you e-mail", text: $email)
                                .foregroundColor(Color("colortext"))
                        }
                    }.offset(x: UIScreen.main.bounds.width * 0.17)
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 22)
                        .frame(
                            width:UIScreen.main.bounds.width * 0.8,
                           height: 80
                        )
                       .foregroundColor(.white)
                       .shadow(color: .black.opacity(0.1) , radius: 15, y: 5)
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("Password")
                            .foregroundColor(Color("colortext"))
                        HStack{
                            Image(systemName: "key")
                                .foregroundColor(Color("colortext"))
                            SecureField("Enter you pass", text: $pass)
                                .foregroundColor(Color("colortext"))
                            Image(systemName: "eye.slash")
                                .foregroundColor(Color("colortext"))
                                .offset(x: UIScreen.main.bounds.width * -0.33)
                        }
                    }.offset(x: UIScreen.main.bounds.width * 0.17)
                }
               // Spacer()
                
               
                    Button {
                        //
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 50)
                                .frame(width: UIScreen.main.bounds.width * 0.8, height: 50)
                                  
                                    .foregroundColor(Color("color2"))
                                    .overlay(RoundedRectangle(cornerRadius: 50).stroke(Color("color3shad"), lineWidth: 0.5))
                        Text ("Login")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        }
                            
                    }

                   
                
             //(spacing: UIScreen.main.bounds.width * 0.28)
                HStack {
                    HStack{
                        Button {
                            //
                        } label: {
                            Text("Signup")
                        }
                    }
                    Spacer()
                    HStack {
                        Button {
                            //
                        } label: {
                            Text("Forgot password?")
                        }
                    }
                }.foregroundColor(Color("colortext"))
                    .font(.system(size: 14))
                    .frame(width: UIScreen.main.bounds.width * 0.8)
                Spacer()
                
            }.background(Color("color1"))
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            
            ContentView()
            
        }
    }
    
