package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import com.google.ar.core.ImageMetadata;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScopeKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PagerStateKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f5784a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PagerStateKt$UnitDensity$1 f5785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final PagerMeasureResult f5786c;

    static {
        Dp.Companion companion = Dp.f11004c;
        f5784a = 56.0f;
        PagerStateKt$UnitDensity$1 pagerStateKt$UnitDensity$1 = new PagerStateKt$UnitDensity$1();
        f5785b = pagerStateKt$UnitDensity$1;
        f5786c = new PagerMeasureResult(EmptyList.f71768b, 0, 0, 0, Orientation.Horizontal, 0, 0, false, 0, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, false, SnapPosition.Start.f4877a, new MeasureResult() { // from class: androidx.compose.foundation.pager.PagerStateKt$EmptyLayoutInfo$1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Map f5787a = MapsKt.c();

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
            public final Map getF5787a() {
                return this.f5787a;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final void k() {
            }
        }, false, null, null, CoroutineScopeKt.a(EmptyCoroutineContext.f71840b), pagerStateKt$UnitDensity$1, ConstraintsKt.b(0, 0, 0, 0, 15), ImageMetadata.HOT_PIXEL_MODE, null);
    }

    public static final long a(PagerLayoutInfo pagerLayoutInfo, int i2) {
        long f5740b = (((((long) i2) * ((long) (pagerLayoutInfo.getF5740b() + pagerLayoutInfo.getF5741c()))) + ((long) pagerLayoutInfo.e())) + ((long) pagerLayoutInfo.getD())) - ((long) pagerLayoutInfo.getF5741c());
        int iA = (int) (pagerLayoutInfo.getF5742e() == Orientation.Horizontal ? pagerLayoutInfo.a() >> 32 : pagerLayoutInfo.a() & BodyPartID.bodyIdMax);
        long jD = f5740b - ((long) (iA - RangesKt.d(pagerLayoutInfo.getO().d(iA, pagerLayoutInfo.getF5740b(), pagerLayoutInfo.e(), pagerLayoutInfo.getD()), 0, iA)));
        if (jD < 0) {
            return 0L;
        }
        return jD;
    }

    public static final PagerState b(final int i2, final Function0 function0, Composer composer, int i3, int i4) {
        boolean z = true;
        if ((i4 & 1) != 0) {
            i2 = 0;
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object[] objArr = new Object[0];
        DefaultPagerState.I.getClass();
        SaverKt$Saver$1 saverKt$Saver$1 = DefaultPagerState.J;
        boolean z2 = ((((i3 & 14) ^ 6) > 4 && composer.d(i2)) || (i3 & 6) == 4) | ((((i3 & 112) ^ 48) > 32 && composer.c(Call.Parameters.DEFAULT_CAMERA_ZOOM)) || (i3 & 48) == 32);
        if ((((i3 & 896) ^ KyberEngine.KyberPolyBytes) <= 256 || !composer.K(function0)) && (i3 & KyberEngine.KyberPolyBytes) != 256) {
            z = false;
        }
        boolean z3 = z2 | z;
        Object objX = composer.x();
        if (z3 || objX == Composer.Companion.f7939a) {
            objX = new Function0() { // from class: androidx.compose.foundation.pager.g
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    float f2 = PagerStateKt.f5784a;
                    return new DefaultPagerState(i2, Call.Parameters.DEFAULT_CAMERA_ZOOM, function0);
                }
            };
            composer.q(objX);
        }
        DefaultPagerState defaultPagerState = (DefaultPagerState) RememberSaveableKt.b(objArr, saverKt$Saver$1, (Function0) objX, composer, 0);
        ((SnapshotMutableStateImpl) defaultPagerState.H).setValue(function0);
        return defaultPagerState;
    }
}
