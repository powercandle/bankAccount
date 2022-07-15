//
//  secondList.swift
//  bankAccount
//
//  Created by Артём Рябенко on 10.07.2022.
//

import SwiftUI

struct secondList: View {
    @State var selected = 2
    @State private var show3 = false
    var body: some View {
        ZStack {
            VStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 22)
                        .frame(
                            width:UIScreen.main.bounds.width * 0.8,
                            height:UIScreen.main.bounds.width * 0.9)
                        .foregroundColor(.white)
                        .shadow(color: .black.opacity(0.1) , radius: 15, y: 5)
                        .padding(.top, 20)
                    
                    VStack(spacing: 35){
                        HStack {
                            Image(systemName: "lineweight")
                                .opacity(0.6)
                            Spacer()
                            Image(systemName: "dot.square")
                                .opacity(0.6)
                        }.frame(width: UIScreen.main.bounds.width * 0.7)
                        VStack{
                        Image("logome")
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .padding(.bottom, 5)
                            VStack(spacing: 1){
                        Text("Radaikin Alex")
                            .fontWeight(.bold)
                            .foregroundColor(Color("ColorName"))
                            .font(.title2)
                            .padding(.bottom, 5)
                            .opacity(0.8)
                        Text("UX/UI Designer")
                            .font(.footnote)
                            .font(.system(size: 20, weight: .light))
                        //.foregroundColor(Color("colortext"))
                            }
                        }
                        HStack(spacing: 20){
                            VStack{
                                Text("$8900")
                                    .foregroundColor(Color("colornum"))
                                    .padding(.bottom, 2)
                                Text("Income")
                                    .font(.system(size: 10, weight: .light))
                            }
                            Divider()
                                .frame(width: 5, height: 45)
                            VStack{
                                Text("$5500")
                                    .foregroundColor(Color("colornum"))
                                    .padding(.bottom, 2)
                                Text("Expenses")
                                    .font(.system(size: 10, weight: .light))
                            }
                            Divider()
                                .frame(width: 5, height: 45)
                            VStack{
                                Text("$890")
                                    .foregroundColor(Color("colornum"))
                                    .padding(.bottom, 2)
                                Text("Loan")
                                    .font(.system(size: 10, weight: .light))
                            }
                        }//.padding(.top, 50)
                        
                        
                        
                    }
                }
                
