package com.vuitton.android.presentation.screen.certificates.components;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import defpackage.a;
import defpackage.p31;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TransferCertificateCardKt {
    public static final void a(int i2, int i3, Composer composer, Modifier modifier, Function0 function0) {
        int i4;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "TransferCertificateCard");
        }
        function0.getClass();
        GapComposer gapComposerH = composer.h(280632774);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("TransferCertificateCard");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = SizeKt.d(dTFunctionNameModifier, 1.0f);
            ComposableSingletons$TransferCertificateCardKt.f55686a.getClass();
            LVPushCardKt.a(modifierD, false, function0, ComposableSingletons$TransferCertificateCardKt.f55687b, gapComposerH, ((i4 << 3) & 896) | 3072, 2);
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p31(modifier2, function0, i2, i3, 1);
        }
    }
}
