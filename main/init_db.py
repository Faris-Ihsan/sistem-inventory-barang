import os
import psycopg2

conn = psycopg2.connect(
    host="localhost",
    database="db-sistem-inventory-barang",
    user="postgres",
    password="123456"
)

cur = conn.cursor()

cur.execute('DROP TABLE IF EXISTS DATA_BARANG;')
cur.execute('CREATE TABLE DATA_BARANG ( ID_DATA SERIAL PRIMARY KEY,'
    'TANGGAL_SURAT_JALAN DATE null,'
    'TANGGAL_TERIMA DATE null,'
    'TANGGAL_BUAT_ITEM_ARRIVAL DATE null,'
    'TANGGAL_POSTING_ITEM_ARRIVAL DATE null,'
    'TANGGAL_PALLET_TRANSPORT DATE null,'
    'KODE_BARANG VARCHAR(10) null,'
    'NAMA_BARANG VARCHAR(150) null,'
    'NO_PR VARCHAR(15) null,'
    'NO_PO VARCHAR(15) null,'
    'KODE_STYLE CHAR(5) null,'
    'NAMA_STYLE VARCHAR(100) null,'
    'BATCH_NUMBER VARCHAR(30) null,'
    'BATCH_VENDOR VARCHAR(30) null,'
    'QUANTITY INT4 null,'
    'EXPIRE_DATE DATE null,'    
    'SISA_KEDATANGAN INT4 null,'
    'SATUAN_GUDANG VARCHAR(10) null,'
    'SATUAN_BELI VARCHAR(10) null,'
    'JENIS CHAR(20) null,'
    'KUALITAS_BAHAN CHAR(20) null,'
    'KUALITAS_KANDUNGAN_ZAT_KIMIA CHAR(25) null,'
    'KEBERSIHAN_PRODUK CHAR(20) null,'
    'BENTUK_FISIK CHAR(20) null,'
    'STATUS CHAR(25) null);'
    )

conn.commit()
cur.close()
conn.close()