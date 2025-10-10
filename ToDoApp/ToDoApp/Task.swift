//
//  Task.swift
//  ToDoApp
//
//  Created by MacBook on 26/09/25.
//

import Foundation
class Task{
    var name: String
    var isUrgent:Bool
    var dateCreated:Date
    init(name: String, isUrgent: Bool = false, dateCreated: Date = Date()) {
        self.name = name
        self.isUrgent = isUrgent
        self.dateCreated=dateCreated
    }
}
class taskManager{
    static var shared=taskManager()   //access in any view controller 
    
    var tasks:[Task]=[Task(name:"fix the door",isUrgent:true),Task(name:"call him",isUrgent:false)]
    func addTask(task :Task){
        tasks.append(task)
    }
    func deleteTask(at index:Int){
        if index >= 0 && index < tasks.count{
            tasks.remove(at: index)
        }
    }
}
