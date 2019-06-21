package require psfgen
topology ../top_all36_prot.rtf
segment PEPTIDE {pdb PEPTIDE_aa.pdb}
coordpdb ../WX.pdb PEPTIDE
guesscoord
writepdb PEPTIDE_aa.pdb
exit
