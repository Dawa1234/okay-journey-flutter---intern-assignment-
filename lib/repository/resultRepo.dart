import 'package:intern_assignment/dataSource/resultDataSource.dart';
import 'package:intern_assignment/model/results/result.dart';

abstract class ResultRepository {
  Future<List<Results>> getResults();
}

class ResultRepositoryImpl extends ResultRepository {
  @override
  Future<List<Results>> getResults() async {
    return await ResultDataSource().getResults();
  }
}
