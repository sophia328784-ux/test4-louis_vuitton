package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5795b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f5796c;
    public final /* synthetic */ Object d;

    public /* synthetic */ e(Object obj, Object obj2, int i2) {
        this.f5795b = i2;
        this.f5796c = obj;
        this.d = obj2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f5795b;
        Object obj2 = this.f5796c;
        switch (i2) {
            case 0:
                ((Function2) obj2).invoke(Integer.valueOf(((LazyLayoutPrefetchState.PrefetchResultScope) obj).getF5547a()), Integer.valueOf(((PagerCacheWindowScope) this.d).o().f5740b));
                break;
            default:
                float fFloatValue = ((Float) obj).floatValue();
                PagerState pagerState = ((PagerWrapperFlingBehavior) obj2).f5789b;
                ((SnapshotMutableIntStateImpl) pagerState.q).i(pagerState.j(pagerState.k() + MathKt.c(pagerState.q() != 0 ? fFloatValue / pagerState.q() : Call.Parameters.DEFAULT_CAMERA_ZOOM)));
                break;
        }
        return Unit.f71739a;
    }
}
