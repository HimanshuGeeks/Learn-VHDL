--Σήματα και μεταβλητές
--Παράδειγμα δήλωσης και ανάθεσης
--τιμής σε μεταβλητή δίνεται παρακάτω.
VARIABLE q : INTEGER
q:=q+1;

--Διεργασίες (PROCESS)
--Το πιο κοινό τμήμα ακολουθιακού κώδικα είναι η διεργασία. Η δήλωση μιας διεργασίας γίνεται
--όπως παρακάτω:
PROCESS [(λίστα ευαισθησίας)] [IS]
[τμήμα δηλώσεων]
BEGIN
Ακολουθιακές προτάσεις
END PROCESS;

--Μια διεργασία συνοδεύεται τις περισσότερες φορές από μια λίστα ευαισθησίας. Αυτή,
--περιλαμβάνει τα σήματα, που η αλλαγή της κατάστασής τους έχει ως αποτέλεσμα την εκτέλεση
--της διεργασίας. Πολύ συνηθισμένο σήμα στη λίστα ευαισθησίας είναι το clock. Η μόνη
--περίπτωση που η διεργασία δεν έχει λίστα ευαισθησίας είναι όταν περιλαμβάνει μια εντολή
--WAIT. Τότε, το κριτήριο για την εκτέλεση της διεργασίας είναι να εκπληρώνεται η συνθήκη της WAIT.

--Οι ακολουθιακές εντολές εκτελούνται σειριακά, η μία μετά
--την άλλη. Στο τέλος της διεργασίας γίνονται οι αναθέσεις των τιμών στα σήματα.