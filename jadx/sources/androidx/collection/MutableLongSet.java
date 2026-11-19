package androidx.collection;

import defpackage.md;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/collection/MutableLongSet;", "Landroidx/collection/LongSet;", "", "initialCapacity", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MutableLongSet extends LongSet {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f3304e;

    public MutableLongSet(int i2) {
        super(null);
        if (i2 >= 0) {
            c(ScatterMapKt.e(i2));
        } else {
            md.n("Capacity must be a positive value.");
            throw null;
        }
    }

    public final int b(int i2) {
        int i3 = this.f3284c;
        int i4 = i2 & i3;
        int i5 = 0;
        while (true) {
            long[] jArr = this.f3282a;
            int i6 = i4 >> 3;
            int i7 = (i4 & 7) << 3;
            long j2 = ((jArr[i6 + 1] << (64 - i7)) & ((-i7) >> 63)) | (jArr[i6] >>> i7);
            long j3 = j2 & ((~j2) << 7) & (-9187201950435737472L);
            if (j3 != 0) {
                return (i4 + (Long.numberOfTrailingZeros(j3) >> 3)) & i3;
            }
            i5 += 8;
            i4 = (i4 + i5) & i3;
        }
    }

    public final void c(int i2) {
        long[] jArr;
        int iMax = i2 > 0 ? Math.max(7, ScatterMapKt.d(i2)) : 0;
        this.f3284c = iMax;
        if (iMax == 0) {
            jArr = ScatterMapKt.f3365a;
        } else {
            int i3 = ((iMax + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i3];
            Arrays.fill(jArr2, 0, i3, -9187201950435737472L);
            jArr = jArr2;
        }
        this.f3282a = jArr;
        int i4 = iMax >> 3;
        long j2 = 255 << ((iMax & 7) << 3);
        jArr[i4] = (jArr[i4] & (~j2)) | j2;
        this.f3304e = ScatterMapKt.a(this.f3284c) - this.d;
        this.f3283b = new long[iMax];
    }

    public MutableLongSet() {
        this(0, 1, null);
    }

    public /* synthetic */ MutableLongSet(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 6 : i2);
    }
}
