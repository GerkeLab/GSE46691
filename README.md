Downloads and loads [GSE46691](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE46691).

There are various checkpoints built into [the script](build_gse46691_hugo.R) as several steps are computationally or memory intensive. Note that you will likely need more than 16GB of RAM for these scripts to run comfortably.

### Probeset Annotations

For this script to work, visit <http://www.affymetrix.com/support/technical/byproduct.affx?product=huexon-st> and download [HuEx-1_0-st-v2.na36.hg19.probeset.csv.zip](http://www.affymetrix.com/Auth/analysis/downloads/na36/wtexon/HuEx-1_0-st-v2.na36.hg19.probeset.csv.zip). Save the zip file in the **data** folder and extract.

### HUGO Dictionary

The [HUGO Gene Name dictionary](data/hgnc_dict.tsv) includes the [most recent HUGO gene names list](https://beta.genenames.org/cgi-bin/download/custom?col=gd_hgnc_id&col=gd_app_sym&col=gd_app_name&col=gd_status&col=gd_prev_sym&col=gd_aliases&col=gd_pub_chrom_map&col=gd_pub_acc_ids&col=gd_pub_refseq_ids&status=Approved&status=Entry%20Withdrawn&hgnc_dbtag=on&order_by=gd_app_sym_sort&format=text&submit=submit). See <https://beta.genenames.org/download/custom/> for more information.

To update the HUGO gene list, delete `data/hgnc_dict.tsv` and the file will be re-downloaded on the next run.
