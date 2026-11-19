package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.OverscrollKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.c70;
import defpackage.mj;
import defpackage.rv;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class LazyStaggeredGridDslKt {
    public static final void a(StaggeredGridCells.Fixed fixed, Modifier modifier, LazyStaggeredGridState lazyStaggeredGridState, PaddingValuesImpl paddingValuesImpl, Arrangement.Horizontal horizontal, FlingBehavior flingBehavior, boolean z, OverscrollEffect overscrollEffect, Function1 function1, Composer composer, int i2) {
        LazyStaggeredGridState lazyStaggeredGridState2;
        Arrangement.Horizontal horizontal2;
        FlingBehavior flingBehavior2;
        OverscrollEffect overscrollEffect2;
        Modifier modifier2;
        LazyStaggeredGridState lazyStaggeredGridState3;
        Modifier modifier3;
        Arrangement.Horizontal horizontalF;
        int i3;
        FlingBehavior flingBehaviorA;
        OverscrollEffect overscrollEffectA;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LazyVerticalStaggeredGrid-6qCrX9Q");
        }
        GapComposer gapComposerH = composer.h(-578931208);
        int i4 = i2 | (gapComposerH.K(fixed) ? 4 : 2) | 176 | (gapComposerH.K(paddingValuesImpl) ? 2048 : 1024) | 5988352 | (gapComposerH.b(z) ? 67108864 : 33554432) | 268435456;
        int i5 = gapComposerH.y(function1) ? 4 : 2;
        if (gapComposerH.p(i4 & 1, ((306783379 & i4) == 306783378 && (i5 & 3) == 2) ? false : true)) {
            gapComposerH.y0();
            int i6 = i2 & 1;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i6 == 0 || gapComposerH.h0()) {
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("LazyVerticalStaggeredGrid-6qCrX9Q");
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Object[] objArr = new Object[0];
                LazyStaggeredGridState.x.getClass();
                SaverKt$Saver$1 saverKt$Saver$1 = LazyStaggeredGridState.y;
                boolean zD = gapComposerH.d(0) | gapComposerH.d(0);
                Object objX = gapComposerH.x();
                if (zD || objX == composer$Companion$Empty$1) {
                    objX = new c70(14);
                    gapComposerH.q(objX);
                }
                lazyStaggeredGridState3 = (LazyStaggeredGridState) RememberSaveableKt.b(objArr, saverKt$Saver$1, (Function0) objX, gapComposerH, 0);
                Dp.Companion companion = Dp.f11004c;
                int i7 = i4 & (-1908409217);
                modifier3 = dTFunctionNameModifier;
                horizontalF = Arrangement.f(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                i3 = i7;
                flingBehaviorA = ScrollableDefaults.a(gapComposerH);
                overscrollEffectA = OverscrollKt.a(gapComposerH);
            } else {
                gapComposerH.D();
                int i8 = i4 & (-1908409217);
                flingBehaviorA = flingBehavior;
                overscrollEffectA = overscrollEffect;
                modifier3 = modifierE;
                i3 = i8;
                lazyStaggeredGridState3 = lazyStaggeredGridState;
                horizontalF = horizontal;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            Modifier modifier4 = modifier3;
            Orientation orientation = Orientation.Vertical;
            float d = horizontalF.getD();
            int i9 = i3 >> 3;
            int i10 = (i3 & 14) | 48 | (i9 & 896);
            LazyStaggeredGridState lazyStaggeredGridState4 = lazyStaggeredGridState3;
            boolean z2 = ((((i10 & 14) ^ 6) > 4 && gapComposerH.K(fixed)) || (i10 & 6) == 4) | ((((i10 & 896) ^ KyberEngine.KyberPolyBytes) > 256 && gapComposerH.K(paddingValuesImpl)) || (i10 & KyberEngine.KyberPolyBytes) == 256);
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new LazyStaggeredGridSlotCache(new rv(paddingValuesImpl, fixed, horizontalF, 18));
                gapComposerH.q(objX2);
            }
            LazyStaggeredGridKt.a(lazyStaggeredGridState4, orientation, (LazyGridStaggeredGridSlotsProvider) objX2, modifier4, paddingValuesImpl, flingBehaviorA, z, overscrollEffectA, d, function1, gapComposerH, (57344 & (i3 << 3)) | 199728 | (29360128 & i9) | 805306368, (i5 << 3) & 112);
            lazyStaggeredGridState2 = lazyStaggeredGridState4;
            modifier2 = modifier4;
            flingBehavior2 = flingBehaviorA;
            overscrollEffect2 = overscrollEffectA;
            horizontal2 = horizontalF;
        } else {
            gapComposerH.D();
            lazyStaggeredGridState2 = lazyStaggeredGridState;
            horizontal2 = horizontal;
            flingBehavior2 = flingBehavior;
            overscrollEffect2 = overscrollEffect;
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new mj(fixed, modifier2, lazyStaggeredGridState2, paddingValuesImpl, horizontal2, flingBehavior2, z, overscrollEffect2, function1, i2);
        }
    }
}
