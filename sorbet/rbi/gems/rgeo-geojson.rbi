# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/rgeo-geojson/all/rgeo-geojson.rbi
#
# rgeo-geojson-2.1.1

module RGeo
end
module RGeo::GeoJSON
  def self.coder(opts = nil); end
  def self.decode(input_, opts = nil); end
  def self.encode(object, opts = nil); end
end
class RGeo::GeoJSON::Feature
  def ==(other); end
  def [](key); end
  def eql?(other); end
  def feature_id; end
  def geometry; end
  def hash; end
  def initialize(geometry, id = nil, properties = nil); end
  def inspect; end
  def keys; end
  def properties; end
  def property(key); end
  def to_s; end
end
class RGeo::GeoJSON::FeatureCollection
  def ==(other); end
  def [](index); end
  def each(&block); end
  def eql?(other); end
  def hash; end
  def initialize(features = nil); end
  def inspect; end
  def size; end
  def to_s; end
  include Enumerable
end
class RGeo::GeoJSON::EntityFactory
  def feature(geometry, id = nil, properties = nil); end
  def feature_collection(features = nil); end
  def get_feature_geometry(object); end
  def get_feature_id(object); end
  def get_feature_properties(object); end
  def is_feature?(object); end
  def is_feature_collection?(object); end
  def map_feature_collection(object, &block); end
  def self.instance; end
end
class RGeo::GeoJSON::Coder
  def decode(input); end
  def decode_feature(input); end
  def decode_geometry(input); end
  def decode_geometry_collection(input); end
  def decode_line_string_coords(line_coords); end
  def decode_multi_line_string_coords(multi_line_coords); end
  def decode_multi_point_coords(multi_point_coords); end
  def decode_multi_polygon_coords(multi_polygon_coords); end
  def decode_point_coords(point_coords); end
  def decode_polygon_coords(poly_coords); end
  def encode(object); end
  def encode_feature(object); end
  def encode_geometry(object); end
  def entity_factory; end
  def geo_factory; end
  def initialize(opts = nil); end
end
