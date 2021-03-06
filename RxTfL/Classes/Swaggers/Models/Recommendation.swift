//
// Recommendation.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class Recommendation: JSONEncodable {

    public var id: Int32?
    public var rule: Int32?
    public var rank: Int32?
    public var fareType: String?
    public var product: String?
    public var ticketType: String?
    public var ticketTime: String?
    public var productType: String?
    public var discountCard: String?
    public var zones: String?
    public var cost: String?
    public var priceDescription: String?
    public var priceComparison: String?
    public var recommendedTopUp: String?
    public var notes: [Message]?
    public var keyFeatures: [Message]?
    public var gettingYourTicket: [Message]?
    public var singleFare: Double?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id?.encodeToJSON()
        nillableDictionary["rule"] = self.rule?.encodeToJSON()
        nillableDictionary["rank"] = self.rank?.encodeToJSON()
        nillableDictionary["fareType"] = self.fareType
        nillableDictionary["product"] = self.product
        nillableDictionary["ticketType"] = self.ticketType
        nillableDictionary["ticketTime"] = self.ticketTime
        nillableDictionary["productType"] = self.productType
        nillableDictionary["discountCard"] = self.discountCard
        nillableDictionary["zones"] = self.zones
        nillableDictionary["cost"] = self.cost
        nillableDictionary["priceDescription"] = self.priceDescription
        nillableDictionary["priceComparison"] = self.priceComparison
        nillableDictionary["recommendedTopUp"] = self.recommendedTopUp
        nillableDictionary["notes"] = self.notes?.encodeToJSON()
        nillableDictionary["keyFeatures"] = self.keyFeatures?.encodeToJSON()
        nillableDictionary["gettingYourTicket"] = self.gettingYourTicket?.encodeToJSON()
        nillableDictionary["singleFare"] = self.singleFare

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
