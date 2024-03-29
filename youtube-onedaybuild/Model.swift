//
//  Model.swift
//  youtube-onedaybuild
//
//  Created by Eryk Gasiorowski on 10/01/2021.
//

import Foundation

class Model {
    
    func getVideos() {
        
        // Create an URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else{
            return
        }
        
        // Get an URLSession object
        let session = URLSession.shared
        
        // Get a data task fro the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, url, error) in
            
            // Check if there were any errors
            if error != nil || data == nil {
                return
            }
            
            do {
                // Parsing the data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                dump(response)
            }
            catch {
                print("Error Parsing the data into video objects")
            }
            
        }
        // Kick off the task
        dataTask.resume()
    }
    
    
}
