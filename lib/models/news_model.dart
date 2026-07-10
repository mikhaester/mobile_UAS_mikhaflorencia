class News {
  final int id;
  final String headline;
  final String abstract;
  final String body;

  News({
    required this.id,
    required this.headline,
    required this.abstract,
    required this.body,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      id: json["id"] ?? 0,
      headline: json["headline"] ?? "",
      abstract: json["abstract"] ?? "",
      body: json["body"] ?? "",
    );
  }
}

List<News> dummyNews = [
  News(
    id: 1,
    headline: "Manchester United Menang 3-1",
    abstract: "Manchester United berhasil mengalahkan Arsenal dengan skor 3-1.",
    body: "Pertandingan berlangsung sangat seru. Manchester United tampil dominan sepanjang pertandingan dan berhasil memenangkan laga dengan skor 3-1.",
  ),
  News(
    id: 2,
    headline: "Barcelona Juara La Liga",
    abstract: "Barcelona memastikan gelar juara musim ini.",
    body: "Barcelona berhasil mengunci gelar La Liga setelah memenangkan pertandingan terakhir mereka.",
  ),
  News(
    id: 3,
    headline: "Real Madrid Rekrut Pemain Baru",
    abstract: "Real Madrid resmi memperkenalkan pemain bintang baru.",
    body: "Pemain baru tersebut dikontrak selama lima musim dan diharapkan memperkuat lini depan Real Madrid.",
  ),
  News(
    id: 4,
    headline: "Liverpool Menang Dramatis",
    abstract: "Liverpool menang di menit akhir pertandingan.",
    body: "Gol kemenangan tercipta pada menit ke-90+3 sehingga Liverpool membawa pulang tiga poin.",
  ),
  News(
    id: 5,
    headline: "MotoGP Seri Mugello",
    abstract: "Balapan MotoGP berlangsung sengit di Italia.",
    body: "Persaingan antar pembalap berlangsung ketat sejak awal hingga garis finis.",
  ),
  News(
    id: 6,
    headline: "NBA Finals Dimulai",
    abstract: "Final NBA resmi dimulai pekan ini.",
    body: "Dua tim terbaik musim ini bertemu pada babak final yang diprediksi berlangsung ketat.",
  ),
];