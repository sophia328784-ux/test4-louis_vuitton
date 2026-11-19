package androidx.collection;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001\u0082\u0001\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/collection/LongList;", "", "Landroidx/collection/MutableLongList;", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class LongList {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long[] f3275a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3276b;

    public LongList(int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f3275a = i2 == 0 ? LongSetKt.f3285a : new long[i2];
    }

    public final boolean equals(Object obj) {
        if (obj instanceof LongList) {
            LongList longList = (LongList) obj;
            int i2 = longList.f3276b;
            int i3 = this.f3276b;
            if (i2 == i3) {
                long[] jArr = this.f3275a;
                long[] jArr2 = longList.f3275a;
                IntRange intRangeJ = RangesKt.j(0, i3);
                int i4 = intRangeJ.f71951b;
                int i5 = intRangeJ.f71952c;
                if (i4 > i5) {
                    return true;
                }
                while (jArr[i4] == jArr2[i4]) {
                    if (i4 == i5) {
                        return true;
                    }
                    i4++;
                }
                return false;
            }
        }
        return false;
    }

    public final int hashCode() {
        long[] jArr = this.f3275a;
        int i2 = this.f3276b;
        int iHashCode = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            iHashCode += Long.hashCode(jArr[i3]) * 31;
        }
        return iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "[");
        long[] jArr = this.f3275a;
        int i2 = this.f3276b;
        for (int i3 = 0; i3 < i2; i3++) {
            long j2 = jArr[i3];
            if (i3 == -1) {
                sb.append((CharSequence) "...");
                return sb.toString();
            }
            if (i3 != 0) {
                sb.append((CharSequence) ", ");
            }
            sb.append(j2);
        }
        sb.append((CharSequence) "]");
        return sb.toString();
    }
}
