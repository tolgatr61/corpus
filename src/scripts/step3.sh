for i in $(cat query.txt); do grep "^$i " df.txt; done | awk '{print $1, log(3655/$2)}' | awk '{print $2}' > query.tfidf