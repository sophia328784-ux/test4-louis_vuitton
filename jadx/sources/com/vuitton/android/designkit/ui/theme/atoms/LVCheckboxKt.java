package com.vuitton.android.designkit.ui.theme.atoms;

import android.graphics.ColorFilter;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
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
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationCheckbox;
import defpackage.d21;
import defpackage.hb;
import defpackage.k40;
import defpackage.n00;
import defpackage.p50;
import defpackage.ql;
import defpackage.x20;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003¨\u0006\u0005²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "firstComposition", "Lcom/airbnb/lottie/LottieComposition;", "composition", "checked", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVCheckboxKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f48456a = new StaticProvidableCompositionLocal(new k40(10));

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48461a;

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
            f48461a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0148  */
    /* JADX WARN: Code duplicated, block: B:101:0x014f  */
    /* JADX WARN: Code duplicated, block: B:103:0x0157  */
    /* JADX WARN: Code duplicated, block: B:104:0x015e  */
    /* JADX WARN: Code duplicated, block: B:107:0x017a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:110:0x0180  */
    /* JADX WARN: Code duplicated, block: B:113:0x01a2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:114:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:117:0x01c4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:118:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:121:0x01f5  */
    /* JADX WARN: Code duplicated, block: B:122:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:125:0x01ff A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:126:0x0201  */
    /* JADX WARN: Code duplicated, block: B:129:0x022f  */
    /* JADX WARN: Code duplicated, block: B:132:0x0243  */
    /* JADX WARN: Code duplicated, block: B:133:0x0273  */
    /* JADX WARN: Code duplicated, block: B:135:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:137:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:138:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:142:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:144:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:147:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:149:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x004e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0056  */
    /* JADX WARN: Code duplicated, block: B:32:0x0059  */
    /* JADX WARN: Code duplicated, block: B:34:0x005d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:38:0x0066  */
    /* JADX WARN: Code duplicated, block: B:40:0x006a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:42:0x006e  */
    /* JADX WARN: Code duplicated, block: B:45:0x0078  */
    /* JADX WARN: Code duplicated, block: B:46:0x007b  */
    /* JADX WARN: Code duplicated, block: B:50:0x0082  */
    /* JADX WARN: Code duplicated, block: B:52:0x0087  */
    /* JADX WARN: Code duplicated, block: B:54:0x008b  */
    /* JADX WARN: Code duplicated, block: B:56:0x0093  */
    /* JADX WARN: Code duplicated, block: B:57:0x0096  */
    /* JADX WARN: Code duplicated, block: B:61:0x009e  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:69:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:77:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:78:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:83:0x00db  */
    /* JADX WARN: Code duplicated, block: B:84:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:87:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:90:0x0109  */
    /* JADX WARN: Code duplicated, block: B:92:0x010c  */
    /* JADX WARN: Code duplicated, block: B:93:0x011e  */
    /* JADX WARN: Code duplicated, block: B:95:0x0126  */
    /* JADX WARN: Code duplicated, block: B:97:0x0139  */
    /* JADX WARN: Code duplicated, block: B:98:0x0140  */
    public static final void a(Modifier modifier, boolean z, final boolean z2, LVColorScheme lVColorScheme, boolean z3, final Function1 function1, Composer composer, final int i2, final int i3) {
        int i4;
        boolean z4;
        boolean z5;
        int i5;
        int iOrdinal;
        int i6;
        int i7;
        int i8;
        boolean z6;
        final boolean z7;
        final boolean z8;
        final LVColorScheme lVColorScheme2;
        final Modifier modifier2;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z9;
        boolean z10;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MutableState mutableState;
        LottieCompositionResultImpl lottieCompositionResultImplH;
        int i9;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal;
        ConfigurationCheckbox configurationCheckbox;
        int i10;
        int i11;
        int i12;
        boolean zD;
        boolean z11;
        Object objX2;
        boolean zD2;
        Object objX3;
        boolean zD3;
        Object objX4;
        LottieAnimatable lottieAnimatableA;
        boolean z12;
        boolean z13;
        Object objX5;
        int i13;
        ComposableLambdaImpl composableLambdaImplB;
        Object objX6;
        Modifier modifierB;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        int i14;
        int i15;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVCheckbox");
        }
        function1.getClass();
        GapComposer gapComposerH = composer.h(-977602524);
        int i16 = i3 & 1;
        if (i16 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i17 = i3 & 2;
        if (i17 == 0) {
            if ((i2 & 48) == 0) {
                z4 = z;
                i4 |= gapComposerH.b(z4) ? 32 : 16;
            }
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                z5 = z2;
                if (gapComposerH.b(z5)) {
                    i15 = 256;
                } else {
                    i15 = 128;
                }
                i4 |= i15;
            } else {
                z5 = z2;
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
            i7 = i3 & 16;
            if (i7 != 0) {
                if ((i2 & 24576) == 0) {
                    if (gapComposerH.b(z3)) {
                        i8 = 16384;
                    } else {
                        i8 = 8192;
                    }
                    i4 |= i8;
                }
                if ((196608 & i2) != 0) {
                    if (gapComposerH.y(function1)) {
                        i14 = 131072;
                    } else {
                        i14 = 65536;
                    }
                    i4 |= i14;
                }
                if ((74899 & i4) != 74898) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                if (gapComposerH.p(i4 & 1, z6)) {
                    if (i16 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVCheckbox");
                    }
                    if (i17 != 0) {
                        z9 = true;
                    } else {
                        z9 = z4;
                    }
                    if (i5 != 0) {
                        lVColorScheme = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme = lVColorScheme;
                    }
                    if (i7 != 0) {
                        z10 = true;
                    } else {
                        z10 = z3;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = SnapshotStateKt.g(Boolean.TRUE);
                        gapComposerH.q(objX);
                    }
                    mutableState = (MutableState) objX;
                    lottieCompositionResultImplH = n00.h(R.raw.animation_checkbox, gapComposerH, 0);
                    i9 = WhenMappings.f48461a[lVColorScheme.ordinal()];
                    staticProvidableCompositionLocal = f48456a;
                    if (i9 != 1) {
                        gapComposerH.L(1121830219);
                        configurationCheckbox = ((LVCheckboxes) gapComposerH.k(staticProvidableCompositionLocal)).f48462a;
                        gapComposerH.Z(false);
                    } else {
                        if (i9 == 2) {
                            throw d21.u(gapComposerH, 1121827667, false);
                        }
                        gapComposerH.L(1121832497);
                        configurationCheckbox = ((LVCheckboxes) gapComposerH.k(staticProvidableCompositionLocal)).f48463b;
                        gapComposerH.Z(false);
                    }
                    if (z9) {
                        i10 = ColorKt.i(configurationCheckbox.f48544a);
                    } else {
                        i10 = ColorKt.i(configurationCheckbox.d);
                    }
                    if (z9) {
                        i11 = ColorKt.i(configurationCheckbox.f48545b);
                    } else {
                        i11 = ColorKt.i(configurationCheckbox.f48547e);
                    }
                    if (z9) {
                        i12 = ColorKt.i(configurationCheckbox.f48546c);
                    } else {
                        i12 = ColorKt.i(configurationCheckbox.f48548f);
                    }
                    String[] strArr = {"background", "**"};
                    ColorFilter colorFilter = LottieProperty.I;
                    zD = gapComposerH.d(i10);
                    z11 = z10;
                    objX2 = gapComposerH.x();
                    if (zD || objX2 == composer$Companion$Empty$1) {
                        objX2 = new hb(i10, 10);
                        gapComposerH.q(objX2);
                    }
                    LottieDynamicProperty lottieDynamicPropertyC = LottieDynamicPropertiesKt.c(colorFilter, strArr, (Function1) objX2, gapComposerH);
                    String[] strArr2 = {"stroke", "**"};
                    zD2 = gapComposerH.d(i11);
                    objX3 = gapComposerH.x();
                    if (zD2 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new hb(i11, 11);
                        gapComposerH.q(objX3);
                    }
                    LottieDynamicProperty lottieDynamicPropertyC2 = LottieDynamicPropertiesKt.c(colorFilter, strArr2, (Function1) objX3, gapComposerH);
                    String[] strArr3 = {"check icon", "**"};
                    zD3 = gapComposerH.d(i12);
                    objX4 = gapComposerH.x();
                    if (zD3 || objX4 == composer$Companion$Empty$1) {
                        objX4 = new hb(i12, 12);
                        gapComposerH.q(objX4);
                    }
                    LottieDynamicProperties lottieDynamicPropertiesA = LottieDynamicPropertiesKt.a(new LottieDynamicProperty[]{lottieDynamicPropertyC, lottieDynamicPropertyC2, LottieDynamicPropertiesKt.c(colorFilter, strArr3, (Function1) objX4, gapComposerH)}, gapComposerH);
                    lottieAnimatableA = LottieAnimatableKt.a(gapComposerH);
                    Boolean boolValueOf = Boolean.valueOf(z5);
                    boolean zK = gapComposerH.K(lottieAnimatableA) | gapComposerH.K(lottieCompositionResultImplH);
                    if ((i4 & 896) == 256) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    z13 = zK | z12;
                    objX5 = gapComposerH.x();
                    if (z13 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new LVCheckboxKt$LVCheckbox$1$1(lottieAnimatableA, z5, mutableState, lottieCompositionResultImplH, null);
                        gapComposerH.q(objX5);
                    }
                    i13 = (i4 >> 6) & 14;
                    EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX5);
                    composableLambdaImplB = ComposableLambdaKt.b(-96945818, new p50(lottieAnimatableA, lottieDynamicPropertiesA, 0), gapComposerH);
                    objX6 = gapComposerH.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new x20(22);
                        gapComposerH.q(objX6);
                    }
                    modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX6);
                    if (z11) {
                        gapComposerH.L(419527961);
                        IconButtonKt.c(z2, function1, modifierB, z9, null, null, ComposableLambdaKt.b(-1838129162, new ql(composableLambdaImplB, 9), gapComposerH), gapComposerH, 12582912 | i13 | ((i4 >> 12) & 112) | ((i4 << 6) & 7168));
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(419759376);
                        Dp.Companion companion = Dp.f11004c;
                        Modifier modifierO = SizeKt.o(modifierB, 24.0f);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
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
                        composableLambdaImplB.invoke(gapComposerH, 6);
                        gapComposerH.Z(true);
                        gapComposerH.Z(false);
                    }
                    z7 = z11;
                    z8 = z9;
                } else {
                    gapComposerH.D();
                    z7 = z3;
                    z8 = z4;
                }
                lVColorScheme2 = lVColorScheme;
                modifier2 = dTFunctionNameModifier;
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: q50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            LVCheckboxKt.a(modifier2, z8, z2, lVColorScheme2, z7, function1, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i4 |= 24576;
            if ((196608 & i2) != 0) {
                if (gapComposerH.y(function1)) {
                    i14 = 131072;
                } else {
                    i14 = 65536;
                }
                i4 |= i14;
            }
            if ((74899 & i4) != 74898) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (gapComposerH.p(i4 & 1, z6)) {
                if (i16 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVCheckbox");
                }
                if (i17 != 0) {
                    z9 = true;
                } else {
                    z9 = z4;
                }
                if (i5 != 0) {
                    lVColorScheme = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme = lVColorScheme;
                }
                if (i7 != 0) {
                    z10 = true;
                } else {
                    z10 = z3;
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(Boolean.TRUE);
                    gapComposerH.q(objX);
                }
                mutableState = (MutableState) objX;
                lottieCompositionResultImplH = n00.h(R.raw.animation_checkbox, gapComposerH, 0);
                i9 = WhenMappings.f48461a[lVColorScheme.ordinal()];
                staticProvidableCompositionLocal = f48456a;
                if (i9 != 1) {
                    gapComposerH.L(1121830219);
                    configurationCheckbox = ((LVCheckboxes) gapComposerH.k(staticProvidableCompositionLocal)).f48462a;
                    gapComposerH.Z(false);
                } else {
                    if (i9 == 2) {
                        throw d21.u(gapComposerH, 1121827667, false);
                    }
                    gapComposerH.L(1121832497);
                    configurationCheckbox = ((LVCheckboxes) gapComposerH.k(staticProvidableCompositionLocal)).f48463b;
                    gapComposerH.Z(false);
                }
                if (z9) {
                    i10 = ColorKt.i(configurationCheckbox.f48544a);
                } else {
                    i10 = ColorKt.i(configurationCheckbox.d);
                }
                if (z9) {
                    i11 = ColorKt.i(configurationCheckbox.f48545b);
                } else {
                    i11 = ColorKt.i(configurationCheckbox.f48547e);
                }
                if (z9) {
                    i12 = ColorKt.i(configurationCheckbox.f48546c);
                } else {
                    i12 = ColorKt.i(configurationCheckbox.f48548f);
                }
                String[] strArr4 = {"background", "**"};
                ColorFilter colorFilter2 = LottieProperty.I;
                zD = gapComposerH.d(i10);
                z11 = z10;
                objX2 = gapComposerH.x();
                if (zD) {
                    objX2 = new hb(i10, 10);
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new hb(i10, 10);
                    gapComposerH.q(objX2);
                }
                LottieDynamicProperty lottieDynamicPropertyC3 = LottieDynamicPropertiesKt.c(colorFilter2, strArr4, (Function1) objX2, gapComposerH);
                String[] strArr5 = {"stroke", "**"};
                zD2 = gapComposerH.d(i11);
                objX3 = gapComposerH.x();
                if (zD2) {
                    objX3 = new hb(i11, 11);
                    gapComposerH.q(objX3);
                } else {
                    objX3 = new hb(i11, 11);
                    gapComposerH.q(objX3);
                }
                LottieDynamicProperty lottieDynamicPropertyC4 = LottieDynamicPropertiesKt.c(colorFilter2, strArr5, (Function1) objX3, gapComposerH);
                String[] strArr6 = {"check icon", "**"};
                zD3 = gapComposerH.d(i12);
                objX4 = gapComposerH.x();
                if (zD3) {
                    objX4 = new hb(i12, 12);
                    gapComposerH.q(objX4);
                } else {
                    objX4 = new hb(i12, 12);
                    gapComposerH.q(objX4);
                }
                LottieDynamicProperties lottieDynamicPropertiesA2 = LottieDynamicPropertiesKt.a(new LottieDynamicProperty[]{lottieDynamicPropertyC3, lottieDynamicPropertyC4, LottieDynamicPropertiesKt.c(colorFilter2, strArr6, (Function1) objX4, gapComposerH)}, gapComposerH);
                lottieAnimatableA = LottieAnimatableKt.a(gapComposerH);
                Boolean boolValueOf2 = Boolean.valueOf(z5);
                boolean zK2 = gapComposerH.K(lottieAnimatableA) | gapComposerH.K(lottieCompositionResultImplH);
                if ((i4 & 896) == 256) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                z13 = zK2 | z12;
                objX5 = gapComposerH.x();
                if (z13) {
                    objX5 = new LVCheckboxKt$LVCheckbox$1$1(lottieAnimatableA, z5, mutableState, lottieCompositionResultImplH, null);
                    gapComposerH.q(objX5);
                } else {
                    objX5 = new LVCheckboxKt$LVCheckbox$1$1(lottieAnimatableA, z5, mutableState, lottieCompositionResultImplH, null);
                    gapComposerH.q(objX5);
                }
                i13 = (i4 >> 6) & 14;
                EffectsKt.e(gapComposerH, boolValueOf2, (Function2) objX5);
                composableLambdaImplB = ComposableLambdaKt.b(-96945818, new p50(lottieAnimatableA, lottieDynamicPropertiesA2, 0), gapComposerH);
                objX6 = gapComposerH.x();
                if (objX6 == composer$Companion$Empty$1) {
                    objX6 = new x20(22);
                    gapComposerH.q(objX6);
                }
                modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX6);
                if (z11) {
                    gapComposerH.L(419527961);
                    IconButtonKt.c(z2, function1, modifierB, z9, null, null, ComposableLambdaKt.b(-1838129162, new ql(composableLambdaImplB, 9), gapComposerH), gapComposerH, 12582912 | i13 | ((i4 >> 12) & 112) | ((i4 << 6) & 7168));
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(419759376);
                    Dp.Companion companion2 = Dp.f11004c;
                    Modifier modifierO2 = SizeKt.o(modifierB, 24.0f);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierO2);
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
                    composableLambdaImplB.invoke(gapComposerH, 6);
                    gapComposerH.Z(true);
                    gapComposerH.Z(false);
                }
                z7 = z11;
                z8 = z9;
            } else {
                gapComposerH.D();
                z7 = z3;
                z8 = z4;
            }
            lVColorScheme2 = lVColorScheme;
            modifier2 = dTFunctionNameModifier;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: q50
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        LVCheckboxKt.a(modifier2, z8, z2, lVColorScheme2, z7, function1, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= 48;
        z4 = z;
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            z5 = z2;
            if (gapComposerH.b(z5)) {
                i15 = 256;
            } else {
                i15 = 128;
            }
            i4 |= i15;
        } else {
            z5 = z2;
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
        i7 = i3 & 16;
        if (i7 != 0) {
            if ((i2 & 24576) == 0) {
                if (gapComposerH.b(z3)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i4 |= i8;
            }
            if ((196608 & i2) != 0) {
                if (gapComposerH.y(function1)) {
                    i14 = 131072;
                } else {
                    i14 = 65536;
                }
                i4 |= i14;
            }
            if ((74899 & i4) != 74898) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (gapComposerH.p(i4 & 1, z6)) {
                if (i16 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVCheckbox");
                }
                if (i17 != 0) {
                    z9 = true;
                } else {
                    z9 = z4;
                }
                if (i5 != 0) {
                    lVColorScheme = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme = lVColorScheme;
                }
                if (i7 != 0) {
                    z10 = true;
                } else {
                    z10 = z3;
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(Boolean.TRUE);
                    gapComposerH.q(objX);
                }
                mutableState = (MutableState) objX;
                lottieCompositionResultImplH = n00.h(R.raw.animation_checkbox, gapComposerH, 0);
                i9 = WhenMappings.f48461a[lVColorScheme.ordinal()];
                staticProvidableCompositionLocal = f48456a;
                if (i9 != 1) {
                    gapComposerH.L(1121830219);
                    configurationCheckbox = ((LVCheckboxes) gapComposerH.k(staticProvidableCompositionLocal)).f48462a;
                    gapComposerH.Z(false);
                } else {
                    if (i9 == 2) {
                        throw d21.u(gapComposerH, 1121827667, false);
                    }
                    gapComposerH.L(1121832497);
                    configurationCheckbox = ((LVCheckboxes) gapComposerH.k(staticProvidableCompositionLocal)).f48463b;
                    gapComposerH.Z(false);
                }
                if (z9) {
                    i10 = ColorKt.i(configurationCheckbox.f48544a);
                } else {
                    i10 = ColorKt.i(configurationCheckbox.d);
                }
                if (z9) {
                    i11 = ColorKt.i(configurationCheckbox.f48545b);
                } else {
                    i11 = ColorKt.i(configurationCheckbox.f48547e);
                }
                if (z9) {
                    i12 = ColorKt.i(configurationCheckbox.f48546c);
                } else {
                    i12 = ColorKt.i(configurationCheckbox.f48548f);
                }
                String[] strArr7 = {"background", "**"};
                ColorFilter colorFilter3 = LottieProperty.I;
                zD = gapComposerH.d(i10);
                z11 = z10;
                objX2 = gapComposerH.x();
                if (zD) {
                    objX2 = new hb(i10, 10);
                    gapComposerH.q(objX2);
                } else {
                    objX2 = new hb(i10, 10);
                    gapComposerH.q(objX2);
                }
                LottieDynamicProperty lottieDynamicPropertyC5 = LottieDynamicPropertiesKt.c(colorFilter3, strArr7, (Function1) objX2, gapComposerH);
                String[] strArr8 = {"stroke", "**"};
                zD2 = gapComposerH.d(i11);
                objX3 = gapComposerH.x();
                if (zD2) {
                    objX3 = new hb(i11, 11);
                    gapComposerH.q(objX3);
                } else {
                    objX3 = new hb(i11, 11);
                    gapComposerH.q(objX3);
                }
                LottieDynamicProperty lottieDynamicPropertyC6 = LottieDynamicPropertiesKt.c(colorFilter3, strArr8, (Function1) objX3, gapComposerH);
                String[] strArr9 = {"check icon", "**"};
                zD3 = gapComposerH.d(i12);
                objX4 = gapComposerH.x();
                if (zD3) {
                    objX4 = new hb(i12, 12);
                    gapComposerH.q(objX4);
                } else {
                    objX4 = new hb(i12, 12);
                    gapComposerH.q(objX4);
                }
                LottieDynamicProperties lottieDynamicPropertiesA3 = LottieDynamicPropertiesKt.a(new LottieDynamicProperty[]{lottieDynamicPropertyC5, lottieDynamicPropertyC6, LottieDynamicPropertiesKt.c(colorFilter3, strArr9, (Function1) objX4, gapComposerH)}, gapComposerH);
                lottieAnimatableA = LottieAnimatableKt.a(gapComposerH);
                Boolean boolValueOf3 = Boolean.valueOf(z5);
                boolean zK3 = gapComposerH.K(lottieAnimatableA) | gapComposerH.K(lottieCompositionResultImplH);
                if ((i4 & 896) == 256) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                z13 = zK3 | z12;
                objX5 = gapComposerH.x();
                if (z13) {
                    objX5 = new LVCheckboxKt$LVCheckbox$1$1(lottieAnimatableA, z5, mutableState, lottieCompositionResultImplH, null);
                    gapComposerH.q(objX5);
                } else {
                    objX5 = new LVCheckboxKt$LVCheckbox$1$1(lottieAnimatableA, z5, mutableState, lottieCompositionResultImplH, null);
                    gapComposerH.q(objX5);
                }
                i13 = (i4 >> 6) & 14;
                EffectsKt.e(gapComposerH, boolValueOf3, (Function2) objX5);
                composableLambdaImplB = ComposableLambdaKt.b(-96945818, new p50(lottieAnimatableA, lottieDynamicPropertiesA3, 0), gapComposerH);
                objX6 = gapComposerH.x();
                if (objX6 == composer$Companion$Empty$1) {
                    objX6 = new x20(22);
                    gapComposerH.q(objX6);
                }
                modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX6);
                if (z11) {
                    gapComposerH.L(419527961);
                    IconButtonKt.c(z2, function1, modifierB, z9, null, null, ComposableLambdaKt.b(-1838129162, new ql(composableLambdaImplB, 9), gapComposerH), gapComposerH, 12582912 | i13 | ((i4 >> 12) & 112) | ((i4 << 6) & 7168));
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(419759376);
                    Dp.Companion companion3 = Dp.f11004c;
                    Modifier modifierO3 = SizeKt.o(modifierB, 24.0f);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierO3);
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
                    composableLambdaImplB.invoke(gapComposerH, 6);
                    gapComposerH.Z(true);
                    gapComposerH.Z(false);
                }
                z7 = z11;
                z8 = z9;
            } else {
                gapComposerH.D();
                z7 = z3;
                z8 = z4;
            }
            lVColorScheme2 = lVColorScheme;
            modifier2 = dTFunctionNameModifier;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: q50
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        LVCheckboxKt.a(modifier2, z8, z2, lVColorScheme2, z7, function1, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= 24576;
        if ((196608 & i2) != 0) {
            if (gapComposerH.y(function1)) {
                i14 = 131072;
            } else {
                i14 = 65536;
            }
            i4 |= i14;
        }
        if ((74899 & i4) != 74898) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (gapComposerH.p(i4 & 1, z6)) {
            if (i16 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVCheckbox");
            }
            if (i17 != 0) {
                z9 = true;
            } else {
                z9 = z4;
            }
            if (i5 != 0) {
                lVColorScheme = LVColorScheme.DEFAULT;
            } else {
                lVColorScheme = lVColorScheme;
            }
            if (i7 != 0) {
                z10 = true;
            } else {
                z10 = z3;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX);
            }
            mutableState = (MutableState) objX;
            lottieCompositionResultImplH = n00.h(R.raw.animation_checkbox, gapComposerH, 0);
            i9 = WhenMappings.f48461a[lVColorScheme.ordinal()];
            staticProvidableCompositionLocal = f48456a;
            if (i9 != 1) {
                gapComposerH.L(1121830219);
                configurationCheckbox = ((LVCheckboxes) gapComposerH.k(staticProvidableCompositionLocal)).f48462a;
                gapComposerH.Z(false);
            } else {
                if (i9 == 2) {
                    throw d21.u(gapComposerH, 1121827667, false);
                }
                gapComposerH.L(1121832497);
                configurationCheckbox = ((LVCheckboxes) gapComposerH.k(staticProvidableCompositionLocal)).f48463b;
                gapComposerH.Z(false);
            }
            if (z9) {
                i10 = ColorKt.i(configurationCheckbox.f48544a);
            } else {
                i10 = ColorKt.i(configurationCheckbox.d);
            }
            if (z9) {
                i11 = ColorKt.i(configurationCheckbox.f48545b);
            } else {
                i11 = ColorKt.i(configurationCheckbox.f48547e);
            }
            if (z9) {
                i12 = ColorKt.i(configurationCheckbox.f48546c);
            } else {
                i12 = ColorKt.i(configurationCheckbox.f48548f);
            }
            String[] strArr10 = {"background", "**"};
            ColorFilter colorFilter4 = LottieProperty.I;
            zD = gapComposerH.d(i10);
            z11 = z10;
            objX2 = gapComposerH.x();
            if (zD) {
                objX2 = new hb(i10, 10);
                gapComposerH.q(objX2);
            } else {
                objX2 = new hb(i10, 10);
                gapComposerH.q(objX2);
            }
            LottieDynamicProperty lottieDynamicPropertyC7 = LottieDynamicPropertiesKt.c(colorFilter4, strArr10, (Function1) objX2, gapComposerH);
            String[] strArr11 = {"stroke", "**"};
            zD2 = gapComposerH.d(i11);
            objX3 = gapComposerH.x();
            if (zD2) {
                objX3 = new hb(i11, 11);
                gapComposerH.q(objX3);
            } else {
                objX3 = new hb(i11, 11);
                gapComposerH.q(objX3);
            }
            LottieDynamicProperty lottieDynamicPropertyC8 = LottieDynamicPropertiesKt.c(colorFilter4, strArr11, (Function1) objX3, gapComposerH);
            String[] strArr12 = {"check icon", "**"};
            zD3 = gapComposerH.d(i12);
            objX4 = gapComposerH.x();
            if (zD3) {
                objX4 = new hb(i12, 12);
                gapComposerH.q(objX4);
            } else {
                objX4 = new hb(i12, 12);
                gapComposerH.q(objX4);
            }
            LottieDynamicProperties lottieDynamicPropertiesA4 = LottieDynamicPropertiesKt.a(new LottieDynamicProperty[]{lottieDynamicPropertyC7, lottieDynamicPropertyC8, LottieDynamicPropertiesKt.c(colorFilter4, strArr12, (Function1) objX4, gapComposerH)}, gapComposerH);
            lottieAnimatableA = LottieAnimatableKt.a(gapComposerH);
            Boolean boolValueOf4 = Boolean.valueOf(z5);
            boolean zK4 = gapComposerH.K(lottieAnimatableA) | gapComposerH.K(lottieCompositionResultImplH);
            if ((i4 & 896) == 256) {
                z12 = true;
            } else {
                z12 = false;
            }
            z13 = zK4 | z12;
            objX5 = gapComposerH.x();
            if (z13) {
                objX5 = new LVCheckboxKt$LVCheckbox$1$1(lottieAnimatableA, z5, mutableState, lottieCompositionResultImplH, null);
                gapComposerH.q(objX5);
            } else {
                objX5 = new LVCheckboxKt$LVCheckbox$1$1(lottieAnimatableA, z5, mutableState, lottieCompositionResultImplH, null);
                gapComposerH.q(objX5);
            }
            i13 = (i4 >> 6) & 14;
            EffectsKt.e(gapComposerH, boolValueOf4, (Function2) objX5);
            composableLambdaImplB = ComposableLambdaKt.b(-96945818, new p50(lottieAnimatableA, lottieDynamicPropertiesA4, 0), gapComposerH);
            objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = new x20(22);
                gapComposerH.q(objX6);
            }
            modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX6);
            if (z11) {
                gapComposerH.L(419527961);
                IconButtonKt.c(z2, function1, modifierB, z9, null, null, ComposableLambdaKt.b(-1838129162, new ql(composableLambdaImplB, 9), gapComposerH), gapComposerH, 12582912 | i13 | ((i4 >> 12) & 112) | ((i4 << 6) & 7168));
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(419759376);
                Dp.Companion companion4 = Dp.f11004c;
                Modifier modifierO4 = SizeKt.o(modifierB, 24.0f);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierO4);
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
                composableLambdaImplB.invoke(gapComposerH, 6);
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            }
            z7 = z11;
            z8 = z9;
        } else {
            gapComposerH.D();
            z7 = z3;
            z8 = z4;
        }
        lVColorScheme2 = lVColorScheme;
        modifier2 = dTFunctionNameModifier;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: q50
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    LVCheckboxKt.a(modifier2, z8, z2, lVColorScheme2, z7, function1, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }
}
