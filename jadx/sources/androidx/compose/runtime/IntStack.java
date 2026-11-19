package androidx.compose.runtime;

import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/IntStack;", "", "<init>", "()V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class IntStack {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f8004a = new int[10];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8005b;

    public final int a(int i2) {
        int i3 = this.f8005b - 1;
        return i3 >= 0 ? this.f8004a[i3] : i2;
    }

    public final int b() {
        int[] iArr = this.f8004a;
        int i2 = this.f8005b - 1;
        this.f8005b = i2;
        return iArr[i2];
    }

    public final void c(int i2) {
        int[] iArrCopyOf = this.f8004a;
        if (this.f8005b >= iArrCopyOf.length) {
            iArrCopyOf = Arrays.copyOf(iArrCopyOf, iArrCopyOf.length * 2);
            this.f8004a = iArrCopyOf;
        }
        int i3 = this.f8005b;
        this.f8005b = i3 + 1;
        iArrCopyOf[i3] = i2;
    }
}
