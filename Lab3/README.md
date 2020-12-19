# _Εργασία 3<sup>ου</sup> Εργαστηρίου Αρχιτεκτονικής Υπολογιστών_

## ΤΗΜΜΥ 2020-2021

## Ομάδα 14

## Συγγραφείς 
- **Κινούς Αλέξανδρος**  
***ΑΕΜ: 8834***

- **Βαλαώρα Βασιλεία**  
***ΑΕΜ: 8657***

## Περιεχόμενα:

> [**_Βήμα 1<sup>ο</sup> - Εξοικείωση με τον εξομοιωτή McPAT_**](#εξοικείωση-με-τον-εξομοιωτή-mcpat)
>
>    > 1) [Ερμηνεία αποτελεσμάτων από McPAT](#1-ερμηνεία-αποτελεσμάτων-από-mcpat)
>    >
>    > 2) [Παράδειγμα με χρήση δύο επεξεργαστών ισχύος 4 Watt και 40 Watt αντίστοιχα](#2-παράδειγμα-με-χρήση-δύο-επεξεργαστών-ισχύος-4-watt-και-40-watt-αντίστοιχα)
>    >
>    >
>    > 3) [Αντιπαράθεση του Xeon και του ARM A9](#3-αντιπαράθεση-του-xeon-και-του-arm-a9)
>
> [**_Βήμα 2<sup>ο</sup> - gem5 & McPAT: αναζητώντας τη βελτιστοποίηση του γινομένου EDP_**](#gem5-mcpat-αναζητώντας-τη-βελτιστοποίηση-του-γινομένου-edp)
>
> [**Κριτική Εργασίας**](#κριτική-εργασίας)


>    >    > i) [](#2i-)
>    >    >
>    >    > ii) [](#2ii-)
>    >    >
>    >    > iii) [](#2iii-)

# Εξοικείωση με τον εξομοιωτή McPAT
## 1. Ερμηνεία αποτελεσμάτων ισχύος από McPAT

Η ισχύς που καταναλώνεται σε μια συσκευή διακρίνεται στην ***dynamic*** ή ***switching*** ισχύ, καθώς και στην ***leakage*** ή ***static*** ισχύ.  
H δυναμική ισχύς είναι ανάλογη της συχνότητας λειτουργίας του transistor. Όσο αυξάνεται η επίδοση (ταχύτητα και συχνότητα) του ολοκληρωμένου κυκλώματος τόσο αυξάνεται και η δυναμική ισχύς.  
Το leakage power οφείλεται στην απώλεια ενέργειας λόγω διάχυσης από τα τρανζίστορ του επεξεργαστή λόγω των φυσικών ατελειών στην κατασκευή τους. Υπάρχουν δύο είδη leakage power, το ***subthreshold leakage*** το οποίο οφείλεται στην πολύ μικρή ποσότητα ρεύματος που διαρρέει από το source στο drain των τρανζίστορ και το ***gate leakage*** που οφείλεται σε μικρή ποσότητα ρεύματος που διαρρέει το gate των τρανζίστορ.



## 2. Παράδειγμα με χρήση δύο επεξεργαστών ισχύος 4 Watt και 40 Watt αντίστοιχα

## 3. Αντιπαράθεση του Xeon και του ARM A9


# gem5 McPAT αναζητώντας τη βελτιστοποίηση του γινομένου EDP

# Κριτική Εργασίας