from main import app
import os
from flask import request, redirect, render_template, flash, url_for
import psycopg2
from main.models import predict

# DB Config
conn = psycopg2.connect(
    host="localhost",
    database="db-sistem-inventory-barang",
    user="postgres",
    password="123456"
)
cur = conn.cursor()

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/data_inventory')
def data_inventory():
    # Ambil data dari DB
    cur.execute("SELECT * FROM data_barang ORDER BY id_data;")
    data = cur.fetchall()
    return render_template('data_inventory.html', data_barang = data)

@app.route('/input_inventory')
def input_inventory():
    return render_template('input_inventory.html')

@app.route('/data_quarantine')
def data_quarantine():
    cur.execute("SELECT * FROM data_barang WHERE status='Quarantine Area';")
    data = cur.fetchall()
    return render_template('data_quarantine.html', data_barang = data)
    
@app.route('/data_release')
def data_release():
    cur.execute("SELECT * FROM data_barang WHERE status='Release Area';")
    data = cur.fetchall()
    return render_template('data_release.html', data_barang = data)

@app.route('/delete/<id_data>', methods = ['GET'])
def delete(id_data):
    print(id_data)
    flash("Data Berhasil Dihapus")
    cur.execute("DELETE FROM data_barang WHERE id_data=%s", (id_data,))
    conn.commit()
    return redirect(url_for('data_inventory'))

@app.route('/insert', methods = ['POST'])
def insert_data():
    if request.method == 'POST':
        tanggal_surat_jalan = request.form['tanggal_surat_jalan']
        tanggal_terima  = request.form['tanggal_terima']
        tanggal_buat_item_arrival = request.form['tanggal_buat_item_arrival']
        tanggal_posting_item_arrival = request.form['tanggal_posting_item_arrival']
        tanggal_pallet_transport = request.form['tanggal_pallet_transport']
        kode_barang = request.form['kode_barang']
        nama_barang = request.form['nama_barang']
        no_pr = request.form['no_pr']
        no_po = request.form['no_po']
        kode_style = request.form['kode_style']
        nama_style = request.form['nama_style']
        batch_number = request.form['batch_number']
        batch_vendor = request.form['batch_vendor']
        quantity = request.form['quantity']
        expire_date = request.form['expire_date']
        sisa_kedatangan = request.form['sisa_kedatangan']
        satuan_gudang = request.form['satuan_gudang']
        satuan_beli = request.form['satuan_beli']
        jenis = request.form['jenis']
        kualitas_bahan = request.form['kualitas_bahan']
        kualitas_kandungan_zat_kimia = request.form['kualitas_kandungan_zat_kimia']
        kebersihan_produk = request.form['kebersihan_produk']
        bentuk_fisik = request.form['bentuk_fisik']

        data_prediksi = [kualitas_bahan, kualitas_kandungan_zat_kimia, kebersihan_produk, bentuk_fisik]
        hasil_prediksi = predict(data_prediksi)

        hasil_convert = []

        for data in data_prediksi:
            if int(data) == 0:
                text_data_prediksi = "Baik"
            elif int(data) == 1:
                text_data_prediksi = "Tidak Baik"
            elif int(data) == 2:
                text_data_prediksi = "Belum Diuji"
            else:
                text_data_prediksi = "Tidak Ada"
            
            hasil_convert.append(text_data_prediksi)

        if int(hasil_prediksi) == 0:
            text_hasil_prediksi = "Release Area"
            hasil_convert.append(text_hasil_prediksi)
        else:
            text_hasil_prediksi = "Quarantine Area"
            hasil_convert.append(text_hasil_prediksi)

        cur.execute("INSERT INTO data_barang (tanggal_surat_jalan, tanggal_terima, tanggal_buat_item_arrival, tanggal_posting_item_arrival, tanggal_pallet_transport, kode_barang, nama_barang, no_pr, no_po, kode_style, nama_style, batch_number, batch_vendor, quantity, expire_date, satuan_gudang, satuan_beli, sisa_kedatangan, jenis, kualitas_bahan, kualitas_kandungan_zat_kimia, kebersihan_produk, bentuk_fisik, status) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", (tanggal_surat_jalan, tanggal_terima, tanggal_buat_item_arrival, tanggal_posting_item_arrival, tanggal_pallet_transport, kode_barang, nama_barang, no_pr, no_po, kode_style, nama_style, batch_number, batch_vendor, quantity, expire_date, satuan_gudang, satuan_beli, sisa_kedatangan, jenis, hasil_convert[0], hasil_convert[1], hasil_convert[2], hasil_convert[3], hasil_convert[4]))
        
        conn.commit()

        return redirect(url_for('input_inventory'))

