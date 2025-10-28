class Claim {
  final String id;
  final String reportId; // ID laporan yang diklaim
  final String reportOwnerId; // ID pemilik laporan (penemu)
  final String claimerId; // ID yang mengklaim (pemilik barang)
  final String status; // 'pending', 'approved', 'rejected'
  final String reportItemName; // (denormalisasi) Nama barang
  final String reportItemImage; // (denormalisasi) Gambar barang

  Claim({
    required this.id,
    required this.reportId,
    required this.reportOwnerId,
    required this.claimerId,
    required this.status,
    required this.reportItemName,
    required this.reportItemImage,
  });
}
