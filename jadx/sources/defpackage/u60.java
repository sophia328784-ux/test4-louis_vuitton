package defpackage;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KProperty;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u60 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80240b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f80241c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80242e;

    public /* synthetic */ u60(float f2, ClosedFloatingPointRange closedFloatingPointRange, int i2) {
        this.f80241c = f2;
        this.f80242e = closedFloatingPointRange;
        this.d = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f80240b;
        int i3 = this.d;
        Object obj2 = this.f80242e;
        float f2 = this.f80241c;
        switch (i2) {
            case 0:
                PagerState pagerState = (PagerState) obj2;
                Density density = (Density) obj;
                density.getClass();
                int iK = pagerState.k();
                float fL = pagerState.l();
                float fAbs = (Math.abs(fL) * ((pagerState.k() + ((int) Math.signum(fL))) - iK)) + iK;
                int i4 = i3 - 1;
                if (i4 < 0) {
                    i4 = 0;
                }
                return new IntOffset(((long) ((int) (density.B0(f2) * RangesKt.c(fAbs, Call.Parameters.DEFAULT_CAMERA_ZOOM, i4)))) << 32);
            default:
                ClosedFloatingPointRange closedFloatingPointRange = (ClosedFloatingPointRange) obj2;
                ProgressBarRangeInfo progressBarRangeInfo = new ProgressBarRangeInfo(((Number) RangesKt.f(Float.valueOf(f2), closedFloatingPointRange)).floatValue(), closedFloatingPointRange, i3);
                KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10333c;
                KProperty kProperty = SemanticsPropertiesKt.f10359a[1];
                semanticsPropertyKey.getClass();
                ((SemanticsPropertyReceiver) obj).a(semanticsPropertyKey, progressBarRangeInfo);
                return Unit.f71739a;
        }
    }

    public /* synthetic */ u60(int i2, float f2, PagerState pagerState) {
        this.f80242e = pagerState;
        this.d = i2;
        this.f80241c = f2;
    }
}
