//
// Schedule.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Schedule: JSONEncodable {

    public var name: String?
    public var knownJourneys: [KnownJourney]?
    public var firstJourney: KnownJourney?
    public var lastJourney: KnownJourney?
    public var periods: [Period]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["name"] = self.name
        nillableDictionary["knownJourneys"] = self.knownJourneys?.encodeToJSON()
        nillableDictionary["firstJourney"] = self.firstJourney?.encodeToJSON()
        nillableDictionary["lastJourney"] = self.lastJourney?.encodeToJSON()
        nillableDictionary["periods"] = self.periods?.encodeToJSON()

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
