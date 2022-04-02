//
//  NetworkService.swift
//  Network_Example
//
//  Created by joseph on 2022/4/2.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation
import Moya


enum MyService {
    case getResult
}
// https://api.caiyunapp.com/v2.5/nS8ytjP5C3Jfdwc0/121.6544,25.1552/realtime.jsonp?callback=MYCALLBACK
// MARK: - TargetType Protocol Implementation
extension MyService: TargetType {
    var baseURL: URL { URL(string: "https://api.caiyunapp.com/v2.5/nS8ytjP5C3Jfdwc0/121.6544,25.1552/realtime.jsonp?callback=MYCALLBACK")! }
    var path: String {
        switch self {
        case .getResult:
            return ""
        }
    }
    var method: Moya.Method {
        switch self {
        case .getResult:
            return .get
        }
    }
    var task: Task {
        switch self {
        case .getResult:
            return .requestPlain
        }
    }
    var sampleData: Data {
        switch self {
        case .getResult:
            return "Half measures are as bad as nothing at all.".utf8Encoded
        }
    }
    var headers: [String: String]? {
        return ["Content-type": "application/json"]
    }
}
// MARK: - Helpers
private extension String {
    var urlEscaped: String {
        addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }

    var utf8Encoded: Data { Data(self.utf8) }
}

public class NetworkService {
    
    private static let provider = MoyaProvider<MyService>()
    
    public static func CreateUser() {
        provider.request(.getResult) { getResult in
            // do something with the result (read on for more details)
            switch getResult {
            case .success(let response):
                if let string = String(data: response.data, encoding: .utf8) {
                    print("getResult : \(string)");
                }
                break;
            case .failure(let error):
                print("getResult error: \(error.localizedDescription)");
                break;
            }
        }
    }
}
