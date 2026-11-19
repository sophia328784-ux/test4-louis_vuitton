package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.IntSize;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CoroutineScopeKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyStaggeredGridMeasureResultKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LazyStaggeredGridMeasureResult f5641a;

    static {
        int[] iArr = new int[0];
        MeasureResult measureResult = new MeasureResult() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureResultKt$EmptyLazyStaggeredGridLayoutInfo$1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Map f5642a = MapsKt.c();

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: getHeight */
            public final int getF9727b() {
                return 0;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: getWidth */
            public final int getF9726a() {
                return 0;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            /* JADX INFO: renamed from: j, reason: from getter */
            public final Map getF5642a() {
                return this.f5642a;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final void k() {
            }
        };
        EmptyList emptyList = EmptyList.f71768b;
        IntSize.f11020b.getClass();
        f5641a = new LazyStaggeredGridMeasureResult(iArr, iArr, Call.Parameters.DEFAULT_CAMERA_ZOOM, measureResult, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, false, false, new LazyStaggeredGridSlots(iArr, iArr), new LazyStaggeredGridSpanProvider(new MutableIntervalList()), DensityKt.b(), 0, emptyList, 0L, 0, 0, 0, 0, 0, CoroutineScopeKt.a(EmptyCoroutineContext.f71840b), null);
    }
}
