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
    @Persisted var sub: String
    @Persisted var lat: Double
    @Persisted var long: Double
    
    convenience init(name: String, sub: String, lat: Double, long: Double) {
        self.init()
        self.name = name
        self.sub = sub
        self.lat = lat
        self.long = long
    }
}

class questions: Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var affilicationList: List<String>
    @Persisted var identityList: List<String>
    @Persisted var resourceList: List<String>
}


var ourQuestions = questions()

var bathrooms = [coordinates]()



// Entrypoint. Call this to run the example.
func fetchDatabase() {
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
        print(result)
        switch result {
        case .failure(let error):
            print("Failed to open realm: \(error.localizedDescription)")
            // Handle error...
        case .success(let realm):
            // Realm opened
            getQuestions(realm)
            getCoordinates(realm)
            
        }
    }
}


func getQuestions(_ realm: Realm) {
    // Get all tasks in the realm
    let questions = realm.objects(questions.self)
    ourQuestions = questions[0]
    
    print("questions populated")
}


func getCoordinates(_ realm: Realm) {
    // Get all tasks in the realm
    let coords = realm.objects(coordinates.self)
    bathrooms = Array(coords)
    
    print("coordinates populated")
    
    
    
}
