# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: riot_api/region.proto

require 'google/protobuf'

require 'riot_api/service_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "riotAPI.Region" do
    optional :hostname, :string, 1
    repeated :locales, :string, 2
    optional :name, :string, 3
    optional :slug, :string, 4
    repeated :services, :message, 5, "riotAPI.Service"
    optional :region_tag, :string, 6
  end
end

module RiotAPI
  Region = Google::Protobuf::DescriptorPool.generated_pool.lookup("riotAPI.Region").msgclass
end