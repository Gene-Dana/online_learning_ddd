import 'package:online_learning/features/lectures/data/datasources/lectures_remote_data_source.dart';
import 'package:online_learning/features/lectures/domain/entities/lecture_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:online_learning/features/lectures/domain/repository/lectures_repository.dart';
import 'package:online_learning/features/user/core/errors/exceptions.dart';
import 'package:online_learning/features/user/core/errors/failures.dart';

class LecturesRepositoryImpl implements LecturesRepository {
  final FirebaseLecturesRemoteDataSource remoteDataSource;

  LecturesRepositoryImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, LectureEntity>> getLecture(String fileUrl) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, LectureEntity>> postLecture(String fileUrl) async {
    try {
      final lecture = await remoteDataSource.postLecture(fileUrl);
      return right(lecture);
    } on Exception catch (e) {
      print('exceptions ${e.toString()}');
      return left(UserNotFoundFailure());
    }
  }
}