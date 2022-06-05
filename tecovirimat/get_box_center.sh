# $1: sub_pocket.pdb (pocket)
# $2: F13.pdbqt (receptor)
# $3: lig_mini.pdbqt (ligand)

x=`awk '{ sum += $7 } END { if (NR > 0) print sum / NR }' $1`
y=`awk '{ sum += $8 } END { if (NR > 0) print sum / NR }' $1`
z=`awk '{ sum += $9 } END { if (NR > 0) print sum / NR }' $1`

echo receptor=$2
echo ligand=$3
echo center_x=$x
echo center_y=$y
echo center_z=$z
echo size_x=20
echo size_y=20
echo size_z=20
echo num_modes=20