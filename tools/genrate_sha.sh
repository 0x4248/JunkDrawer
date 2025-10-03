find . -path "*/.git" -prune -o -type f -exec sha1sum {} \; > checksums.sha
find . -path "*/.git" -prune -o -type f -exec md5sum {} \; > checksums.md5