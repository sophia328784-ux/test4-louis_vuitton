package androidx.compose.foundation.pager;

import kotlin.Metadata;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PagerScrollPositionKt {
    public static final long a(PagerState pagerState) {
        return MathKt.d(pagerState.l() * pagerState.q()) + (((long) pagerState.k()) * ((long) pagerState.q()));
    }
}
