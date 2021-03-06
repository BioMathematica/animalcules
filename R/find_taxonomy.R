#' Find the taxonomy for unlimited tids
#'
#' @param tids Given taxonomy ids
#' @return taxondata Data with the taxonomy information
#' @import rentrez
#' @export
#' @examples
#' example_data_dir <- system.file("example/data", package = "PathoStat")
#' pathoreport_file_suffix <- "-sam-report.tsv"
#' datlist <- readPathoscopeData(example_data_dir, pathoreport_file_suffix,
#' input.files.name.vec = as.character(1:6))
#' dat <- datlist$data
#' ids <- rownames(dat)
#' tids <- unlist(lapply(ids, FUN = grepTid))
#' taxonLevels <- find_taxonomy(tids[1:5])

find_taxonomy <- function(tids) {
    if (is.null(tids)) {
        return(NULL)
    }
    if (length(tids) <= 300){
        taxonLevels <- find_taxonomy_300(tids)
    } else{
        taxonLevels <- list()
        batch.num <- ceiling(length(tids)/300)
        for (i in seq_len(batch.num)){
            if (i == batch.num){
                tids.batch <- tids[((i-1)*300 + 1):length(tids)]
            }else{
                tids.batch <- tids[((i-1)*300 + 1):(i*300)]
            }
        taxonLevels <- c(taxonLevels, find_taxonomy_300(tids.batch))
        #print(i)
        }
    }


    return(taxonLevels)
}
