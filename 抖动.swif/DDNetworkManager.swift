//
//  DDNetworkManager.swift
//  抖动.swif
//
//  Created by alan comb on 2021/4/21.
//

import Foundation
//import Moya

let netProvider = MoyaProvider< DDNetworkManager >()

enum DDNetworkManager {
    case getToken
}

extension DDNetworkManager: TargetType {
    //服务器地址
        public var baseURL: URL {
            switch self {
            default:
                return URL(string: Base_url)!
            }
        }
    //各个请求的具体路径
        public var path: String {
            switch self {
            case .getToken:
                return "app/sys/refresh"
            default:
                return ""
            }
        }
    
    //请求类型
        public var method: Moya.Method {
            switch self {
           
            default:
                return .get
            }
        }
    
    //请求任务事件（这里附带上参数）
        public var task: Task {
            switch self {
            case .getToken:
                return .requestPlain
//           case .shareList(let pageSize, let pageNum):
//                var params: [String: Any] = [:]
//                params["pageSize"] = pageSize
//                params["pageNum"] = pageNum
//                return .requestParameters(parameters: params, encoding: URLEncoding.default)
            }
        }
    
    //是否执行Alamofire验证
        public var validate: Bool {
            return false
        }
    
        public var sampleData: Data {
            return "{}".data(using: String.Encoding.utf8)!
        }

        //请求头
        public var headers: [String: String]? {
            switch self {
            default:
                return ["Content-type": "application/json"]
            }
        }
}



