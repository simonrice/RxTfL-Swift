//
// DisruptedPoint.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class DisruptedPoint: JSONEncodable {

    public var atcoCode: String?
    public var fromDate: Date?
    public var toDate: Date?
    public var description: String?
    public var commonName: String?
    public var type: String?
    public var mode: String?
    public var stationAtcoCode: String?
    public var appearance: String?
    public var additionalInformation: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["atcoCode"] = self.atcoCode
        nillableDictionary["fromDate"] = self.fromDate?.encodeToJSON()
        nillableDictionary["toDate"] = self.toDate?.encodeToJSON()
        nillableDictionary["description"] = self.description
        nillableDictionary["commonName"] = self.commonName
        nillableDictionary["type"] = self.type
        nillableDictionary["mode"] = self.mode
        nillableDictionary["stationAtcoCode"] = self.stationAtcoCode
        nillableDictionary["appearance"] = self.appearance
        nillableDictionary["additionalInformation"] = self.additionalInformation

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
