package com.vuitton.android.presentation.screen.feed.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import defpackage.rx;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FeedErrorScreenKt {
    public static final void a(SnackbarHostState snackbarHostState, Function0 function0, Composer composer, int i2) {
        int i3;
        SnackbarHostState snackbarHostState2;
        Function0 function1;
        snackbarHostState.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1001602537);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(snackbarHostState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            snackbarHostState2 = snackbarHostState;
            function1 = function0;
            LVEmptyViewKt.e(PaddingKt.m(WindowInsetsPadding_androidKt.d(BackgroundKt.b(new DTFunctionNameModifier("FeedErrorScreen").o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a)), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48421k, 7), snackbarHostState2, StringResources_androidKt.c(gapComposerH, R.string.error_generic), null, null, StringResources_androidKt.c(gapComposerH, R.string.retrysynchro_btn_firstTime), function1, gapComposerH, ((i3 << 3) & 112) | ((i3 << 21) & 234881024), 120);
        } else {
            snackbarHostState2 = snackbarHostState;
            function1 = function0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rx(snackbarHostState2, function1, i2, 0);
        }
    }
}
