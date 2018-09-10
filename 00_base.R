# ---- OPTIONS ----
#
# * Summarize Function *
# When HUGO Gene names are associated with multiple probesets, the probset
# expression values will be summarized using the following function:
SUMMARIZE_FUNCTION <- median

# * HUGO Dictionary URL*
# This URL points to most recent HUGO gene names information.
# See https://beta.genenames.org/download/custom/ for more information.
HUGO_DICT_URL <- "https://beta.genenames.org/cgi-bin/download/custom?col=gd_hgnc_id&col=gd_app_sym&col=gd_app_name&col=gd_status&col=gd_prev_sym&col=gd_aliases&col=gd_pub_chrom_map&col=gd_pub_acc_ids&col=gd_pub_refseq_ids&status=Approved&status=Entry%20Withdrawn&hgnc_dbtag=on&order_by=gd_app_sym_sort&format=text&submit=submit"

# ---- Load Packages ----
if (!requireNamespace("pacman", quietly = TRUE)) install.packages("pacman")
pacman::p_load(Biobase)
pacman::p_load(tidyverse)
pacman::p_load(GEOquery)

# Source functions for these scripts
source_files <- dir("functions", pattern = "\\.R$", full.names = TRUE)
purrr::walk(source_files, source, local = globalenv())
