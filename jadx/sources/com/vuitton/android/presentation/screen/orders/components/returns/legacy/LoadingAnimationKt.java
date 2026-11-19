package com.vuitton.android.presentation.screen.orders.components.returns.legacy;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.AnimateLottieCompositionAsStateKt;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.airbnb.lottie.compose.LottieCompositionSpec;
import com.airbnb.lottie.compose.RememberLottieCompositionKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.a;
import defpackage.n50;
import defpackage.qe;
import defpackage.x;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/airbnb/lottie/LottieComposition;", "composition", "", "progress", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LoadingAnimationKt {
    public static final void a(Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-1342817418);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LottieCompositionResultImpl lottieCompositionResultImplC = RememberLottieCompositionKt.c(new LottieCompositionSpec.Asset("loader_spinning_circle.json"), gapComposerH, 6);
            LottieAnimatable lottieAnimatableA = AnimateLottieCompositionAsStateKt.a(lottieCompositionResultImplC.getF10755b(), false, null, Integer.MAX_VALUE, gapComposerH, 958);
            LottieComposition f10755b = lottieCompositionResultImplC.getF10755b();
            boolean zK = gapComposerH.K(lottieAnimatableA);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new x(lottieAnimatableA, 6);
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            LottieAnimationKt.b(f10755b, (Function0) objX, SizeKt.o(new DTFunctionNameModifier("LoadingAnimation"), LVAppDesignKitTheme.d(gapComposerH).B), false, false, false, false, null, false, null, null, null, false, false, null, null, false, gapComposer, 0, 0, 131064);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new n50(i2, 13);
        }
    }

    public static final void b(Modifier modifier, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "SuccessAnimation");
        }
        modifierE.getClass();
        GapComposer gapComposerH = composer.h(680380600);
        int i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LottieCompositionResultImpl lottieCompositionResultImplC = RememberLottieCompositionKt.c(new LottieCompositionSpec.Asset("success_checkmark.json"), gapComposerH, 6);
            LottieAnimatable lottieAnimatableA = AnimateLottieCompositionAsStateKt.a(lottieCompositionResultImplC.getF10755b(), false, null, 1, gapComposerH, 958);
            LottieComposition f10755b = lottieCompositionResultImplC.getF10755b();
            boolean zK = gapComposerH.K(lottieAnimatableA);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new x(lottieAnimatableA, 7);
                gapComposerH.q(objX);
            }
            Function0 function0 = (Function0) objX;
            Modifier modifierO = SizeKt.o(modifierE, LVAppDesignKitTheme.d(gapComposerH).B);
            ContentScale.f9447a.getClass();
            gapComposer = gapComposerH;
            LottieAnimationKt.b(f10755b, function0, modifierO, false, false, false, false, null, false, null, null, ContentScale.Companion.f9449b, false, false, null, null, false, gapComposer, 0, 48, 129016);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(modifierE, i2, 9);
        }
    }
}
