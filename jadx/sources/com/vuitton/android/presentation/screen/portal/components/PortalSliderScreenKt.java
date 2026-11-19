package com.vuitton.android.presentation.screen.portal.components;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.loading.LvLoadingKt;
import com.vuitton.android.presentation.screen.portal.models.PortalViewState;
import defpackage.ae0;
import defpackage.q8;
import defpackage.r;
import defpackage.x2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PortalSliderScreenKt {
    public static final void a(PortalViewState portalViewState, SnackbarHostState snackbarHostState, Function0 function0, Function1 function1, Function1 function2, Function0 function3, Function0 function4, Function0 function5, Composer composer, int i2) {
        portalViewState.getClass();
        snackbarHostState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(-862109625);
        int i3 = i2 | (gapComposerH.y(portalViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            boolean z = (i3 & 896) == 256;
            Object objX = gapComposerH.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new PortalSliderScreenKt$PortalSliderScreen$1$1(function0, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            LvLoadingKt.b(WindowInsetsPadding_androidKt.b(new DTFunctionNameModifier("PortalSliderScreen").o(SizeKt.f5052c)), portalViewState.f63333b || portalViewState.f63334c, null, portalViewState.f63334c, 0L, function5, gapComposerH, (i3 >> 6) & ImageMetadata.JPEG_GPS_COORDINATES, 20);
            ScaffoldKt.a(null, ComposableLambdaKt.b(224046083, new x2(function3, function5, 14), gapComposerH), null, ComposableLambdaKt.b(1115120705, new ae0(snackbarHostState, 27), gapComposerH), null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-1631144808, new r((Object) portalViewState, (Object) function1, (Object) function4, (Object) function2, 24), gapComposerH), gapComposerH, 805309488, 245);
            gapComposerH = gapComposerH;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q8(portalViewState, snackbarHostState, function0, function1, function2, function3, function4, function5, i2);
        }
    }
}
