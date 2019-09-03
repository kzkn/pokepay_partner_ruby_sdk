require "pokepay_partner_ruby_sdk/response/organization"

module Pokepay::Response
  class PrivateMoney
    def initialize(row)
      @id = row["id"]
      @name = row["name"]
      @unit = row["unit"]
      @is_exclusive = row["is_exclusive"]
      @description = row["description"]
      @organization = Organization.new(row["organization"])
      @max_balance = row["max_balance"]
      @transfer_limit = row["transfer_limit"]
      @type = row["type"]
      @expiration_type = row["expiration_type"]
    end
    attr_reader :id
    attr_reader :name
    attr_reader :unit
    attr_reader :is_exclusive
    attr_reader :description
    attr_reader :organization
    attr_reader :max_balance
    attr_reader :transfer_limit
    attr_reader :type
    attr_reader :expiration_type
  end
end