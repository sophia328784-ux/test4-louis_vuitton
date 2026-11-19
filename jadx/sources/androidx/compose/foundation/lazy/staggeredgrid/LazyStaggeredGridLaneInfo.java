package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArrayDeque;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;", "", "<init>", "()V", "SpannedItem", "Companion", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class LazyStaggeredGridLaneInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f5609b = new int[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayDeque f5610c = new ArrayDeque();

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo$Companion;", "", "", "MaxCapacity", "I", "LaneUnset", "LaneFullSpan", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo$SpannedItem;", "", "", "index", "", "gaps", "<init>", "(I[I)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class SpannedItem {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5611a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int[] f5612b;

        public SpannedItem(int i2, int[] iArr) {
            this.f5611a = i2;
            this.f5612b = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public static int h(int i2, List list) {
        int size = list.size() - 1;
        int i3 = 0;
        while (i3 <= size) {
            int i4 = (i3 + size) >>> 1;
            int i5 = ((SpannedItem) list.get(i4)).f5611a - i2;
            if (i5 < 0) {
                i3 = i4 + 1;
            } else {
                if (i5 <= 0) {
                    return i4;
                }
                size = i4 - 1;
            }
        }
        return -(i3 + 1);
    }

    public final boolean a(int i2, int i3) {
        int iF = f(i2);
        return iF == i3 || iF == -1 || iF == -2;
    }

    public final void b(int i2, int i3) {
        if (i2 > 131072) {
            InlineClassHelperKt.a("Requested item capacity " + i2 + " is larger than max supported: 131072!");
        }
        int[] iArr = this.f5609b;
        if (iArr.length < i2) {
            int length = iArr.length;
            while (length < i2) {
                length *= 2;
            }
            int[] iArr2 = new int[length];
            ArraysKt.m(i3, 0, 12, this.f5609b, iArr2);
            this.f5609b = iArr2;
        }
    }

    public final void c(int i2) {
        ArrayDeque arrayDeque;
        int i3 = this.f5608a;
        int i4 = i2 - i3;
        if (i4 < 0 || i4 >= 131072) {
            int iMax = Math.max(i2 - (this.f5609b.length / 2), 0);
            this.f5608a = iMax;
            int i5 = iMax - i3;
            int[] iArr = this.f5609b;
            if (i5 >= 0) {
                if (i5 < iArr.length) {
                    ArraysKt.i(0, i5, iArr.length, iArr, iArr);
                }
                int[] iArr2 = this.f5609b;
                Arrays.fill(iArr2, Math.max(0, iArr2.length - i5), this.f5609b.length, 0);
            } else {
                int i6 = -i5;
                if (iArr.length + i6 < 131072) {
                    b(iArr.length + i6 + 1, i6);
                } else {
                    if (i6 < iArr.length) {
                        ArraysKt.i(i6, 0, iArr.length - i6, iArr, iArr);
                    }
                    int[] iArr3 = this.f5609b;
                    Arrays.fill(iArr3, 0, Math.min(iArr3.length, i6), 0);
                }
            }
        } else {
            b(i4 + 1, 0);
        }
        while (true) {
            arrayDeque = this.f5610c;
            if (arrayDeque.isEmpty() || ((SpannedItem) arrayDeque.first()).f5611a >= this.f5608a) {
                break;
            } else {
                arrayDeque.removeFirst();
            }
        }
        while (!arrayDeque.isEmpty() && ((SpannedItem) arrayDeque.last()).f5611a > this.f5608a + this.f5609b.length) {
            arrayDeque.removeLast();
        }
    }

    public final int d(int i2, int i3) {
        do {
            i2--;
            if (-1 >= i2) {
                return -1;
            }
        } while (!a(i2, i3));
        return i2;
    }

    public final int[] e(int i2) {
        ArrayDeque arrayDeque = this.f5610c;
        SpannedItem spannedItem = (SpannedItem) CollectionsKt.G(h(i2, arrayDeque), arrayDeque);
        if (spannedItem != null) {
            return spannedItem.f5612b;
        }
        return null;
    }

    public final int f(int i2) {
        int i3 = this.f5608a;
        if (i2 < i3) {
            return -1;
        }
        int[] iArr = this.f5609b;
        if (i2 >= iArr.length + i3) {
            return -1;
        }
        return iArr[i2 - i3] - 1;
    }

    public final void g() {
        ArraysKt.s(0, 0, 6, this.f5609b);
        this.f5610c.clear();
    }

    public final void i(int i2, int i3) {
        if (i2 < 0) {
            InlineClassHelperKt.a("Negative lanes are not supported");
        }
        c(i2);
        this.f5609b[i2 - this.f5608a] = i3 + 1;
    }
}
