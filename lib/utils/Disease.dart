class Disease {
  late String _label;
  late String _description;
  late String _imagePath;
  late String _symptom;
  late String _treatment;
  final Map<String, String> _descriptionList = {
    'bisul':
        'Kantong sempit berisi nanah yang berkumpul di jaringan, organ, atau ruang di dalam tubuh. Ketika suatu daerah dalam menjadi terinfeksi, sistem kekebalan tubuh mengirimkan sel darah putih untuk melawan infeksi. Sel-sel ini menyatuk dan bergabung dengan jaringan yang rusak dan kuman, menghasilkan cairan yang disebut nanah. Abses ditandai dengan benjolan nyeri yang penuh dengan nanah. Penanganan berupa pengeringan abses, dan pemberian antibiotik.',
    'cacar_air':
        'Infeksi virus sangat menular yang menyebabkan ruam melepuh, seperti gatal pada kulit. Cacar sangat menular terhadap orang-orang yang belum pernah menderita cacar atau belum divaksinasi cacar. Gejala yang paling khas adalah ruam yang gatal serupa melepuh pada kulit. Cacar air dapat dicegah dengan vaksin. Penanganan yang umum yaitu meredakan gejalanya meskipun kelompok berisiko tinggi mungkin menerima pengobatan antivirus.',
    'hemangioma':
        'Hemangioma adalah benjolan kemerahan yang tumbuh di kulit bayi. Benjolan ini terbentuk dari sekumpulan pembuluh darah yang tumbuh tidak normal dan menjadi satu.',
    'herpes':
        'Herpes adalah penyakit yang ditandai dengan munculnya lepuhan berwarna kemerahan dan berisi cairan pada kulit. Penyebab penyakit herpes adalah virus.Penyakit ini tergolong sebagai penyakit jangka panjang, karena virusnya bisa bertahan seumur hidup di dalam tubuh seseorang.',
    'jerawat':
        'Kondisi kulit yang terjadi ketika folikel rambut tersumbat minyak dan sel-sel kulit mati. Jerawat paling umum terjadi pada remaja dan dewasa muda. Gejala mulai dari komedo kepala hitam hingga jerawat nanah atau benjolan besar, kemerahan, dan lembut. Penanganan berupa krim dan pembersih yang dijual bebas, serta resep antibiotik.',
    'kurap':
        'Infeksi jamur pada kulit atau kulit kepala yang sangat menular. Kurap menyebar melalui kontak antarkulit, atau dengan menyentuh hewan atau objek yang terinfeksi. Kurap biasanya bersisik dan mungkin merah dan gatal. Kurap dari kulit kepala adalah hal umum pada anak-anak, dan dapat menyebabkan kebotakan. Penanganan kurap berupa obat antijamur.',
    'kutil':
        'Benjolan kecil, berdaging pada kulit atau selaput lendir yang disebabkan oleh virus papiloma manusia. Kutil disebabkan oleh berbagai strain virus papiloma manusia. Strain yang berbeda dapat menyebabkan kutil di berbagai bagian tubuh. Kutil dapat menyebar dari satu bagian tubuh ke bagian lain, atau antarmanusia melalui kontak dengan kutil. Gejala utama berupa daging tumbuh yang tak terasa sakit pada kulit. Bagian kulit yang terkena biasanya tangan, kaki, dan alat kelamin. Penanganan berupa obat-obatan topikal dan pengangkatan melalui prosedur medis.',
    'melanoma':
        'Jenis kanker kulit yang paling fatal. Melanoma terjadi ketika sel-sel penghasil pigmen yang memberikan warna pada kulit menjadi bersifat kanker. Gejala berupa pertumbuhan tak biasa baru atau perubahan pada tahi lalat yang ada. Melanoma dapat terjadi di mana saja pada tubuh. Pengobatan mungkin melibatkan operasi, radiasi, obat-obatan, atau dalam beberapa kasus, kemoterapi.',
    'melasma':
        'Suatu kondisi ketika muncul bercak-bercak cokelat di wajah. Melasma dapat disebabkan oleh perubahan hormon selama kehamilan atau paparan sinar matahari. Wanita lebih mungkin dibandingkan pria untuk mengalami kondisi ini. Bercak melasma berwarna coklat atau abu-abu coklat paling sering muncul di pipi, dahi, hidung, dan dagu. Pada wanita, melasma sering memudar dengan sendirinya setelah kehamilan atau setelah seorang wanita berhenti mengonsumsi pil KB. Krim pencerah kulit dapat membantu melasma yang tidak sembuh-sembuh.',
    'psoriasis':
        'Kondisi ketika sel-sel kulit menumpuk dan menghasilkan bercak bersisik yang gatal dan kering. Psoriasis diduga sebagai masalah sistem kekebalan tubuh. Pemicunya antara lain stres dan pilek. Gejala yang paling umum adalah ruam pada kulit, namun terkadang ruam menyerang kuku atau sendi. Pengobatan bertujuan untuk menghilangkan sisik dan sel-sel kulit dari pertumbuhan cepat. Salep topikal, terapi cahaya, dan obat-obatan dapat membantu meringankan kondisi.',
    'rosacea':
        'Suatu kondisi yang menyebabkan benjolan kemerahan dan biasanya kecil, merah, dan berisi nanah di wajah. Rosacea (jerawat rosasea) paling sering terjadi pada wanita setengah baya berkulit terang. Terkadang orang keliru menganggapnya jerawat atau kondisi kulit lainnya. Gejala utama berupa wajah kemerahan dengan benjolan merah bengkak dan pembuluh darah yang terlihat kecil. Pengobatan seperti antibiotik atau obat anti-jerawat dapat mengontrol dan mengurangi gejala. Jika tidak diobati, kondisi ini cenderung memburuk seiring waktu.',
    'strechmark':
        'Stretch mark adalah guratan yang sering nampak pada kulit bagian tubuh yang banyak mengandung lemak, seperti di payudara, perut atas, lengan atas, paha, dan bokong. Guratan yang mulanya berwarna merah, merah muda, atau ungu ini lama kelamaan akan berubah menjadi warna putih atau kelabu.',
  };
  final Map<String, String> _imageList = {
    'bisul': 'assets/images/bisul.jpg',
    'cacar_air': 'assets/images/cacar_air.jpg',
    'hemangioma': 'assets/images/hemangioma.jpg',
    'herpes': 'assets/images/herpes.jpg',
    'jerawat': 'assets/images/jerawat.jpg',
    'kurap': 'assets/images/kurap.jpg',
    'kutil': 'assets/images/kutil.jpg',
    'melanoma': 'assets/images/melanoma.jpg',
    'melasma': 'assets/images/melasma.jpg',
    'psoriasis': 'assets/images/psoriasis.jpg',
    'rosacea': 'assets/images/rosacea.jpg',
    'strechmark': 'assets/images/strechmark.jpg',
  };
  final Map<String, String> _symptomList = {
    'bisul': '''
Pada tahap awal, ukuran akan cenderung kecil, tetapi kondisinya bisa disertai dengan:
\u2022 Kulit di sekitar benjolan berubah menjadi merah, terasa hangat saat disentuh, dan bengkak. Kondisi ini menandai kalau infeksi telah menyebar ke kulit sekelilingnya.
\u2022 Benjolan bertambah besar dan berisi nanah.
\u2022 Terbentuk titik putih di bagian puncak benjolan.
''',
    'cacar_air': '''
Cacar air adalah penyakit yang ditandai dengan ruam gatal berisi air. Sebelum gejala lain berkembang, ruam biasanya menetap di tubuh pengidap selama 7-21 hari. Setelah 48 terinfeksi, pengidap sudah bisa menularkan kepada orang lain, bahkan sebelum gejala berupa ruam kulit muncul.

Di fase awal sebelum munculnya ruam, gejala dari penyakit tersebut ditandai dengan:
\u2022 Demam.
\u2022 Sakit kepala.
\u2022 Kehilangan selera makan.
\u2022 Nyeri otot.
\u2022 Rasa lelah berlebihan.
\u2022 Mual. 

Setelah 1-2 hari mengalami gejala tersebut, sejumlah ruam mulai muncul dan berkembang. Ruam tersebut mengalami 3 fase perkembangan, seperti:

\u2022 Muncul benjolan merah atau merah muda di seluruh tubuh.
\u2022 Benjolan tersebut kemudian berubah menjadi lepuhan berisi cairan.
\u2022 Ketika mulai sembuh, benjolan menjadi pecah, kering, dan berkerak.
''',
    'hemangioma': '''
Kondisi ini seringkali muncul saat lahir, tapi lebih sering muncul selama beberapa bulan pertama kehidupan bayi. Kondisi tersebut awalnya berbentuk tanda merah datar yang muncul di tubuh, seringkali di wajah, kulit kepala, dada, atau punggung.
Biasanya, seorang anak hanya memiliki satu tanda. Namun, beberapa anak mungkin memiliki lebih dari satu, terutama jika mereka terlahir kembar.
Selama tahun pertama kehidupan anak, tanda merah tersebut tumbuh dengan cepat menjadi benjolan seperti karet yang menonjol keluar dari kulit. Kondisi ini kemudian memasuki fase istirahat dan akhirnya menghilang secara perlahan. 
Kebanyakan hemangioma akan hilang saat anak berusia 5 tahun, dan sebagian besar hilang pada usia 10 tahun. Hanya saja, kulit mungkin sedikit berubah warna atau terangkat setelah hemangioma hilang
''',
    'herpes': '''
Infeksi herpes biasanya terjadi dalam beberapa tahap. Gejala atau keluhan yang bisa timbul pada tiap tahap dapat berbeda-beda, seperti dijelaskan di bawah ini:

1. Stadium primer
Stadium primer terjadi pada hari ke-2 hingga ke-8 setelah infeksi herpes terjadi. Gejala yang muncul pada fase ini adalah ruam lepuh (blister) pada kulit yang berukuran kecil dan terasa sakit.

Ruam lepuh biasanya berisi cairan berwarna bening atau keruh. Ruam lepuh dapat pecah sehingga menimbulkan luka terbuka. Area di sekitar ruam lepuh juga akan berwarna kemerahan.

2. Stadium laten
Pada stadium ini, ruam lepuh dan luka yang sebelumnya muncul akan mereda. Namun, pada fase ini, virus sedang berkembang dan menyebar ke saraf di dekat saraf tulang belakang yang ada di bawah kulit.

3. Stadium peluruhan
Virus mulai berkembang biak pada ujung saraf organ tubuh. Jika ujung saraf yang terinfeksi terletak pada organ tubuh yang menghasilkan cairan, seperti testis atau vagina, maka virus herpes dapat terkandung dalam cairan tubuh seperti air mani dan lendir vagina. Biasanya, pada fase ini, penderita tidak mengeluhkan gejala khusus.

4. Stadium rekurensi (kemunculan kembali)
Pada stadium ini, ruam lepuh pada kulit yang terjadi di stadium primer dapat muncul kembali, tetapi biasanya tidak separah lepuhan dan luka yang sebelumnya. Gejala lain yang bisa timbul pada stadium rekurensi ini adalah gatal, kesemutan, dan nyeri yang muncul di area infeksi pada stadium pertama. Pada stadium ini, herpes juga bisa timbul kembali di area tubuh lain, misalnya di mata.
''',
    'jerawat': '''
Ciri ciri jerawat adalah munculnya beberapa gejala umum, seperti:

\u2022 Benjolan berwarna kemerahan atau kuning (karena mengandung nanah).
\u2022 Benjolan kecil (papul) yang muncul di atas kulit.
\u2022 Sensasi panas atau terbakar akibat adanya peradangan.
\u2022 Timbul rasa gatal pada benjolan.
Kondisi ini juga rentan mengalami peradangan apabila kamu sering menyentuhnya atau bahkan dipecahkan secara paksa.
''',
    'kurap': '''
Gejala kurap dimulai dengan munculnya area bersisik dengan warna kemerahan pada kulit. Ruam ini dapat meluas berbentuk melingkar yang mirip dengan cincin. Warna bagian dalam lingkaran akan terlihat lebih pudar dibandingkan dengan bagian tepinya dan dibatasi oleh bintil berwarna merah.

Selain itu, gejala kurap tidak langsung terlihat saat pertama kali kulit terkena jamur. Diperlukan waktu setidaknya hingga 2 minggu sebelum kamu menyadari gejalanya. Beberapa tahapan gejala kurap yang dapat kamu lihat yaitu:

\u2022 Tahap awal. Selama tahap ini, kamu mungkin melihat adanya bercak kulit yang berubah warna dan teriritasi. Terkadang penampilan kulit hanya tampak sangat kering dan bersisik, yang mungkin tidak terlihat seperti kurap.
\u2022 Tahap kedua. Kamu akan melihat adanya lesi yang mulai membesar. Bagian tengah rumah atau lesi menyerupai kulit sehat, tapi di area sekitarnya terlihat bersisik. a pertama. Jika tidak, itu bisa menyebar dan tumbuh.
Sementara itu, gejala kurap dapat bervariasi tergantung lokasi munculnya kurap.
''',
    'kutil': '''
Gejala yang timbul pada seseorang dengan gangguan ini biasanya tidak menimbulkan rasa sakit.

Namun, pada beberapa jenis, dapat menimbulkan rasa nyeri, seperti veruka. 

Selain itu, pengidap juga dapat merasakan gatal dan bahkan berdarah. Ada beberapa jenis yang dapat menyerang, semuanya dapat berbeda-beda dalam ukuran, bentuk, dan lokasi terjadinya. 

Beberapa gejala umum lainnya yang dapat terlihat, antara lain:

\u2022 Tonjolan di kulit dari ukuran kecil sampai besar.
\u2022 Warna tonjolan dapat bervariasi dari warna kulit, putih, merah muda, maupun kecoklatan.
\u2022 Tonjolan umumnya terasa kasar.
''',
    'melanoma': '''
Kondisi penyakit ini dapat berkembang di mana saja di tubuh. Kondisi ini paling sering muncul di area yang pernah terpapar sinar matahari, seperti punggung, kaki, lengan, dan wajah.

Kondisi ini juga dapat terjadi di area yang tidak banyak terpapar sinar matahari. Seperti telapak tangan, telapak kaki, dan di bawah kuku. Melanoma yang tersembunyi ini lebih sering dialami oleh orang dengan kulit lebih gelap.

Gejala awal dari penyakit ini yang sering terjadi adalah:

\u2022 Perubahan pada tahi lalat yang ada.
\u2022 Perkembangan pigmen baru atau pertumbuhan yang tampak tidak biaa pada kulit.
\u2022 Melanoma tidak selalu dimulai sebagai tahi lalat. Tapi juga dapat terjadi pada kulit yang tampak tidak normal. 
''',
    'melasma': '''
Melasma ditandai dengan bercak-bercak berwarna kecokelatan yang muncul di dahi, pipi, hidung, dan dagu. Meski jarang terjadi, bercak tersebut juga bisa muncul di leher, lengan, atau punggung tangan.

Selain bercak-bercak kecokelatan di kulit, melasma tidak menimbulkan keluhan lain, seperti sensasi terbakar, nyeri, atau gatal. Meski demikian, melasma bisa mengganggu penampilan dan menimbulkan rasa tidak percaya diri.
''',
    'psoriasis': '''
Gejala yang ditimbulkan oleh penyakit psoriasis bagi setiap orang berbeda, ada yang mengalami gejala ringan atau tidak ada gejala sama sekali dalam kurun waktu tertentu. 

Gejala umum psoriasis meliputi:

\u2022 Kulit yang memerah akan terasa tebal kering dan bersisik.
\u2022 Kulit pecah-pecah dan terkadang berdarah.
\u2022 Kuku menebal dengan tekstur yang tidak rata.
\u2022 Sendi terasa bengkak dan kaku.
''',
    'rosacea': '''
Gejala utama berupa wajah kemerahan dengan benjolan merah bengkak dan pembuluh darah yang terlihat kecil.
\u2022 Kulit: kering, kulit berminyak, pembengkakan pembuluh darah di kulit atau ruam yang terlihat seperti jerawat
\u2022 Mata: kering atau mata sembab
\u2022 Juga umum: gatal, hidung merah berbentuk bulat dan besar, kekeringan atau wajah berwarna merah

''',
    'strechmark': '''
Beberapa variasi gambaran kelainan yang bisa tampak pada striae adalah:

\u2022 Garis-garis berindentasi pada kulit
\u2022 Garis berwarna merah muda, merah, hitam, biru, atau ungu
\u2022 Garis berwarna terang yang memudar menjadi warna yang lebih muda seiring dengan berjalannya waktu
\u2022 Garis pada kulit perut, payudara, pinggul, bokong, dan paha
''',
  };
  final Map<String, String> _treatmentList = {
    'bisul': '''
Ketimbang memencet atau mengorek bisul, yang dapat menyebabkan infeksi, kamu bisa mengobati bisul supaya cepat mengempis dengan beberapa tahapan berikut ini: 

\u2022 Gunakan kain bersih dan hangat untuk mengompres bisul. Kamu dapat mengulanginya pengompresan beberapa kali sehari untuk mendorong bisul keluar dan mengering.
\u2022 Jaga kebersihan area sekitar bisul, cuci tangan setelah menyentuh area yang terkena.
\u2022 Jika bisul terasa nyeri, minum obat pereda nyeri yang dijual bebas, seperti ibuprofen atau acetaminophen.
\u2022 Saat terbuka, bisul bisa mengeluarkan cairan. Setelah bisul terbuka, tutupi untuk mencegah infeksi pada luka terbuka. Gunakan kasa atau bantalan penyerap untuk mencegah penyebaran nanah. Ganti kain kasa atau pembalut sesering mungkin.
''',
    'cacar_air': '''
Hingga kini belum ditemukan langkah pengobatan yang efektif untuk mengatasi cacar air. Sejauh ini pengobatan dilakukan untuk meredakan gejala yang dialami oleh pengidap. Dokter biasanya meresepkan obat penurun panas untuk meredakan demam atau obat-obatan antihistamine untuk meredakan rasa gatal pada kulit.

Selain itu, berikut ini beberapa langkah perawatan rumahan yang dapat menunjang proses pengobatan cacar air rumahan:

\u2022 Konsumsi banyak cairan. Jika anak kurang suka air putih, ibu bisa memberikan jus atau es krim untuk mencegah dehidrasi.
\u2022 Pakaikan celana panjang, kaos tangan panjang, dan kaos kaki untuk mencegah anak menggaruk kulit.
\u2022 Memotong kuku anak agar tidak melukai lepuhan ruam.
\u2022 Menggunakan krim atau gel pendingin dari apotek.
\u2022 Mandi dengan air dingin untuk meredakan gatal.
\u2022 Menggunakan pakaian longgar dengan bahan yang lembut.
''',
    'hemangioma': '''
Sebagian besar hemangioma tidak perlu diobati, terutama bila tidak menimbulkan keluhan selain munculnya benjolan. Hal ini karena hemangioma akan hilang dengan sendirinya seiring pertumbuhan bayi.

Jika hemangioma menimbulkan gangguan, seperti gangguan penglihatan atau gangguan pernapasan, dan menimbulkan luka, dokter dapat memberikan sejumlah obat berikut:

\u2022 Penghambat beta
Untuk hemangioma yang parah, dokter akan meresepkan obat penghambat beta dalam bentuk minum, seperti propanolol.
\u2022 Kortikosteroid
Kortikosteroid, seperti triamcinolone, digunakan oleh pasien yang tidak merespons obat penghambat beta. Obat ini dapat diberikan dalam bentuk tablet, oles, atau suntikan langsung ke hemangioma.
\u2022 Vincristine
Dokter hanya memberikan obat vincristine jika hemangioma menyebabkan gangguan pada penglihatan atau pernapasan bayi. Obat ini diberikan melalui suntikan setiap bulan.
Selain dengan obat-obatan, hemangioma dapat ditangani dengan terapi laser. Namun, metode ini hanya digunakan jika ukuran hemangioma cukup besar dan menyebabkan nyeri.
''',
    'herpes': '''
Pada umumnya, luka dan lepuh akibat herpes dapat sembuh dengan sendirinya dalam waktu 2–4 minggu. Hanya saja, virus mungkin tetap ada di dalam tubuh penderita tanpa menimbulkan gejala.

Hingga kini, belum ada metode pengobatan yang dapat menghilangkan virus herpes dari dalam tubuh. Fokus pengobatan dengan obat herpes adalah untuk membantu meredakan keluhan, mencegah penularan herpes, dan menurunkan risiko terjadinya komplikasi.

Beberapa obat-obatan antivirus dapat digunakan untuk mengatasi infeksi virus herpes adalah:

\u2022 Acyclovir
\u2022 Valacyclovir
\u2022 Famciclovir
\u2022 Penciclovir
Selain mengonsumsi obat antivirus, Anda juga dapat mengonsumsi obat herpes alami maupun beberapa upaya yang bisa meredakan keluhan dan mempercepat pemulihan akibat infeksi virus herpes yaitu:

\u2022 Mengonsumsi paracetamol atau ibuprofen untuk meredakan nyeri
\u2022 Mengompres ruam kulit dengan air hangat atau atau air dingin
\u2022 Menggunakan air suam kuku untuk mandi
\u2022 Menggunakan pakaian longgar
\u2022 Menggunakan pakaian dalam berbahan katun
\u2022 Menjaga area luka tetap kering dan bersih
''',
    'jerawat': '''
Beberapa upaya yang dapat kamu lakukan untuk mengatasi jerawat, antara lain:

\u2002 Membersihkan peralatan kosmetik dengan menggunakan sabun dan air hangat secara rutin.
\u2002 Memilih kosmetik non-comedogenic, yang sifatnya tidak menutup pori-pori di kulit.
\u2002 Menggunakan pelembap non-comedogenic, yang tidak dapat menyebabkan jerawat dan sesuai dengan jenis kulit.
\u2002 Menghindari memencet dan memegang jerawat, karena dapat membuatnya bertambah banyak.
\u2002 Menghindari menggosok wajah dengan menggunakan kain atau sarung tangan dengan permukaan kasar.
\u2002 Menjaga kebersihan tubuh dengan segera mandi setelah beraktivitas, karena minyak berlebih di wajah dapat memicu terjadi jerawat.
\u2002 Menjaga kebersihan wajah dengan membersihkan wajah dua kali dalam sehari, untuk mengangkat sel-sel kulit mati, minyak yang berlebihan, serta sisa kosmetik di permukaan kulit.
''',
    'kurap': '''
1. Pengobatan Kurap oleh Dokter
Pada kasus yang ringan, dokter akan memberikan obat kurap atau antijamur dalam bentuk krim atau salep. Beberapa jenis obat yang bisa diberikan adalah:

\u2022 Clotrimazole
\u2022 Terbinafine
\u2022 Miconazole
\u2022 Naftifine
\u2022 Ketoconazole
Jika infeksi jamur terjadi pada area yang lebih luas, bertambah parah, atau sulit hilang, dokter akan memberikan obat antijamur dalam bentuk tablet, seperti:

\u2022 Terbinafine
\u2022 Itraconazole
\u2022 Griseofulvin
\u2022 Fluconazole

2. Perawatan Kurap Secara Mandiri
Selain dengan mengoleskan obat antijamur, pasien dapat melakukan beberapa hal beberapa hal di bawah ini untuk membantu menghilangkan kurap:

\u2022 Tidak mengenakan pakaian dengan bahan yang dapat menimbulkan iritasi pada area kurap
\u2022 Mencuci baju dan seprai setiap hari selama kurap belum sembuh
\u2022 Menjaga kebersihan lingkungan sekitar
\u2022 Membersihkan dan mengeringkan kulit secara teratur, terutama pada area kulit yang terkena kurap
\u2022 Membawa hewan peliharaan ke dokter jika terkena kurap
\u2022 Tidak menggaruk area yang terasa gatal
Berkonsultasi dengan dokter kulit bila dalam 2 minggu kondisi tidak membaik

''',
    'kutil': '''
Sebagian besar kutil dapat hilang dengan sendirinya tanpa pengobatan. Namun, kutil yang tidak diobati memerlukan waktu beberapa bulan atau beberapa tahun untuk sembuh. Oleh karena itu, pasien dianjurkan untuk menjalani pengobatan sesuai rekomendasi dokter.

Beberapa metode pengobatan yang dapat disarankan oleh dokter adalah:

\u2022 Obat oles
Pemberian obat kutil yang dioles bertujuan untuk menghilangkan lapisan kutil sedikit demi sedikit. Jenis obat oles yang dapat diresepkan dokter antara lain asam salisilat dan asam trikloroasetat.

\u2022 Krioterapi
Krioterapi dilakukan dengan membekukan kutil menggunakan nitrogen cair. Setelah kutil membeku, lepuhan akan terbentuk dan kutil dapat terkelupas.

\u2022 Terapi laser
Terapi ini dilakukan dengan memanaskan dan menghancurkan pembuluh darah kecil di dalam kutil dengan menggunakan sinar laser agar kutil mudah terkelupas.
''',
    'melanoma': '''
Melanoma adalah jenis kanker kulit yang berasal dari sel melanosit, yang bertanggung jawab untuk produksi pigmen melanin. Pengobatan melanoma tergantung pada sejauh mana kanker telah menyebar (stadium), lokasi kanker, dan faktor-faktor individu lainnya. Beberapa opsi pengobatan yang dapat dipertimbangkan oleh seorang individu dengan melanoma adalah sebagai berikut:

\u2022 Pembedahan: Tindakan pembedahan adalah metode utama untuk menghilangkan melanoma yang terlokalisasi pada kulit. Ini bisa berupa eksisi sederhana atau eksisi dengan biopsi penyebaran ganda (sentinel lymph node biopsy) untuk memeriksa apakah kanker telah menyebar ke kelenjar getah bening terdekat.

\u2022 Imunoterapi: Imunoterapi adalah jenis pengobatan yang merangsang sistem kekebalan tubuh untuk melawan kanker. Obat-obatan seperti pemblokir checkpoint imun seperti pembrolizumab atau nivolumab dapat digunakan untuk melanoma yang lebih lanjut.

\u2022 Terapi Targeted: Terapi yang diarahkan pada target khusus dapat digunakan jika melanoma memiliki mutasi genetik tertentu. Contohnya adalah obat-obatan seperti dabrafenib dan trametinib yang digunakan untuk melanoma dengan mutasi BRAF.

\u2022 Kemoterapi: Meskipun kemoterapi kurang umum digunakan untuk melanoma daripada jenis kanker lain, itu masih bisa menjadi opsi dalam beberapa kasus.

\u2022 Terapi Radiasi: Terapi radiasi menggunakan sinar X atau partikel lain untuk merusak sel kanker. Ini dapat digunakan sebagai bagian dari pengobatan jika melanoma telah menyebar ke area tertentu.

\u2022 Klinis Percobaan: Terkadang, orang dengan melanoma yang sulit diobati dapat mempertimbangkan untuk berpartisipasi dalam uji klinis yang mengevaluasi terapi eksperimental yang mungkin lebih efektif.


''',
    'melasma': '''
Pada wanita, melasma sering memudar dengan sendirinya setelah kehamilan atau setelah seorang wanita berhenti mengonsumsi pil KB. Krim pencerah kulit dapat membantu melasma yang tidak sembuh-sembuh.
''',
    'psoriasis': '''
Pengobatan psoriasis tergantung pada tingkat keparahan psoriasis dan efektivitas perawatan sebelumnya. Metode pengobatan yang bisa dilakukan untuk mengatasi psoriasis antara lain:

1. Emolien
Emolien merupakan pelembab yang dapat digunakan untuk mengobati psoriasis ringan. Manfaat emolien untuk psoriasis antara lain untuk mengurangi pengelupasan kulit dan iritasi, meredakan gatal, dan mencegah perdarahan akibat goresan pada kulit.

2. Obat oles
Pemberian obat oles bertujuan untuk meredakan gatal dan peradangan, mengurangi gejala kulit bersisik, dan menghambat pembentukan sel kulit baru. Obat oles berupa krim atau salep yang dapat diresepkan oleh dokter untuk mengobati psoriasis yaitu calcipotriol; kortikosteroid, seperti clobetasol, betamethasone, desoximetasone, atau desonide, dithranol, fluprednidene, dan tacrolimus.

3. Fototerapi
Fototerapi atau terapi cahaya dilakukan jika psoriasis tidak dapat ditangani dengan obat oles. Prosedur ini dilakukan oleh dokter kulit menggunakan sinar ultraviolet (UV) UVA atau UVB.

Jika menggunakan UVA, terapi cahaya akan dikombinasikan dengan obat jenis psoralen. Tujuannya adalah agar kulit lebih sensitif terhadap efek sinar UV.

4. Obat minum
Pengobatan lain untuk psoriasis yang bisa diberikan oleh dokter adalah obat minum. Beberapa jenis obat yang digunakan adalah methotrexate dan ciclosporin.

5. Obat suntikan
Obat suntik bisa diberikan untuk menangani psoriasis parah yang tidak efektif diobati dengan metode di atas. Jenis obat suntik yang dapat diberikan untuk menangani psoriasis adalah etanercept, adalimumab, secukinumab, dan infliximab.
''',
    'rosacea': '''
Berikut adalah beberapa jenis pengobatan yang dilakukan untuk meredakan gejala rosacea: 

\u2022 Menghindari pemicu yang diketahui. Misalnya seperti sinar matahari, minuman beralkohol, dan makanan pedas. 
\u2022 Menggunakan produk perawatan untuk kulit sensitif.
\u2022 Mengoleskan tabir surya dengan SPF 30 atau bahkan lebih sebelum beraktivitas keluar rumah.
\u2022 Menjaga kondisi mata agar kelopak mata selalu bersih.
\u2022 Penggunaan antibiotik. Contohnya seperti doksisiklin atau minosiklin. Meski begitu, tidak jelas bagaimana antibiotik mengurangi keparahan ruam. Umumnya antibiotik hanya mulai bekerja setelah tiga sampai empat minggu dan membutuhkan waktu enam minggu untuk benar-benar menyembuhkannya. 
\u2022 Penggunaan krim dan gel yang mengandung antibiotik, seperti metronidazol, untuk dioleskan ke kulit
\u2022 Prosedur terapi laser bertujuan untuk mengurangi kemerahan akibat pembesaran pembuluh darah. 
''',
    'strechmark': '''
Secara medis, ada beberapa cara untuk mengatasi stretch mark yang bisa dicoba remaja, antara lain:

\u2022 Krim retinoid. Pengobatan ini dapat membantu membangun kembali kolagen di kulit, yang dapat membuat jaringan parut tampak lebih seperti kulit yang tidak rusak dan memperbaiki tampilan stretch mark.
\u2022 Terapi cahaya dan laser. Metode pengobatan ini bekerja dengan cara membantu merangsang pertumbuhan kolagen atau elastin di kulit.
\u2022 Mikrodermabrasi. Ini adalah perangkat genggam yang meniupkan kristal ke dalam kulit, menghaluskan lapisan kulit sehingga tampak seperti normal kembali.
Jika kamu atau anak remajamu memiliki masalah stretch mark dan ingin menghilangkannya, cobalah untuk buat janji dengan dokter spesialis kulit di rumah sakit. Lalu, bicarakan lebih lanjut pada dokter seputar metode pengobatan yang paling sesuai.


''',
  };

  Disease({required prediction}) {
    _label = prediction['label'].toString().split(' ')[1];
    _description = _descriptionList[_label].toString();
    _imagePath = _imageList[_label].toString();
    _symptom = _symptomList[_label].toString();
    _treatment = _treatmentList[_label].toString();
  }

  // GETTER LABEL
  String getLabel() => _label;

  // GETTER IMAGE
  String getImagePath() => _imagePath;

  // GETTER SYMPTOM
  String getSymptom() => _symptom;

  // GETTER TREATMENT
  String getTreatment() => _treatment;

  // GETTER DESCRIPTION
  String getFullDesc() => _description;
  String getDescLimit({required limitLength}) {
    var length = _description.length;
    return _description.replaceRange(limitLength, length, '...');
  }
}
