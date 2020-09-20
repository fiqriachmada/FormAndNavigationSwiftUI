//
//  ContentView.swift
//  FormSwiftUI
//
//  Created by Achmada Fiqri A Rasyad on 17/09/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form{
                //Foto Profile
                Section(){
                    NavigationLink(destination: About()){
                        HStack{
                            Image("profile")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            //Nama dan Status
                            VStack(alignment: .leading){
                                Text("Achmada Fiqri A Rasyad")
                                    .font(.headline)
                                Text("Coder and Blogger")
                                    .font(.caption)
                            }
                        }
                        .padding(.top,10)
                        .padding(.bottom,10)
                    }
                }
                //Pengaturan Umum
                Section(header: Text("Pengaturan Umum")){
                    NavigationLink(destination: ComingSoon()){
                        HStack(spacing: 20){
                            Image(systemName: "star.fill")
                                .frame(width: 30, height: 30)
                                .background(Color.yellow)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            Text("Pesan Berbintang")
                        }
                    }
                    NavigationLink(destination: ComingSoon()){
                        HStack(spacing: 20){
                            Image(systemName: "appletv.fill")
                                .frame(width: 30, height: 30)
                                .background(Color.black)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            Text("Apple TV+")
                        }
                    }
                }
                //Pengaturan Umum
                Section(header: Text("Pengaturan Akun")){
                    NavigationLink(destination: ComingSoon()){
                        HStack(spacing: 20){
                            Image(systemName: "person.fill")
                                .frame(width: 30, height: 30)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            Text("Akun")
                        }
                    }
                    NavigationLink(destination: ComingSoon()){
                        HStack(spacing: 20){
                            Image(systemName: "phone.circle")
                                .frame(width: 30, height: 30)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                            Text("Chat")
                        }
                    }
                }
            }
            .navigationBarTitle("Setting")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct About: View {
    var body: some View{
        Image("profile")
            .resizable()
            .frame(width: 150, height: 150)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .padding(.bottom, 10)
        //Nama dan Status
        VStack(alignment: .center){
            Text("Achmada Fiqri A Rasyad")
                .font(.largeTitle)
            Text("Coder and Blogger")
                .font(.caption)
        }
        .padding(.bottom, 575)
    }
}

struct ComingSoon: View {
    var body: some View{
        Text("Coming Soon")
            .font(.largeTitle)
        Text("We Still Developing this Feature")
            .font(.caption)
            .foregroundColor(.gray)
    }
    
}
