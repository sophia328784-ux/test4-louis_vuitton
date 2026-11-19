package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.AnimateLottieCompositionAsStateKt;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.airbnb.lottie.compose.LottieDynamicProperties;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.LoadingExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.e6;
import defpackage.j9;
import defpackage.n00;
import defpackage.qe;
import defpackage.x;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpWishListTopBarButtonKt {
    public static final void a(int i2, int i3, Composer composer, Modifier modifier, Function0 function0, boolean z) {
        Function0 function1;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "PdpWishListTopBarButton");
        }
        Modifier modifier2 = modifier;
        function0.getClass();
        GapComposer gapComposerH = composer.h(2028349409);
        int i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i3 | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.d(i2) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            function1 = function0;
            IconButtonKt.a(function1, modifier2, false, null, null, ComposableLambdaKt.b(1161127939, new j9(z, i2, 1), gapComposerH), gapComposerH, ((i4 >> 9) & 14) | 1572864 | ((i4 << 3) & 112), 60);
        } else {
            function1 = function0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new e6(modifier2, z, i2, function1, i3);
        }
    }

    public static final void b(Modifier modifier, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "WishlistLoadingAnimation");
        }
        GapComposer gapComposerH = composer.h(2046008094);
        int i3 = i2 | 6;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("WishlistLoadingAnimation");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LottieCompositionResultImpl lottieCompositionResultImplH = n00.h(LVAppDesignKitTheme.a(gapComposerH).y, gapComposerH, 0);
            LottieAnimatable lottieAnimatableA = AnimateLottieCompositionAsStateKt.a(lottieCompositionResultImplH.getF10755b(), false, null, 0, gapComposerH, 1022);
            LottieDynamicProperties lottieDynamicPropertiesB = LoadingExtKt.b(false, gapComposerH);
            Modifier modifierO = SizeKt.o(dTFunctionNameModifier, LVAppDesignKitTheme.d(gapComposerH).o);
            LottieComposition f10755b = lottieCompositionResultImplH.getF10755b();
            boolean zK = gapComposerH.K(lottieAnimatableA);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new x(lottieAnimatableA, 8);
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            LottieAnimationKt.b(f10755b, (Function0) objX, modifierO, false, false, false, false, null, false, lottieDynamicPropertiesB, null, null, false, false, null, null, false, gapComposer, 1073741824, 0, 130552);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(dTFunctionNameModifier, i2, 15);
        }
    }
}
