# Convert h5 HiC result to bedpe format result
hicConvertFormat --matrices ctrl_nc12.h5 --inputFormat h5 -o GInteration_ctrl_nc12 --outputFormat ginteractions
hicConvertFormat --matrices ctrl_nc13.h5 --inputFormat h5 -o GInteration_ctrl_nc13 --outputFormat ginteractions
hicConvertFormat --matrices ctrl_nc14.h5 --inputFormat h5 -o GInteration_ctrl_nc14 --outputFormat ginteractions
hicConvertFormat --matrices ctrl_3-4h.h5 --inputFormat h5 -o GInteration_ctrl_3-4h --outputFormat ginteractions

cp GInteration_ctrl_nc12.tsv hic_ctrl_nc12.bedpe
cp GInteration_ctrl_nc13.tsv hic_ctrl_nc13.bedpe
cp GInteration_ctrl_nc14.tsv hic_ctrl_nc14.bedpe
cp GInteration_ctrl_3-4h.tsv hic_ctrl_3-4h.bedpe


#Separate inter- and intra-chromosomal interaction
while read line;
do
awk '{if($1==$4 && $2!=$5) print}' ${line}.bedpe > ${line}_intra.bedpe
awk '{if($1!=$4) print}' ${line}.bedpe > ${line}_inter.bedpe
done < bedpe_ID.txt


# Subset interactome anchored by ChIP-seq TFs
while read line;
do
intersectBed -a $line.bedpe -b opa_nc14b_peaks_nochr.bed -u > ${line}_opa_nc14b_temp1.bedpe
awk '{print $4"\t"$5"\t"$6"\t"$1"\t"$2"\t"$3"\t"$7}' ${line}_opa_nc14b_temp1.bedpe > ${line}_opa_nc14b_temp2.bedpe
intersectBed -a ${line}_opa_nc14b_temp2.bedpe -b opa_nc14b_peaks_nochr.bed -u > ${line}_opa_nc14b.bedpe
rm ${line}_opa_nc14b_temp1.bedpe
rm ${line}_opa_nc14b_temp2.bedpe
awk '{if($1==$4 && $2!=$5) print}' ${line}_opa_nc14b.bedpe > ${line}_opa_nc14b_intra.bedpe
awk '{if($1!=$4) print}' ${line}_opa_nc14b.bedpe > ${line}_opa_nc14b_inter.bedpe
done < bedpe_ID.txt

while read line;
do
intersectBed -a $line.bedpe -b opa_nc14d_peaks_nochr.bed -u > ${line}_opa_nc14d_temp1.bedpe
awk '{print $4"\t"$5"\t"$6"\t"$1"\t"$2"\t"$3"\t"$7}' ${line}_opa_nc14d_temp1.bedpe > ${line}_opa_nc14d_temp2.bedpe
intersectBed -a ${line}_opa_nc14d_temp2.bedpe -b opa_nc14d_peaks_nochr.bed -u > ${line}_opa_nc14d.bedpe
rm ${line}_opa_nc14d_temp1.bedpe
rm ${line}_opa_nc14d_temp2.bedpe
awk '{if($1==$4 && $2!=$5) print}' ${line}_opa_nc14d.bedpe > ${line}_opa_nc14d_intra.bedpe
awk '{if($1!=$4) print}' ${line}_opa_nc14d.bedpe > ${line}_opa_nc14d_inter.bedpe
done < bedpe_ID.txt

while read line;
do
intersectBed -a $line.bedpe -b zld_nc14b_peaks_nochr.bed -u > ${line}_zld_nc14b_temp1.bedpe
awk '{print $4"\t"$5"\t"$6"\t"$1"\t"$2"\t"$3"\t"$7}' ${line}_zld_nc14b_temp1.bedpe > ${line}_zld_nc14b_temp2.bedpe
intersectBed -a ${line}_zld_nc14b_temp2.bedpe -b zld_nc14b_peaks_nochr.bed -u > ${line}_zld_nc14b.bedpe
rm ${line}_zld_nc14b_temp1.bedpe
rm ${line}_zld_nc14b_temp2.bedpe
awk '{if($1==$4 && $2!=$5) print}' ${line}_zld_nc14b.bedpe > ${line}_zld_nc14b_intra.bedpe
awk '{if($1!=$4) print}' ${line}_zld_nc14b.bedpe > ${line}_zld_nc14b_inter.bedpe
done < bedpe_ID.txt

while read line;
do
intersectBed -a $line.bedpe -b zld_nc14d_peaks_nochr.bed -u > ${line}_zld_nc14d_temp1.bedpe
awk '{print $4"\t"$5"\t"$6"\t"$1"\t"$2"\t"$3"\t"$7}' ${line}_zld_nc14d_temp1.bedpe > ${line}_zld_nc14d_temp2.bedpe
intersectBed -a ${line}_zld_nc14d_temp2.bedpe -b zld_nc14d_peaks_nochr.bed -u > ${line}_zld_nc14d.bedpe
rm ${line}_zld_nc14d_temp1.bedpe
rm ${line}_zld_nc14d_temp2.bedpe
awk '{if($1==$4 && $2!=$5) print}' ${line}_zld_nc14d.bedpe > ${line}_zld_nc14d_intra.bedpe
awk '{if($1!=$4) print}' ${line}_zld_nc14d.bedpe > ${line}_zld_nc14d_inter.bedpe
done < bedpe_ID.txt

while read line;
do
intersectBed -a $line.bedpe -b BEAF_peaks_nochr.bed -u > ${line}_BEAF_temp1.bedpe
awk '{print $4"\t"$5"\t"$6"\t"$1"\t"$2"\t"$3"\t"$7}' ${line}_BEAF_temp1.bedpe > ${line}_BEAF_temp2.bedpe
intersectBed -a ${line}_BEAF_temp2.bedpe -b BEAF_peaks_nochr.bed -u > ${line}_BEAF.bedpe
rm ${line}_BEAF_temp1.bedpe
rm ${line}_BEAF_temp2.bedpe
awk '{if($1==$4 && $2!=$5) print}' ${line}_BEAF.bedpe > ${line}_BEAF_intra.bedpe
awk '{if($1!=$4) print}' ${line}_BEAF.bedpe > ${line}_BEAF_inter.bedpe
done < bedpe_ID.txt


#Bin the entire genome and get ChIP-peak containing bins
bedtools makewindows -g ~/tools/dm6_chrom.sizes -w 5000 > genome_dm6_5kb.bed
sed -i 's/chr//g' genome_dm6_5kb.bed
intersectBed -a genome_dm6_5kb.bed -b opa_nc14b_peaks_nochr.bed -u > genome_dm6_5kb_opa_nc14b.bed
intersectBed -a genome_dm6_5kb.bed -b opa_nc14d_peaks_nochr.bed -u > genome_dm6_5kb_opa_nc14d.bed
intersectBed -a genome_dm6_5kb.bed -b zld_nc14b_peaks_nochr.bed -u > genome_dm6_5kb_zld_nc14b.bed
intersectBed -a genome_dm6_5kb.bed -b zld_nc14d_peaks_nochr.bed -u > genome_dm6_5kb_zld_nc14d.bed
intersectBed -a genome_dm6_5kb.bed -b BEAF_peaks_nochr.bed -u > genome_dm6_5kb_BEAF.bed
