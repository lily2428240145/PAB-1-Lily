import 'package:p_a_b_1__lily/Kalkulator.dart';
import 'dart:io';

void main() {
  Kalkulator kalkulator = Kalkulator();

  bool ulang = true;

  print("================================");
  print("       KALKULATOR SEDERHANA");
  print("================================");

  while (ulang) {
    try {
      double angka1;

      while (true) {
        stdout.write("Masukkan bilangan pertama: ");
        String? input = stdin.readLineSync();

        try {
          angka1 = double.parse(input!);
          break;
        } catch (e) {
          print("Input tidak valid! Masukkan angka.");
        }
      }

      double angka2;

      while (true) {
        stdout.write("Masukkan bilangan kedua: ");
        String? input = stdin.readLineSync();

        try {
          angka2 = double.parse(input!);
          break;
        } catch (e) {
          print("Input tidak valid! Masukkan angka.");
        }
      }

      print("\nPilih operasi:");
      print("[1] Tambah");
      print("[2] Kurang");
      print("[3] Kali");
      print("[4] Bagi");

      stdout.write("Masukkan pilihan (1-4): ");
      String? pilihan = stdin.readLineSync();

      double hasil;

      switch (pilihan) {
        case "1":
          hasil = kalkulator.tambah(angka1, angka2);
          break;

        case "2":
          hasil = kalkulator.kurang(angka1, angka2);
          break;

        case "3":
          hasil = kalkulator.kali(angka1, angka2);
          break;

        case "4":
          hasil = kalkulator.bagi(angka1, angka2);
          break;

        default:
          print("Pilihan tidak valid!");
          continue;
      }

      print("\nHasil = $hasil");

    } catch (e) {
      print("Terjadi kesalahan: $e");
    }

    stdout.write("\nIngin melakukan perhitungan lagi? (Y/T): ");
    String? jawaban = stdin.readLineSync();

    if (jawaban?.toUpperCase() != "Y") {
      ulang = false;
    }
  }

  print("\nProgram selesai.");
  print("Terima kasih!");
}