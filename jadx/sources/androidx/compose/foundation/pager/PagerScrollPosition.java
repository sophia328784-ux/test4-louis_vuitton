package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.LazyLayoutNearestRangeState;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/foundation/pager/PagerScrollPosition;", "", "", "currentPage", "", "currentPageOffsetFraction", "Landroidx/compose/foundation/pager/PagerState;", "state", "<init>", "(IFLandroidx/compose/foundation/pager/PagerState;)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PagerScrollPosition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PagerState f5749a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableIntState f5750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableFloatState f5751c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f5752e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LazyLayoutNearestRangeState f5753f;

    public PagerScrollPosition(int i2, float f2, PagerState pagerState) {
        this.f5749a = pagerState;
        this.f5750b = SnapshotIntStateKt.a(i2);
        this.f5751c = PrimitiveSnapshotStateKt.a(f2);
        this.f5753f = new LazyLayoutNearestRangeState(i2, 30, 100);
    }

    public /* synthetic */ PagerScrollPosition(int i2, float f2, PagerState pagerState, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i2, (i3 & 2) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f2, pagerState);
    }
}
