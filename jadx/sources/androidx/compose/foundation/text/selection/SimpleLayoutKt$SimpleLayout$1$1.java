package androidx.compose.foundation.text.selection;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import defpackage.p6;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.MapsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
final class SimpleLayoutKt$SimpleLayout$1$1 implements MeasurePolicy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SimpleLayoutKt$SimpleLayout$1$1 f6443a = new SimpleLayoutKt$SimpleLayout$1$1();

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        int iMax = 0;
        int iMax2 = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Placeable placeableT = ((Measurable) list.get(i2)).T(j2);
            iMax = Math.max(iMax, placeableT.f9548b);
            iMax2 = Math.max(iMax2, placeableT.f9549c);
            arrayList.add(placeableT);
        }
        return measureScope.V0(iMax, iMax2, MapsKt.c(), new p6(5, arrayList));
    }
}
