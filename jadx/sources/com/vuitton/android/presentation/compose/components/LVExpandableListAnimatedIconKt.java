package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.core.graphics.BlendModeColorFilterCompat;
import androidx.core.graphics.BlendModeCompat;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.airbnb.lottie.compose.LottieDynamicProperties;
import com.airbnb.lottie.compose.LottieDynamicPropertiesKt;
import com.airbnb.lottie.compose.LottieDynamicProperty;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.LVExpandableListAnimatedIconKt;
import defpackage.n00;
import defpackage.ss;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0007²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0004\u001a\u0004\u0018\u00010\u00038\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0006\u001a\u00020\u00058\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isInitialized", "isReversed", "Lcom/airbnb/lottie/LottieComposition;", "composition", "", "progress", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVExpandableListAnimatedIconKt {
    /* JADX WARN: Code duplicated, block: B:100:0x0178  */
    /* JADX WARN: Code duplicated, block: B:104:0x0182  */
    /* JADX WARN: Code duplicated, block: B:107:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:109:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:110:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:113:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:115:0x022e  */
    /* JADX WARN: Code duplicated, block: B:117:0x0232  */
    /* JADX WARN: Code duplicated, block: B:120:0x0242  */
    /* JADX WARN: Code duplicated, block: B:122:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0097  */
    /* JADX WARN: Code duplicated, block: B:59:0x0099  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:82:0x00de  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:89:0x0101  */
    /* JADX WARN: Code duplicated, block: B:92:0x0121  */
    /* JADX WARN: Code duplicated, block: B:95:0x012d  */
    /* JADX WARN: Code duplicated, block: B:96:0x015b  */
    /* JADX WARN: Code duplicated, block: B:99:0x0176  */
    public static final void a(Modifier modifier, int i2, final boolean z, float f2, Integer num, Composer composer, final int i3, final int i4) {
        int i5;
        int i6;
        float f3;
        Integer num2;
        boolean z2;
        final Modifier modifier2;
        GapComposer gapComposer;
        final int i7;
        final float f4;
        final Integer num3;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i8;
        Integer num4;
        int i9;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MutableState mutableState;
        MutableState mutableStateL;
        LottieCompositionResultImpl lottieCompositionResultImplH;
        Object objX2;
        MutableFloatState mutableFloatState;
        Throwable th;
        LottieDynamicProperties lottieDynamicProperties;
        boolean z3;
        boolean z4;
        Object objX3;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Object objX4;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVExpandableListAnimatedIcon-hGBTI10");
        }
        GapComposer gapComposerH = composer.h(2074433678);
        int i10 = i4 & 1;
        if (i10 != 0) {
            i5 = i3 | 6;
        } else if ((i3 & 6) == 0) {
            i5 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            if ((i4 & 2) == 0) {
                i6 = i2;
                int i11 = gapComposerH.d(i6) ? 32 : 16;
                i5 |= i11;
            } else {
                i6 = i2;
            }
            i5 |= i11;
        } else {
            i6 = i2;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            if ((i4 & 8) == 0) {
                f3 = f2;
                int i12 = gapComposerH.c(f3) ? 2048 : 1024;
                i5 |= i12;
            } else {
                f3 = f2;
            }
            i5 |= i12;
        } else {
            f3 = f2;
        }
        int i13 = i4 & 16;
        if (i13 == 0) {
            if ((i3 & 24576) == 0) {
                num2 = num;
                i5 |= gapComposerH.K(num2) ? 16384 : 8192;
            }
            if ((i5 & 9363) != 9362) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (gapComposerH.p(i5 & 1, z2)) {
                gapComposerH.y0();
                if ((i3 & 1) != 0 || gapComposerH.h0()) {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVExpandableListAnimatedIcon-hGBTI10");
                    }
                    if ((i4 & 2) != 0) {
                        i8 = LVAppDesignKitTheme.a(gapComposerH).f48357i;
                        i5 &= -113;
                    } else {
                        i8 = i6;
                    }
                    if ((i4 & 8) != 0) {
                        i5 &= -7169;
                        f3 = LVAppDesignKitTheme.d(gapComposerH).o;
                    }
                    if (i13 != 0) {
                        num4 = null;
                    } else {
                        num4 = num2;
                    }
                    i9 = i8;
                } else {
                    gapComposerH.D();
                    if ((i4 & 2) != 0) {
                        i5 &= -113;
                    }
                    if ((i4 & 8) != 0) {
                        i5 &= -7169;
                    }
                    f3 = f3;
                    num4 = num2;
                    dTFunctionNameModifier = dTFunctionNameModifier;
                    i9 = i6;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX);
                }
                mutableState = (MutableState) objX;
                mutableStateL = SnapshotStateKt.l(Boolean.valueOf(!z), gapComposerH);
                lottieCompositionResultImplH = n00.h(i9, gapComposerH, 0);
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    gapComposerH.q(objX2);
                }
                mutableFloatState = (MutableFloatState) objX2;
                if (num4 != null) {
                    gapComposerH.L(-829919277);
                    th = null;
                    LottieDynamicProperties lottieDynamicPropertiesA = LottieDynamicPropertiesKt.a(new LottieDynamicProperty[]{LottieDynamicPropertiesKt.b(LottieProperty.I, BlendModeColorFilterCompat.a(num4.intValue(), BlendModeCompat.SRC_ATOP), new String[]{"**"}, gapComposerH)}, gapComposerH);
                    gapComposerH.Z(false);
                    lottieDynamicProperties = lottieDynamicPropertiesA;
                } else {
                    th = null;
                    gapComposerH.L(-829450216);
                    gapComposerH.Z(false);
                    lottieDynamicProperties = null;
                }
                Boolean boolValueOf = Boolean.valueOf(z);
                boolean zK = gapComposerH.K(mutableStateL);
                if ((i5 & 896) == 256) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                z4 = z3 | zK;
                objX3 = gapComposerH.x();
                if (z4 || objX3 == composer$Companion$Empty$1) {
                    LVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$1 lVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$1 = new LVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$1(z, mutableState, mutableFloatState, mutableStateL, null);
                    gapComposerH.q(lVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$1);
                    objX3 = lVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$1;
                }
                EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX3);
                Modifier modifierO = SizeKt.o(dTFunctionNameModifier, f3);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw th;
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
                LottieComposition f10755b = lottieCompositionResultImplH.getF10755b();
                objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new ss(mutableFloatState, 28);
                    gapComposerH.q(objX4);
                }
                gapComposer = gapComposerH;
                i7 = i9;
                LottieAnimationKt.b(f10755b, (Function0) objX4, null, false, false, false, false, null, false, lottieDynamicProperties, null, null, false, false, null, null, false, gapComposer, 1073741872, 0, 130556);
                gapComposer.Z(true);
                modifier2 = dTFunctionNameModifier;
                num3 = num4;
                f4 = f3;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                gapComposer = gapComposerH;
                i7 = i6;
                f4 = f3;
                num3 = num2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: y50
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        LVExpandableListAnimatedIconKt.a(modifier2, i7, z, f4, num3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 |= 24576;
        num2 = num;
        if ((i5 & 9363) != 9362) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposerH.p(i5 & 1, z2)) {
            gapComposerH.y0();
            if ((i3 & 1) != 0) {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVExpandableListAnimatedIcon-hGBTI10");
                }
                if ((i4 & 2) != 0) {
                    i8 = LVAppDesignKitTheme.a(gapComposerH).f48357i;
                    i5 &= -113;
                } else {
                    i8 = i6;
                }
                if ((i4 & 8) != 0) {
                    i5 &= -7169;
                    f3 = LVAppDesignKitTheme.d(gapComposerH).o;
                }
                if (i13 != 0) {
                    num4 = null;
                } else {
                    num4 = num2;
                }
                i9 = i8;
            } else {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVExpandableListAnimatedIcon-hGBTI10");
                }
                if ((i4 & 2) != 0) {
                    i8 = LVAppDesignKitTheme.a(gapComposerH).f48357i;
                    i5 &= -113;
                } else {
                    i8 = i6;
                }
                if ((i4 & 8) != 0) {
                    i5 &= -7169;
                    f3 = LVAppDesignKitTheme.d(gapComposerH).o;
                }
                if (i13 != 0) {
                    num4 = null;
                } else {
                    num4 = num2;
                }
                i9 = i8;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            mutableState = (MutableState) objX;
            mutableStateL = SnapshotStateKt.l(Boolean.valueOf(!z), gapComposerH);
            lottieCompositionResultImplH = n00.h(i9, gapComposerH, 0);
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(objX2);
            }
            mutableFloatState = (MutableFloatState) objX2;
            if (num4 != null) {
                gapComposerH.L(-829919277);
                th = null;
                LottieDynamicProperties lottieDynamicPropertiesA2 = LottieDynamicPropertiesKt.a(new LottieDynamicProperty[]{LottieDynamicPropertiesKt.b(LottieProperty.I, BlendModeColorFilterCompat.a(num4.intValue(), BlendModeCompat.SRC_ATOP), new String[]{"**"}, gapComposerH)}, gapComposerH);
                gapComposerH.Z(false);
                lottieDynamicProperties = lottieDynamicPropertiesA2;
            } else {
                th = null;
                gapComposerH.L(-829450216);
                gapComposerH.Z(false);
                lottieDynamicProperties = null;
            }
            Boolean boolValueOf2 = Boolean.valueOf(z);
            boolean zK2 = gapComposerH.K(mutableStateL);
            if ((i5 & 896) == 256) {
                z3 = true;
            } else {
                z3 = false;
            }
            z4 = z3 | zK2;
            objX3 = gapComposerH.x();
            if (z4) {
                LVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$1 lVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$2 = new LVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$1(z, mutableState, mutableFloatState, mutableStateL, null);
                gapComposerH.q(lVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$2);
                objX3 = lVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$2;
            } else {
                LVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$1 lVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$3 = new LVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$1(z, mutableState, mutableFloatState, mutableStateL, null);
                gapComposerH.q(lVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$3);
                objX3 = lVExpandableListAnimatedIconKt$LVExpandableListAnimatedIcon$1$3;
            }
            EffectsKt.e(gapComposerH, boolValueOf2, (Function2) objX3);
            Modifier modifierO2 = SizeKt.o(dTFunctionNameModifier, f3);
            Alignment.f8582a.getClass();
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierO2);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw th;
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
            objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new ss(mutableFloatState, 28);
                gapComposerH.q(objX4);
            }
            gapComposer = gapComposerH;
            i7 = i9;
            LottieAnimationKt.b(f10755b2, (Function0) objX4, null, false, false, false, false, null, false, lottieDynamicProperties, null, null, false, false, null, null, false, gapComposer, 1073741872, 0, 130556);
            gapComposer.Z(true);
            modifier2 = dTFunctionNameModifier;
            num3 = num4;
            f4 = f3;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
            gapComposer = gapComposerH;
            i7 = i6;
            f4 = f3;
            num3 = num2;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: y50
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    LVExpandableListAnimatedIconKt.a(modifier2, i7, z, f4, num3, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                    return Unit.f71739a;
                }
            };
        }
    }
}
