package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;
import kotlin.Metadata;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PagerLayoutInfoKt {
    public static final int a(PagerLayoutInfo pagerLayoutInfo) {
        return (int) (pagerLayoutInfo.c() == Orientation.Vertical ? pagerLayoutInfo.a() & BodyPartID.bodyIdMax : pagerLayoutInfo.a() >> 32);
    }
}
