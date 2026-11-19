package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.DensityKt;
import defpackage.e90;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CoroutineScopeKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyListStateKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LazyListMeasureResult f5255a = new LazyListMeasureResult(null, 0, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, new MeasureResult() { // from class: androidx.compose.foundation.lazy.LazyListStateKt$EmptyLazyListMeasureResult$1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Map f5256a = MapsKt.c();

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
        public final Map getF5256a() {
            return this.f5256a;
        }

        @Override // androidx.compose.ui.layout.MeasureResult
        public final void k() {
        }
    }, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, CoroutineScopeKt.a(EmptyCoroutineContext.f71840b), DensityKt.b(), ConstraintsKt.b(0, 0, 0, 0, 15), EmptyList.f71768b, 0, 0, 0, false, Orientation.Vertical, 0, 0, null);

    public static final LazyListState a(int i2, Composer composer, int i3) {
        int i4 = 1;
        if ((i3 & 1) != 0) {
            i2 = 0;
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object[] objArr = new Object[0];
        LazyListState.y.getClass();
        SaverKt$Saver$1 saverKt$Saver$1 = LazyListState.z;
        boolean zD = composer.d(i2) | composer.d(0);
        Object objX = composer.x();
        if (zD || objX == Composer.Companion.f7939a) {
            objX = new e90(i2, i4);
            composer.q(objX);
        }
        return (LazyListState) RememberSaveableKt.b(objArr, saverKt$Saver$1, (Function0) objX, composer, 0);
    }
}
