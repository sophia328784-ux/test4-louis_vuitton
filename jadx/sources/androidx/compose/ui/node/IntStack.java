package androidx.compose.ui.node;

import java.util.Arrays;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/node/IntStack;", "", "", "initialCapacity", "<init>", "(I)V", "ui"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class IntStack {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f9674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9675b;

    public IntStack(int i2) {
        this.f9674a = new int[i2];
    }

    public final void a(int i2, int i3, int i4) {
        int i5 = this.f9675b;
        int[] iArrCopyOf = this.f9674a;
        int i6 = i5 + 3;
        if (i6 >= iArrCopyOf.length) {
            iArrCopyOf = Arrays.copyOf(iArrCopyOf, iArrCopyOf.length * 2);
            this.f9674a = iArrCopyOf;
        }
        iArrCopyOf[i5] = i2 + i4;
        iArrCopyOf[i5 + 1] = i3 + i4;
        iArrCopyOf[i5 + 2] = i4;
        this.f9675b = i6;
    }

    public final void b(int i2, int i3, int i4, int i5) {
        int i6 = this.f9675b;
        int[] iArrCopyOf = this.f9674a;
        int i7 = i6 + 4;
        if (i7 >= iArrCopyOf.length) {
            iArrCopyOf = Arrays.copyOf(iArrCopyOf, iArrCopyOf.length * 2);
            this.f9674a = iArrCopyOf;
        }
        iArrCopyOf[i6] = i2;
        iArrCopyOf[i6 + 1] = i3;
        iArrCopyOf[i6 + 2] = i4;
        iArrCopyOf[i6 + 3] = i5;
        this.f9675b = i7;
    }

    public final void c(int i2, int i3) {
        if (i2 < i3) {
            int i4 = i2 - 3;
            for (int i5 = i2; i5 < i3; i5 += 3) {
                int[] iArr = this.f9674a;
                int i6 = iArr[i5];
                int i7 = iArr[i3];
                if (i6 < i7 || (i6 == i7 && iArr[i5 + 1] <= iArr[i3 + 1])) {
                    i4 += 3;
                    d(i4, i5);
                }
            }
            d(i4 + 3, i3);
            c(i2, i4);
            c(i4 + 6, i3);
        }
    }

    public final void d(int i2, int i3) {
        int[] iArr = this.f9674a;
        int i4 = iArr[i2];
        iArr[i2] = iArr[i3];
        iArr[i3] = i4;
        int i5 = i2 + 1;
        int i6 = i3 + 1;
        int i7 = iArr[i5];
        iArr[i5] = iArr[i6];
        iArr[i6] = i7;
        int i8 = i2 + 2;
        int i9 = i3 + 2;
        int i10 = iArr[i8];
        iArr[i8] = iArr[i9];
        iArr[i9] = i10;
    }
}
