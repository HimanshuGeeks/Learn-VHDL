--Η εντολή CASE
--Η εντολή CASE έχει παρόμοια λειτουργία με την IF, αφού κι αυτή επιλέγει ανάμεσα σε
--διαφορετικές ομάδες ακολουθιακών εντολών με βάση την ισχύ μιας συνθήκης. Η διαφορά είναι
--ότι η IF εξετάζει διαδοχικά την ισχύ μιας σειράς λογικών συνθηκών, προκειμένου να επιλέξει
--την ομάδα εντολών που θα εκτελέσει. Η CASE επιλέγει με βάση την τιμή που λαμβάνει μια
--μοναδική έκφραση. Η σύνταξή της είναι ως εξής:
[ετικέτα:] CASE έκφραση IS
WHEN τιμή => αναθέσεις;
WHEN τιμή => αναθέσεις;
....
END CASE;

--Ένα παράδειγμα είναι το σύστημα ελέγχου ενός επεξεργαστή, που κάνει διαφορετικές αναθέσεις
--στα σήματα ελέγχου x, y, ανάλογα με την τιμή του κωδικού εντολής. Έστω, λοιπόν, ότι σε μια
--απλή περίπτωση ο κωδικός εντολής opcode μπορεί να λάβει τις τιμές “00”, “01”, “10”, “11”.
--Έτσι, η CASE θα διατυπωθεί ως εξής:

CASE opcode IS
WHEN “00”=>
x<='0'; y<='1';
WHEN “01”=>
x<='1'; y<='0';
WHEN “10”=>
x<='0'; y<='1';
WHEN “11” =>
x<='1'; y<='1';
END CASE;
--Προκειμένου να ληφθούν υπόψη όλες οι δυνατές τιμές της έκφρασης επιλογής, είναι δυνατό η
--τελευταία WHEN να είναι διατυπωμένη με την κωδική έκφραση OTHERS:
WHEN OTHERS => αναθέσεις;