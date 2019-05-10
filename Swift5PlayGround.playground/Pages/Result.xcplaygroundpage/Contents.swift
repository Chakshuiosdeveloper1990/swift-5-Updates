import UIKit

struct Course: Decodable {
    let id: Int
    let name: String
    let imageUrl: String
    let number_of_lessons: Int
}
enum NetworkError: Error {
    case badDominError
    case parsingError
}

func fetchCoursesJSON(completion: @escaping ([Course]?,NetworkError?) -> ()) {
    
    let urlString = "https://api.letsbuildthatapp.com/jsondecodable/courses"
    guard let url = URL(string: urlString) else { return }
    
    URLSession.shared.dataTask(with: url) { (data, resp, err) in
        
        if let err = err {
             completion(nil, .badDominError)
            return
        }
        
        // successful
        do {
            let courses = try JSONDecoder().decode([Course].self, from: data!)
           
                           completion(courses, nil)
            
        } catch let jsonError {
        
            completion(nil, .parsingError)
        }
        
        
        }.resume()
}



fetchCoursesJSON { (courses, err) in
    // ambiguous situation here
    
    
    if let err = err {
        print("Failed to fetch courses:", err)
        return
    }
    
    courses?.forEach({ (course) in
        print(course.name)
    })
}










/*



func fetchCoursesJSONWithResult(completion: @escaping (Result<[Course], NetworkError>) -> ()) {
    
    let urlString = "https://api.letsbuildthatapp.com/jsondecodable/courses"
    guard let url = URL(string: urlString) else { return }
    
    URLSession.shared.dataTask(with: url) { (data, resp, err) in
        
        if let err = err {
            completion(.failure(.badDominError))
            return
        }
        
        // successful
        do {
            let courses = try JSONDecoder().decode([Course].self, from: data!)
            completion(.success(courses))
            //                completion(courses, nil)
            
        } catch let jsonError {
            completion(.failure(.parsingError))
            //                completion(nil, jsonError)
        }
        
        
        }.resume()
}



fetchCoursesJSONWithResult { (res) in
    switch res {
    case .success(let courses):
        courses.forEach({ (course) in
            print(course.name)
        })
    case .failure(let err):
        print("Failed to fetch courses:", err)
    }
}

*/


 //[Next](@next)
