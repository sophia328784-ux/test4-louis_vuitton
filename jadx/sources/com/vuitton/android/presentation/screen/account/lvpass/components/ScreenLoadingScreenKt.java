package com.vuitton.android.presentation.screen.account.lvpass.components;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
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
import defpackage.n00;
import defpackage.pq0;
import defpackage.qe;
import defpackage.x;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0005²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0002\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0004\u001a\u00020\u00038\nX\u008a\u0084\u0002"}, d2 = {"Lcom/airbnb/lottie/LottieComposition;", "composition", "loaderComposition", "", "progress", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ScreenLoadingScreenKt {
    public static final void a(Modifier modifier, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "LoaderAnimation");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-1092297977);
        int i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LottieCompositionResultImpl lottieCompositionResultImplC = RememberLottieCompositionKt.c(new LottieCompositionSpec.Asset("round_loader.json"), gapComposerH, 6);
            LottieAnimatable lottieAnimatableA = AnimateLottieCompositionAsStateKt.a(lottieCompositionResultImplC.getF10755b(), false, null, Integer.MAX_VALUE, gapComposerH, 958);
            LottieComposition f10755b = lottieCompositionResultImplC.getF10755b();
            ContentScale.f9447a.getClass();
            ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
            boolean zK = gapComposerH.K(lottieAnimatableA);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new x(lottieAnimatableA, 10);
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            LottieAnimationKt.b(f10755b, (Function0) objX, modifier2, false, false, false, false, null, false, null, null, contentScale$Companion$Crop$1, false, false, null, null, false, gapComposer, (i3 << 6) & 896, 48, 129016);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(modifier2, i2, 22);
        }
    }

    public static final void b(Modifier modifier, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ScreenLoadingScreen");
        }
        GapComposer gapComposerH = composer.h(-889698542);
        int i3 = i2 | 6;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            Modifier dTFunctionNameModifier = new DTFunctionNameModifier("ScreenLoadingScreen");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = dTFunctionNameModifier.o(fillElement);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            LottieCompositionResultImpl lottieCompositionResultImplC = RememberLottieCompositionKt.c(new LottieCompositionSpec.Asset("splashscreen.json"), gapComposerH, 6);
            LottieAnimatable lottieAnimatableA = AnimateLottieCompositionAsStateKt.a(lottieCompositionResultImplC.getF10755b(), false, null, 0, gapComposerH, 1022);
            LottieComposition f10755b = lottieCompositionResultImplC.getF10755b();
            boolean zK = gapComposerH.K(lottieAnimatableA);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new x(lottieAnimatableA, 9);
                gapComposerH.q(objX);
            }
            Modifier modifierI = pq0.i("ScreenLoadingScreen", fillElement);
            ContentScale.f9447a.getClass();
            LottieAnimationKt.b(f10755b, (Function0) objX, modifierI, false, false, false, false, null, false, null, null, ContentScale.Companion.f9449b, false, false, null, null, false, gapComposerH, KyberEngine.KyberPolyBytes, 48, 129016);
            gapComposerH = gapComposerH;
            if (lottieAnimatableA.c() == 1.0f) {
                a(SizeKt.o(PaddingKt.m(BoxScopeInstance.f4938a.g(n00.i(gapComposerH, -1076472113, "ScreenLoadingScreen"), Alignment.Companion.f8589i), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48421k, 7), LVAppDesignKitTheme.d(gapComposerH).o), gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1076200150);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            modifierE = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(modifierE, i2, 21);
        }
    }
}
