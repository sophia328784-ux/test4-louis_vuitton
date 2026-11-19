package androidx.compose.foundation.pager;

import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt;
import androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.pager.PageInfo;
import androidx.compose.foundation.pager.PagerLayoutInfoKt;
import androidx.compose.foundation.pager.PagerMeasureResult;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.ni0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/foundation/pager/PagerDefaults;", "", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class PagerDefaults {
    public static TargetedFlingBehavior a(final PagerState pagerState, final PagerSnapDistanceMaxPages pagerSnapDistanceMaxPages, TweenSpec tweenSpec, Composer composer, int i2, int i3) {
        if ((i3 & 2) != 0) {
            pagerSnapDistanceMaxPages = PagerSnapDistance.Companion.a();
        }
        DecayAnimationSpec decayAnimationSpecA = SplineBasedFloatDecayAnimationSpec_androidKt.a(composer);
        boolean z = true;
        AnimationSpec animationSpecB = tweenSpec;
        if ((i3 & 8) != 0) {
            Rect rect = VisibilityThresholdsKt.f4089a;
            animationSpecB = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, Float.valueOf(1.0f));
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object obj = (Density) composer.k(CompositionLocalsKt.f10031h);
        LayoutDirection layoutDirection = (LayoutDirection) composer.k(CompositionLocalsKt.n);
        boolean zK = ((((i2 & 14) ^ 6) > 4 && composer.K(pagerState)) || (i2 & 6) == 4) | composer.K(decayAnimationSpecA) | composer.K(animationSpecB);
        if ((((i2 & 112) ^ 48) <= 32 || !composer.K(pagerSnapDistanceMaxPages)) && (i2 & 48) != 32) {
            z = false;
        }
        boolean zK2 = zK | z | composer.K(obj) | composer.d(layoutDirection.ordinal());
        Object objX = composer.x();
        if (zK2 || objX == Composer.Companion.f7939a) {
            final ni0 ni0Var = new ni0(pagerState, layoutDirection, 5);
            SnapLayoutInfoProvider snapLayoutInfoProvider = new SnapLayoutInfoProvider() { // from class: androidx.compose.foundation.gestures.snapping.PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1
                @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
                public final float a(float f2) {
                    PagerState pagerState2 = pagerState;
                    SnapPosition o = pagerState2.n().getO();
                    List f5739a = pagerState2.n().getF5739a();
                    int size = f5739a.size();
                    float f3 = Float.POSITIVE_INFINITY;
                    float f4 = Float.NEGATIVE_INFINITY;
                    for (int i4 = 0; i4 < size; i4++) {
                        PageInfo pageInfo = (PageInfo) f5739a.get(i4);
                        int iA = PagerLayoutInfoKt.a(pagerState2.n());
                        int iE = pagerState2.n().e();
                        int d = pagerState2.n().getD();
                        int f5740b = pagerState2.n().getF5740b();
                        int m = pageInfo.getM();
                        pagerState2.o();
                        float fD = m - o.d(iA, f5740b, iE, d);
                        if (fD <= Call.Parameters.DEFAULT_CAMERA_ZOOM && fD > f4) {
                            f4 = fD;
                        }
                        if (fD >= Call.Parameters.DEFAULT_CAMERA_ZOOM && fD < f3) {
                            f3 = fD;
                        }
                    }
                    if (f4 == Float.NEGATIVE_INFINITY) {
                        f4 = f3;
                    }
                    if (f3 == Float.POSITIVE_INFINITY) {
                        f3 = f4;
                    }
                    if (!pagerState2.d()) {
                        if (PagerSnapLayoutInfoProviderKt.b(pagerState2, f2)) {
                            f4 = 0.0f;
                            f3 = 0.0f;
                        } else {
                            f3 = 0.0f;
                        }
                    }
                    if (!pagerState2.b()) {
                        f4 = 0.0f;
                        if (!PagerSnapLayoutInfoProviderKt.b(pagerState2, f2)) {
                            f3 = 0.0f;
                        }
                    }
                    Pair pair = new Pair(Float.valueOf(f4), Float.valueOf(f3));
                    float fFloatValue = ((Number) pair.f71705b).floatValue();
                    float fFloatValue2 = ((Number) pair.f71706c).floatValue();
                    float fFloatValue3 = ((Number) ni0Var.A(Float.valueOf(f2), Float.valueOf(fFloatValue), Float.valueOf(fFloatValue2))).floatValue();
                    if (fFloatValue3 != fFloatValue && fFloatValue3 != fFloatValue2 && fFloatValue3 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        InlineClassHelperKt.c("Final Snapping Offset Should Be one of " + fFloatValue + ", " + fFloatValue2 + " or 0.0");
                    }
                    return (fFloatValue3 == Float.POSITIVE_INFINITY || fFloatValue3 == Float.NEGATIVE_INFINITY) ? Call.Parameters.DEFAULT_CAMERA_ZOOM : fFloatValue3;
                }

                @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
                public final float b(float f2, float f3) {
                    PagerState pagerState2 = pagerState;
                    int iP = pagerState2.p();
                    MutableState mutableState = pagerState2.m;
                    int i4 = ((PagerMeasureResult) ((SnapshotMutableStateImpl) mutableState).getF10755b()).f5741c + iP;
                    if (i4 == 0) {
                        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    }
                    int i5 = pagerState2.f5760e;
                    if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        i5++;
                    }
                    int iD = RangesKt.d(((int) (f3 / i4)) + i5, 0, pagerState2.o());
                    pagerState2.p();
                    int i6 = ((PagerMeasureResult) ((SnapshotMutableStateImpl) mutableState).getF10755b()).f5741c;
                    int iAbs = Math.abs((RangesKt.d(pagerSnapDistanceMaxPages.a(i5, iD), 0, pagerState2.o()) - i5) * i4) - i4;
                    int i7 = iAbs >= 0 ? iAbs : 0;
                    if (i7 == 0) {
                        return i7;
                    }
                    return Math.signum(f2) * i7;
                }
            };
            float f2 = SnapFlingBehaviorKt.f4867a;
            Object snapFlingBehavior = new SnapFlingBehavior(snapLayoutInfoProvider, decayAnimationSpecA, animationSpecB);
            composer.q(snapFlingBehavior);
            objX = snapFlingBehavior;
        }
        return (TargetedFlingBehavior) objX;
    }

    public static NestedScrollConnection b(PagerState pagerState, Orientation orientation, Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean z = (((i2 & 14) ^ 6) > 4 && composer.K(pagerState)) || (i2 & 6) == 4;
        Object objX = composer.x();
        if (z || objX == Composer.Companion.f7939a) {
            objX = new DefaultPagerNestedScrollConnection(pagerState, orientation);
            composer.q(objX);
        }
        return (DefaultPagerNestedScrollConnection) objX;
    }
}
