package com.vuitton.android.presentation.screen.aicompanion.components.entrypoint;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconButtonColors;
import androidx.compose.material3.IconButtonDefaults;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.f;
import defpackage.g;
import defpackage.h;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AICompanionButtonKt {
    public static final void a(Modifier modifier, AICompanionButtonVariant aICompanionButtonVariant, Function0 function0, Composer composer, int i2, int i3) {
        int i4;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "AICompanionButton");
        }
        function0.getClass();
        GapComposer gapComposerH = composer.h(-796590179);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.d(aICompanionButtonVariant == null ? -1 : aICompanionButtonVariant.ordinal()) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("AICompanionButton");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            Pair pair = new Pair(aICompanionButtonVariant.getContentColor().invoke(gapComposerH, 0), aICompanionButtonVariant.getContainerColor().invoke(gapComposerH, 0));
            long j2 = ((Color) pair.f71705b).f8872a;
            final long j3 = ((Color) pair.f71706c).f8872a;
            final float f2 = LVAppDesignKitTheme.d(gapComposerH).v;
            Modifier modifierB = ModifierExtKt.b(SizeKt.o(com.vuitton.android.designkit.ui.common.ModifierExtKt.e(dTFunctionNameModifier, "aiCompanion_entryPoint_button"), f2), aICompanionButtonVariant == AICompanionButtonVariant.INVERT, new Function2() { // from class: e
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    composer2.L(1091358132);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("AICompanionButton$lambda$0");
                    float f3 = LVAppDesignKitTheme.d(composer2).f48389i;
                    float f4 = f2 / 2.0f;
                    Dp.Companion companion = Dp.f11004c;
                    Modifier modifierE = ModifierExtKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, f4, 6, j3, dTFunctionNameModifier2);
                    composer2.F();
                    return modifierE;
                }
            }, gapComposerH, 0);
            RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.f5846a;
            IconButtonColors iconButtonColorsB = IconButtonDefaults.b(j3, j2, gapComposerH);
            boolean zY = gapComposerH.y(hapticFeedback) | ((i4 & 896) == 256);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new f(hapticFeedback, function0, 0);
                gapComposerH.q(objX);
            }
            IconButtonKt.a((Function0) objX, modifierB, false, iconButtonColorsB, roundedCornerShape, ComposableLambdaKt.b(2063081023, new g(j2, 0), gapComposerH), gapComposerH, 1572864, 20);
        } else {
            gapComposerH.D();
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new h(modifier2, aICompanionButtonVariant, function0, i2, i3, 0);
        }
    }
}
