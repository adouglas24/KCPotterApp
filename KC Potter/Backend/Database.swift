//
//  RealmManager.swift
//  KC Potter
//
//  Created by Daniel Li on 3/16/22.
//

import RealmSwift

// QsTask is the Task model for this QuickStart
class QsTask: Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name: String = ""
    @Persisted var owner: String?
    @Persisted var status: String = ""

    convenience init(name: String, owner: String, status: String) {
        self.init()
        self.name = name
        self.status = status
    }
}


class coordinates: Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name: String = ""
    @Persisted var x: Int32?
    @Persisted var y: Int32?
    @Persisted var z: Int32?
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}


// Entrypoint. Call this to run the example.
func runExample() {
    //print(Realm.Configuration.defaultConfiguration.fileURL!)
    // Instantiate the app
    let app = App(id: "kc-potter-mvzlx")

    // Log in anonymously. [will be email/pass soon]
    let anonymousCredentials = Credentials.anonymous
    app.login(credentials: anonymousCredentials) { (result) in
        switch result {
        case .failure(let error):
            print("Login failed: \(error.localizedDescription)")
        case .success(let user):
            print("Successfully logged in as user \(user)")
            // Now logged in, do something with user
            // Remember to dispatch to main if you are doing anything on the UI thread
            onLogin(app)
        }
    }
    
    
}

func onLogin(_ app: App) {
    let user = app.currentUser!
    let partitionValue = "myPartition"
    
    let configuration = user.configuration(partitionValue: partitionValue)
    
    // Open the realm asynchronously to ensure backend data is downloaded first.
    Realm.asyncOpen(configuration: configuration) { (result) in
        switch result {
        case .failure(let error):
            print("Failed to open realm: \(error.localizedDescription)")
            // Handle error...
        case .success(let realm):
            // Realm opened
            onRealmOpened(app, realm)
        }
    }

}

func onRealmOpened(_ app: App, _ realm: Realm) {
    // Get all tasks in the realm
    let tasks = realm.objects(QsTask.self)
    // Retain notificationToken as long as you want to observe
    let notificationToken = tasks.observe { (changes) in
        switch changes {
        case .initial: break
            // Results are now populated and can be accessed without blocking the UI
        case .update(_, let deletions, let insertions, let modifications):
            // Query results have changed.
            print("Deleted indices: ", deletions)
            print("Inserted indices: ", insertions)
            print("Modified modifications: ", modifications)
        case .error(let error):
            // An error occurred while opening the Realm file on the background worker thread
            fatalError("\(error)")
        }
    }
    
    // Delete all from the realm
    try! realm.write {
        realm.deleteAll()
    }
    // Add some tasks
    let task = QsTask(name: "Do laundry", owner: "me", status: "not done lol")
    try! realm.write {
        realm.add(task)
    }
    
    let taskList = realm.objects(QsTask.self)
    
    print("Task Amount: \(taskList.count)")
    
    /*
    let anotherTask = coordinates(name: "App design")
    try! realm.write {
        realm.add(anotherTask)
    }
     */


    print("done")
}
