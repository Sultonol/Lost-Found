class Report {
  final String id;
  final String itemName;
  final String description;
  final String location;
  final String category;
  final DateTime date;
  final String imageUrl;
  final String reportType; // 'hilang' atau 'ditemukan'
  final String status; // 'open', 'claimed', 'closed'
  final String userId; // ID pengguna yang memposting

  Report({
    required this.id,
    required this.itemName,
    required this.description,
    required this.location,
    required this.category,
    required this.date,
    required this.imageUrl,
    required this.reportType,
    required this.status,
    required this.userId,
  });

  // Nanti Anda bisa tambahkan fromJson dan toJson di sini
  // factory Report.fromJson(Map<String, dynamic> json) => ...
  // Map<String, dynamic> toJson() => ...
}
