package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap;
import androidx.compose.runtime.State;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.IntRange;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f5798c;
    public final /* synthetic */ Object d;

    public /* synthetic */ f(State state, PagerState pagerState) {
        this.f5797b = 4;
        this.d = state;
        this.f5798c = pagerState;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f5797b;
        boolean z = false;
        PagerState pagerState = this.f5798c;
        Object obj = this.d;
        switch (i2) {
            case 0:
                CoroutineScope coroutineScope = (CoroutineScope) obj;
                if (pagerState.b()) {
                    BuildersKt.c(coroutineScope, null, null, new PagerKt$pagerSemantics$performBackwardPaging$1(pagerState, null), 3);
                    z = true;
                }
                return Boolean.valueOf(z);
            case 1:
                CoroutineScope coroutineScope2 = (CoroutineScope) obj;
                if (pagerState.d()) {
                    BuildersKt.c(coroutineScope2, null, null, new PagerKt$pagerSemantics$performForwardPaging$1(pagerState, null), 3);
                    z = true;
                }
                return Boolean.valueOf(z);
            case 2:
                CoroutineScope coroutineScope3 = (CoroutineScope) obj;
                if (pagerState.b()) {
                    BuildersKt.c(coroutineScope3, null, null, new PagerKt$pagerSemantics$performBackwardPaging$1(pagerState, null), 3);
                    z = true;
                }
                return Boolean.valueOf(z);
            case 3:
                CoroutineScope coroutineScope4 = (CoroutineScope) obj;
                if (pagerState.d()) {
                    BuildersKt.c(coroutineScope4, null, null, new PagerKt$pagerSemantics$performForwardPaging$1(pagerState, null), 3);
                    z = true;
                }
                return Boolean.valueOf(z);
            default:
                PagerLayoutIntervalContent pagerLayoutIntervalContent = (PagerLayoutIntervalContent) ((State) obj).getF10755b();
                return new PagerLazyLayoutItemProvider(pagerState, pagerLayoutIntervalContent, new NearestRangeKeyIndexMap((IntRange) pagerState.d.f5753f.getF10755b(), pagerLayoutIntervalContent));
        }
    }

    public /* synthetic */ f(int i2, PagerState pagerState, CoroutineScope coroutineScope) {
        this.f5797b = i2;
        this.f5798c = pagerState;
        this.d = coroutineScope;
    }
}
