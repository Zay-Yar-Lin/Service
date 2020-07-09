import 'dart:ffi';

abstract class StorageService{
  Future<int> getCounterValue();
  Future<void> saveCounterValue(int value);
}