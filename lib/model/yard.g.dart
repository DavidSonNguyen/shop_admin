// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yard.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Yard extends Yard {
  @override
  final String id;
  @override
  final String name;
  @override
  final String address;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final String ownerId;

  factory _$Yard([void Function(YardBuilder)? updates]) =>
      (new YardBuilder()..update(updates))._build();

  _$Yard._(
      {required this.id,
      required this.name,
      required this.address,
      required this.phone,
      required this.email,
      required this.description,
      required this.imageUrl,
      required this.ownerId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'Yard', 'id');
    BuiltValueNullFieldError.checkNotNull(name, r'Yard', 'name');
    BuiltValueNullFieldError.checkNotNull(address, r'Yard', 'address');
    BuiltValueNullFieldError.checkNotNull(phone, r'Yard', 'phone');
    BuiltValueNullFieldError.checkNotNull(email, r'Yard', 'email');
    BuiltValueNullFieldError.checkNotNull(description, r'Yard', 'description');
    BuiltValueNullFieldError.checkNotNull(imageUrl, r'Yard', 'imageUrl');
    BuiltValueNullFieldError.checkNotNull(ownerId, r'Yard', 'ownerId');
  }

  @override
  Yard rebuild(void Function(YardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  YardBuilder toBuilder() => new YardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Yard &&
        id == other.id &&
        name == other.name &&
        address == other.address &&
        phone == other.phone &&
        email == other.email &&
        description == other.description &&
        imageUrl == other.imageUrl &&
        ownerId == other.ownerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Yard')
          ..add('id', id)
          ..add('name', name)
          ..add('address', address)
          ..add('phone', phone)
          ..add('email', email)
          ..add('description', description)
          ..add('imageUrl', imageUrl)
          ..add('ownerId', ownerId))
        .toString();
  }
}

class YardBuilder implements Builder<Yard, YardBuilder> {
  _$Yard? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  YardBuilder() {
    Yard._setDefaults(this);
  }

  YardBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _address = $v.address;
      _phone = $v.phone;
      _email = $v.email;
      _description = $v.description;
      _imageUrl = $v.imageUrl;
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Yard other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Yard;
  }

  @override
  void update(void Function(YardBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Yard build() => _build();

  _$Yard _build() {
    final _$result = _$v ??
        new _$Yard._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Yard', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Yard', 'name'),
            address: BuiltValueNullFieldError.checkNotNull(
                address, r'Yard', 'address'),
            phone:
                BuiltValueNullFieldError.checkNotNull(phone, r'Yard', 'phone'),
            email:
                BuiltValueNullFieldError.checkNotNull(email, r'Yard', 'email'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'Yard', 'description'),
            imageUrl: BuiltValueNullFieldError.checkNotNull(
                imageUrl, r'Yard', 'imageUrl'),
            ownerId: BuiltValueNullFieldError.checkNotNull(
                ownerId, r'Yard', 'ownerId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
