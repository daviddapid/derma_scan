class Disease {
  late String _label;
  late String _description;
  late String _imagePath;
  late String _symptom;
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

  Disease({required prediction}) {
    _label = prediction['label'].toString().split(' ')[1];
    _description = _descriptionList[_label].toString();
    _imagePath = _imageList[_label].toString();
    _symptom = _symptomList[_label].toString();
  }

  // static String getLabel({required prediction}) {
  //   return prediction['label'].toString().split(' ')[1];
  // }

  // GETTER LABEL
  String getLabel() => _label;

  // GETTER IMAGE
  String getImagePath() => _imagePath;
  String getSymptom() => _symptom;

  // GETTER DESCRIPTION
  String getFullDesc() => _description;
  String getDescLimit({required limitLength}) {
    var length = _description.length;
    return _description.replaceRange(limitLength, length, '...');
  }
}
