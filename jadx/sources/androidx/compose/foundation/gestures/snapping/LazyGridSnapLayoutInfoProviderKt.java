package androidx.compose.foundation.gestures.snapping;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.grid.LazyGridItemInfo;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyGridSnapLayoutInfoProviderKt {
    public static final int a(LazyGridItemInfo lazyGridItemInfo, Orientation orientation) {
        long j2;
        if (orientation == Orientation.Vertical) {
            long jF = lazyGridItemInfo.f();
            IntOffset.Companion companion = IntOffset.f11012b;
            j2 = jF & BodyPartID.bodyIdMax;
        } else {
            long jF2 = lazyGridItemInfo.f();
            IntOffset.Companion companion2 = IntOffset.f11012b;
            j2 = jF2 >> 32;
        }
        return (int) j2;
    }

    public static final int b(LazyGridItemInfo lazyGridItemInfo, Orientation orientation) {
        return (int) (orientation == Orientation.Vertical ? lazyGridItemInfo.a() & BodyPartID.bodyIdMax : lazyGridItemInfo.a() >> 32);
    }
}
