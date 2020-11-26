# install pyGenomeTracks https://github.com/deeptools/pyGenomeTracks#usage

export PATH=/home/fgao/anaconda3.5.3/bin:$PATH
export LD_LIBRARY_PATH=/home/fgao/anaconda3.5.3/lib:$LD_LIBRARY_PATH
export MANPATH=/home/fgao/anaconda3.5.3/share/man:$MANPATH
export PKG_CONFIG_PATH=/home/fgao/anaconda3.5.3/lib/pkgconfig:$PKG_CONFIG_PATH

cp opa_nc14b_peaks_nochr.bed opa_nc14b.bed
cp opa_nc15_peaks_nochr.bed  opa_nc14d.bed


cp nuclear_cycle_14_repl_merged_5kb.h5 ctrl_nc14.h5
cp nuclear_cycle_14_sh_zld_repl_merged_5kb.h5 shzld_nc14.h5
cp nuclear_cycle_12_repl_merged_5kb.h5 ctrl_nc12.h5
cp nuclear_cycle_13_repl_merged_5kb.h5 ctrl_nc13.h5
cp 3-4h_repl_merged_5kb.h5 ctrl_3-4h.h5

cp opa_wce_nc14b_q.bedgraph opa_nc14b.bedgraph
cp opa_wce_nc15_q.bedgraph opa_nc14d.bedgraph
sed -i 's/chr//g' opa_nc14b.bedgraph
sed -i 's/chr//g' opa_nc14d.bedgraph

make_tracks_file -f ctrl_nc12.h5 TAD_nc12_2kb.bed ctrl_nc13.h5 TAD_nc13_2kb.bed ctrl_nc14.h5 TAD_nc14_2kb.bed ctrl_3-4h.h5 TAD_3-4h_2kb.bed opa_nc14b.bedgraph opa_nc14d.bedgraph -o tracks.ini
pyGenomeTracks --tracks tracks.ini --region 2L:0-4,000,000 --outFileName region_2L_0M_4M.png --height 100 --width 150 --title "Region 2L:0M-4M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 2L:4,000,000-8,000,000 --outFileName region_2L_4M_8M.png --height 100 --width 150 --title "Region 2L:4M-8M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 2L:8,000,000-12,000,000 --outFileName region_2L_8M_12M.png --height 100 --width 150 --title "Region 2L:8M-12M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 2L:12,000,000-16,000,000 --outFileName region_2L_12M_16M.png --height 100 --width 150 --title "Region 2L:12M-16M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 2L:16,000,000-20,000,000 --outFileName region_2L_16M_20M.png --height 100 --width 150 --title "Region 2L:16M-20M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 2L:20,000,000-24,000,000 --outFileName region_2L_20M_24M.png --height 100 --width 150 --title "Region 2L:20M-24M" --dpi 300 --fontSize 30

pyGenomeTracks --tracks tracks.ini --region 2R:0-4,000,000 --outFileName region_2R_0M_4M.png --height 100 --width 150 --title "Region 2R:0M-4M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 2R:4,000,000-8,000,000 --outFileName region_2R_4M_8M.png --height 100 --width 150 --title "Region 2R:4M-8M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 2R:8,000,000-12,000,000 --outFileName region_2R_8M_12M.png --height 100 --width 150 --title "Region 2R:8M-12M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 2R:12,000,000-16,000,000 --outFileName region_2R_12M_16M.png --height 100 --width 150 --title "Region 2R:12M-16M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 2R:16,000,000-20,000,000 --outFileName region_2R_16M_20M.png --height 100 --width 150 --title "Region 2R:16M-20M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 2R:20,000,000-24,000,000 --outFileName region_2R_20M_24M.png --height 100 --width 150 --title "Region 2R:20M-24M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 2R:24,000,000-28,000,000 --outFileName region_2R_24M_28M.png --height 100 --width 150 --title "Region 2R:24M-28M" --dpi 300 --fontSize 30

pyGenomeTracks --tracks tracks.ini --region 3L:0-4,000,000 --outFileName region_3L_0M_4M.png --height 100 --width 150 --title "Region 3L:0M-4M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 3L:4,000,000-8,000,000 --outFileName region_3L_4M_8M.png --height 100 --width 150 --title "Region 3L:4M-8M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 3L:8,000,000-12,000,000 --outFileName region_3L_8M_12M.png --height 100 --width 150 --title "Region 3L:8M-12M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 3L:12,000,000-16,000,000 --outFileName region_3L_12M_16M.png --height 100 --width 150 --title "Region 3L:12M-16M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 3L:16,000,000-20,000,000 --outFileName region_3L_16M_20M.png --height 100 --width 150 --title "Region 3L:16M-20M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 3L:20,000,000-24,000,000 --outFileName region_3L_20M_24M.png --height 100 --width 150 --title "Region 3L:20M-24M" --dpi 300 --fontSize 30

pyGenomeTracks --tracks tracks.ini --region 3R:0-4,000,000 --outFileName region_3R_0M_4M.png --height 100 --width 150 --title "Region 3R:0M-4M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 3R:4,000,000-8,000,000 --outFileName region_3R_4M_8M.png --height 100 --width 150 --title "Region 3R:4M-8M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 3R:8,000,000-12,000,000 --outFileName region_3R_8M_12M.png --height 100 --width 150 --title "Region 3R:8M-12M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 3R:12,000,000-16,000,000 --outFileName region_3R_12M_16M.png --height 100 --width 150 --title "Region 3R:12M-16M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 3R:16,000,000-20,000,000 --outFileName region_3R_16M_20M.png --height 100 --width 150 --title "Region 3R:16M-20M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 3R:20,000,000-24,000,000 --outFileName region_3R_20M_24M.png --height 100 --width 150 --title "Region 3R:20M-24M" --dpi 300 --fontSize 30
pyGenomeTracks --tracks tracks.ini --region 3R:24,000,000-28,000,000 --outFileName region_3R_24M_28M.png --height 100 --width 150 --title "Region 3R:24M-28M" --dpi 300 --fontSize 30

