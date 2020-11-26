#~/tools/bedGraphToBigWig opa_nc14b.bedgraph ~/tools/dm6_chrom_nochr.sizes opa_nc14b.bw
#~/tools/bedGraphToBigWig opa_nc14d.bedgraph ~/tools/dm6_chrom_nochr.sizes opa_nc14d.bw

export PATH="/home/fgao/anaconda3.5.3/bin:$PATH"
computeMatrix reference-point --referencePoint center -S \
               opa_nc14b.bw opa_nc14d.bw \
               -p 48 \
               -bs 500 \
               -R Hug-et-al-Cell-2017-Supp-Site/boundaries_10kb_c12.bed Hug-et-al-Cell-2017-Supp-Site/boundaries_10kb_c13.bed Hug-et-al-Cell-2017-Supp-Site/boundaries_10kb_c14.bed Hug-et-al-Cell-2017-Supp-Site/boundaries_10kb_3-4h.bed \
               -b 50000 \
               -a 50000 \
               --skipZeros \
               --missingDataAsZero -o matrix.opa_TAD_10kb.gz
plotHeatmap -m matrix.opa_TAD_10kb.gz \
      -out Heatmap_opa_TAD_10kb.svg \
      --colorMap Reds Reds \
      --sortUsingSamples 1 \
      -x "Distance (bp)" \
      --refPointLabel "Peak Center" \
      --regionsLabel boundaries_c12 "boundaries_c13" "boundaries_c14" "boundaries_3-4h" \
      --samplesLabel ChIP_Opa_nc14b "ChIP_Opa_nc14d"


export PATH="/home/fgao/anaconda3.5.3/bin:$PATH"
computeMatrix reference-point --referencePoint center -S \
               opa_nc14b.bw opa_nc14d.bw \
               -p 48 \
               -bs 500 \
               -R Hug-et-al-Cell-2017-Supp-Site/boundaries_5kb_c12.bed Hug-et-al-Cell-2017-Supp-Site/boundaries_5kb_c13.bed Hug-et-al-Cell-2017-Supp-Site/boundaries_5kb_c14.bed Hug-et-al-Cell-2017-Supp-Site/boundaries_5kb_3-4h.bed \
               -b 50000 \
               -a 50000 \
               --skipZeros \
               --missingDataAsZero -o matrix.opa_TAD_5kb.gz
plotHeatmap -m matrix.opa_TAD_5kb.gz \
      -out Heatmap_opa_TAD_5kb.svg \
      --colorMap Reds Reds \
      --sortUsingSamples 1 \
      -x "Distance (bp)" \
      --refPointLabel "Peak Center" \
      --regionsLabel boundaries_c12 "boundaries_c13" "boundaries_c14" "boundaries_3-4h" \
      --samplesLabel ChIP_Opa_nc14b "ChIP_Opa_nc14d"


export PATH="/home/fgao/anaconda3.5.3/bin:$PATH"
computeMatrix reference-point --referencePoint center -S \
               opa_nc14b.bw opa_nc14d.bw \
               -p 48 \
               -bs 500 \
               -R Hug-et-al-Cell-2017-Supp-Site/boundaries_2kb_c12.bed Hug-et-al-Cell-2017-Supp-Site/boundaries_2kb_c13.bed Hug-et-al-Cell-2017-Supp-Site/boundaries_2kb_c14.bed Hug-et-al-Cell-2017-Supp-Site/boundaries_2kb_3-4h.bed \
               -b 50000 \
               -a 50000 \
               --skipZeros \
               --missingDataAsZero -o matrix.opa_TAD_2kb.gz
plotHeatmap -m matrix.opa_TAD_2kb.gz \
      -out Heatmap_opa_TAD_2kb.svg \
      --colorMap Reds Reds \
      --sortUsingSamples 1 \
      -x "Distance (bp)" \
      --refPointLabel "Peak Center" \
      --regionsLabel boundaries_c12 "boundaries_c13" "boundaries_c14" "boundaries_3-4h" \
      --samplesLabel ChIP_Opa_nc14b "ChIP_Opa_nc14d"
