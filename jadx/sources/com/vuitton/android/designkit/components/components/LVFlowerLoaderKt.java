package com.vuitton.android.designkit.components.components;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieAnimatableKt;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.airbnb.lottie.compose.LottieDynamicProperties;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.LoadingExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.am;
import defpackage.n00;
import defpackage.wd;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/airbnb/lottie/LottieComposition;", "composition", "components"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVFlowerLoaderKt {
    /* JADX WARN: Code duplicated, block: B:42:0x006e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0070  */
    /* JADX WARN: Code duplicated, block: B:46:0x0079 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x007b  */
    /* JADX WARN: Code duplicated, block: B:49:0x0082  */
    /* JADX WARN: Code duplicated, block: B:50:0x0085  */
    /* JADX WARN: Code duplicated, block: B:52:0x0089  */
    /* JADX WARN: Code duplicated, block: B:53:0x008b  */
    /* JADX WARN: Code duplicated, block: B:56:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:61:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:64:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:66:0x0100  */
    /* JADX WARN: Code duplicated, block: B:67:0x0104  */
    /* JADX WARN: Code duplicated, block: B:71:0x0134  */
    /* JADX WARN: Code duplicated, block: B:74:0x017c  */
    /* JADX WARN: Code duplicated, block: B:76:0x0180  */
    /* JADX WARN: Code duplicated, block: B:79:0x018e  */
    /* JADX WARN: Code duplicated, block: B:81:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, LVFlowerLoaderStyle lVFlowerLoaderStyle, boolean z, Composer composer, int i2, int i3) {
        int i4;
        boolean z2;
        boolean z3;
        GapComposer gapComposer;
        LVFlowerLoaderStyle lVFlowerLoaderStyle2;
        boolean z4;
        Modifier modifier2;
        RecomposeScopeImpl recomposeScopeImplB0;
        LVFlowerLoaderStyle lVFlowerLoaderStyle3;
        boolean z5;
        LottieCompositionResultImpl lottieCompositionResultImplH;
        LottieDynamicProperties lottieDynamicPropertiesA;
        LottieAnimatable lottieAnimatableA;
        boolean z6;
        boolean z7;
        Object objX;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        boolean zK;
        Object objX2;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVFlowerLoader");
        }
        GapComposer gapComposerH = composer.h(1466597499);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i6 = i3 & 2;
        if (i6 != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= gapComposerH.d(lVFlowerLoaderStyle == null ? -1 : lVFlowerLoaderStyle.ordinal()) ? 32 : 16;
        }
        int i7 = i3 & 4;
        if (i7 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                z2 = z;
                i4 |= gapComposerH.b(z2) ? 256 : 128;
            }
            if ((i4 & 147) != 146) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i4 & 1, z3)) {
                if (i5 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVFlowerLoader");
                }
                if (i6 != 0) {
                    lVFlowerLoaderStyle3 = LVFlowerLoaderStyle.LIGHT_BACKGROUND;
                } else {
                    lVFlowerLoaderStyle3 = lVFlowerLoaderStyle;
                }
                if (i7 != 0) {
                    z5 = false;
                } else {
                    z5 = z2;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                lottieCompositionResultImplH = n00.h(LVAppDesignKitTheme.a(gapComposerH).p, gapComposerH, 0);
                lottieDynamicPropertiesA = LoadingExtKt.a(lVFlowerLoaderStyle3, gapComposerH);
                lottieAnimatableA = LottieAnimatableKt.a(gapComposerH);
                LottieComposition f10755b = lottieCompositionResultImplH.getF10755b();
                Boolean boolValueOf = Boolean.valueOf(z5);
                boolean zK2 = gapComposerH.K(lottieCompositionResultImplH) | gapComposerH.K(lottieAnimatableA);
                if ((i4 & 896) == 256) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = zK2 | z6;
                objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (z7 || objX == composer$Companion$Empty$1) {
                    objX = new LVFlowerLoaderKt$LVFlowerLoader$1$1(lottieAnimatableA, z5, lottieCompositionResultImplH, null);
                    gapComposerH.q(objX);
                }
                EffectsKt.g(f10755b, boolValueOf, (Function2) objX, gapComposerH);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
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
                LottieComposition f10755b2 = lottieCompositionResultImplH.getF10755b();
                zK = gapComposerH.K(lottieAnimatableA);
                objX2 = gapComposerH.x();
                if (zK || objX2 == composer$Companion$Empty$1) {
                    objX2 = new am(lottieAnimatableA, 2);
                    gapComposerH.q(objX2);
                }
                LottieAnimationKt.b(f10755b2, (Function0) objX2, SizeKt.o(new DTFunctionNameModifier("LVFlowerLoader"), LVFlowerLoaderUtils.f48246a), false, false, false, false, null, false, lottieDynamicPropertiesA, null, null, false, false, null, null, false, gapComposerH, 1073742208, 0, 130552);
                gapComposer = gapComposerH;
                gapComposer.Z(true);
                lVFlowerLoaderStyle2 = lVFlowerLoaderStyle3;
                z4 = z5;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVFlowerLoaderStyle2 = lVFlowerLoaderStyle;
                z4 = z2;
            }
            modifier2 = dTFunctionNameModifier;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new wd(modifier2, lVFlowerLoaderStyle2, z4, i2, i3, 2);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        z2 = z;
        if ((i4 & 147) != 146) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i4 & 1, z3)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVFlowerLoader");
            }
            if (i6 != 0) {
                lVFlowerLoaderStyle3 = LVFlowerLoaderStyle.LIGHT_BACKGROUND;
            } else {
                lVFlowerLoaderStyle3 = lVFlowerLoaderStyle;
            }
            if (i7 != 0) {
                z5 = false;
            } else {
                z5 = z2;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            lottieCompositionResultImplH = n00.h(LVAppDesignKitTheme.a(gapComposerH).p, gapComposerH, 0);
            lottieDynamicPropertiesA = LoadingExtKt.a(lVFlowerLoaderStyle3, gapComposerH);
            lottieAnimatableA = LottieAnimatableKt.a(gapComposerH);
            LottieComposition f10755b3 = lottieCompositionResultImplH.getF10755b();
            Boolean boolValueOf2 = Boolean.valueOf(z5);
            boolean zK3 = gapComposerH.K(lottieCompositionResultImplH) | gapComposerH.K(lottieAnimatableA);
            if ((i4 & 896) == 256) {
                z6 = true;
            } else {
                z6 = false;
            }
            z7 = zK3 | z6;
            objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z7) {
                objX = new LVFlowerLoaderKt$LVFlowerLoader$1$1(lottieAnimatableA, z5, lottieCompositionResultImplH, null);
                gapComposerH.q(objX);
            } else {
                objX = new LVFlowerLoaderKt$LVFlowerLoader$1$1(lottieAnimatableA, z5, lottieCompositionResultImplH, null);
                gapComposerH.q(objX);
            }
            EffectsKt.g(f10755b3, boolValueOf2, (Function2) objX, gapComposerH);
            Alignment.f8582a.getClass();
            measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
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
            LottieComposition f10755b4 = lottieCompositionResultImplH.getF10755b();
            zK = gapComposerH.K(lottieAnimatableA);
            objX2 = gapComposerH.x();
            if (zK) {
                objX2 = new am(lottieAnimatableA, 2);
                gapComposerH.q(objX2);
            } else {
                objX2 = new am(lottieAnimatableA, 2);
                gapComposerH.q(objX2);
            }
            LottieAnimationKt.b(f10755b4, (Function0) objX2, SizeKt.o(new DTFunctionNameModifier("LVFlowerLoader"), LVFlowerLoaderUtils.f48246a), false, false, false, false, null, false, lottieDynamicPropertiesA, null, null, false, false, null, null, false, gapComposerH, 1073742208, 0, 130552);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
            lVFlowerLoaderStyle2 = lVFlowerLoaderStyle3;
            z4 = z5;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            lVFlowerLoaderStyle2 = lVFlowerLoaderStyle;
            z4 = z2;
        }
        modifier2 = dTFunctionNameModifier;
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wd(modifier2, lVFlowerLoaderStyle2, z4, i2, i3, 2);
        }
    }
}