                //--
                HStack{
                    HStack{
                        Text("Overview")
                            .fontWeight(.bold)
                            .foregroundColor(Color("ColorName"))
                            .font(.title2)
                            .padding(.bottom, 5)
                            .opacity(0.8)
                        Image(systemName: "bell.badge")
                            .foregroundColor(Color("colortext"))
                    }
                    Spacer()
                    HStack{
                        Text("July 20, 2022")
                            .font(.system(size: 10, weight: .light))
                    }
                }.frame(width: UIScreen.main.bounds.width * 0.8)
                    .padding(.top, 25)
                //--
                VStack{
                ZStack {
                    RoundedRectangle(cornerRadius: 22)
                        .frame(
                            width:UIScreen.main.bounds.width * 0.8,
                            height: 80)
                        .foregroundColor(.white)
                        .shadow(color: .black.opacity(0.1) , radius: 15, y: 5)
                    
                    HStack {
                        Button {
                            //
                        } label: {
                            Image(systemName: "arrow.up")
                                .padding(15)
                                .foregroundColor(Color.black)
                                .background(Color("forbutton"))
                                .cornerRadius(15)
                                .padding(.trailing, 10)
                            VStack(alignment: .leading) {
                                Text("Sent")
                                    .fontWeight(.medium)
                                    .foregroundColor(.black)
                                
                                Text("Sending Payment to Clients")
                                    .foregroundColor(Color("colortext"))
                                    .font(.system(size: 10, weight: .light))
                            }
                        }
                        
                        Spacer()
                        Text("150$")
                        
                    }.frame(width: UIScreen.main.bounds.width * 0.7, height: 70)
                        .shadow(color: .black.opacity(0.1) , radius: 15, y: 5)
                }.padding(.top, 15)
                ZStack {
                    RoundedRectangle(cornerRadius: 22)
                        .frame(
                            width:UIScreen.main.bounds.width * 0.8,
                            height: 80)
                        .foregroundColor(.white)
                        .shadow(color: .black.opacity(0.1) , radius: 15, y: 5)
                    
                    HStack {
                        Button {
                            //
                        } label: {
                            Image(systemName: "arrow.down")
                                .padding(15)
                                .foregroundColor(Color.black)
                                .background(Color("forbutton"))
                                .cornerRadius(15)
                                .padding(.trailing, 10)
                            VStack(alignment: .leading) {
                                Text("Recieve")
                                    .fontWeight(.medium)
                                    .foregroundColor(.black)
                                Text("Receiving Salary from company")
                                    .foregroundColor(Color("colortext"))
                                    .font(.system(size: 10, weight: .light))
                            }
                        }
                        
                        Spacer()
                        Text("250$")
                        
                    }.frame(width: UIScreen.main.bounds.width * 0.7, height: 70)
                        .shadow(color: .black.opacity(0.1) , radius: 15, y: 5)
                      
                }.padding(15)
                ZStack {
                    RoundedRectangle(cornerRadius: 22)
                        .frame(
                            width:UIScreen.main.bounds.width * 0.8,
                            height: 80)
                        .foregroundColor(.white)
                        .shadow(color: .black.opacity(0.1) , radius: 15, y: 5)
                    
                    HStack {
                        Button {
                            //
                        } label: {
                            Image(systemName: "dollarsign.square")
                                .padding(15)
                                .foregroundColor(Color.black)
                                .background(Color("forbutton"))
                                .cornerRadius(15)
                                .padding(.trailing, 10)
                            
                            VStack(alignment: .leading) {
                                Text("Loan")
                                    .fontWeight(.medium)
                                    .foregroundColor(.black)
                                Text("Loan for the Car")
                                    .foregroundColor(Color("colortext"))
                                    .font(.system(size: 10, weight: .light))
                            }
                        }
                        
                        Spacer()
                        Text("400$")
                        
                    }.frame(width: UIScreen.main.bounds.width * 0.7, height: 70)
                        .shadow(color: .black.opacity(0.1) , radius: 15, y: 5)
            }
                }
            
            
            
            
            
            
            Spacer()
            ZStack{
                HStack{
                    
                    Button  {
                        self.selected = 0
                    } label: {
                        Image(systemName: "mic.fill")
                            .scaleEffect(1.4)
                    }.scaleEffect(self.selected == 0 ? 1.2 : 1)
                        .padding(15)
                        .background(self.selected == 0 ? Color("color2"): Color("color1"))
                        .foregroundColor(self.selected == 0 ? .white : Color("colortext"))
                        .cornerRadius(20)
                        .overlay(self.selected == 0 ? RoundedRectangle(cornerRadius: 20).stroke(Color("color3shad"), lineWidth: 0.5) : RoundedRectangle(cornerRadius: 20).stroke(Color("color3shad"), lineWidth: 0.0))
                    
                    Spacer(minLength: 12)
                    Button  {
                        self.selected = 1
                    } label: {
                        Image(systemName: "message.fill")
                            .scaleEffect(1.4)
                    }.scaleEffect(self.selected == 1 ? 1.2 : 1)
                        .padding(15)
                        .background(self.selected == 1 ? Color("color2"): Color("color1"))
                        .foregroundColor(self.selected == 1 ? .white : Color("colortext"))
                        .cornerRadius(20)
                        .overlay(self.selected == 1 ? RoundedRectangle(cornerRadius: 20).stroke(Color("color3shad"), lineWidth: 0.5) : RoundedRectangle(cornerRadius: 20).stroke(Color("color3shad"), lineWidth: 0.0))
                    
                    
                    
                    Spacer(minLength: 12)
                    
                    Button  {
                        self.selected = 2
                    } label: {
                        Image(systemName: "house.fill")
                            .scaleEffect(1.3)
                    }   .scaleEffect(self.selected == 2 ? 1.2 : 1)
                        .padding(15)
                        .background(self.selected == 2 ? Color("color2"): Color("color1"))
                        .foregroundColor(self.selected == 2 ? .white : Color("colortext"))
                        .cornerRadius(20)
                        .overlay(self.selected == 2 ? RoundedRectangle(cornerRadius: 20).stroke(Color("color3shad"), lineWidth: 0.5) : RoundedRectangle(cornerRadius: 20).stroke(Color("color3shad"), lineWidth: 0.0))
                    
                    Spacer(minLength: 12)
                    
                    Button  {
                        self.selected = 3
                    } label: {
                        Image(systemName: "pencil.circle.fill")
                            .scaleEffect(1.4)
                    }.scaleEffect(self.selected == 3 ? 1.2 : 1)
                        .padding(15)
                        .background(self.selected == 3 ? Color("color2"): Color("color1"))
                        .foregroundColor(self.selected == 3 ? .white : Color("colortext"))
                        .cornerRadius(20)
                        .overlay(self.selected == 3 ? RoundedRectangle(cornerRadius: 20).stroke(Color("color3shad"), lineWidth: 0.5) : RoundedRectangle(cornerRadius: 20).stroke(Color("color3shad"), lineWidth: 0.0))
                    
                    Spacer(minLength: 12)
                    
                    Button  {
                        self.selected = 4
                        self.show3.toggle()
                    } label: {
                        Image(systemName: "sun.min.fill")
                            .scaleEffect(1.4)
                    }.sheet(isPresented: $show3) {
                        thirdList()}
                    .scaleEffect(self.selected == 4 ? 1.2 : 1)
                    .padding(15)
                    .background(self.selected == 4 ? Color("color2"): Color("color1"))
                    .foregroundColor(self.selected == 4 ? .white : Color("colortext"))
                    .cornerRadius(20)
                    .overlay(self.selected == 4 ? RoundedRectangle(cornerRadius: 20).stroke(Color("color3shad"), lineWidth: 0.5) : RoundedRectangle(cornerRadius: 20).stroke(Color("color3shad"), lineWidth: 0.0))
                    
                } .padding()
                    .padding(.horizontal, 12)
                
                
                
            }
        }.background(Color("color1"))
    }
}
}


struct secondList_Previews: PreviewProvider {
    static var previews: some View {
        secondList()
    }
}
