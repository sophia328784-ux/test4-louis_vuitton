package androidx.compose.ui.input.pointer.util;

import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/input/pointer/util/PointerIdArray;", "", "<init>", "()V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PointerIdArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f9401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long[] f9402b = new long[2];

    public final void a(long j2) {
        if (b(j2)) {
            return;
        }
        int i2 = this.f9401a;
        long[] jArrCopyOf = this.f9402b;
        if (i2 >= jArrCopyOf.length) {
            jArrCopyOf = Arrays.copyOf(jArrCopyOf, Math.max(i2 + 1, jArrCopyOf.length * 2));
            this.f9402b = jArrCopyOf;
        }
        jArrCopyOf[i2] = j2;
        if (i2 >= this.f9401a) {
            this.f9401a = i2 + 1;
        }
    }

    public final boolean b(long j2) {
        int i2 = this.f9401a;
        for (int i3 = 0; i3 < i2; i3++) {
            if (this.f9402b[i3] == j2) {
                return true;
            }
        }
        return false;
    }

    public final void c(long j2) {
        int i2 = this.f9401a;
        int i3 = 0;
        while (i3 < i2) {
            if (j2 == this.f9402b[i3]) {
                int i4 = this.f9401a - 1;
                while (i3 < i4) {
                    long[] jArr = this.f9402b;
                    int i5 = i3 + 1;
                    jArr[i3] = jArr[i5];
                    i3 = i5;
                }
                this.f9401a--;
                return;
            }
            i3++;
        }
    }
}
