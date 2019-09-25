//
//  Request.swift
//  ApiRequest
//
//  Created by sathish on 9/24/19.
//  Copyright © 2019 payoda. All rights reserved.
//

import Foundation

public final class ApiRequest {
    public init(){
        
    }
///"http://httpbin.org/get"
    public func getRequest(urlString : String, completionHandler: @escaping ((URLResponse?, Data, Error?) -> Void)){
    let url = URL(string: urlString)!
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        guard let unwrappedData = data else { return }
        do {
            let str = try JSONSerialization.jsonObject(with: unwrappedData, options: .allowFragments)
            print(str)
            completionHandler(response, unwrappedData, error)
        } catch {
            print("json error: \(error)")
        }
    }
    task.resume()
}

}
