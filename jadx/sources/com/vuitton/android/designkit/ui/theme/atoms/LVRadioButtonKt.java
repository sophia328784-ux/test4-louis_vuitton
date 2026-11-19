package com.vuitton.android.designkit.ui.theme.atoms;

import android.graphics.ColorFilter;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieAnimatableKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.airbnb.lottie.compose.LottieDynamicProperties;
import com.airbnb.lottie.compose.LottieDynamicPropertiesKt;
import com.airbnb.lottie.compose.LottieDynamicProperty;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationRadioButton;
import defpackage.c70;
import defpackage.d21;
import defpackage.d70;
import defpackage.f10;
import defpackage.hb;
import defpackage.l00;
import defpackage.n00;
import defpackage.n60;
import defpackage.p50;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u00028\nX\u008a\u0084\u0002"}, d2 = {"", "firstComposition", "Lcom/airbnb/lottie/LottieComposition;", "composition", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVRadioButtonKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f48494a = new StaticProvidableCompositionLocal(new c70(0));

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48499a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f48499a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0051  */
    /* JADX WARN: Code duplicated, block: B:31:0x0057  */
    /* JADX WARN: Code duplicated, block: B:32:0x005a  */
    /* JADX WARN: Code duplicated, block: B:36:0x0061  */
    /* JADX WARN: Code duplicated, block: B:37:0x0064  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:44:0x0076  */
    /* JADX WARN: Code duplicated, block: B:45:0x0079  */
    /* JADX WARN: Code duplicated, block: B:49:0x0080  */
    /* JADX WARN: Code duplicated, block: B:51:0x0088  */
    /* JADX WARN: Code duplicated, block: B:52:0x008b  */
    /* JADX WARN: Code duplicated, block: B:54:0x008f  */
    /* JADX WARN: Code duplicated, block: B:57:0x0099  */
    /* JADX WARN: Code duplicated, block: B:58:0x009b  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:62:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:65:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:73:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:75:0x00db  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:79:0x0105  */
    /* JADX WARN: Code duplicated, block: B:82:0x0112  */
    /* JADX WARN: Code duplicated, block: B:84:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, boolean z, boolean z2, LVColorScheme lVColorScheme, Function1 function1, Composer composer, int i2, int i3) {
        int i4;
        boolean z3;
        int i5;
        int iOrdinal;
        int i6;
        Function1 function2;
        boolean z4;
        LVColorScheme lVColorScheme2;
        Modifier modifier2;
        boolean z5;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z6;
        LVColorScheme lVColorScheme3;
        int i7;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal;
        ConfigurationRadioButton configurationRadioButton;
        int i8;
        int i9;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVRadioButton");
        }
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1304698556);
        int i10 = i3 & 1;
        if (i10 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i11 = i3 & 2;
        if (i11 == 0) {
            if ((i2 & 48) == 0) {
                z3 = z;
                i4 |= gapComposerH.b(z3) ? 32 : 16;
            }
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                if (gapComposerH.b(z2)) {
                    i9 = 256;
                } else {
                    i9 = 128;
                }
                i4 |= i9;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                i4 |= 3072;
            } else if ((i2 & 3072) == 0) {
                if (lVColorScheme == null) {
                    iOrdinal = -1;
                } else {
                    iOrdinal = lVColorScheme.ordinal();
                }
                if (gapComposerH.d(iOrdinal)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            if ((i2 & 24576) == 0) {
                function2 = function1;
                if (gapComposerH.y(function2)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i4 |= i8;
            } else {
                function2 = function1;
            }
            if ((i4 & 9363) != 9362) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i4 & 1, z4)) {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVRadioButton");
                }
                if (i11 != 0) {
                    z6 = true;
                } else {
                    z6 = z3;
                }
                if (i5 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                i7 = WhenMappings.f48499a[lVColorScheme3.ordinal()];
                staticProvidableCompositionLocal = f48494a;
                if (i7 != 1) {
                    gapComposerH.L(315148939);
                    configurationRadioButton = ((LVRadioButtons) gapComposerH.k(staticProvidableCompositionLocal)).f48500a;
                    gapComposerH.Z(false);
                } else {
                    if (i7 == 2) {
                        throw d21.u(gapComposerH, 315146327, false);
                    }
                    gapComposerH.L(315151281);
                    configurationRadioButton = ((LVRadioButtons) gapComposerH.k(staticProvidableCompositionLocal)).f48501b;
                    gapComposerH.Z(false);
                }
                Modifier modifier3 = dTFunctionNameModifier;
                b(modifier3, z6, z2, function2, configurationRadioButton, gapComposerH, (i4 & 1022) | ((i4 >> 3) & 7168));
                lVColorScheme2 = lVColorScheme3;
                modifier2 = modifier3;
                z5 = z6;
            } else {
                gapComposerH.D();
                lVColorScheme2 = lVColorScheme;
                modifier2 = dTFunctionNameModifier;
                z5 = z3;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new d70(modifier2, z5, z2, lVColorScheme2, function1, i2, i3, 0);
            }
        }
        i4 |= 48;
        z3 = z;
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            if (gapComposerH.b(z2)) {
                i9 = 256;
            } else {
                i9 = 128;
            }
            i4 |= i9;
        }
        i5 = i3 & 8;
        if (i5 != 0) {
            i4 |= 3072;
        } else if ((i2 & 3072) == 0) {
            if (lVColorScheme == null) {
                iOrdinal = -1;
            } else {
                iOrdinal = lVColorScheme.ordinal();
            }
            if (gapComposerH.d(iOrdinal)) {
                i6 = 2048;
            } else {
                i6 = 1024;
            }
            i4 |= i6;
        }
        if ((i2 & 24576) == 0) {
            function2 = function1;
            if (gapComposerH.y(function2)) {
                i8 = 16384;
            } else {
                i8 = 8192;
            }
            i4 |= i8;
        } else {
            function2 = function1;
        }
        if ((i4 & 9363) != 9362) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (gapComposerH.p(i4 & 1, z4)) {
            if (i10 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVRadioButton");
            }
            if (i11 != 0) {
                z6 = true;
            } else {
                z6 = z3;
            }
            if (i5 != 0) {
                lVColorScheme3 = LVColorScheme.DEFAULT;
            } else {
                lVColorScheme3 = lVColorScheme;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            i7 = WhenMappings.f48499a[lVColorScheme3.ordinal()];
            staticProvidableCompositionLocal = f48494a;
            if (i7 != 1) {
                gapComposerH.L(315148939);
                configurationRadioButton = ((LVRadioButtons) gapComposerH.k(staticProvidableCompositionLocal)).f48500a;
                gapComposerH.Z(false);
            } else {
                if (i7 == 2) {
                    throw d21.u(gapComposerH, 315146327, false);
                }
                gapComposerH.L(315151281);
                configurationRadioButton = ((LVRadioButtons) gapComposerH.k(staticProvidableCompositionLocal)).f48501b;
                gapComposerH.Z(false);
            }
            Modifier modifier4 = dTFunctionNameModifier;
            b(modifier4, z6, z2, function2, configurationRadioButton, gapComposerH, (i4 & 1022) | ((i4 >> 3) & 7168));
            lVColorScheme2 = lVColorScheme3;
            modifier2 = modifier4;
            z5 = z6;
        } else {
            gapComposerH.D();
            lVColorScheme2 = lVColorScheme;
            modifier2 = dTFunctionNameModifier;
            z5 = z3;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new d70(modifier2, z5, z2, lVColorScheme2, function1, i2, i3, 0);
        }
    }

    public static final void b(Modifier modifier, boolean z, boolean z2, Function1 function1, ConfigurationRadioButton configurationRadioButton, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        int i4;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVRadioButtonInternal");
        }
        Modifier modifier2 = modifierE;
        function1.getClass();
        configurationRadioButton.getClass();
        GapComposer gapComposerH = composer.h(-1936886700);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.b(z) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(configurationRadioButton) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$2) {
                objX = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            LottieCompositionResultImpl lottieCompositionResultImplH = n00.h(R.raw.animation_radiobutton, gapComposerH, 0);
            if (z) {
                i4 = ColorKt.i(z2 ? configurationRadioButton.f48572a : configurationRadioButton.f48573b);
            } else {
                i4 = ColorKt.i(z2 ? configurationRadioButton.f48574c : configurationRadioButton.d);
            }
            String[] strArr = {"circle", "**"};
            ColorFilter colorFilter = LottieProperty.I;
            boolean z3 = (i3 & 57344) == 16384;
            Object objX2 = gapComposerH.x();
            if (z3 || objX2 == composer$Companion$Empty$2) {
                objX2 = new l00(configurationRadioButton, 16);
                gapComposerH.q(objX2);
            }
            LottieDynamicProperty lottieDynamicPropertyC = LottieDynamicPropertiesKt.c(colorFilter, strArr, (Function1) objX2, gapComposerH);
            String[] strArr2 = {"background", "**"};
            boolean zD = gapComposerH.d(i4);
            Object objX3 = gapComposerH.x();
            if (zD || objX3 == composer$Companion$Empty$2) {
                objX3 = new hb(i4, 15);
                gapComposerH.q(objX3);
            }
            LottieDynamicProperties lottieDynamicPropertiesA = LottieDynamicPropertiesKt.a(new LottieDynamicProperty[]{lottieDynamicPropertyC, LottieDynamicPropertiesKt.c(colorFilter, strArr2, (Function1) objX3, gapComposerH)}, gapComposerH);
            LottieAnimatable lottieAnimatableA = LottieAnimatableKt.a(gapComposerH);
            Boolean boolValueOf = Boolean.valueOf(z2);
            boolean zK = gapComposerH.K(lottieAnimatableA) | gapComposerH.K(lottieCompositionResultImplH) | ((i3 & 896) == 256);
            Object objX4 = gapComposerH.x();
            if (zK || objX4 == composer$Companion$Empty$2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                LVRadioButtonKt$LVRadioButtonInternal$1$1 lVRadioButtonKt$LVRadioButtonInternal$1$1 = new LVRadioButtonKt$LVRadioButtonInternal$1$1(lottieAnimatableA, z2, mutableState, lottieCompositionResultImplH, null);
                gapComposerH.q(lVRadioButtonKt$LVRadioButtonInternal$1$1);
                objX4 = lVRadioButtonKt$LVRadioButtonInternal$1$1;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            }
            int i5 = i3 >> 6;
            int i6 = i5 & 14;
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX4);
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new n60(4);
                gapComposerH.q(objX5);
            }
            gapComposer = gapComposerH;
            IconButtonKt.c(z2, function1, SemanticsModifierKt.b(modifier2, false, (Function1) objX5), z, null, null, ComposableLambdaKt.b(-417582425, new p50(lottieAnimatableA, lottieDynamicPropertiesA, 1), gapComposerH), gapComposer, (i5 & 112) | i6 | 12582912 | ((i3 << 6) & 7168));
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f10(modifier2, z, z2, function1, configurationRadioButton, i2);
        }
    }
}
