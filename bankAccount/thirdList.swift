//
//  thirdList.swift
//  bankAccount
//
//  Created by Артём Рябенко on 10.07.2022.
//

import SwiftUI

struct thirdList: View {
    @State private var chips = 1
    
    var body: some View {
        NavigationView{
        ZStack{
            
            VStack(spacing: 30){
                HStack{
                    
                    NavigationLink {
                        secondList()
                    }label:{
                        Image(systemName: "chevron.left")
                    }
                    
                    Spacer()
                    Image(systemName: "magnifyingglass")
                }.frame(width: UIScreen.main.bounds.width * 0.8)
                    .foregroundColor(Color("colortext"))
                
                HStack {
                    Text("Recent Transactions")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color("color2"))
                    Spacer()
                    Text("See all")
                        .foregroundColor(Color("colortext"))
                }.frame(width: UIScreen.main.bounds.width * 0.8)
                
                HStack{
                    ZStack{
                        HStack{
                            
                            Button  {
                                self.chips = 0
                            } label: {
                                ZStack{
                                    Capsule()
                                        .fill(self.chips == 0 ? Color("color2"): Color("color1"))
                                        .frame(width: 80, height: 30)
                                    Text("All")
                                }
                            }
                            .background(self.chips == 0 ? Color("color2"): Color("color1"))
                            .foregroundColor(self.chips == 0 ? .white : Color("colortext"))
                            .cornerRadius(20)
                            .overlay(self.chips == 0 ? RoundedRectangle(cornerRadius: 20).stroke(Color("color3shad"), lineWidth: 0.5) : RoundedRectangle(cornerRadius: 20).stroke(Color("color3shad"), lineWidth: 0.0))
                            
                            Spacer(minLength: 12)
                            Button  {
                                self.chips = 1
                            } label: {
                                ZStack{
                                    Capsule()
                                        .fill(self.chips == 1 ? Color("color2"): Color("color1"))
                                        .frame(width: 100, height: 30)
                                    Text("Income")
                                }
                                
                            } .background(self.chips == 1 ? Color("color2"): Color("color1"))
                                .foregroundColor(self.chips == 1 ? .white : Color("colortext"))
                                .cornerRadius(20)
                                .overlay(self.chips == 1 ? RoundedRectangle(cornerRadius: 20).stroke(Color("color3shad"), lineWidth: 0.5) : RoundedRectangle(cornerRadius: 20).stroke(Color("color3shad"), lineWidth: 0.0))
                            
                            
                            
                            Spacer(minLength: 12)
                            
                            Button  {
                                self.chips = 2
                            } label: {
                                ZStack{
                                    Capsule()
                                        .fill(self.chips == 2 ? Color("color2"): Color("color1"))
                                        .frame(width: 100, height: 30)
                                    Text("Expense")
                                }
                                
                            } .background(self.chips == 2 ? Color("color2"): Color("color1"))
                                .foregroundColor(self.chips == 2 ? .white : Color("colortext"))
                                .cornerRadius(20)
                                .overlay(self.chips == 2 ? RoundedRectangle(cornerRadius: 20).stroke(Color("color3shad"), lineWidth: 0.5) : RoundedRectangle(cornerRadius: 20).stroke(Color("color3shad"), lineWidth: 0.0))
                            
                            
                        }//.frame(width: UIScreen.main.bounds.width * 0.8)
                        
                    }
                }.frame(width: UIScreen.main.bounds.width * 0.8)
                
                HStack {
                    Text("Today")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("color2"))
                    
                    Spacer()
                }.frame(width: UIScreen.main.bounds.width * 0.8)
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
                            Image(systemName: "envelope.open")
                                .padding(15)
                                .foregroundColor(Color("color2"))
                                .cornerRadius(15)
                                .padding(.trailing, 10)
                            VStack(alignment: .leading) {
                                Text("Payment")
                                    .fontWeight(.medium)
                                    .foregroundColor(.black)
                                
                                Text("Payment from Andrea")
                                    .foregroundColor(Color("colortext"))
                                    .font(.system(size: 10, weight: .light))
                            }
                        }
                        
                        Spacer()
                        Text("300$")
                            .foregroundColor(Color("color2"))
                            .padding()
                    }.frame(width: UIScreen.main.bounds.width * 0.7, height: 70)
                }.frame(width: UIScreen.main.bounds.width * 0.8, height: 80)
                Spacer()
                Divider().background(Color("color1"))
                Button {
                    //
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 50)
                            .frame(width: UIScreen.main.bounds.width * 0.8, height: 50)
                        
                            .foregroundColor(Color("color2"))
                            .overlay(RoundedRectangle(cornerRadius: 50).stroke(Color("color3shad"), lineWidth: 0.5))
                        Text ("See Details")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                    }.padding()
                }
                
            }
            
            
        }.background(Color("color1"))
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }
}

struct thirdList_Previews: PreviewProvider {
    static var previews: some View {
        thirdList()
            .previewInterfaceOrientation(.portrait)
    }
}
