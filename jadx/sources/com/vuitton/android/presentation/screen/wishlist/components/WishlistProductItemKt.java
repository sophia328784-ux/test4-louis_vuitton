package com.vuitton.android.presentation.screen.wishlist.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistItemUiModel;
import defpackage.ai;
import defpackage.h40;
import defpackage.z20;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WishlistProductItemKt {
    public static final void a(Modifier modifier, WishlistItemUiModel wishlistItemUiModel, boolean z, boolean z2, Function0 function0, Function0 function1, Function1 function2, Function1 function3, Composer composer, int i2, int i3) {
        int i4;
        Function0 function4;
        Function1 function5;
        Function1 function6;
        GapComposer gapComposer;
        Modifier modifier2;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "WishlistProductItem");
        }
        wishlistItemUiModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-617088850);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i6 = i4 | (gapComposerH.K(wishlistItemUiModel) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i6 |= gapComposerH.b(z2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i6 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            function4 = function1;
            i6 |= gapComposerH.y(function4) ? 131072 : 65536;
        } else {
            function4 = function1;
        }
        if ((1572864 & i2) == 0) {
            function5 = function2;
            i6 |= gapComposerH.y(function5) ? 1048576 : 524288;
        } else {
            function5 = function2;
        }
        if ((12582912 & i2) == 0) {
            function6 = function3;
            i6 |= gapComposerH.y(function6) ? 8388608 : 4194304;
        } else {
            function6 = function3;
        }
        if (gapComposerH.p(i6 & 1, (4793491 & i6) != 4793490)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("WishlistProductItem");
            }
            Modifier modifier3 = dTFunctionNameModifier;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new Dp(104.0f);
                gapComposerH.q(objX);
            }
            float f2 = ((Dp) objX).f11006b;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = 500;
                gapComposerH.q(objX2);
            }
            int iIntValue = ((Number) objX2).intValue();
            boolean z3 = gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Rtl;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = Double.valueOf(1.5d);
                gapComposerH.q(objX3);
            }
            double dDoubleValue = ((Number) objX3).doubleValue();
            boolean z4 = wishlistItemUiModel.f65743f;
            TweenSpec tweenSpecC = AnimationSpecKt.c(iIntValue, 0, null, 6);
            boolean zB = gapComposerH.b(z3);
            Object objX4 = gapComposerH.x();
            if (zB || objX4 == composer$Companion$Empty$1) {
                objX4 = new h40(z3, dDoubleValue, 3);
                gapComposerH.q(objX4);
            }
            modifier2 = modifier3;
            gapComposer = gapComposerH;
            AnimatedVisibilityKt.e(z4, null, null, EnterExitTransitionKt.s((Function1) objX4, tweenSpecC).b(EnterExitTransitionKt.h(AnimationSpecKt.c(iIntValue, 0, null, 6), 2)), null, ComposableLambdaKt.b(607771014, new z20(modifier2, function6, wishlistItemUiModel, z2, function0, function4, function5, f2, z), gapComposerH), gapComposer, ImageMetadata.EDGE_MODE, 22);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = dTFunctionNameModifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ai(modifier2, wishlistItemUiModel, z, z2, function0, function1, function2, function3, i2, i3, 6);
        }
    }
}
