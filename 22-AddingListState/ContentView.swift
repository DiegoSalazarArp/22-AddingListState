//
//  ContentView.swift
//  22-AddingListState
//
//  Created by Diego Salazar Arp on 13-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var task = [Task]()
    
    private func addTask(){
        self.task.append(Task(name: "Wash the car"))
    }
    
    var body: some View {
        
        List{
            Button(action: addTask){
                Text("Add Task")
            }
            
            ForEach(task){ task in
                Text(task.name)
            }
            
        }
        
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
