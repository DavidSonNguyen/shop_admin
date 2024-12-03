// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Area extends Area {
  @override
  final String id;
  @override
  final String description;
  @override
  final String country;
  @override
  final String city;
  @override
  final String district;
  @override
  final String ward;
  @override
  final String street;

  factory _$Area([void Function(AreaBuilder)? updates]) =>
      (new AreaBuilder()..update(updates))._build();

  _$Area._(
      {required this.id,
      required this.description,
      required this.country,
      required this.city,
      required this.district,
      required this.ward,
      required this.street})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Area', 'id');
    BuiltValueNullFieldError.checkNotNull(description, r'Area', 'description');
    BuiltValueNullFieldError.checkNotNull(country, r'Area', 'country');
    BuiltValueNullFieldError.checkNotNull(city, r'Area', 'city');
    BuiltValueNullFieldError.checkNotNull(district, r'Area', 'district');
    BuiltValueNullFieldError.checkNotNull(ward, r'Area', 'ward');
    BuiltValueNullFieldError.checkNotNull(street, r'Area', 'street');
  }

  @override
  Area rebuild(void Function(AreaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AreaBuilder toBuilder() => new AreaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Area &&
        id == other.id &&
        description == other.description &&
        country == other.country &&
        city == other.city &&
        district == other.district &&
        ward == other.ward &&
        street == other.street;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, district.hashCode);
    _$hash = $jc(_$hash, ward.hashCode);
    _$hash = $jc(_$hash, street.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Area')
          ..add('id', id)
          ..add('description', description)
          ..add('country', country)
          ..add('city', city)
          ..add('district', district)
          ..add('ward', ward)
          ..add('street', street))
        .toString();
  }
}

class AreaBuilder implements Builder<Area, AreaBuilder> {
  _$Area? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _district;
  String? get district => _$this._district;
  set district(String? district) => _$this._district = district;

  String? _ward;
  String? get ward => _$this._ward;
  set ward(String? ward) => _$this._ward = ward;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  AreaBuilder() {
    Area._initializeBuilder(this);
  }

  AreaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _description = $v.description;
      _country = $v.country;
      _city = $v.city;
      _district = $v.district;
      _ward = $v.ward;
      _street = $v.street;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Area other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Area;
  }

  @override
  void update(void Function(AreaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Area build() => _build();

  _$Area _build() {
    final _$result = _$v ??
        new _$Area._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Area', 'id'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'Area', 'description'),
            country: BuiltValueNullFieldError.checkNotNull(
                country, r'Area', 'country'),
            city: BuiltValueNullFieldError.checkNotNull(city, r'Area', 'city'),
            district: BuiltValueNullFieldError.checkNotNull(
                district, r'Area', 'district'),
            ward: BuiltValueNullFieldError.checkNotNull(ward, r'Area', 'ward'),
            street: BuiltValueNullFieldError.checkNotNull(
                street, r'Area', 'street'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
