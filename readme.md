# [ MRW0419_ ] Random Walk
[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/dskusuma/project-MRW0419_-random-walk/blob/master/Random_Walk.ipynb)

## 1. Pendahuluan
Pada bab ini, kita akan membahas tentang apa itu *random walk* dan apa kegunaan dari *random walk*.

### Apa itu Random Walk?
Sebelum memahami apa itu *random walk*, ada baiknya kita menilik beberapa pernyataan tentang apa itu *random walk* dari beberapa sumber berikut:

>"*Random walk* adalah objek matematik yang juga dikenal sebagai proses stokastik atau acak, yang menjelaskan tentang sebuah jalur yang merupakan hasil dari langkah acak (*random*) pada ruang matematik seperti bilangan bulat." -- <a href="https://en.wikipedia.org/wiki/Random_walk">Wikipedia</a>

>"*Random walk* adalah proses di mana sebuah objek yang bergerak acak berjalan dari tempat di mana 'ia' memulai." -- <a href="https://www.mit.edu/~kardar/teaching/projects/chemotaxis(AndreaSchmidt)/random.htm">MIT</a>

>"Dalam teori probabilitas, *random walk* adalah proses menentukan kemunginan lokasi sebuah titik terhadap pergerakan acak, diberikan probabilitas (yang sama pada setiap langkah) pergerakan pada jarak tertentu dan arah tertentu" -- <a href="https://www.britannica.com/science/random-walk">Ensiklopedi Britannica</a>

Dari beberapa penjelasan tersebut, kita dapat menarik kesimpulan bahwa pada dasarnya *random walk* adalah pergerakan acak dari suatu objek pada suatu ruang (1D, 2D, 3D, atau lebih).

Pertanyaannya berikutnya adalah, apa kegunaan dari *random walk*?


### Penerapan Random Walk

*Random walk* sering digunakan sebagai bentuk usaha untuk menjelaskan tentang fenomena alam; seperti fisika dan kimia, *materials science*, biologi dan bidang-bidang lainnya. Berikut adalah beberapa penerapan dari *random walk*:

1. Pada bidang ekonomi finansial, hipotesis *random walk* digunakan untuk memodelkan harga *share* dan faktor-faktor lain.
2. Pada populasi genetik, *random walk* mendeskripsikan properti statistik dari *generic drift*
3. Pada komputer sains, *random walk* digunakan untuk memperkirakan ukuran dari Web.
4. Pada *image segmentation*, *random walk* digunakan untuk menentukan label yang diasosiasikan pada setiap piksel. Algoritma ini biasanya dikaitkan dengan *random walker segmentation algorithm*.

### Strategi Penyelesaian Masalah

Berikut adalah strategi penyelesaian masalah kasus *random walk*
1. Tentukan dimensi ruang tempat di mana objek kita akan berjalan, pada kasus ini dimensi $d = 2$
2. Tentukan seberapa besar objek dapat melangkah beserta arahnya. Pada kasus ini, besar langkah secara vertikal $ besar\_langkah\_y = [ -1, 0, 1 ] $ dan secara horizontal $ besar\_langkah\_ = [ -1, 0, 1 ]$.
3. Tentukan banyaknya langkah, misal $ jumlah\_step = 1000 $
4. Tentukan posisi awal objek, misal $ posisi\_awal = (0,0) $
5. Lakukan simulasi dengan perulangan sebanyak $ jumlah\_step $, di mana pada setiap iterasi dari $i = 1 ... jumlah\_step$ objek akan memilih langkah vertikal dan langkah horizontal secara acak, dan kedua nilai tersebut akan disimpan matriks $ langkah $.
6. Lakukan penjumlahan kumulatif untuk mendapatkan jalur yang dilalui objek.

### Code
Simulasi *random walk* pada repo ini tersedia dalam dua jenis bahasa, MATLAB dan Python (dalam bentuk python notebook).
