package com.vuitton.android.presentation.screen.audioguide.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.BoxWithConstraintsKt;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.BlurKt;
import androidx.compose.ui.draw.BlurredEdgeTreatment;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import defpackage.fa;
import defpackage.o5;
import kotlin.Metadata;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AudioGuideBackgroundKt {
    public static final void a(String str, long j2, Composer composer, int i2) {
        GapComposer gapComposer;
        str.getClass();
        GapComposer gapComposerH = composer.h(-1589514806);
        int i3 = i2 | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.e(j2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AudioGuideBackground-XO-JAsU");
            Alignment.f8582a.getClass();
            Modifier modifierG = BoxScopeInstance.f4938a.g(dTFunctionNameModifier, Alignment.Companion.f8587f);
            Dp.Companion companion = Dp.f11004c;
            BlurredEdgeTreatment.f8702a.getClass();
            Modifier modifierA = BlurKt.a(modifierG, 50.0f, 50.0f, null);
            ContentScale.f9447a.getClass();
            gapComposer = gapComposerH;
            ImageLoaderKt.b(modifierA, str, ContentScale.Companion.d, null, null, 0, false, null, null, null, gapComposer, KyberEngine.KyberPolyBytes, 2040);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("AudioGuideBackground-XO-JAsU");
            FillElement fillElement = SizeKt.f5052c;
            BoxKt.a(BackgroundKt.b(dTFunctionNameModifier2.o(fillElement), Color.b(0.5f, j2), RectangleShapeKt.f8913a), gapComposer, 0);
            BoxWithConstraintsKt.a(new DTFunctionNameModifier("AudioGuideBackground-XO-JAsU").o(fillElement), null, false, ComposableLambdaKt.b(1995457332, new fa(j2, 0), gapComposer), gapComposer, 3078, 6);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o5(i2, str, j2);
        }
    }
}
