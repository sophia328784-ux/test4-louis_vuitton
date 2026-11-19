package com.vuitton.android.presentation.screen.spotlight.components;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightHotspotsKt;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightContainerStateUiModel;
import com.vuitton.android.presentation.screen.spotlight.models.SpotlightSlideUiModel;
import defpackage.dm;
import defpackage.u2;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "currentPage", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SpotlightListKt {
    public static final void a(Modifier modifier, final List list, final Function1 function1, final SpotlightContainerStateUiModel spotlightContainerStateUiModel, final boolean z, final PagerState pagerState, final Set set, final Function0 function0, Composer composer, int i2) {
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SpotlightList");
        }
        Modifier modifier3 = modifierE;
        list.getClass();
        function1.getClass();
        spotlightContainerStateUiModel.getClass();
        pagerState.getClass();
        set.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1505348712);
        int i3 = i2 | (gapComposerH.K(modifier3) ? 4 : 2) | (gapComposerH.y(list) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.K(spotlightContainerStateUiModel) ? 2048 : 1024) | (gapComposerH.b(z) ? 16384 : 8192) | (gapComposerH.K(pagerState) ? 131072 : 65536) | (gapComposerH.y(set) ? 1048576 : 524288) | (gapComposerH.y(function0) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = SnapshotStateKt.e(new u2(pagerState, 18));
                gapComposerH.q(objX);
            }
            final State state = (State) objX;
            modifier2 = modifier3;
            PagerKt.a(pagerState, modifier2, null, null, 1, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, !spotlightContainerStateUiModel.f64635e || spotlightContainerStateUiModel.f64638i, false, null, null, null, ComposableLambdaKt.b(-118552423, new Function4() { // from class: z01
                @Override // kotlin.jvm.functions.Function4
                public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                    int iIntValue = ((Integer) obj2).intValue();
                    Composer composer2 = (Composer) obj3;
                    ((Integer) obj4).getClass();
                    ((PagerScope) obj).getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    List list2 = list;
                    if (list2.isEmpty() || iIntValue >= list2.size()) {
                        composer2.L(-1331085591);
                        composer2.F();
                    } else {
                        composer2.L(-1331907246);
                        SpotlightSlideUiModel spotlightSlideUiModel = (SpotlightSlideUiModel) list2.get(iIntValue);
                        SpotlightHotspotsKt.b(new DTFunctionNameModifier("SpotlightList$lambda$2").o(SizeKt.f5052c), spotlightSlideUiModel.f64655h, spotlightSlideUiModel.f64652c, spotlightSlideUiModel.g, function1, spotlightSlideUiModel.d, iIntValue == ((Number) state.getF10755b()).intValue() && !pagerState.f5765k.a(), set.contains(spotlightSlideUiModel.f64650a), spotlightContainerStateUiModel.f64636f, z, function0, composer2, 6, 0);
                        composer2.F();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, ((i3 >> 15) & 14) | 24576 | ((i3 << 3) & 112), 24576, 16108);
        } else {
            modifier2 = modifier3;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new dm(modifier2, list, function1, spotlightContainerStateUiModel, z, pagerState, set, function0, i2);
        }
    }
}
