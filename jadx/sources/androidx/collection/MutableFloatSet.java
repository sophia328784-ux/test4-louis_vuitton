package androidx.collection;

import defpackage.md;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/collection/MutableFloatSet;", "Landroidx/collection/FloatSet;", "", "initialCapacity", "<init>", "(I)V", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MutableFloatSet extends FloatSet {
    public MutableFloatSet(int i2) {
        long[] jArr;
        super(null);
        if (i2 < 0) {
            md.n("Capacity must be a positive value.");
            throw null;
        }
        int iE = ScatterMapKt.e(i2);
        int iMax = iE > 0 ? Math.max(7, ScatterMapKt.d(iE)) : 0;
        this.f3245c = iMax;
        if (iMax == 0) {
            jArr = ScatterMapKt.f3365a;
        } else {
            int i3 = ((iMax + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i3];
            Arrays.fill(jArr2, 0, i3, -9187201950435737472L);
            jArr = jArr2;
        }
        this.f3243a = jArr;
        int i4 = iMax >> 3;
        long j2 = 255 << ((iMax & 7) << 3);
        jArr[i4] = (jArr[i4] & (~j2)) | j2;
        this.f3244b = new float[iMax];
    }

    public MutableFloatSet() {
        this(0, 1, null);
    }

    public /* synthetic */ MutableFloatSet(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 6 : i2);
    }
}
