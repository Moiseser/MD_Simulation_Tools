#This tcl script will take a single segement from a raw protein databank file and add Hydrogens/Add missing residues

#read topology file from which to get AminoAcid structure informaton 
topology top_all36_prot.rtf

#Since our protein contains Histidine(resname HIS) which has a pKa at physological pH
# we need to select its state this is done with the following command
#pdbalias residue HIS HSD 

#we will now define a segment which will read from a pdb and add the new terminal residues
segment PROA {
        pdb segments/cont_rpyocin_1ring_noh_proa.pdb
        residue 385 VAL
        residue 386 ALA
}

#Now we add the coordinates we do have from XrayCrst or CryoEM
coordpdb segments/cont_rpyocin_1ring_noh_proa.pdb

#rinse and repeat for each segment 
segment PROB {
        pdb segments/cont_rpyocin_1ring_noh_prob.pdb
        residue 385 VAL
        residue 386 ALA
}
coordpdb segments/cont_rpyocin_1ring_noh_prob.pdb

segment PROC {
        pdb segments/cont_rpyocin_1ring_noh_proc.pdb
        residue 385 VAL
        residue 386 ALA
}
coordpdb segments/cont_rpyocin_1ring_noh_proc.pdb

segment PROD {
        pdb segments/cont_rpyocin_1ring_noh_prod.pdb
        residue 385 VAL
        residue 386 ALA
}
coordpdb segments/cont_rpyocin_1ring_noh_prod.pdb

segment PROE {
        pdb segments/cont_rpyocin_1ring_noh_proe.pdb
        residue 385 VAL
        residue 386 ALA
}
coordpdb segments/cont_rpyocin_1ring_noh_proe.pdb

segment PROF {
        pdb segments/cont_rpyocin_1ring_noh_prof.pdb
        residue 385 VAL
        residue 386 ALA
}
coordpdb segments/cont_rpyocin_1ring_noh_prof.pdb

#fill in missing coordinates(usually just Hydrogen but in this case missing amino acids as well)
guesscoord

writepdb test.pdb
writepsf test.psf
