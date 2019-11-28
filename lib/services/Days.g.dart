// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Days.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Days on DayBase, Store {
  final _$_dayAtom = Atom(name: 'DayBase._day');

  @override
  Day get _day {
    _$_dayAtom.context.enforceReadPolicy(_$_dayAtom);
    _$_dayAtom.reportObserved();
    return super._day;
  }

  @override
  set _day(Day value) {
    _$_dayAtom.context.conditionallyRunInAction(() {
      super._day = value;
      _$_dayAtom.reportChanged();
    }, _$_dayAtom, name: '${_$_dayAtom.name}_set');
  }

  final _$DayBaseActionController = ActionController(name: 'DayBase');

  @override
  void setDay(Day day) {
    final _$actionInfo = _$DayBaseActionController.startAction();
    try {
      return super.setDay(day);
    } finally {
      _$DayBaseActionController.endAction(_$actionInfo);
    }
  }
}
