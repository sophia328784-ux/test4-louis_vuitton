package androidx.media3.extractor;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Longs;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class ChunkIndexMerger {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f16114a = new LinkedHashMap();

    public final void a(ChunkIndex chunkIndex) {
        long[] jArr = chunkIndex.f16112e;
        if (jArr.length > 0) {
            Long lValueOf = Long.valueOf(jArr[0]);
            LinkedHashMap linkedHashMap = this.f16114a;
            if (linkedHashMap.containsKey(lValueOf)) {
                return;
            }
            linkedHashMap.put(Long.valueOf(chunkIndex.f16112e[0]), chunkIndex);
        }
    }

    public final ChunkIndex b() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (ChunkIndex chunkIndex : this.f16114a.values()) {
            arrayList.add(chunkIndex.f16110b);
            arrayList2.add(chunkIndex.f16111c);
            arrayList3.add(chunkIndex.d);
            arrayList4.add(chunkIndex.f16112e);
        }
        int[][] iArr = (int[][]) arrayList.toArray(new int[arrayList.size()][]);
        long length = 0;
        for (int[] iArr2 : iArr) {
            length += (long) iArr2.length;
        }
        int i2 = (int) length;
        Preconditions.d(length, "the total number of elements (%s) in the arrays must fit in an int", length == ((long) i2));
        int[] iArr3 = new int[i2];
        int length2 = 0;
        for (int[] iArr4 : iArr) {
            System.arraycopy(iArr4, 0, iArr3, length2, iArr4.length);
            length2 += iArr4.length;
        }
        return new ChunkIndex(iArr3, Longs.a((long[][]) arrayList2.toArray(new long[arrayList2.size()][])), Longs.a((long[][]) arrayList3.toArray(new long[arrayList3.size()][])), Longs.a((long[][]) arrayList4.toArray(new long[arrayList4.size()][])));
    }
}
