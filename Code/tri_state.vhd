--Να σχεδιαστεί ένας απομονωτής τριών καταστάσεων
--ο απομονωτής τριών καταστάσεων είναι μια πύλη με είσοδο x και
--έξοδο f, η οποία έχει και έναν τρίτο ακροδέκτη en που ονομάζεται ακροδέκτης ενεργοποίησης.
--Αν ο ακροδέκτης en είναι ενεργός, τότε η είσοδος οδηγείται στην έξοδο, ενώ αν είναι ανενεργός
--η έξοδος αποκτά την «τρίτη κατάσταση», αυτή της υψηλής εμπέδησης (High-Z)

LIBRARY ieee;
USE ieee.std_logic_1164.all;
-------------------------------
ENTITY tri_state_1 IS
PORT(x : IN std_logic;
en : IN std_logic;
f : OUT std_logic);
END tri_state_1;
-------------------------------
ARCHITECTURE tri OF tri_state_1 IS
BEGIN
f <= x WHEN en ='1' ELSE 'Z';
END tri;