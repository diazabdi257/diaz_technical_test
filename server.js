const express = require('express'); //Impor framework Express
const app = express(); // Inisialisasi aplikasi Express
const PORT = 3000; // Port tempat server akan berjalan

app.use(express.json()); //Middleware untuk membaca body request dalam format JSON

let database = [];

app.post('/formulir', (req, res) => { // Ambil data dari body request yang dikirim frontend
  const dataBaru = req.body;
  if (!dataBaru.nama || !dataBaru.email || !dataBaru.kota) {
    return res.status(400).json({ 
      status: 'error',
      message: 'Nama, email, dan kota tidak boleh kosong.' 
    });
  }

  database.push(dataBaru); // Simpan data ke dalam array 'database' kita
  console.log('Data baru diterima:', dataBaru);
  console.log('Seluruh data saat ini:', database);

  res.status(201).json({  // Kirim respons kembali ke frontend bahwa data berhasil dibuat.
    status: 'success',
    message: 'Data berhasil disimpan.',
    data: dataBaru
  });
});

app.get('/formulir', (req, res) => { //untuk mengambil semua data yang telah tersimpan
  res.status(200).json({
    status: 'success',
    message: 'Data berhasil diambil.',
    data: database
  });
});

app.listen(PORT, () => {
  console.log(`Server berjalan di http://localhost:${PORT}`);
});