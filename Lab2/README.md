# _Εργασία 2<sup>ου</sup> Εργαστηρίου Αρχιτεκτονικής Υπολογιστών_

## ΤΗΜΜΥ 2020-2021

## Ομάδα 14

## Συγγραφείς 
- **Κινούς Αλέξανδρος**  
***ΑΕΜ: 8834***

- **Βαλαώρα Βασιλεία**  
***ΑΕΜ: 8657***

## Περιεχόμενα:

> **_Ερώτημα 1_**
>
>    > a) [Εύρεση παραμέτρων για **default** υποσύστημα μνήμης](#εύρεση-παραμέτρων-για-default-υποσύστημα-μνήμης)
>    >
>    > b) 
>    >    > i) [Καταγραφή αποτελεσμάτων **benchmarks** για ***default*** τιμές](#καταγραφή-αποτελεσμάτων-benchmarks-για-default-τιμές)
>    >    >
>    >    > ii) [Γραφική αναπαράσταση των παραπάνω αποτελεμάτων](#Γραφική-Αναπαράσταση-των-παραπάνω-αποτελεμάτων)
>    >    >
>    >    > iii) [Σχολιασμός των παραπάνω αποτελεσμάτων](#Σχολιασμός-των-παραπάνω-αποτελεσμάτων)
>    >
>    > c) [...](#1.c)
>
> **_Ερώτημα 2_**
>
> **_Ερώτημα 3_**

## Εύρεση παραμέτρων για **default** υποσύστημα μνήμης

Γνωρίζουμε από το 1<sup>ο</sup> εργαστήριο ότι για την εύρεση στοιχείων του συστήματος πρέπει να μελετήσουμε τα ***configuration files***, δηλαδή ένα εκ των **config.ini**, **config.json**.

Μελετώντας το **config.ini** έχουμε:

  - Από `[system.cpu.dcache]`, (_line 169_ & _line 152_) : 
   
      **L1 Data Cache**

       > size = 65536 ή **64 KB**   
       > assoc = 2
       
       
  - Από `[system.cpu.icache]`, (_line 833_ & _line 816_) : 
   
      **L1 Instruction Cache**

       > size = 32768 ή **32 KB**    
       > assoc = 2
       
       
       
  - Από `[system.l2]`, (_line 1078_ & _line 1061_) : 
   
      **L2 Cache**

       > size = 2097152 ή **2 MB**    
       > assoc = 8
       
       
       
  - Από `[system]`, (_line 15_) : 
   
      **Cache Line Size**

       > cache_line_size = **64 B**
       


## Καταγραφή αποτελεσμάτων benchmarks για default τιμές

Για την εύρεση αποτελεσμάτων ή στατιστικών στοιχείων ανατρέχουμε στο αρχείο **stats.txt** του εκάστοτε ***benchmark***.

Έχουμε λοιπόν : 



| | bzip | mcf | hmmer | sjeng | libm |
| :---: | :---: | :---: | :---: | :---: | :---: |
| Execution Time (ms) | 83.654 | 62.553 | 59.390 | 513.823 | 174.763 |
| CPI | 1.673085 | 1.251067 | 1.187803 | 10.276466 | 3.495270 | 
| L1 dCache MissRate (%) | 1.4312 | 0.2062 | 0.1628 | 12.1831 | 6.0972 |
| L1 iCache MissRate (%) | 0.0075 | 1.9032 | 0.0212 | 0.0020 | 0.0095 |
| L2 Cache MissRate  (%)| 29.5247 | 6.7668 | 7.8296 | 99.9978 | 99.9940 |

<br>
<br>

## Γραφική Αναπαράσταση των παραπάνω αποτελεμάτων  
<br>
<br>
<img src="https://github.com/akinous/ArchitectureLab2020/blob/main/Lab2/gem5images/Execution%20Time%20(ms).png">
<br>
<br>
<img src="https://github.com/akinous/ArchitectureLab2020/blob/main/Lab2/gem5images/CPI.png">
<br>
<br>
<img src="https://github.com/akinous/ArchitectureLab2020/blob/main/Lab2/gem5images/L1%20dCache%20MissRate%20(%25).png">
<br>
<br>
<img src="https://github.com/akinous/ArchitectureLab2020/blob/main/Lab2/gem5images/L1%20iCache%20MissRate%20(%25).png">
<br>
<br>
<img src="https://github.com/akinous/ArchitectureLab2020/blob/main/Lab2/gem5images/L2%20Cache%20MissRate%20(%25).png">




## Σχολιασμός των παραπάνω αποτελεσμάτων
Παρατηρώντας τα παραπάνω γραφήματα, διαπιστώνουμε μια αναλογία μεταξύ του CPI (Cycles per Instruction) και των miss-rate των L1 Data Cache και L2 Cache. Αυτό σημαίνει ότι όσο αυξάνονται τα miss-rate σε αυτές τις μνήμες cache, αυξάνεται και το CPI. Αυτό εξηγείται και από το γεγονός ότι χρεώνεται ένα _"time penalty"_ για κάθε miss-rate που συμβαίνει είτε στην L1 Data Cache είτε στην L2 Cache, με την διαφορά ότι της L2 είναι μεγαλύτερο λόγω της βραδύτητας της συγκεκριμένης cache σε σχέση με την L1 Data Cache.  
Από την άλλη, το miss-rate της L1 Instruction Cache δεν επηρεάζει σημαντικά το συνολικό χρόνο εκτέλεσης των προγραμμάτων.


## 1.c

| | bzip | mcf | hmmer | sjeng | libm |
| :---: | :---: | :---: | :---: | :---: | :---: |
| Execution Time (ms) | 160.3594 | 123.265 | 118.517 | 705.640 | -- |
| CPI | 1.603595 | 1.251067 | 1.185174 | 7.056395 | -- | 
| L1 dCache MissRate (%) | 1.4123 | 0.2062 | 0.1619 | 12.1831 | -- |
| L1 iCache MissRate (%) | 0.0075 | 1.9046 | 0.0212 | 0.0020 | -- |
| L2 Cache MissRate  (%)| 29.5227 | 6.7668 | 7.8295 | 99.9978 | -- |
