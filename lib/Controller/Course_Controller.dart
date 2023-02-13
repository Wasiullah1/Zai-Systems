import 'package:get/get.dart';
import 'package:zai_system/model/courses_model.dart';

class CoursesController extends GetxController {
  var isLoading = true.obs;

  //  var CoursesList =  <Courses_model>[].obs;
  @override
  void onInit() {
    fetchCourses();
    super.onInit();
  }

  void fetchCourses() async {
    try {
      isLoading(true);
      print("hello");
    } finally {}
  }
}
