import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class AddReportController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Controllers untuk TextFields
  late TextEditingController itemNameC, locationC, descriptionC, dateC;

  // Variabel reaktif
  final RxString reportType = 'hilang'.obs;
  final RxString category = 'Lainnya'.obs;
  final Rxn<DateTime> selectedDate = Rxn<DateTime>();
  final Rxn<File> imageFile = Rxn<File>();

  final ImagePicker _picker = ImagePicker();

  @override
  void onInit() {
    super.onInit();
    itemNameC = TextEditingController();
    locationC = TextEditingController();
    descriptionC = TextEditingController();
    dateC = TextEditingController();
  }

  @override
  void onClose() {
    itemNameC.dispose();
    locationC.dispose();
    descriptionC.dispose();
    dateC.dispose();
    super.onClose();
  }

  // Fungsi untuk memilih Tanggal & Waktu
  Future<void> selectDateTime(BuildContext context) async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );

    if (date != null) {
      final TimeOfDay? time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(DateTime.now()),
      );

      if (time != null) {
        selectedDate.value = DateTime(
          date.year,
          date.month,
          date.day,
          time.hour,
          time.minute,
        );
        dateC.text = DateFormat(
          'd MMMM yyyy, HH:mm',
        ).format(selectedDate.value!);
      }
    }
  }

  // Fungsi untuk mengambil gambar
  Future<void> pickImage() async {
    // Tampilkan dialog untuk memilih galeri atau kamera
    Get.defaultDialog(
      title: "Pilih Sumber Gambar",
      middleText: "",
      content: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.photo_library_outlined),
            title: const Text("Galeri"),
            onTap: () {
              _getImage(ImageSource.gallery);
              Get.back();
            },
          ),
          ListTile(
            leading: const Icon(Icons.camera_alt_outlined),
            title: const Text("Kamera"),
            onTap: () {
              _getImage(ImageSource.camera);
              Get.back();
            },
          ),
        ],
      ),
    );
  }

  Future<void> _getImage(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(
      source: source,
      imageQuality: 70, // Kompres gambar
      maxWidth: 1080,
    );
    if (pickedFile != null) {
      imageFile.value = File(pickedFile.path);
    }
  }

  // Fungsi untuk submit laporan
  void submitReport() {
    if (formKey.currentState!.validate()) {
      if (imageFile.value == null) {
        Get.snackbar(
          "Error",
          "Foto barang tidak boleh kosong",
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
        return;
      }

      // TODO: Tampilkan loading
      // TODO: Lakukan API call untuk upload gambar dan data

      print("--- SUBMITTING REPORT ---");
      print("Tipe: ${reportType.value}");
      print("Nama: ${itemNameC.text}");
      print("Kategori: ${category.value}");
      print("Lokasi: ${locationC.text}");
      print("Tanggal: ${selectedDate.value}");
      print("Deskripsi: ${descriptionC.text}");
      print("Gambar: ${imageFile.value!.path}");
      print("--------------------------");

      // Simulasi sukses
      Get.snackbar(
        "Berhasil",
        "Laporan Anda berhasil dibuat",
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );

      // TODO: Refresh data di HomeController
      // Get.find<HomeController>().fetchReports();

      Get.back(); // Kembali ke halaman Home
    }
  }
}
