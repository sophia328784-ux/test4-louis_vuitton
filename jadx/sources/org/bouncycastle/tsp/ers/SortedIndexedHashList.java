package org.bouncycastle.tsp.ers;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class SortedIndexedHashList {
    private static final Comparator<byte[]> hashComp = new ByteArrayComparator();
    private final LinkedList<IndexedHash> baseList = new LinkedList<>();

    public void add(IndexedHash indexedHash) {
        if (this.baseList.size() == 0 || hashComp.compare(indexedHash.digest, this.baseList.get(0).digest) < 0) {
            this.baseList.addFirst(indexedHash);
            return;
        }
        int i2 = 1;
        while (i2 < this.baseList.size() && hashComp.compare(this.baseList.get(i2).digest, indexedHash.digest) <= 0) {
            i2++;
        }
        int size = this.baseList.size();
        LinkedList<IndexedHash> linkedList = this.baseList;
        if (i2 == size) {
            linkedList.add(indexedHash);
        } else {
            linkedList.add(i2, indexedHash);
        }
    }

    public IndexedHash getFirst() {
        return this.baseList.getFirst();
    }

    public int size() {
        return this.baseList.size();
    }

    public List<IndexedHash> toList() {
        return new ArrayList(this.baseList);
    }
}
