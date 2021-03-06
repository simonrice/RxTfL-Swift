//
// LineRouteSection.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class LineRouteSection: JSONEncodable {

    public var routeId: Int32?
    public var direction: String?
    public var destination: String?
    public var fromStation: String?
    public var toStation: String?
    public var serviceType: String?
    public var vehicleDestinationText: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["routeId"] = self.routeId?.encodeToJSON()
        nillableDictionary["direction"] = self.direction
        nillableDictionary["destination"] = self.destination
        nillableDictionary["fromStation"] = self.fromStation
        nillableDictionary["toStation"] = self.toStation
        nillableDictionary["serviceType"] = self.serviceType
        nillableDictionary["vehicleDestinationText"] = self.vehicleDestinationText

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
