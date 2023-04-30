//
//  LoginView.swift
//  Folio
//
//  Created by Dylan O'Connor on 30/04/2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        @State var username:String = ""
        @State var password:String = ""
        
        VStack(spacing:10){
            Spacer()
            //Title
            Text("Folio")
                .bold()
                .font(.system(size: 40))
            Spacer()
            //Subheadline
            Text("Login to continue")
                .font(.system(size: 25))
                .padding(20)
                .multilineTextAlignment(.leading)
            
            //Entry Form
            TextField("Username",text: $username)
              .padding()
              .background(Color(.white))
              .overlay(
                      RoundedRectangle(cornerRadius: 14)
                        .stroke(Color.gray.opacity(0.2), lineWidth: 2)
                  )
            SecureField("Password",text: $password)
              .padding()
              .background(Color(.white))
              .overlay(
                RoundedRectangle(cornerRadius: 14)
                  .stroke(Color.gray.opacity(0.2), lineWidth: 2)
            )
            
            //Button
            Button(action: {}, label: {
              HStack {
                Spacer()
                Text("Login")
                   .foregroundColor(.white)
                Spacer()
                }.padding()
                    .frame(width: 200)
                 .background(Color.blue)
                 .cornerRadius(25.0)
                
            }).padding(30)
            Spacer()
        }.padding(20)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
