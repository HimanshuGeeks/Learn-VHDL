--Τελεστής συνένωσης (&)
--Ο τελεστής αυτός ομαδοποιεί τιμές και μ’ αυτό τον τρόπο επεκτείνει το εύρος ενός σήματος ή
--επιτελεί πράξεις ολίσθησης. Έστω δύο σήματα x, y:
SIGNAL x,y : std_logic_vector(3 downto 0);
--Τότε, η πράξη
y<= x(1 downto 0) & "00";
--ισοδυναμεί με την ολίσθηση κατά δύο θέσεις αριστερά.