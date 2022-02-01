colna <- read.table("dataset/features.txt", header = FALSE)[,2]

y_tr <- read.table("dataset/train/y_train.txt", col.names = "label_y", header = FALSE)
X_tr <- read.table("dataset/train/X_train.txt", header = FALSE)
X_tr <- `colnames<-`(X_tr, colna)
subject_tr <- read.table("dataset/train/subject_train.txt", col.names = "subject", header = FALSE)
tr <- cbind(subject_tr, y_tr, X_tr)
tr$group <- "train"

y_te <- read.table("dataset/test/y_test.txt", col.names = "label_y", header = FALSE)
X_te <- read.table("dataset/test/X_test.txt", header = FALSE)
X_te <- `colnames<-`(X_te, colna)
subject_te <- read.table("dataset/test/subject_test.txt", col.names = "subject", header = FALSE)
te <- cbind(subject_te, y_te, X_te)
te$group <- "test"

my_dt <- rbind(tr, te)
