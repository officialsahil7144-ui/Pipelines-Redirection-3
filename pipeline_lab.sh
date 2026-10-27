#!/usr/bin/env bash 
set -e 
cat > marks.txt <<'EOF' 
Anu 82 
Ravi 67 
Maya 91 
John 74 
EOF 
echo "All records:" 
cat marks.txt 
echo "Marks >= 75:" 
awk '$2 >= 75 {print $1, $2}' marks.txt | sort 
echo "Record count:" 
wc -l < marks.txt 
echo "Pipeline output saved to high_marks.txt" 
awk '$2 >= 75 {print $1, $2}' marks.txt | sort > high_marks.txt 
cat high_marks.txt 
