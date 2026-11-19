package androidx.compose.runtime.snapshots;

import androidx.collection.MutableLongList;
import defpackage.az;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0016\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0018\u00010\u0002j\u0004\u0018\u0001`\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotIdArrayBuilder;", "", "", "Landroidx/compose/runtime/snapshots/SnapshotIdArray;", "array", "<init>", "([J)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SnapshotIdArrayBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableLongList f8472a;

    public SnapshotIdArrayBuilder(long[] jArr) {
        MutableLongList mutableLongList;
        if (jArr != null) {
            long[] jArrCopyOf = Arrays.copyOf(jArr, jArr.length);
            mutableLongList = new MutableLongList(jArrCopyOf.length);
            int i2 = mutableLongList.f3276b;
            if (i2 < 0) {
                az.v("");
                throw null;
            }
            if (jArrCopyOf.length != 0) {
                int length = jArrCopyOf.length + i2;
                long[] jArr2 = mutableLongList.f3275a;
                if (jArr2.length < length) {
                    mutableLongList.f3275a = Arrays.copyOf(jArr2, Math.max(length, (jArr2.length * 3) / 2));
                }
                long[] jArr3 = mutableLongList.f3275a;
                int i3 = mutableLongList.f3276b;
                if (i2 != i3) {
                    ArraysKt.k(jArrCopyOf.length + i2, jArr3, i2, jArr3, i3);
                }
                ArraysKt.k(i2, jArrCopyOf, 0, jArr3, jArrCopyOf.length);
                mutableLongList.f3276b += jArrCopyOf.length;
            }
        } else {
            mutableLongList = new MutableLongList(0, 1, null);
        }
        this.f8472a = mutableLongList;
    }
}
