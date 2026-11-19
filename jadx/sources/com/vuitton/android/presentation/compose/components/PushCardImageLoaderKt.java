package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import defpackage.ll0;
import defpackage.rq0;
import kotlin.Metadata;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PushCardImageLoaderKt {
    public static final void a(Modifier modifier, String str, Integer num, Composer composer, int i2, int i3) {
        int i4;
        Integer num2;
        int i5;
        Integer num3;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "PushCardImageLoader");
        }
        str.getClass();
        GapComposer gapComposerH = composer.h(-1915553488);
        int i6 = i3 & 1;
        if (i6 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = i2 | (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2);
        }
        int i7 = i4 | (gapComposerH.K(str) ? 32 : 16);
        int i8 = i3 & 4;
        if (i8 != 0) {
            i5 = i7 | KyberEngine.KyberPolyBytes;
            num2 = num;
        } else {
            num2 = num;
            i5 = i7 | (gapComposerH.K(num2) ? 256 : 128);
        }
        if (gapComposerH.p(i5 & 1, (i5 & 147) != 146)) {
            if (i6 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("PushCardImageLoader");
            }
            Integer num4 = i8 != 0 ? null : num2;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierB = ModifierExtKt.b(ClipKt.a(SizeKt.o(dTFunctionNameModifier, 80.0f), LVAppDesignKitTheme.j(gapComposerH).f48411c), num4 != null, new ll0(num4, 5), gapComposerH, 0);
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(modifierB, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            num3 = num4;
        } else {
            gapComposerH.D();
            num3 = num2;
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rq0(modifier2, str, num3, i2, i3);
        }
    }
}