@app.route('/edit/<id_data>', methods = ['POST', 'GET'])
def edit_data(id_data):
    cur.execute("SELECT * FROM data_barang WHERE id_data = %s", (id_data, ))
    data = cur.fetchall()
    return render_template('edit_inventory.html', data_barang = data[0])


@app.route('/update_data/<id_data>', methods = ['POST'])
def update_data(id_data):
    if request.method == 'POST':
        tanggal_surat_jalan = request.form['tanggal_surat_jalan']
        tanggal_terima  = request.form['tanggal_terima']
        tanggal_buat_item_arrival = request.form['tanggal_buat_item_arrival']
        tanggal_posting_item_arrival = request.form['tanggal_posting_item_arrival']
        tanggal_pallet_transport = request.form['tanggal_pallet_transport']
        kode_barang = request.form['kode_barang']
        nama_barang = request.form['nama_barang']
        no_pr = request.form['no_pr']
        no_po = request.form['no_po']
        kode_style = request.form['kode_style']
        nama_style = request.form['nama_style']
        batch_number = request.form['batch_number']
        batch_vendor = request.form['batch_vendor']
        quantity = request.form['quantity']
        expire_date = request.form['expire_date']
        sisa_kedatangan = request.form['sisa_kedatangan']
        satuan_gudang = request.form['satuan_gudang']
        satuan_beli = request.form['satuan_beli']
        jenis = request.form['jenis']
        kualitas_bahan = request.form['kualitas_bahan']
        kualitas_kandungan_zat_kimia = request.form['kualitas_kandungan_zat_kimia']
        kebersihan_produk = request.form['kebersihan_produk']
        bentuk_fisik = request.form['bentuk_fisik']

        data_prediksi = [kualitas_bahan, kualitas_kandungan_zat_kimia, kebersihan_produk, bentuk_fisik]
        hasil_prediksi = predict(data_prediksi)

        hasil_convert = []

        for data in data_prediksi:
            if int(data) == 0:
                text_data_prediksi = "Baik"
            elif int(data) == 1:
                text_data_prediksi = "Tidak Baik"
            elif int(data) == 2:
                text_data_prediksi = "Belum Diuji"
            else:
                text_data_prediksi = "Tidak Ada"
            
            hasil_convert.append(text_data_prediksi)

        if int(hasil_prediksi) == 0:
            text_hasil_prediksi = "Release Area"
            hasil_convert.append(text_hasil_prediksi)
        else:
            text_hasil_prediksi = "Quarantine Area"
            hasil_convert.append(text_hasil_prediksi)

        cur.execute("UPDATE data_barang SET tanggal_surat_jalan = %s, tanggal_terima = %s, tanggal_buat_item_arrival = %s, tanggal_posting_item_arrival = %s, tanggal_pallet_transport = %s, kode_barang = %s, nama_barang = %s, no_pr = %s, no_po = %s, kode_style = %s, nama_style = %s, batch_number = %s, batch_vendor = %s, quantity = %s, expire_date = %s, satuan_gudang = %s, satuan_beli = %s, sisa_kedatangan = %s, jenis = %s, kualitas_bahan = %s, kualitas_kandungan_zat_kimia = %s, kebersihan_produk = %s, bentuk_fisik = %s, status = %s WHERE id_data = %s", (tanggal_surat_jalan, tanggal_terima, tanggal_buat_item_arrival, tanggal_posting_item_arrival, tanggal_pallet_transport, kode_barang, nama_barang, no_pr, no_po, kode_style, nama_style, batch_number, batch_vendor, quantity, expire_date, satuan_gudang, satuan_beli, sisa_kedatangan, jenis, hasil_convert[0], hasil_convert[1], hasil_convert[2], hasil_convert[3], hasil_convert[4], id_data))
        
        conn.commit()

    return redirect(url_for('data_inventory'))