package org.bouncycastle.tsp.ers;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class SortedHashList {
    private static final Comparator<byte[]> hashComp = new ByteArrayComparator();
    private final LinkedList<byte[]> baseList = new LinkedList<>();

    public void add(byte[] bArr) {
        int size = this.baseList.size();
        LinkedList<byte[]> linkedList = this.baseList;
        if (size == 0) {
            linkedList.addFirst(bArr);
            return;
        }
        if (hashComp.compare(bArr, linkedList.get(0)) < 0) {
            this.baseList.addFirst(bArr);
            return;
        }
        int i2 = 1;
        while (i2 < this.baseList.size() && hashComp.compare(this.baseList.get(i2), bArr) <= 0) {
            i2++;
        }
        int size2 = this.baseList.size();
        LinkedList<byte[]> linkedList2 = this.baseList;
        if (i2 == size2) {
            linkedList2.add(bArr);
        } else {
            linkedList2.add(i2, bArr);
        }
    }

    public byte[] getFirst() {
        return this.baseList.getFirst();
    }

    public int size() {
        return this.baseList.size();
    }

    public List<byte[]> toList() {
        return new ArrayList(this.baseList);
    }
}
