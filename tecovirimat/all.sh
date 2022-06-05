awk '{if($11>0.8)print}' F13_pocket.pdb > sub_pocket.pdb
prepare_receptor -r F13.pdb
obminimize -ff MMFF94 lig.pdb > lig_mini.pdb
prepare_ligand -l lig_mini.pdb
bash +x get_box_center.sh sub_pocket.pdb F13.pdbqt lig_mini.pdbqt > vina.cfg
vina --config vina.cfg
pymol F13.pdbqt lig_mini_out.pdbqt