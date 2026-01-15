class Product {
  String name;
  String price;
  String imageUrl;
  String description;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });
}

final List<Product> dummyProducts = [
  Product(
    name: 'Sabun Mandi',
    price: 'Rp 5.000',
    imageUrl:
        'https://guardianindonesia.co.id/media/catalog/product/8/3/83f91fb24e567470eb05bf5d10a1f32408239ec7f8f9e83e1800043fc186c5be.jpeg?auto=webp&format=pjpg&width=960&height=1200&fit=cover',
    description:
        'Sabun Mandi adalah produk yang sangat populer di Indonesia. Ini memiliki kualitas yang tinggi dan berkualitas yang baik. Saat ini sudah banyak dijual di pasar dan di toko.',
  ),
  Product(
    name: 'Nivea Man',
    price: 'Rp 25.000',
    imageUrl:
        'https://images.tokopedia.net/img/JFrBQq/2022/9/8/ff0fc4fc-0653-410d-8a74-fed1cf895d1c.jpg',
    description:
        'Merk pembersih wajah pria terbaik buatan Jerman ini memanfaatkan perkembangan teknologi untuk menciptakan berbagai inovasi dalam produknya. Sabun Muka Pria Nivea Men tersedia dalam berbagai varian, menyesuaikan dengan setiap jenis kulit dan kebutuhan pengguna yang berbeda masing-masing. Jadi, pilihan kamu akan lebih variatif guna menemukan produk yang tepat.',
  ),
  Product(
    name: 'Pasta Gigi Pepsodent',
    price: 'Rp 3.000',
    imageUrl:
        'https://assets.unileversolutions.com/v1/46438953.png?im=Resize,width=985,height=985',
    description:
        'Pepsodent pencegah gigi berlubang, kekuatan aksi dan perlindungan ganda. Dengan Mikro Kalsium aktif dan pro - flourida kompleks bekerja pagi dan malam menjaga gigi keluarga anda',
  ),
  Product(
    name: 'Shampoo Clear',
    price: 'Rp 15.000',
    imageUrl:
        'https://image.astronauts.cloud/product-images/2024/10/8999999537159ClearLemonFreshAntiDandruffShampoo320ml1_9f83941b-6d5a-4be3-9a4e-731e062d9910_900x900.png',
    description:
        'Dengan kekuatan 3 Cooling Factor & formula ultra performance. Memberikan kesegaran hingga 48 jam. Sensasi extra dingin, bebas ketombe dan lebih percaya diri.',
  ),
  Product(
    name: 'Sunlight',
    price: 'Rp 10.000',
    imageUrl:
        'https://cdn-klik.klikindomaret.com/klik-catalog/product/20086172_2.jpg',
    description:
        'Setiap tetes Sunlight Jeruk Nipis 100 mengandung ekstrak jeruk nipis murni yang ampuh untuk membantu menghancurkan sisa lemak dan minyak dengan lebih cepat dan lebih mudah. Kini, dilengkapi dengan teknologi baru Cepat Bilas*, Sunlight Jeruk Nipis lebih efektif dan 10x lebih cepat bersihkan lemak. Mampu membersihkan wadah plastik sekalipun. Dapat digunakan untuk mencuci buah dan sayur',
  ),
  Product(
    name: 'So Klin Lantai',
    price: 'Rp 5.500',
    imageUrl:
        'https://maindbase.us/mysoklin/api/files/pzkj3c27zthykgj/yqo1ddz4xcnyz3b/moment_in_gold_PWa4E9EoIl.png',
    description:
        'So Klin Lantai Fine Fragrance merupakan pembersih lantai dengan sensasi parfum mewah eksklusif yang terbukti membuat lantai kilap, membunuh kuman, sekaligus menghadirkan keharuman mewah yang tahan lama.',
  ),
];
