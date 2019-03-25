set all [atomselect top "all"] 
set tube [atomselect top {segname "PRA.*"}]
$all set beta 0
$tube set beta 1
$all writepdb fixedtube.pdb 

