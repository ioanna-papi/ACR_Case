# ATHENS CAR RENTAL
Η ATHENS CAR RENTAL (ACR) δραστηριοποιείται στον χώρο ενοικίασης αυτοκινήτων. Διαθέτει έναν στόλο από αυτοκίνητα σε διάφορες τοποθεσίες ανά την Ελλάδα, καθώς και ένα σύνολο από πελάτες, απλούς ή εταιρικούς. Ένα αυτοκίνητο περιγράφεται από τον αριθμό πλαισίου, την εταιρία κατασκευής, το μοντέλο, το χρώμα και την ημερομηνία αγοράς. Κάθε αυτοκίνητο ανήκει σε μία κατηγορία (πχ. πολυτελή, ανοιχτά κλπ.). Οι κατηγορίες ορίζονται από έναν κωδικό, ονομασία και περιγραφή. Η ACR διατηρεί διάφορες τοποθεσίες ανά την Ελλάδα, από τις οποίες διαθέτει τα αυτοκίνητα της. Μία τοποθεσία έχει κωδικό, διεύθυνση (οδός, αριθμός, πόλη, ΤΚ), ονοματεπώνυμο υπευθύνου και ένα ή περισσότερα τηλέφωνα. Ένας πελάτης περιγράφεται από έναν κωδικό, ονοματεπώνυμο, διεύθυνση και τηλέφωνο. Οι πελάτες μπορεί να είναι απλοί ή εταιρικοί. Οι απλοί πελάτες πρέπει να δώσουν και την ημερομηνία γέννησης τους, ενώ μπορούν να ορίσουν και έναν ή περισσότερους επιπλέον οδηγούς, δίνοντας το ονοματεπώνυμο και την ηλικία τους. Οι εταιρικοί πελάτες έχουν ένα ποσοστό έκπτωσης και πρέπει να δηλώσουν και το ΑΦΜ της εταιρίας τους. Μία ενοικίαση πρέπει να έχει έναν μοναδικό κωδικό, γίνεται από έναν πελάτη, αφορά κάποιο αυτοκίνητο για ένα χρονικό διάστημα (από μία ημερομηνία μέχρι κάποια άλλη), παραλαμβάνεται από μία τοποθεσία και επιστρέφεται σε μία άλλη (ή την ίδια) και έχει μία αξία. Οι πελάτες ανήκουν σε ένα γεωγραφικό διαμέρισμα το οποίο περιγράφεται με έναν κωδικό, ονομασία, πληθυσμό και μέσο ετήσιο εισόδημα. Τέλος, κατά την επιστροφή του αυτοκινήτου γίνεται η πληρωμή για την ενοικίαση. Η πληρωμή πρέπει να έχει τον αριθμό επειβεβαίωσης, τα στοιχεία πιστωτικής κάρτας, το ποσό και την ημερομηνία πληρωμής.

# Tasks (in greek)
1) Δημιουργήστε τους πίνακες της βάσης δεδομένων, το ER diagram και το SQL diagram.
2) Δείξτε μια λίστα των πελατών με τον κωδικό τους, το επώνυμο τους, τη διεύθυνση τους και το τηλέφωνο τους.
3) Δείξτε για κάθε ενοικίαση τον κωδικό της και το χρονικό διάστημα της, αν η αξία είναι πάνω από 200€.
4) Για κάθε πελάτη δείξτε τον κωδικό του, το ονοματεπώνυμο του, το τηλέφωνο και τους κωδικούς ενοικιάσεων που έχει κάνει.
5) Δείξτε το ονοματεπώνυμο και το τηλέφωνο των πελατών που είχαν στην κατοχή τους αυτοκίνητο στις 23/9/2010 και προέρχονται από γεωγραφική περιοχή με κωδικό 10025.
6) Μειώστε την αξία όλων των ενοικιάσεων κατά 5%.
7) Δείξτε για κάθε μήνα του 2010 το σύνολο και τον μέσο όρο των πληρωμών που έχουν γίνει.
8) Δείξτε την συνολική αξία των ενοικιάσεων ανά κατηγορία αυτοκινήτου και γεωγραφικό διαμέρισμα.
9) Δείξτε τους κωδικούς των πελατών που έχουν για τον μήνα Ιούνιο 2010 πάνω από 4 ενοικιάσεις και η μέση αξία ενοικίασης ήταν πάνω από 150€.
10) Χρησιμοποιώντας εμφωλευμένα υποερωτήματα, δείξτε τον κωδικό και το ονοματεπώνυμο των πελατών που έχουν κάνει συνολικές πληρωμές τον Απρίλιο του 2010 πάνω από 1500€.
11) Για κάθε κατηγορία αυτοκινήτων, δείξτε τη συνολική αξία ενοικιάσεων της κατηγορίας σαν ποσοστό της συνολικής αξίας όλων των ενοικάσεων.
12) Για κάθε μήνα του 2011, συγκρίνετε τις συνολικές πληρωμές του μήνα με αυτές του αντίστοιχου μήνα του 2010 (σαν ποσοστό).
13) Δείξτε τους κωδικούς των γεωγραφικών διαμερισμάτων που είχαν μέση αξία ενοικίασης μεγαλύτερη από την συνολική μέση αξία ενοικίασης.
14) Για κάθε μήνα μετρήστε πόσοι πελάτες έχουν μέση αξία ενοικίασης μεγαλύτερη από την συνολική μέση αξία του μήνα.
15) Για κάθε μήνα του 2010, δείξτε την μέση χρονική διάρκεια ενοικίασης (σε ημέρες). Θεωρείστε ότι μία ενοικίαση ανήκει στον μήνα στον οποίο αρχίζει.
16) Γράψτε μία Stored Procedure, η οποία θα δέχεται σαν παράμετρο τον κωδικό ενός πελάτη και στη συνέχεια θα δείχνει τα στοιχεία του πελάτη (απλού ή εταιρικού).
17) Γράψτε ένα πρόγραμμα Java, το οποίο παίρνει από τον χρήστη τον κωδικό μιας ενοικίασης και στη συνέχεια την διαγράφει.
18) Γράψτε ένα πρόγραμμα Java, το οποίο παίρνει από τον χρήστη τον κωδικό πελάτη και στη συνέχεια εμφανίζει όλες τις ενοικιάσεις που έχει κάνει το 2005 γραμμή-γραμμή.
19) Γράψτε ένα πρόγραμμα σε TSQL, που με τη χρήση ενός cursor να δείχνει τα στοιχεία του στόλου των αυτοκινήτων.

# ER DIAGRAM

![Στιγμιότυπο οθόνης (154)](https://user-images.githubusercontent.com/57221590/145481919-127e43f6-2d4e-46d3-a8dc-8ec08f5a14f1.png)


# SQL DIAGRAM

![Στιγμιότυπο οθόνης (156)](https://user-images.githubusercontent.com/57221590/145482007-51fda9d2-eb1f-4df8-a277-8a5b9efa79d9.png)


