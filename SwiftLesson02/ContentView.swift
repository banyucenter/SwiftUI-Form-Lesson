//
//  ContentView.swift
//  SwiftLesson02
//
//  Created by Ipung Dev Center on 19/06/20.
//  Copyright © 2020 Banyu Center. All rights reserved.
// IpungDev

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            Form {
                Section(){
                    NavigationLink(destination:About()) {
                        HStack{
                            //Profile photo
                            Image("profile")
                                .resizable()
                                .frame(width: 50.0, height: 50.0)
                                .clipShape(Circle())
                            
                            //Nama dan Status
                            VStack(alignment:.leading){
                                Text("Ipung Purwono").font(.headline)
                                Text("Code Entusiast").font(.caption)
                            }
       
                            
                        }
                    }
                }
                .padding(.top,10)
                .padding(.bottom,10)
                
                //navigation pesan berbintang
                Section(header: Text("Pengaturan Umum")){
                    NavigationLink(destination:About()) {
                        //Image Bintang
                        HStack(spacing:20){
                            Image(systemName: "star.fill")
                                .frame(width:35, height:35)
                                .background(Color.orange)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            //Text
                            Text("Pesan Berbintang")
                        }
                    }
                    //navigation whatsapp desktop
                    NavigationLink(destination:About()) {
                        //Image Bintang
                        HStack(spacing:20){
                            Image(systemName: "tv")
                                .frame(width:35, height:35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            //Text
                            Text("WhatsApp Web/Desktop")
                        }
                    }
                }
                
                //Akun
                Section(header: Text("Pengaturan Akun")){
                    //navigation pesan berbintang
                    NavigationLink(destination:About()) {
                        //Image Bintang
                        HStack(spacing:20){
                            Image(systemName: "person")
                                .frame(width:35, height:35)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            //Text
                            Text("Akun")
                        }
                    }
                    //navigation whatsapp desktop
                    NavigationLink(destination:About()) {
                        //Image Bintang
                        HStack(spacing:20){
                            Image(systemName: "phone.circle")
                                .frame(width:35, height:35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            //Text
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

//Halaman About
struct About : View {
    var body: some View {
        Text("Profile")
    }
}
