
set outfile [open rmsdwater.dat w];                                             
set nf [molinfo top get numframes]
set frame0 [atomselect top "water" frame 0]
set sel [atomselect top "water"]
# rmsd calculation loop
for {set i 1 } {$i < $nf } { incr i } {
    $sel frame $i
    $sel move [measure fit $sel $frame0]
    puts $outfile "[measure rmsd $sel $frame0]"
}
close $outfile
