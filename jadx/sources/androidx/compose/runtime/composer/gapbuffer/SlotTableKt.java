package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SlotStorage;
import defpackage.os;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a\u000f\u0010\u0001\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0003"}, d2 = {"", "g", "()V", "runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SlotTableKt {
    public static final int a(int i2, int[] iArr) {
        return iArr[(i2 * 5) + 3];
    }

    public static final int b(ArrayList arrayList, int i2, int i3) {
        int iF = f(arrayList, i2, i3);
        return iF >= 0 ? iF : -(iF + 1);
    }

    public static final int c(int i2, int[] iArr) {
        int i3 = i2 * 5;
        return Integer.bitCount(iArr[i3 + 1] >> 28) + iArr[i3 + 4];
    }

    public static final void d(int i2, int i3, int[] iArr) {
        if (i3 >= 0) {
        }
        int i4 = (i2 * 5) + 1;
        iArr[i4] = i3 | (iArr[i4] & (-67108864));
    }

    public static final SlotTable e(SlotStorage slotStorage) {
        SlotTable slotTable = slotStorage instanceof SlotTable ? (SlotTable) slotStorage : null;
        if (slotTable != null) {
            return slotTable;
        }
        ComposerKt.b("Inconsistent composition");
        os.d();
        return null;
    }

    public static final int f(ArrayList arrayList, int i2, int i3) {
        int size = arrayList.size() - 1;
        int i4 = 0;
        while (i4 <= size) {
            int i5 = (i4 + size) >>> 1;
            int i6 = ((GapAnchor) arrayList.get(i5)).f8187a;
            if (i6 < 0) {
                i6 += i3;
            }
            int iD = Intrinsics.d(i6, i2);
            if (iD < 0) {
                i4 = i5 + 1;
            } else {
                if (iD <= 0) {
                    return i5;
                }
                size = i5 - 1;
            }
        }
        return -(i4 + 1);
    }

    public static final void g() {
        throw new ConcurrentModificationException();
    }
}
