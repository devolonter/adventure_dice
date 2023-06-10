// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_roll_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarRollModelCollection on Isar {
  IsarCollection<IsarRollModel> get isarRollModels => this.collection();
}

const IsarRollModelSchema = CollectionSchema(
  name: r'Rolls',
  id: -7481504655693309746,
  properties: {
    r'diceSides': PropertySchema(
      id: 0,
      name: r'diceSides',
      type: IsarType.byte,
    ),
    r'result': PropertySchema(
      id: 1,
      name: r'result',
      type: IsarType.byte,
    )
  },
  estimateSize: _isarRollModelEstimateSize,
  serialize: _isarRollModelSerialize,
  deserialize: _isarRollModelDeserialize,
  deserializeProp: _isarRollModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _isarRollModelGetId,
  getLinks: _isarRollModelGetLinks,
  attach: _isarRollModelAttach,
  version: '3.1.0+1',
);

int _isarRollModelEstimateSize(
  IsarRollModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _isarRollModelSerialize(
  IsarRollModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.diceSides);
  writer.writeByte(offsets[1], object.result);
}

IsarRollModel _isarRollModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarRollModel();
  object.diceSides = reader.readByte(offsets[0]);
  object.id = id;
  object.result = reader.readByte(offsets[1]);
  return object;
}

P _isarRollModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readByte(offset)) as P;
    case 1:
      return (reader.readByte(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarRollModelGetId(IsarRollModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _isarRollModelGetLinks(IsarRollModel object) {
  return [];
}

void _isarRollModelAttach(
    IsarCollection<dynamic> col, Id id, IsarRollModel object) {
  object.id = id;
}

extension IsarRollModelQueryWhereSort
    on QueryBuilder<IsarRollModel, IsarRollModel, QWhere> {
  QueryBuilder<IsarRollModel, IsarRollModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarRollModelQueryWhere
    on QueryBuilder<IsarRollModel, IsarRollModel, QWhereClause> {
  QueryBuilder<IsarRollModel, IsarRollModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarRollModelQueryFilter
    on QueryBuilder<IsarRollModel, IsarRollModel, QFilterCondition> {
  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      diceSidesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'diceSides',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      diceSidesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'diceSides',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      diceSidesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'diceSides',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      diceSidesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'diceSides',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      resultEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'result',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      resultGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'result',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      resultLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'result',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      resultBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'result',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarRollModelQueryObject
    on QueryBuilder<IsarRollModel, IsarRollModel, QFilterCondition> {}

extension IsarRollModelQueryLinks
    on QueryBuilder<IsarRollModel, IsarRollModel, QFilterCondition> {}

extension IsarRollModelQuerySortBy
    on QueryBuilder<IsarRollModel, IsarRollModel, QSortBy> {
  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy> sortByDiceSides() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diceSides', Sort.asc);
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy>
      sortByDiceSidesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diceSides', Sort.desc);
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy> sortByResult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'result', Sort.asc);
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy> sortByResultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'result', Sort.desc);
    });
  }
}

extension IsarRollModelQuerySortThenBy
    on QueryBuilder<IsarRollModel, IsarRollModel, QSortThenBy> {
  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy> thenByDiceSides() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diceSides', Sort.asc);
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy>
      thenByDiceSidesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'diceSides', Sort.desc);
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy> thenByResult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'result', Sort.asc);
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy> thenByResultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'result', Sort.desc);
    });
  }
}

extension IsarRollModelQueryWhereDistinct
    on QueryBuilder<IsarRollModel, IsarRollModel, QDistinct> {
  QueryBuilder<IsarRollModel, IsarRollModel, QDistinct> distinctByDiceSides() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'diceSides');
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QDistinct> distinctByResult() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'result');
    });
  }
}

extension IsarRollModelQueryProperty
    on QueryBuilder<IsarRollModel, IsarRollModel, QQueryProperty> {
  QueryBuilder<IsarRollModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarRollModel, int, QQueryOperations> diceSidesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'diceSides');
    });
  }

  QueryBuilder<IsarRollModel, int, QQueryOperations> resultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'result');
    });
  }
}
