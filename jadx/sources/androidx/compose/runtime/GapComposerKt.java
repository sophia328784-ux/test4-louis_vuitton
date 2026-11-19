package androidx.compose.runtime;

import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"runtime"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class GapComposerKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f7993a = new c();

    public static final void a(ArrayList arrayList, int i2, int i3) {
        int iC = c(i2, arrayList);
        if (iC < 0) {
            iC = -(iC + 1);
        }
        while (iC < arrayList.size() && ((Invalidation) arrayList.get(iC)).f8007b < i3) {
        }
    }

    public static final void b(SlotReader slotReader, ArrayList arrayList, int i2) {
        boolean zL = slotReader.l(i2);
        int[] iArr = slotReader.f8200b;
        if (zL) {
            arrayList.add(slotReader.n(i2));
            return;
        }
        int iA = SlotTableKt.a(i2, iArr) + i2;
        for (int i3 = i2 + 1; i3 < iA; i3 += iArr[(i3 * 5) + 3]) {
            b(slotReader, arrayList, i3);
        }
    }

    public static final int c(int i2, List list) {
        int size = list.size() - 1;
        int i3 = 0;
        while (i3 <= size) {
            int i4 = (i3 + size) >>> 1;
            int iD = Intrinsics.d(((Invalidation) list.get(i4)).f8007b, i2);
            if (iD < 0) {
                i3 = i4 + 1;
            } else {
                if (iD <= 0) {
                    return i4;
                }
                size = i4 - 1;
            }
        }
        return -(i3 + 1);
    }

    public static final void d(SlotWriter slotWriter, int i2, Object obj) {
        int iH = slotWriter.h(i2);
        Object[] objArr = slotWriter.f8220c;
        Object obj2 = objArr[iH];
        objArr[iH] = Composer.Companion.f7939a;
        if (obj == obj2) {
            return;
        }
        ComposerKt.a("Slot table is out of sync (expected " + obj + ", got " + obj2 + ')');
    }
}
