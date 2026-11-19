package com.vuitton.android.presentation.compose;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.LoadingExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.loading.LoadingMode;
import defpackage.a;
import defpackage.i31;
import defpackage.n00;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/airbnb/lottie/LottieComposition;", "composition", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class VideoLoaderKt {
    public static final void a(Modifier modifier, LoadingMode loadingMode, Composer composer, int i2, int i3) {
        int i4;
        if (modifier != null) {
            modifier = a.e(modifier, "VideoLoader");
        }
        GapComposer gapComposerH = composer.h(273561007);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        }
        int i6 = i4 | 48;
        if (gapComposerH.p(i6 & 1, (i6 & 19) != 18)) {
            if (i5 != 0) {
                modifier = new DTFunctionNameModifier("VideoLoader");
            }
            loadingMode = LoadingMode.LightMode;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LottieAnimationKt.a(n00.h(LVAppDesignKitTheme.a(gapComposerH).y, gapComposerH, 0).getF10755b(), SizeKt.o(modifier, LVAppDesignKitTheme.d(gapComposerH).o), false, Integer.MAX_VALUE, LoadingExtKt.b(loadingMode == LoadingMode.DarkMode, gapComposerH), gapComposerH, 1572864, 32768, 4177852);
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = modifier;
        LoadingMode loadingMode2 = loadingMode;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i31(modifier2, loadingMode2, i2, i3, 4);
        }
    }
}
