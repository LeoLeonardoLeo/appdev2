//
//  ContentView.swift
//  lab 4
//
//  Created by Tech on 2025-01-28.
//

import SwiftUI

struct ContentView: View {
    @State private var cnt: Int = 0
    @State private var step: Int = 1
    var body: some View {
        VStack {
            Text("\(cnt)").bold().font(.largeTitle)
            HStack{
                
                Button("-", action:
                    decreaseCounter)
                .frame(width: 80, height: 80).tint(.black).background(.gray)
                .cornerRadius(40)
                
                Button("+", action:
                    increaseCounter)
                .frame(width: 80, height: 80)
                .tint(.black).background(.gray)
                .cornerRadius(40)
                
                Button("x", action:
                    multiply)
                .frame(width: 80, height: 80)
                .tint(.black).background(.gray)
                .cornerRadius(40)


            }
            
            HStack{
                Button("-2", action:
                        decreaseCounterBy2)
                .frame(width: 80, height: 80).tint(.black).background(.gray)
                .cornerRadius(40)
                
                Button("+2", action:
                        increaseCounterBy2)
                .frame(width: 80, height: 80)
                .tint(.black).background(.gray)
                .cornerRadius(40)
            }
            
            TextField("Step: ", value: $step,
                      formatter: NumberFormatter())
            //.frame(width: 350, height: 35).background(.gray)
                //.cornerRadius(40)
            
            
            HStack{
                Button("-S", action: {() in cnt -= step})
                .frame(width: 80, height: 80).tint(.black).background(.gray)
                .cornerRadius(40)

                
                Button("+S", action: {() in cnt += step})
                .frame(width: 80, height: 80)
                .tint(.black).background(.gray)
                .cornerRadius(40)
            }
            
            
            Button("Reset", action: {() in cnt=0})
                .frame(width: 80, height: 80)
                .tint(.black).background(.gray)
                .cornerRadius(40)
        }
        .padding()
    }
    
    private func increaseCounter(){
        cnt+=1
    }
    
    private func decreaseCounter(){
        cnt-=1
    }
    
    private func increaseCounterBy2(){
        cnt+=2
    }
    
    private func decreaseCounterBy2(){
        cnt-=2
    }
    
    private func multiply(){
        cnt*=2
    }
    

   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
