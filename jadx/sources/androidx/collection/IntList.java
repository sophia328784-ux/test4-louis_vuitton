package androidx.collection;

import defpackage.az;
import defpackage.zy0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001\u0082\u0001\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/collection/IntList;", "", "Landroidx/collection/MutableIntList;", "collection"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class IntList {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f3255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3256b;

    public IntList(int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f3255a = i2 == 0 ? IntSetKt.f3266a : new int[i2];
    }

    public static int a(IntList intList, int i2) {
        int i3 = intList.f3256b;
        intList.getClass();
        int i4 = 0;
        if (i3 <= 0 || i3 > intList.f3256b) {
            az.v("");
            return 0;
        }
        int i5 = i3 - 1;
        while (i4 <= i5) {
            int i6 = (i4 + i5) >>> 1;
            int i7 = intList.f3255a[i6];
            if (i7 < i2) {
                i4 = i6 + 1;
            } else {
                if (i7 <= i2) {
                    return i6;
                }
                i5 = i6 - 1;
            }
        }
        return -(i4 + 1);
    }

    public final int b(int i2) {
        if (i2 >= 0 && i2 < this.f3256b) {
            return this.f3255a[i2];
        }
        az.v("Index must be between 0 and size");
        return 0;
    }

    public final int c() {
        int i2 = this.f3256b;
        if (i2 != 0) {
            return this.f3255a[i2 - 1];
        }
        zy0.c("IntList is empty.");
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof IntList) {
            IntList intList = (IntList) obj;
            int i2 = intList.f3256b;
            int i3 = this.f3256b;
            if (i2 == i3) {
                int[] iArr = this.f3255a;
                int[] iArr2 = intList.f3255a;
                IntRange intRangeJ = RangesKt.j(0, i3);
                int i4 = intRangeJ.f71951b;
                int i5 = intRangeJ.f71952c;
                if (i4 > i5) {
                    return true;
                }
                while (iArr[i4] == iArr2[i4]) {
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
        int[] iArr = this.f3255a;
        int i2 = this.f3256b;
        int iHashCode = 0;
        for (int i3 = 0; i3 < i2; i3++) {
            iHashCode += Integer.hashCode(iArr[i3]) * 31;
        }
        return iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "[");
        int[] iArr = this.f3255a;
        int i2 = this.f3256b;
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = iArr[i3];
            if (i3 == -1) {
                sb.append((CharSequence) "...");
                return sb.toString();
            }
            if (i3 != 0) {
                sb.append((CharSequence) ", ");
            }
            sb.append(i4);
        }
        sb.append((CharSequence) "]");
        return sb.toString();
    }
}
