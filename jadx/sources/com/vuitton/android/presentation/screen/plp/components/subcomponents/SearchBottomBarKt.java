package com.vuitton.android.presentation.screen.plp.components.subcomponents;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.oh;
import defpackage.yj0;
import defpackage.yt0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SearchBottomBarKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f62854a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f62854a = 124.0f;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0050  */
    /* JADX WARN: Code duplicated, block: B:28:0x0056  */
    /* JADX WARN: Code duplicated, block: B:29:0x0059  */
    /* JADX WARN: Code duplicated, block: B:33:0x0062  */
    /* JADX WARN: Code duplicated, block: B:34:0x0065  */
    /* JADX WARN: Code duplicated, block: B:37:0x006f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0071  */
    /* JADX WARN: Code duplicated, block: B:41:0x007a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x007c  */
    /* JADX WARN: Code duplicated, block: B:44:0x0083  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:50:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:53:0x0102  */
    /* JADX WARN: Code duplicated, block: B:56:0x011d  */
    /* JADX WARN: Code duplicated, block: B:59:0x0154  */
    /* JADX WARN: Code duplicated, block: B:61:0x0158  */
    /* JADX WARN: Code duplicated, block: B:64:0x0163  */
    /* JADX WARN: Code duplicated, block: B:66:? A[RETURN, SYNTHETIC] */
    public static final void a(int i2, int i3, Composer composer, Modifier modifier, String str, Function0 function0, boolean z) {
        int i4;
        boolean z2;
        int i5;
        int i6;
        boolean z3;
        boolean z4;
        Modifier modifier2;
        RecomposeScopeImpl recomposeScopeImplB0;
        Context context;
        boolean z5;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function1;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Object objX2;
        int i7;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "SearchBottomBar");
        }
        str.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1643629293);
        int i8 = i3 & 1;
        if (i8 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        }
        int i9 = i3 & 2;
        if (i9 == 0) {
            if ((i2 & 48) == 0) {
                z2 = z;
                i4 |= gapComposerH.b(z2) ? 32 : 16;
            }
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                if (gapComposerH.K(str)) {
                    i7 = 256;
                } else {
                    i7 = 128;
                }
                i4 |= i7;
            }
            if (gapComposerH.y(function0)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i6 = i4 | i5;
            if ((i6 & 1171) != 1170) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i6 & 1, z3)) {
                if (i8 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("SearchBottomBar");
                }
                if (i9 != 0) {
                    z2 = true;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
                z5 = z2;
                Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(dTFunctionNameModifier, LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a));
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
                ComposeUiNode.b0.getClass();
                function1 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                TweenSpec tweenSpecC = AnimationSpecKt.c(400, 200, null, 4);
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new yt0(16);
                    gapComposerH.q(objX);
                }
                EnterTransition enterTransitionQ = EnterExitTransitionKt.q((Function1) objX, tweenSpecC);
                TweenSpec tweenSpecC2 = AnimationSpecKt.c(400, 0, null, 6);
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new yt0(17);
                    gapComposerH.q(objX2);
                }
                AnimatedVisibilityKt.e(z5, null, enterTransitionQ, EnterExitTransitionKt.u((Function1) objX2, tweenSpecC2), null, ComposableLambdaKt.b(920675697, new yj0(context, str, function0, 7), gapComposerH), gapComposerH, ((i6 >> 3) & 14) | 200064, 18);
                gapComposerH.Z(true);
                z4 = z5;
            } else {
                gapComposerH.D();
                z4 = z2;
            }
            modifier2 = dTFunctionNameModifier;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new oh(modifier2, z4, str, function0, i2, i3, 4);
            }
        }
        i4 |= 48;
        z2 = z;
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            if (gapComposerH.K(str)) {
                i7 = 256;
            } else {
                i7 = 128;
            }
            i4 |= i7;
        }
        if (gapComposerH.y(function0)) {
            i5 = 2048;
        } else {
            i5 = 1024;
        }
        i6 = i4 | i5;
        if ((i6 & 1171) != 1170) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i6 & 1, z3)) {
            if (i8 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("SearchBottomBar");
            }
            if (i9 != 0) {
                z2 = true;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            z5 = z2;
            Modifier modifierB2 = WindowInsetsPadding_androidKt.b(BackgroundKt.b(dTFunctionNameModifier, LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a));
            Alignment.f8582a.getClass();
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
            ComposeUiNode.b0.getClass();
            function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TweenSpec tweenSpecC3 = AnimationSpecKt.c(400, 200, null, 4);
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new yt0(16);
                gapComposerH.q(objX);
            }
            EnterTransition enterTransitionQ2 = EnterExitTransitionKt.q((Function1) objX, tweenSpecC3);
            TweenSpec tweenSpecC4 = AnimationSpecKt.c(400, 0, null, 6);
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new yt0(17);
                gapComposerH.q(objX2);
            }
            AnimatedVisibilityKt.e(z5, null, enterTransitionQ2, EnterExitTransitionKt.u((Function1) objX2, tweenSpecC4), null, ComposableLambdaKt.b(920675697, new yj0(context, str, function0, 7), gapComposerH), gapComposerH, ((i6 >> 3) & 14) | 200064, 18);
            gapComposerH.Z(true);
            z4 = z5;
        } else {
            gapComposerH.D();
            z4 = z2;
        }
        modifier2 = dTFunctionNameModifier;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oh(modifier2, z4, str, function0, i2, i3, 4);
        }
    }
}
