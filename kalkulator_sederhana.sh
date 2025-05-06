#!/bin/bash

while true; do
    echo "=== Kalkulator Sederhana ==="
    echo "1. Penjumlahan"
    echo "2. Pengurangan"
    echo "3. Perkalian"
    echo "4. Pembagian"
    echo "5. Keluar"
    read -p "Pilih menu (1-5): " menu

    if [ "$menu" -eq 5 ]; then
        echo "Keluar dari program. Terima kasih telah menggunakan program ini"
        break
    fi

    read -p "Masukkan angka pertama: " angka1
    read -p "Masukkan angka kedua: " angka2

    case $menu in
        1)
            hasil=$((angka1 + angka2))
            echo "Hasil penjumlahan: $hasil"
            ;;
        2)
            hasil=$((angka1 - angka2))
            echo "Hasil pengurangan: $hasil"
            ;;
        3)
            hasil=$((angka1 * angka2))
            echo "Hasil perkalian: $hasil"
            ;;
        4)
            if [ "$angka2" -eq 0 ]; then
                echo "Tidak bisa membagi dengan nol."
            else
                hasil=$(echo "scale=2; $angka1 / $angka2" | bc)
                echo "Hasil pembagian: $hasil"
            fi
            ;;
        *)
            echo "Pilihan tidak valid."
            ;;
    esac

    echo ""
done
