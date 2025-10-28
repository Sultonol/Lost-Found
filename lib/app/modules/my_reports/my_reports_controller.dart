import 'package:get/get.dart';
import 'package:lost_and_found/app/data/models/report_model.dart';

class MyReportsController extends GetxController {
  // Mock ID pengguna
  // TODO: Ganti dengan ID pengguna asli
  final String myUserId = "user-abc";

  final RxList<Report> myReports = <Report>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchMyReports();
  }

  void fetchMyReports() {
    // TODO: Ganti dengan API call

    // Data dummy (filter berdasarkan myUserId)
    var dummyData = [
      Report(
        id: '1',
        itemName: 'Kunci Motor Honda',
        description: 'Kunci motor dengan gantungan menara eiffel',
        location: 'Perpustakaan Lt. 2',
        category: 'Kunci',
        date: DateTime.now().subtract(const Duration(days: 1)),
        imageUrl: 'https://placehold.co/400x400/png?text=Kunci',
        reportType: 'hilang',
        status: 'open',
        userId: 'user-abc', // <-- Milik saya
      ),
      Report(
        id: '4',
        itemName: 'Charger Laptop',
        description: 'Charger laptop Lenovo Yoga',
        location: 'Lab Komputer',
        category: 'Elektronik',
        date: DateTime.now().subtract(const Duration(days: 2)),
        imageUrl: 'https://placehold.co/400x400/png?text=Charger',
        reportType: 'ditemukan',
        status: 'approved', // sudah diklaim
        userId: 'user-abc', // <-- Milik saya
      ),
    ];

    myReports.assignAll(dummyData);
  }
}
