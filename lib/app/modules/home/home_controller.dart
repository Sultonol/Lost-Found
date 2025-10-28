import 'package:get/get.dart';
import 'package:lost_and_found/app/data/models/report_model.dart';

class HomeController extends GetxController {
  // Gunakan RxList agar UI otomatis update saat data berubah
  final RxList<Report> lostItems = <Report>[].obs;
  final RxList<Report> foundItems = <Report>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchReports();
  }

  void fetchReports() {
    // TODO: Ganti ini dengan API call asli

    // Data dummy
    var dummyLostItems = [
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
        userId: 'user-abc',
      ),
      Report(
        id: '2',
        itemName: 'Tumbler Corkcicle',
        description: 'Warna hitam, ada stiker "Flutter"',
        location: 'Kantin Gedung C',
        category: 'Botol Minum',
        date: DateTime.now().subtract(const Duration(hours: 5)),
        imageUrl: 'https://placehold.co/400x400/png?text=Tumbler',
        reportType: 'hilang',
        status: 'open',
        userId: 'user-def',
      ),
      Report(
        id: '4',
        itemName: 'Laptop Axio',
        description: 'Laptop berwarna hitam lengkap dengan charger',
        location: 'Cafe Sruput Hey Hey',
        category: 'Elektronik',
        date: DateTime.now().subtract(const Duration(hours: 4)),
        imageUrl: 'https://id.pinterest.com/pin/179299628909993943/',
        reportType: 'hilang',
        status: 'open',
        userId: 'user-ghi',
      ),
    ];

    var dummyFoundItems = [
      Report(
        id: '3',
        itemName: 'Dompet Coklat',
        description: 'Ditemukan dompet coklat, berisi KTP a.n Budi',
        location: 'Masjid Kampus',
        category: 'Dompet',
        date: DateTime.now().subtract(const Duration(minutes: 30)),
        imageUrl: 'https://placehold.co/400x400/png?text=Dompet',
        reportType: 'ditemukan',
        status: 'open',
        userId: 'user-xyz',
      ),
    ];

    lostItems.assignAll(dummyLostItems);
    foundItems.assignAll(dummyFoundItems);
  }
}
