package com.google.common.primitives;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public final class ImmutableIntArray implements Serializable {
    public static final ImmutableIntArray d = new ImmutableIntArray(new int[0]);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f33774b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f33775c;

    public ImmutableIntArray(int[] iArr) {
        int length = iArr.length;
        this.f33774b = iArr;
        this.f33775c = length;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0013 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:13:0x0015 A[RETURN] */
    public final boolean a(int i2) {
        int i3 = 0;
        while (i3 < this.f33775c) {
            if (this.f33774b[i3] == i2) {
                if (i3 >= 0) {
                    return true;
                }
                return false;
            }
            i3++;
        }
        i3 = -1;
        if (i3 >= 0) {
            return true;
        }
        return false;
    }

    public final int b(int i2) {
        Preconditions.j(i2, this.f33775c);
        return this.f33774b[i2];
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ImmutableIntArray) {
            ImmutableIntArray immutableIntArray = (ImmutableIntArray) obj;
            int i2 = immutableIntArray.f33775c;
            int i3 = this.f33775c;
            if (i3 == i2) {
                for (int i4 = 0; i4 < i3; i4++) {
                    if (b(i4) == immutableIntArray.b(i4)) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = 1;
        for (int i2 = 0; i2 < this.f33775c; i2++) {
            iHashCode = (iHashCode * 31) + Integer.hashCode(this.f33774b[i2]);
        }
        return iHashCode;
    }

    public Object readResolve() {
        return this.f33775c == 0 ? d : this;
    }

    public final String toString() {
        int i2 = this.f33775c;
        if (i2 == 0) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(i2 * 5);
        sb.append('[');
        int[] iArr = this.f33774b;
        sb.append(iArr[0]);
        for (int i3 = 1; i3 < i2; i3++) {
            sb.append(", ");
            sb.append(iArr[i3]);
        }
        sb.append(']');
        return sb.toString();
    }

    public Object writeReplace() {
        int[] iArr = this.f33774b;
        int length = iArr.length;
        int i2 = this.f33775c;
        return i2 < length ? new ImmutableIntArray(Arrays.copyOfRange(iArr, 0, i2)) : this;
    }
}
