package androidx.compose.foundation.pager;

import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function2 {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        DefaultPagerState defaultPagerState = (DefaultPagerState) obj2;
        DefaultPagerState.Companion companion = DefaultPagerState.I;
        return CollectionsKt.P(Integer.valueOf(defaultPagerState.k()), Float.valueOf(RangesKt.c(defaultPagerState.l(), -0.5f, 0.5f)), Integer.valueOf(defaultPagerState.o()));
    }
}
