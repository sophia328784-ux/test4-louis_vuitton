package com.vuitton.android.designkit.ui.theme.atoms.textfield;

import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import com.batch.android.s.b;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTextField;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVReadOnlyTextFieldKt;
import defpackage.d21;
import defpackage.n60;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0006²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002"}, d2 = {"", "value", "", b.a.f24018f, "", "showSupportingText", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVReadOnlyTextFieldKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48623a;

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
            f48623a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0135  */
    /* JADX WARN: Code duplicated, block: B:106:0x013e  */
    /* JADX WARN: Code duplicated, block: B:109:0x0147 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:110:0x0149  */
    /* JADX WARN: Code duplicated, block: B:111:0x0151  */
    /* JADX WARN: Code duplicated, block: B:113:0x0155  */
    /* JADX WARN: Code duplicated, block: B:114:0x015a  */
    /* JADX WARN: Code duplicated, block: B:116:0x015e  */
    /* JADX WARN: Code duplicated, block: B:117:0x0160  */
    /* JADX WARN: Code duplicated, block: B:119:0x0163  */
    /* JADX WARN: Code duplicated, block: B:122:0x0167  */
    /* JADX WARN: Code duplicated, block: B:123:0x0169  */
    /* JADX WARN: Code duplicated, block: B:126:0x0181  */
    /* JADX WARN: Code duplicated, block: B:129:0x018c  */
    /* JADX WARN: Code duplicated, block: B:130:0x018f  */
    /* JADX WARN: Code duplicated, block: B:133:0x0199  */
    /* JADX WARN: Code duplicated, block: B:136:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:138:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:139:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:141:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:144:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:145:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:148:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:149:0x0200  */
    /* JADX WARN: Code duplicated, block: B:152:0x0209 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:153:0x020b  */
    /* JADX WARN: Code duplicated, block: B:156:0x0223  */
    /* JADX WARN: Code duplicated, block: B:158:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:161:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:163:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x0062  */
    /* JADX WARN: Code duplicated, block: B:34:0x0065  */
    /* JADX WARN: Code duplicated, block: B:36:0x0069 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x006b  */
    /* JADX WARN: Code duplicated, block: B:38:0x006d  */
    /* JADX WARN: Code duplicated, block: B:41:0x0077  */
    /* JADX WARN: Code duplicated, block: B:42:0x007a  */
    /* JADX WARN: Code duplicated, block: B:46:0x0081  */
    /* JADX WARN: Code duplicated, block: B:48:0x0086  */
    /* JADX WARN: Code duplicated, block: B:50:0x008a  */
    /* JADX WARN: Code duplicated, block: B:52:0x0092  */
    /* JADX WARN: Code duplicated, block: B:53:0x0095  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:60:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:67:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:77:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:86:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:87:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:91:0x0107  */
    /* JADX WARN: Code duplicated, block: B:92:0x010a  */
    /* JADX WARN: Code duplicated, block: B:94:0x0110  */
    /* JADX WARN: Code duplicated, block: B:96:0x0118  */
    /* JADX WARN: Code duplicated, block: B:97:0x011b  */
    /* JADX WARN: Code duplicated, block: B:99:0x0122  */
    public static final void a(final String str, Modifier modifier, Modifier modifier2, LVColorScheme lVColorScheme, boolean z, final String str2, boolean z2, String str3, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, MutableInteractionSource mutableInteractionSource, final Function0 function0, Integer num, Composer composer, final int i2, final int i3, final int i4) {
        int i5;
        Modifier modifier3;
        int i6;
        int iOrdinal;
        int i7;
        int i8;
        boolean z3;
        int i9;
        int i10;
        boolean z4;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        boolean z5;
        GapComposer gapComposer;
        final LVColorScheme lVColorScheme2;
        final KeyboardOptions keyboardOptions2;
        final KeyboardActions keyboardActions2;
        final Integer num2;
        final boolean z6;
        final Modifier modifier4;
        final boolean z7;
        final String str4;
        final MutableInteractionSource mutableInteractionSource2;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        LVColorScheme lVColorScheme3;
        boolean z8;
        String str5;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MutableInteractionSource mutableInteractionSource3;
        Integer num3;
        Object objX2;
        FocusManager focusManager;
        int i21;
        ConfigurationTextField configurationTextField;
        int i22;
        boolean z9;
        boolean z10;
        boolean z11;
        Object objX3;
        Object objX4;
        int i23;
        int i24;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVReadOnlyTextField");
        }
        str.getClass();
        GapComposer gapComposerH = composer.h(-1790871723);
        if ((i2 & 6) == 0) {
            i5 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i5 = i2;
        }
        if ((i2 & 48) == 0) {
            i5 |= gapComposerH.K(modifierE) ? 32 : 16;
        }
        int i25 = i4 & 4;
        if (i25 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                modifier3 = modifier2;
                i5 |= gapComposerH.K(modifier3) ? 256 : 128;
            }
            i6 = i4 & 8;
            if (i6 != 0) {
                i5 |= 3072;
            } else if ((i2 & 3072) == 0) {
                if (lVColorScheme == null) {
                    iOrdinal = -1;
                } else {
                    iOrdinal = lVColorScheme.ordinal();
                }
                if (gapComposerH.d(iOrdinal)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i5 |= i7;
            }
            i8 = i4 & 16;
            if (i8 != 0) {
                if ((i2 & 24576) == 0) {
                    z3 = z;
                    if (gapComposerH.b(z3)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i5 |= i9;
                }
                if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.K(str2)) {
                        i24 = 131072;
                    } else {
                        i24 = 65536;
                    }
                    i5 |= i24;
                }
                i10 = i4 & 64;
                if (i10 != 0) {
                    i5 |= 1572864;
                    z4 = z2;
                } else {
                    z4 = z2;
                    if ((i2 & 1572864) == 0) {
                        if (gapComposerH.b(z4)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i5 |= i11;
                    }
                }
                i12 = i4 & 128;
                if (i12 != 0) {
                    i5 |= 12582912;
                } else if ((i2 & 12582912) == 0) {
                    if (gapComposerH.K(str3)) {
                        i13 = 8388608;
                    } else {
                        i13 = 4194304;
                    }
                    i5 |= i13;
                }
                i14 = i5 | 905969664;
                i15 = i3 | 6;
                if ((i3 & 48) == 0) {
                    if (gapComposerH.y(function0)) {
                        i23 = 32;
                    } else {
                        i23 = 16;
                    }
                    i15 |= i23;
                }
                i16 = i15;
                i17 = i4 & 4096;
                if (i17 != 0) {
                    i18 = i16 | KyberEngine.KyberPolyBytes;
                } else if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
                    if (gapComposerH.K(num)) {
                        i19 = 256;
                    } else {
                        i19 = 128;
                    }
                    i18 = i16 | i19;
                } else {
                    i18 = i16;
                }
                i20 = i18 | 3072;
                if ((i14 & 306783379) == 306783378 || (i20 & 1171) != 1170) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                if (gapComposerH.p(i14 & 1, z5)) {
                    if (i25 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVReadOnlyTextField");
                    } else {
                        dTFunctionNameModifier = modifier3;
                    }
                    if (i6 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i8 != 0) {
                        z8 = true;
                    } else {
                        z8 = z3;
                    }
                    if (i10 != 0) {
                        z4 = false;
                    }
                    if (i12 != 0) {
                        str5 = null;
                    } else {
                        str5 = str3;
                    }
                    KeyboardOptions.f5918h.getClass();
                    KeyboardOptions keyboardOptions3 = KeyboardOptions.f5919i;
                    KeyboardActions.g.getClass();
                    KeyboardActions keyboardActions3 = KeyboardActions.f5912h;
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = InteractionSourceKt.a();
                        gapComposerH.q(objX);
                    }
                    mutableInteractionSource3 = (MutableInteractionSource) objX;
                    if (i17 != 0) {
                        num3 = null;
                    } else {
                        num3 = num;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new FocusRequester();
                        gapComposerH.q(objX2);
                    }
                    FocusRequester focusRequester = (FocusRequester) objX2;
                    focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
                    i21 = WhenMappings.f48623a[lVColorScheme3.ordinal()];
                    if (i21 != 1) {
                        gapComposerH.L(1254187900);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                        gapComposerH.Z(false);
                    } else {
                        if (i21 == 2) {
                            throw d21.u(gapComposerH, 1254185348, false);
                        }
                        gapComposerH.L(1254190178);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                        gapComposerH.Z(false);
                    }
                    i22 = i20 & 14;
                    ConfigurationTextField configurationTextField2 = configurationTextField;
                    if (i22 == 4) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    boolean zY = z9 | gapComposerH.y(focusManager);
                    if ((i20 & 112) == 32) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    z11 = zY | z10;
                    objX3 = gapComposerH.x();
                    if (z11 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new LVReadOnlyTextFieldKt$LVReadOnlyTextField$3$1(mutableInteractionSource3, focusManager, function0, null);
                        gapComposerH.q(objX3);
                    }
                    EffectsKt.e(gapComposerH, mutableInteractionSource3, (Function2) objX3);
                    Modifier modifierA = FocusRequesterModifierKt.a(modifierE, focusRequester);
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new n60(5);
                        gapComposerH.q(objX4);
                    }
                    int i26 = i14 << 6;
                    int i27 = i14 >> 21;
                    gapComposer = gapComposerH;
                    LVTextFieldInternalKt.b(str, (Function1) objX4, modifierA, configurationTextField2, z8, true, str2, null, z4, str5, null, keyboardOptions3, keyboardActions3, true, 0, 0, num3, null, function0, null, mutableInteractionSource3, false, null, null, dTFunctionNameModifier, null, false, gapComposer, 196656 | (i14 & 14) | (i14 & 57344) | ((i14 << 3) & 3670016) | (i26 & 234881024) | (i26 & 1879048192), (i27 & 896) | (i27 & 112) | 3072 | ((i20 << 12) & 3670016) | ((i20 << 21) & 234881024), (i26 & 57344) | i22 | ((i20 << 9) & 3670016), 48940160);
                    z7 = z8;
                    z6 = z4;
                    str4 = str5;
                    keyboardOptions2 = keyboardOptions3;
                    keyboardActions2 = keyboardActions3;
                    num2 = num3;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    modifier4 = dTFunctionNameModifier;
                    lVColorScheme2 = lVColorScheme3;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVColorScheme2 = lVColorScheme;
                    keyboardOptions2 = keyboardOptions;
                    keyboardActions2 = keyboardActions;
                    num2 = num;
                    z6 = z4;
                    modifier4 = modifier3;
                    z7 = z3;
                    str4 = str3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Modifier modifier5 = modifierE;
                    recomposeScopeImplB0.d = new Function2() { // from class: e70
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            LVReadOnlyTextFieldKt.a(str, modifier5, modifier4, lVColorScheme2, z7, str2, z6, str4, keyboardOptions2, keyboardActions2, mutableInteractionSource2, function0, num2, (Composer) obj, iA, iA2, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i5 |= 24576;
            z3 = z;
            if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.K(str2)) {
                    i24 = 131072;
                } else {
                    i24 = 65536;
                }
                i5 |= i24;
            }
            i10 = i4 & 64;
            if (i10 != 0) {
                i5 |= 1572864;
                z4 = z2;
            } else {
                z4 = z2;
                if ((i2 & 1572864) == 0) {
                    if (gapComposerH.b(z4)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i5 |= i11;
                }
            }
            i12 = i4 & 128;
            if (i12 != 0) {
                i5 |= 12582912;
            } else if ((i2 & 12582912) == 0) {
                if (gapComposerH.K(str3)) {
                    i13 = 8388608;
                } else {
                    i13 = 4194304;
                }
                i5 |= i13;
            }
            i14 = i5 | 905969664;
            i15 = i3 | 6;
            if ((i3 & 48) == 0) {
                if (gapComposerH.y(function0)) {
                    i23 = 32;
                } else {
                    i23 = 16;
                }
                i15 |= i23;
            }
            i16 = i15;
            i17 = i4 & 4096;
            if (i17 != 0) {
                i18 = i16 | KyberEngine.KyberPolyBytes;
            } else if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
                if (gapComposerH.K(num)) {
                    i19 = 256;
                } else {
                    i19 = 128;
                }
                i18 = i16 | i19;
            } else {
                i18 = i16;
            }
            i20 = i18 | 3072;
            if ((i14 & 306783379) == 306783378) {
                z5 = true;
            } else {
                z5 = true;
            }
            if (gapComposerH.p(i14 & 1, z5)) {
                if (i25 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVReadOnlyTextField");
                } else {
                    dTFunctionNameModifier = modifier3;
                }
                if (i6 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i8 != 0) {
                    z8 = true;
                } else {
                    z8 = z3;
                }
                if (i10 != 0) {
                    z4 = false;
                }
                if (i12 != 0) {
                    str5 = null;
                } else {
                    str5 = str3;
                }
                KeyboardOptions.f5918h.getClass();
                KeyboardOptions keyboardOptions4 = KeyboardOptions.f5919i;
                KeyboardActions.g.getClass();
                KeyboardActions keyboardActions4 = KeyboardActions.f5912h;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = InteractionSourceKt.a();
                    gapComposerH.q(objX);
                }
                mutableInteractionSource3 = (MutableInteractionSource) objX;
                if (i17 != 0) {
                    num3 = null;
                } else {
                    num3 = num;
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new FocusRequester();
                    gapComposerH.q(objX2);
                }
                FocusRequester focusRequester2 = (FocusRequester) objX2;
                focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
                i21 = WhenMappings.f48623a[lVColorScheme3.ordinal()];
                if (i21 != 1) {
                    gapComposerH.L(1254187900);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                    gapComposerH.Z(false);
                } else {
                    if (i21 == 2) {
                        throw d21.u(gapComposerH, 1254185348, false);
                    }
                    gapComposerH.L(1254190178);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                    gapComposerH.Z(false);
                }
                i22 = i20 & 14;
                ConfigurationTextField configurationTextField3 = configurationTextField;
                if (i22 == 4) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                boolean zY2 = z9 | gapComposerH.y(focusManager);
                if ((i20 & 112) == 32) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z11 = zY2 | z10;
                objX3 = gapComposerH.x();
                if (z11) {
                    objX3 = new LVReadOnlyTextFieldKt$LVReadOnlyTextField$3$1(mutableInteractionSource3, focusManager, function0, null);
                    gapComposerH.q(objX3);
                } else {
                    objX3 = new LVReadOnlyTextFieldKt$LVReadOnlyTextField$3$1(mutableInteractionSource3, focusManager, function0, null);
                    gapComposerH.q(objX3);
                }
                EffectsKt.e(gapComposerH, mutableInteractionSource3, (Function2) objX3);
                Modifier modifierA2 = FocusRequesterModifierKt.a(modifierE, focusRequester2);
                objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new n60(5);
                    gapComposerH.q(objX4);
                }
                int i28 = i14 << 6;
                int i29 = i14 >> 21;
                gapComposer = gapComposerH;
                LVTextFieldInternalKt.b(str, (Function1) objX4, modifierA2, configurationTextField3, z8, true, str2, null, z4, str5, null, keyboardOptions4, keyboardActions4, true, 0, 0, num3, null, function0, null, mutableInteractionSource3, false, null, null, dTFunctionNameModifier, null, false, gapComposer, 196656 | (i14 & 14) | (i14 & 57344) | ((i14 << 3) & 3670016) | (i28 & 234881024) | (i28 & 1879048192), (i29 & 896) | (i29 & 112) | 3072 | ((i20 << 12) & 3670016) | ((i20 << 21) & 234881024), (i28 & 57344) | i22 | ((i20 << 9) & 3670016), 48940160);
                z7 = z8;
                z6 = z4;
                str4 = str5;
                keyboardOptions2 = keyboardOptions4;
                keyboardActions2 = keyboardActions4;
                num2 = num3;
                mutableInteractionSource2 = mutableInteractionSource3;
                modifier4 = dTFunctionNameModifier;
                lVColorScheme2 = lVColorScheme3;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVColorScheme2 = lVColorScheme;
                keyboardOptions2 = keyboardOptions;
                keyboardActions2 = keyboardActions;
                num2 = num;
                z6 = z4;
                modifier4 = modifier3;
                z7 = z3;
                str4 = str3;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier6 = modifierE;
                recomposeScopeImplB0.d = new Function2() { // from class: e70
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i3);
                        LVReadOnlyTextFieldKt.a(str, modifier6, modifier4, lVColorScheme2, z7, str2, z6, str4, keyboardOptions2, keyboardActions2, mutableInteractionSource2, function0, num2, (Composer) obj, iA, iA2, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 |= KyberEngine.KyberPolyBytes;
        modifier3 = modifier2;
        i6 = i4 & 8;
        if (i6 != 0) {
            i5 |= 3072;
        } else if ((i2 & 3072) == 0) {
            if (lVColorScheme == null) {
                iOrdinal = -1;
            } else {
                iOrdinal = lVColorScheme.ordinal();
            }
            if (gapComposerH.d(iOrdinal)) {
                i7 = 2048;
            } else {
                i7 = 1024;
            }
            i5 |= i7;
        }
        i8 = i4 & 16;
        if (i8 != 0) {
            if ((i2 & 24576) == 0) {
                z3 = z;
                if (gapComposerH.b(z3)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i5 |= i9;
            }
            if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.K(str2)) {
                    i24 = 131072;
                } else {
                    i24 = 65536;
                }
                i5 |= i24;
            }
            i10 = i4 & 64;
            if (i10 != 0) {
                i5 |= 1572864;
                z4 = z2;
            } else {
                z4 = z2;
                if ((i2 & 1572864) == 0) {
                    if (gapComposerH.b(z4)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i5 |= i11;
                }
            }
            i12 = i4 & 128;
            if (i12 != 0) {
                i5 |= 12582912;
            } else if ((i2 & 12582912) == 0) {
                if (gapComposerH.K(str3)) {
                    i13 = 8388608;
                } else {
                    i13 = 4194304;
                }
                i5 |= i13;
            }
            i14 = i5 | 905969664;
            i15 = i3 | 6;
            if ((i3 & 48) == 0) {
                if (gapComposerH.y(function0)) {
                    i23 = 32;
                } else {
                    i23 = 16;
                }
                i15 |= i23;
            }
            i16 = i15;
            i17 = i4 & 4096;
            if (i17 != 0) {
                i18 = i16 | KyberEngine.KyberPolyBytes;
            } else if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
                if (gapComposerH.K(num)) {
                    i19 = 256;
                } else {
                    i19 = 128;
                }
                i18 = i16 | i19;
            } else {
                i18 = i16;
            }
            i20 = i18 | 3072;
            if ((i14 & 306783379) == 306783378) {
                z5 = true;
            } else {
                z5 = true;
            }
            if (gapComposerH.p(i14 & 1, z5)) {
                if (i25 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVReadOnlyTextField");
                } else {
                    dTFunctionNameModifier = modifier3;
                }
                if (i6 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i8 != 0) {
                    z8 = true;
                } else {
                    z8 = z3;
                }
                if (i10 != 0) {
                    z4 = false;
                }
                if (i12 != 0) {
                    str5 = null;
                } else {
                    str5 = str3;
                }
                KeyboardOptions.f5918h.getClass();
                KeyboardOptions keyboardOptions5 = KeyboardOptions.f5919i;
                KeyboardActions.g.getClass();
                KeyboardActions keyboardActions5 = KeyboardActions.f5912h;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = InteractionSourceKt.a();
                    gapComposerH.q(objX);
                }
                mutableInteractionSource3 = (MutableInteractionSource) objX;
                if (i17 != 0) {
                    num3 = null;
                } else {
                    num3 = num;
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new FocusRequester();
                    gapComposerH.q(objX2);
                }
                FocusRequester focusRequester3 = (FocusRequester) objX2;
                focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
                i21 = WhenMappings.f48623a[lVColorScheme3.ordinal()];
                if (i21 != 1) {
                    gapComposerH.L(1254187900);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                    gapComposerH.Z(false);
                } else {
                    if (i21 == 2) {
                        throw d21.u(gapComposerH, 1254185348, false);
                    }
                    gapComposerH.L(1254190178);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                    gapComposerH.Z(false);
                }
                i22 = i20 & 14;
                ConfigurationTextField configurationTextField4 = configurationTextField;
                if (i22 == 4) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                boolean zY3 = z9 | gapComposerH.y(focusManager);
                if ((i20 & 112) == 32) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                z11 = zY3 | z10;
                objX3 = gapComposerH.x();
                if (z11) {
                    objX3 = new LVReadOnlyTextFieldKt$LVReadOnlyTextField$3$1(mutableInteractionSource3, focusManager, function0, null);
                    gapComposerH.q(objX3);
                } else {
                    objX3 = new LVReadOnlyTextFieldKt$LVReadOnlyTextField$3$1(mutableInteractionSource3, focusManager, function0, null);
                    gapComposerH.q(objX3);
                }
                EffectsKt.e(gapComposerH, mutableInteractionSource3, (Function2) objX3);
                Modifier modifierA3 = FocusRequesterModifierKt.a(modifierE, focusRequester3);
                objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new n60(5);
                    gapComposerH.q(objX4);
                }
                int i210 = i14 << 6;
                int i211 = i14 >> 21;
                gapComposer = gapComposerH;
                LVTextFieldInternalKt.b(str, (Function1) objX4, modifierA3, configurationTextField4, z8, true, str2, null, z4, str5, null, keyboardOptions5, keyboardActions5, true, 0, 0, num3, null, function0, null, mutableInteractionSource3, false, null, null, dTFunctionNameModifier, null, false, gapComposer, 196656 | (i14 & 14) | (i14 & 57344) | ((i14 << 3) & 3670016) | (i210 & 234881024) | (i210 & 1879048192), (i211 & 896) | (i211 & 112) | 3072 | ((i20 << 12) & 3670016) | ((i20 << 21) & 234881024), (i210 & 57344) | i22 | ((i20 << 9) & 3670016), 48940160);
                z7 = z8;
                z6 = z4;
                str4 = str5;
                keyboardOptions2 = keyboardOptions5;
                keyboardActions2 = keyboardActions5;
                num2 = num3;
                mutableInteractionSource2 = mutableInteractionSource3;
                modifier4 = dTFunctionNameModifier;
                lVColorScheme2 = lVColorScheme3;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVColorScheme2 = lVColorScheme;
                keyboardOptions2 = keyboardOptions;
                keyboardActions2 = keyboardActions;
                num2 = num;
                z6 = z4;
                modifier4 = modifier3;
                z7 = z3;
                str4 = str3;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Modifier modifier7 = modifierE;
                recomposeScopeImplB0.d = new Function2() { // from class: e70
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i3);
                        LVReadOnlyTextFieldKt.a(str, modifier7, modifier4, lVColorScheme2, z7, str2, z6, str4, keyboardOptions2, keyboardActions2, mutableInteractionSource2, function0, num2, (Composer) obj, iA, iA2, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 |= 24576;
        z3 = z;
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            if (gapComposerH.K(str2)) {
                i24 = 131072;
            } else {
                i24 = 65536;
            }
            i5 |= i24;
        }
        i10 = i4 & 64;
        if (i10 != 0) {
            i5 |= 1572864;
            z4 = z2;
        } else {
            z4 = z2;
            if ((i2 & 1572864) == 0) {
                if (gapComposerH.b(z4)) {
                    i11 = 1048576;
                } else {
                    i11 = 524288;
                }
                i5 |= i11;
            }
        }
        i12 = i4 & 128;
        if (i12 != 0) {
            i5 |= 12582912;
        } else if ((i2 & 12582912) == 0) {
            if (gapComposerH.K(str3)) {
                i13 = 8388608;
            } else {
                i13 = 4194304;
            }
            i5 |= i13;
        }
        i14 = i5 | 905969664;
        i15 = i3 | 6;
        if ((i3 & 48) == 0) {
            if (gapComposerH.y(function0)) {
                i23 = 32;
            } else {
                i23 = 16;
            }
            i15 |= i23;
        }
        i16 = i15;
        i17 = i4 & 4096;
        if (i17 != 0) {
            i18 = i16 | KyberEngine.KyberPolyBytes;
        } else if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            if (gapComposerH.K(num)) {
                i19 = 256;
            } else {
                i19 = 128;
            }
            i18 = i16 | i19;
        } else {
            i18 = i16;
        }
        i20 = i18 | 3072;
        if ((i14 & 306783379) == 306783378) {
            z5 = true;
        } else {
            z5 = true;
        }
        if (gapComposerH.p(i14 & 1, z5)) {
            if (i25 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVReadOnlyTextField");
            } else {
                dTFunctionNameModifier = modifier3;
            }
            if (i6 != 0) {
                lVColorScheme3 = LVColorScheme.DEFAULT;
            } else {
                lVColorScheme3 = lVColorScheme;
            }
            if (i8 != 0) {
                z8 = true;
            } else {
                z8 = z3;
            }
            if (i10 != 0) {
                z4 = false;
            }
            if (i12 != 0) {
                str5 = null;
            } else {
                str5 = str3;
            }
            KeyboardOptions.f5918h.getClass();
            KeyboardOptions keyboardOptions6 = KeyboardOptions.f5919i;
            KeyboardActions.g.getClass();
            KeyboardActions keyboardActions6 = KeyboardActions.f5912h;
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            mutableInteractionSource3 = (MutableInteractionSource) objX;
            if (i17 != 0) {
                num3 = null;
            } else {
                num3 = num;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new FocusRequester();
                gapComposerH.q(objX2);
            }
            FocusRequester focusRequester4 = (FocusRequester) objX2;
            focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
            i21 = WhenMappings.f48623a[lVColorScheme3.ordinal()];
            if (i21 != 1) {
                gapComposerH.L(1254187900);
                configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                gapComposerH.Z(false);
            } else {
                if (i21 == 2) {
                    throw d21.u(gapComposerH, 1254185348, false);
                }
                gapComposerH.L(1254190178);
                configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                gapComposerH.Z(false);
            }
            i22 = i20 & 14;
            ConfigurationTextField configurationTextField5 = configurationTextField;
            if (i22 == 4) {
                z9 = true;
            } else {
                z9 = false;
            }
            boolean zY4 = z9 | gapComposerH.y(focusManager);
            if ((i20 & 112) == 32) {
                z10 = true;
            } else {
                z10 = false;
            }
            z11 = zY4 | z10;
            objX3 = gapComposerH.x();
            if (z11) {
                objX3 = new LVReadOnlyTextFieldKt$LVReadOnlyTextField$3$1(mutableInteractionSource3, focusManager, function0, null);
                gapComposerH.q(objX3);
            } else {
                objX3 = new LVReadOnlyTextFieldKt$LVReadOnlyTextField$3$1(mutableInteractionSource3, focusManager, function0, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, mutableInteractionSource3, (Function2) objX3);
            Modifier modifierA4 = FocusRequesterModifierKt.a(modifierE, focusRequester4);
            objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new n60(5);
                gapComposerH.q(objX4);
            }
            int i212 = i14 << 6;
            int i213 = i14 >> 21;
            gapComposer = gapComposerH;
            LVTextFieldInternalKt.b(str, (Function1) objX4, modifierA4, configurationTextField5, z8, true, str2, null, z4, str5, null, keyboardOptions6, keyboardActions6, true, 0, 0, num3, null, function0, null, mutableInteractionSource3, false, null, null, dTFunctionNameModifier, null, false, gapComposer, 196656 | (i14 & 14) | (i14 & 57344) | ((i14 << 3) & 3670016) | (i212 & 234881024) | (i212 & 1879048192), (i213 & 896) | (i213 & 112) | 3072 | ((i20 << 12) & 3670016) | ((i20 << 21) & 234881024), (i212 & 57344) | i22 | ((i20 << 9) & 3670016), 48940160);
            z7 = z8;
            z6 = z4;
            str4 = str5;
            keyboardOptions2 = keyboardOptions6;
            keyboardActions2 = keyboardActions6;
            num2 = num3;
            mutableInteractionSource2 = mutableInteractionSource3;
            modifier4 = dTFunctionNameModifier;
            lVColorScheme2 = lVColorScheme3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            lVColorScheme2 = lVColorScheme;
            keyboardOptions2 = keyboardOptions;
            keyboardActions2 = keyboardActions;
            num2 = num;
            z6 = z4;
            modifier4 = modifier3;
            z7 = z3;
            str4 = str3;
            mutableInteractionSource2 = mutableInteractionSource;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier8 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: e70
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    LVReadOnlyTextFieldKt.a(str, modifier8, modifier4, lVColorScheme2, z7, str2, z6, str4, keyboardOptions2, keyboardActions2, mutableInteractionSource2, function0, num2, (Composer) obj, iA, iA2, i4);
                    return Unit.f71739a;
                }
            };
        }
    }
}
