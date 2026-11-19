package org.bouncycastle.tsp.ers;

import defpackage.fc;
import java.util.ArrayList;
import java.util.List;
import org.bouncycastle.asn1.tsp.PartialHashtree;
import org.bouncycastle.operator.DigestCalculator;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class BinaryTreeRootCalculator implements ERSRootNodeCalculator {
    private List<List<byte[]>> tree;

    @Override // org.bouncycastle.tsp.ers.ERSRootNodeCalculator
    public PartialHashtree[] computePathToRoot(DigestCalculator digestCalculator, PartialHashtree partialHashtree, int i2) {
        List<byte[]> list;
        int i3;
        ArrayList arrayList = new ArrayList();
        byte[] bArrComputeNodeHash = ERSUtil.computeNodeHash(digestCalculator, partialHashtree);
        arrayList.add(partialHashtree);
        int i4 = 0;
        while (i4 < this.tree.size() - 1) {
            if (i2 == this.tree.get(i4).size() - 1) {
                while (true) {
                    int i5 = i4 + 1;
                    if (!Arrays.areEqual(bArrComputeNodeHash, (byte[]) fc.e(1, this.tree.get(i5)))) {
                        break;
                    }
                    i2 = this.tree.get(i5).size() - 1;
                    i4 = i5;
                }
            }
            int i6 = i2 & 1;
            List<List<byte[]>> list2 = this.tree;
            if (i6 == 0) {
                list = list2.get(i4);
                i3 = i2 + 1;
            } else {
                list = list2.get(i4);
                i3 = i2 - 1;
            }
            byte[] bArr = list.get(i3);
            arrayList.add(new PartialHashtree(bArr));
            bArrComputeNodeHash = ERSUtil.calculateBranchHash(digestCalculator, bArrComputeNodeHash, bArr);
            i2 /= 2;
            i4++;
        }
        return (PartialHashtree[]) arrayList.toArray(new PartialHashtree[0]);
    }

    @Override // org.bouncycastle.tsp.ers.ERSRootNodeCalculator
    public byte[] computeRootHash(DigestCalculator digestCalculator, PartialHashtree[] partialHashtreeArr) {
        ArrayList arrayList;
        SortedHashList sortedHashList = new SortedHashList();
        for (PartialHashtree partialHashtree : partialHashtreeArr) {
            sortedHashList.add(ERSUtil.computeNodeHash(digestCalculator, partialHashtree));
        }
        List<byte[]> list = sortedHashList.toList();
        ArrayList arrayList2 = new ArrayList();
        this.tree = arrayList2;
        arrayList2.add(list);
        if (list.size() > 1) {
            while (true) {
                arrayList = new ArrayList((list.size() / 2) + 1);
                for (int i2 = 0; i2 <= list.size() - 2; i2 += 2) {
                    arrayList.add(ERSUtil.calculateBranchHash(digestCalculator, list.get(i2), list.get(i2 + 1)));
                }
                if (list.size() % 2 == 1) {
                    arrayList.add(list.get(list.size() - 1));
                }
                this.tree.add(arrayList);
                if (arrayList.size() <= 1) {
                    break;
                }
                list = arrayList;
            }
            list = arrayList;
        }
        return list.get(0);
    }

    @Override // org.bouncycastle.tsp.ers.ERSRootNodeCalculator
    public byte[] recoverRootHash(DigestCalculator digestCalculator, PartialHashtree[] partialHashtreeArr) {
        byte[] bArrComputeNodeHash = ERSUtil.computeNodeHash(digestCalculator, partialHashtreeArr[0]);
        for (int i2 = 1; i2 < partialHashtreeArr.length; i2++) {
            bArrComputeNodeHash = ERSUtil.calculateBranchHash(digestCalculator, bArrComputeNodeHash, ERSUtil.computeNodeHash(digestCalculator, partialHashtreeArr[i2]));
        }
        return bArrComputeNodeHash;
    }
}
