package com.vuitton.android.designkit.ui.theme.atoms.textfield;

import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.input.KeyboardCapitalization;
import androidx.compose.ui.text.input.KeyboardType;
import androidx.compose.ui.text.input.PlatformImeOptions;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.unit.Dp;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTextField;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVMultilineTextFieldKt;
import defpackage.d21;
import defpackage.n00;
import defpackage.n60;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "value", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVMultilineTextFieldKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f48615a;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48616a;

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
            f48616a = iArr;
        }
    }

    static {
        Dp.Companion companion = Dp.f11004c;
        f48615a = 157.0f;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0136  */
    /* JADX WARN: Code duplicated, block: B:104:0x0145  */
    /* JADX WARN: Code duplicated, block: B:105:0x014f  */
    /* JADX WARN: Code duplicated, block: B:108:0x015e  */
    /* JADX WARN: Code duplicated, block: B:110:0x0161  */
    /* JADX WARN: Code duplicated, block: B:112:0x0173  */
    /* JADX WARN: Code duplicated, block: B:114:0x017b  */
    /* JADX WARN: Code duplicated, block: B:117:0x0220  */
    /* JADX WARN: Code duplicated, block: B:120:0x0237  */
    /* JADX WARN: Code duplicated, block: B:122:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x0078  */
    /* JADX WARN: Code duplicated, block: B:43:0x0080  */
    /* JADX WARN: Code duplicated, block: B:44:0x0083  */
    /* JADX WARN: Code duplicated, block: B:46:0x0087  */
    /* JADX WARN: Code duplicated, block: B:49:0x008f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0093  */
    /* JADX WARN: Code duplicated, block: B:53:0x0096  */
    /* JADX WARN: Code duplicated, block: B:55:0x009e  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:60:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:61:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:65:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:70:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:74:0x00da  */
    /* JADX WARN: Code duplicated, block: B:76:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:81:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:82:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:85:0x0101  */
    /* JADX WARN: Code duplicated, block: B:87:0x0105  */
    /* JADX WARN: Code duplicated, block: B:88:0x0108  */
    /* JADX WARN: Code duplicated, block: B:90:0x010c  */
    /* JADX WARN: Code duplicated, block: B:91:0x010f  */
    /* JADX WARN: Code duplicated, block: B:93:0x0113  */
    /* JADX WARN: Code duplicated, block: B:94:0x0117  */
    /* JADX WARN: Code duplicated, block: B:97:0x0122  */
    /* JADX WARN: Code duplicated, block: B:98:0x012c  */
    public static final void a(final String str, final Function1 function1, Modifier modifier, LVColorScheme lVColorScheme, boolean z, final String str2, boolean z2, String str3, KeyboardActions keyboardActions, int i2, MutableInteractionSource mutableInteractionSource, Function1 function2, Composer composer, final int i3, final int i4) {
        int i5;
        String str4;
        int i6;
        boolean z3;
        int i7;
        int i8;
        int i9;
        final String str5;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z4;
        GapComposer gapComposer;
        final LVColorScheme lVColorScheme2;
        final boolean z5;
        final KeyboardActions keyboardActions2;
        final Function1 function3;
        final boolean z6;
        final MutableInteractionSource mutableInteractionSource2;
        final int i15;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z7;
        boolean z8;
        String str6;
        int i16;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Object objX2;
        int i17;
        int i18;
        ConfigurationTextField configurationTextField;
        int i19;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVMultilineTextField-0J4Nqao");
        }
        final Modifier modifier2 = modifierE;
        str.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(365447325);
        if ((i3 & 6) == 0) {
            i5 = (gapComposerH.K(str) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(modifier2) ? 256 : 128;
        }
        int i20 = i5 | 3072;
        int i21 = i4 & 16;
        if (i21 == 0) {
            if ((i3 & 24576) == 0) {
                i20 |= gapComposerH.b(z) ? 16384 : 8192;
            }
            if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                str4 = str2;
                if (gapComposerH.K(str4)) {
                    i19 = 131072;
                } else {
                    i19 = 65536;
                }
                i20 |= i19;
            } else {
                str4 = str2;
            }
            i6 = i4 & 64;
            if (i6 != 0) {
                if ((1572864 & i3) == 0) {
                    z3 = z2;
                    if (gapComposerH.b(z3)) {
                        i7 = 1048576;
                    } else {
                        i7 = 524288;
                    }
                    i20 |= i7;
                }
                i8 = i4 & 128;
                if (i8 != 0) {
                    i20 |= 12582912;
                    i9 = 196608;
                    str5 = str3;
                } else {
                    i9 = 196608;
                    str5 = str3;
                    if ((i3 & 12582912) == 0) {
                        if (gapComposerH.K(str5)) {
                            i10 = 8388608;
                        } else {
                            i10 = 4194304;
                        }
                        i20 |= i10;
                    }
                }
                i11 = i20 | 100663296;
                i12 = i4 & 512;
                if (i12 != 0) {
                    if ((805306368 & i3) == 0) {
                        i13 = i2;
                        if (gapComposerH.d(i13)) {
                            i14 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i14 = 268435456;
                        }
                        i11 |= i14;
                    }
                    if ((i11 & 306783379) == 306783378) {
                        z4 = false;
                    } else {
                        z4 = true;
                    }
                    if (gapComposerH.p(i11 & 1, z4)) {
                        LVColorScheme lVColorScheme3 = LVColorScheme.DEFAULT;
                        if (i21 != 0) {
                            z7 = true;
                        } else {
                            z7 = z;
                        }
                        if (i6 != 0) {
                            z8 = false;
                        } else {
                            z8 = z3;
                        }
                        if (i8 != 0) {
                            str6 = null;
                        } else {
                            str6 = str5;
                        }
                        KeyboardActions.g.getClass();
                        KeyboardActions keyboardActions3 = KeyboardActions.f5912h;
                        if (i12 != 0) {
                            KeyboardCapitalization.f10804b.getClass();
                            i16 = KeyboardCapitalization.f10805c;
                        } else {
                            i16 = i13;
                        }
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = InteractionSourceKt.a();
                            gapComposerH.q(objX);
                        }
                        MutableInteractionSource mutableInteractionSource3 = (MutableInteractionSource) objX;
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            i17 = 1;
                            objX2 = new n60(1);
                            gapComposerH.q(objX2);
                        } else {
                            i17 = 1;
                        }
                        Function1 function4 = (Function1) objX2;
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        i18 = WhenMappings.f48616a[lVColorScheme3.ordinal()];
                        if (i18 != i17) {
                            gapComposerH.L(-992416412);
                            configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                            gapComposerH.Z(false);
                        } else {
                            if (i18 == 2) {
                                throw d21.u(gapComposerH, -992418964, false);
                            }
                            gapComposerH.L(-992414134);
                            configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                            gapComposerH.Z(false);
                        }
                        ConfigurationTextField configurationTextField2 = configurationTextField;
                        Modifier modifierE2 = ModifierExtKt.e(SizeKt.h(modifier2, f48615a, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "textArea_input_view");
                        Modifier modifierG = n00.g("LVMultilineTextField-0J4Nqao", "textArea_placeHolder_text");
                        Modifier modifierG2 = n00.g("LVMultilineTextField-0J4Nqao", "textArea_supporting_text");
                        KeyboardType.f10809b.getClass();
                        i13 = i16;
                        int i22 = i11 << 6;
                        gapComposer = gapComposerH;
                        LVTextFieldInternalKt.b(str, function1, modifierE2, configurationTextField2, z7, false, str4, modifierG, z8, str6, modifierG2, new KeyboardOptions(i16, (Boolean) null, KeyboardType.f10810c, 0, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 122, (DefaultConstructorMarker) null), keyboardActions3, false, 6, 6, null, null, null, null, mutableInteractionSource3, false, function4, null, null, null, false, gapComposer, (i11 & 14) | i9 | (i11 & 112) | (i11 & 57344) | ((i11 << 3) & 3670016) | (234881024 & i22) | (i22 & 1879048192), ((i11 >> 18) & 896) | 224256, 438, 126812160);
                        lVColorScheme2 = lVColorScheme3;
                        z5 = z7;
                        z6 = z8;
                        str5 = str6;
                        keyboardActions2 = keyboardActions3;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        function3 = function4;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        lVColorScheme2 = lVColorScheme;
                        z5 = z;
                        keyboardActions2 = keyboardActions;
                        function3 = function2;
                        z6 = z3;
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    i15 = i13;
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: p60
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i3 | 1);
                                LVMultilineTextFieldKt.a(str, function1, modifier2, lVColorScheme2, z5, str2, z6, str5, keyboardActions2, i15, mutableInteractionSource2, function3, (Composer) obj, iA, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i11 = i20 | 905969664;
                i13 = i2;
                if ((i11 & 306783379) == 306783378) {
                    z4 = false;
                } else {
                    z4 = true;
                }
                if (gapComposerH.p(i11 & 1, z4)) {
                    LVColorScheme lVColorScheme4 = LVColorScheme.DEFAULT;
                    if (i21 != 0) {
                        z7 = true;
                    } else {
                        z7 = z;
                    }
                    if (i6 != 0) {
                        z8 = false;
                    } else {
                        z8 = z3;
                    }
                    if (i8 != 0) {
                        str6 = null;
                    } else {
                        str6 = str5;
                    }
                    KeyboardActions.g.getClass();
                    KeyboardActions keyboardActions4 = KeyboardActions.f5912h;
                    if (i12 != 0) {
                        KeyboardCapitalization.f10804b.getClass();
                        i16 = KeyboardCapitalization.f10805c;
                    } else {
                        i16 = i13;
                    }
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = InteractionSourceKt.a();
                        gapComposerH.q(objX);
                    }
                    MutableInteractionSource mutableInteractionSource4 = (MutableInteractionSource) objX;
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        i17 = 1;
                        objX2 = new n60(1);
                        gapComposerH.q(objX2);
                    } else {
                        i17 = 1;
                    }
                    Function1 function5 = (Function1) objX2;
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    i18 = WhenMappings.f48616a[lVColorScheme4.ordinal()];
                    if (i18 != i17) {
                        gapComposerH.L(-992416412);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                        gapComposerH.Z(false);
                    } else {
                        if (i18 == 2) {
                            throw d21.u(gapComposerH, -992418964, false);
                        }
                        gapComposerH.L(-992414134);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                        gapComposerH.Z(false);
                    }
                    ConfigurationTextField configurationTextField3 = configurationTextField;
                    Modifier modifierE3 = ModifierExtKt.e(SizeKt.h(modifier2, f48615a, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "textArea_input_view");
                    Modifier modifierG3 = n00.g("LVMultilineTextField-0J4Nqao", "textArea_placeHolder_text");
                    Modifier modifierG4 = n00.g("LVMultilineTextField-0J4Nqao", "textArea_supporting_text");
                    KeyboardType.f10809b.getClass();
                    i13 = i16;
                    int i23 = i11 << 6;
                    gapComposer = gapComposerH;
                    LVTextFieldInternalKt.b(str, function1, modifierE3, configurationTextField3, z7, false, str4, modifierG3, z8, str6, modifierG4, new KeyboardOptions(i16, (Boolean) null, KeyboardType.f10810c, 0, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 122, (DefaultConstructorMarker) null), keyboardActions4, false, 6, 6, null, null, null, null, mutableInteractionSource4, false, function5, null, null, null, false, gapComposer, (i11 & 14) | i9 | (i11 & 112) | (i11 & 57344) | ((i11 << 3) & 3670016) | (234881024 & i23) | (i23 & 1879048192), ((i11 >> 18) & 896) | 224256, 438, 126812160);
                    lVColorScheme2 = lVColorScheme4;
                    z5 = z7;
                    z6 = z8;
                    str5 = str6;
                    keyboardActions2 = keyboardActions4;
                    mutableInteractionSource2 = mutableInteractionSource4;
                    function3 = function5;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVColorScheme2 = lVColorScheme;
                    z5 = z;
                    keyboardActions2 = keyboardActions;
                    function3 = function2;
                    z6 = z3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                i15 = i13;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: p60
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            LVMultilineTextFieldKt.a(str, function1, modifier2, lVColorScheme2, z5, str2, z6, str5, keyboardActions2, i15, mutableInteractionSource2, function3, (Composer) obj, iA, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i20 |= 1572864;
            z3 = z2;
            i8 = i4 & 128;
            if (i8 != 0) {
                i20 |= 12582912;
                i9 = 196608;
                str5 = str3;
            } else {
                i9 = 196608;
                str5 = str3;
                if ((i3 & 12582912) == 0) {
                    if (gapComposerH.K(str5)) {
                        i10 = 8388608;
                    } else {
                        i10 = 4194304;
                    }
                    i20 |= i10;
                }
            }
            i11 = i20 | 100663296;
            i12 = i4 & 512;
            if (i12 != 0) {
                if ((805306368 & i3) == 0) {
                    i13 = i2;
                    if (gapComposerH.d(i13)) {
                        i14 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i14 = 268435456;
                    }
                    i11 |= i14;
                }
                if ((i11 & 306783379) == 306783378) {
                    z4 = false;
                } else {
                    z4 = true;
                }
                if (gapComposerH.p(i11 & 1, z4)) {
                    LVColorScheme lVColorScheme5 = LVColorScheme.DEFAULT;
                    if (i21 != 0) {
                        z7 = true;
                    } else {
                        z7 = z;
                    }
                    if (i6 != 0) {
                        z8 = false;
                    } else {
                        z8 = z3;
                    }
                    if (i8 != 0) {
                        str6 = null;
                    } else {
                        str6 = str5;
                    }
                    KeyboardActions.g.getClass();
                    KeyboardActions keyboardActions5 = KeyboardActions.f5912h;
                    if (i12 != 0) {
                        KeyboardCapitalization.f10804b.getClass();
                        i16 = KeyboardCapitalization.f10805c;
                    } else {
                        i16 = i13;
                    }
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = InteractionSourceKt.a();
                        gapComposerH.q(objX);
                    }
                    MutableInteractionSource mutableInteractionSource5 = (MutableInteractionSource) objX;
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        i17 = 1;
                        objX2 = new n60(1);
                        gapComposerH.q(objX2);
                    } else {
                        i17 = 1;
                    }
                    Function1 function6 = (Function1) objX2;
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    i18 = WhenMappings.f48616a[lVColorScheme5.ordinal()];
                    if (i18 != i17) {
                        gapComposerH.L(-992416412);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                        gapComposerH.Z(false);
                    } else {
                        if (i18 == 2) {
                            throw d21.u(gapComposerH, -992418964, false);
                        }
                        gapComposerH.L(-992414134);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                        gapComposerH.Z(false);
                    }
                    ConfigurationTextField configurationTextField4 = configurationTextField;
                    Modifier modifierE4 = ModifierExtKt.e(SizeKt.h(modifier2, f48615a, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "textArea_input_view");
                    Modifier modifierG5 = n00.g("LVMultilineTextField-0J4Nqao", "textArea_placeHolder_text");
                    Modifier modifierG6 = n00.g("LVMultilineTextField-0J4Nqao", "textArea_supporting_text");
                    KeyboardType.f10809b.getClass();
                    i13 = i16;
                    int i24 = i11 << 6;
                    gapComposer = gapComposerH;
                    LVTextFieldInternalKt.b(str, function1, modifierE4, configurationTextField4, z7, false, str4, modifierG5, z8, str6, modifierG6, new KeyboardOptions(i16, (Boolean) null, KeyboardType.f10810c, 0, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 122, (DefaultConstructorMarker) null), keyboardActions5, false, 6, 6, null, null, null, null, mutableInteractionSource5, false, function6, null, null, null, false, gapComposer, (i11 & 14) | i9 | (i11 & 112) | (i11 & 57344) | ((i11 << 3) & 3670016) | (234881024 & i24) | (i24 & 1879048192), ((i11 >> 18) & 896) | 224256, 438, 126812160);
                    lVColorScheme2 = lVColorScheme5;
                    z5 = z7;
                    z6 = z8;
                    str5 = str6;
                    keyboardActions2 = keyboardActions5;
                    mutableInteractionSource2 = mutableInteractionSource5;
                    function3 = function6;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVColorScheme2 = lVColorScheme;
                    z5 = z;
                    keyboardActions2 = keyboardActions;
                    function3 = function2;
                    z6 = z3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                i15 = i13;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: p60
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            LVMultilineTextFieldKt.a(str, function1, modifier2, lVColorScheme2, z5, str2, z6, str5, keyboardActions2, i15, mutableInteractionSource2, function3, (Composer) obj, iA, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i11 = i20 | 905969664;
            i13 = i2;
            if ((i11 & 306783379) == 306783378) {
                z4 = false;
            } else {
                z4 = true;
            }
            if (gapComposerH.p(i11 & 1, z4)) {
                LVColorScheme lVColorScheme6 = LVColorScheme.DEFAULT;
                if (i21 != 0) {
                    z7 = true;
                } else {
                    z7 = z;
                }
                if (i6 != 0) {
                    z8 = false;
                } else {
                    z8 = z3;
                }
                if (i8 != 0) {
                    str6 = null;
                } else {
                    str6 = str5;
                }
                KeyboardActions.g.getClass();
                KeyboardActions keyboardActions6 = KeyboardActions.f5912h;
                if (i12 != 0) {
                    KeyboardCapitalization.f10804b.getClass();
                    i16 = KeyboardCapitalization.f10805c;
                } else {
                    i16 = i13;
                }
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = InteractionSourceKt.a();
                    gapComposerH.q(objX);
                }
                MutableInteractionSource mutableInteractionSource6 = (MutableInteractionSource) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    i17 = 1;
                    objX2 = new n60(1);
                    gapComposerH.q(objX2);
                } else {
                    i17 = 1;
                }
                Function1 function7 = (Function1) objX2;
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                i18 = WhenMappings.f48616a[lVColorScheme6.ordinal()];
                if (i18 != i17) {
                    gapComposerH.L(-992416412);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                    gapComposerH.Z(false);
                } else {
                    if (i18 == 2) {
                        throw d21.u(gapComposerH, -992418964, false);
                    }
                    gapComposerH.L(-992414134);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                    gapComposerH.Z(false);
                }
                ConfigurationTextField configurationTextField5 = configurationTextField;
                Modifier modifierE5 = ModifierExtKt.e(SizeKt.h(modifier2, f48615a, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "textArea_input_view");
                Modifier modifierG7 = n00.g("LVMultilineTextField-0J4Nqao", "textArea_placeHolder_text");
                Modifier modifierG8 = n00.g("LVMultilineTextField-0J4Nqao", "textArea_supporting_text");
                KeyboardType.f10809b.getClass();
                i13 = i16;
                int i25 = i11 << 6;
                gapComposer = gapComposerH;
                LVTextFieldInternalKt.b(str, function1, modifierE5, configurationTextField5, z7, false, str4, modifierG7, z8, str6, modifierG8, new KeyboardOptions(i16, (Boolean) null, KeyboardType.f10810c, 0, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 122, (DefaultConstructorMarker) null), keyboardActions6, false, 6, 6, null, null, null, null, mutableInteractionSource6, false, function7, null, null, null, false, gapComposer, (i11 & 14) | i9 | (i11 & 112) | (i11 & 57344) | ((i11 << 3) & 3670016) | (234881024 & i25) | (i25 & 1879048192), ((i11 >> 18) & 896) | 224256, 438, 126812160);
                lVColorScheme2 = lVColorScheme6;
                z5 = z7;
                z6 = z8;
                str5 = str6;
                keyboardActions2 = keyboardActions6;
                mutableInteractionSource2 = mutableInteractionSource6;
                function3 = function7;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVColorScheme2 = lVColorScheme;
                z5 = z;
                keyboardActions2 = keyboardActions;
                function3 = function2;
                z6 = z3;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            i15 = i13;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: p60
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        LVMultilineTextFieldKt.a(str, function1, modifier2, lVColorScheme2, z5, str2, z6, str5, keyboardActions2, i15, mutableInteractionSource2, function3, (Composer) obj, iA, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i20 = i5 | 27648;
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            str4 = str2;
            if (gapComposerH.K(str4)) {
                i19 = 131072;
            } else {
                i19 = 65536;
            }
            i20 |= i19;
        } else {
            str4 = str2;
        }
        i6 = i4 & 64;
        if (i6 != 0) {
            if ((1572864 & i3) == 0) {
                z3 = z2;
                if (gapComposerH.b(z3)) {
                    i7 = 1048576;
                } else {
                    i7 = 524288;
                }
                i20 |= i7;
            }
            i8 = i4 & 128;
            if (i8 != 0) {
                i20 |= 12582912;
                i9 = 196608;
                str5 = str3;
            } else {
                i9 = 196608;
                str5 = str3;
                if ((i3 & 12582912) == 0) {
                    if (gapComposerH.K(str5)) {
                        i10 = 8388608;
                    } else {
                        i10 = 4194304;
                    }
                    i20 |= i10;
                }
            }
            i11 = i20 | 100663296;
            i12 = i4 & 512;
            if (i12 != 0) {
                if ((805306368 & i3) == 0) {
                    i13 = i2;
                    if (gapComposerH.d(i13)) {
                        i14 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i14 = 268435456;
                    }
                    i11 |= i14;
                }
                if ((i11 & 306783379) == 306783378) {
                    z4 = false;
                } else {
                    z4 = true;
                }
                if (gapComposerH.p(i11 & 1, z4)) {
                    LVColorScheme lVColorScheme7 = LVColorScheme.DEFAULT;
                    if (i21 != 0) {
                        z7 = true;
                    } else {
                        z7 = z;
                    }
                    if (i6 != 0) {
                        z8 = false;
                    } else {
                        z8 = z3;
                    }
                    if (i8 != 0) {
                        str6 = null;
                    } else {
                        str6 = str5;
                    }
                    KeyboardActions.g.getClass();
                    KeyboardActions keyboardActions7 = KeyboardActions.f5912h;
                    if (i12 != 0) {
                        KeyboardCapitalization.f10804b.getClass();
                        i16 = KeyboardCapitalization.f10805c;
                    } else {
                        i16 = i13;
                    }
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = InteractionSourceKt.a();
                        gapComposerH.q(objX);
                    }
                    MutableInteractionSource mutableInteractionSource7 = (MutableInteractionSource) objX;
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        i17 = 1;
                        objX2 = new n60(1);
                        gapComposerH.q(objX2);
                    } else {
                        i17 = 1;
                    }
                    Function1 function8 = (Function1) objX2;
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    i18 = WhenMappings.f48616a[lVColorScheme7.ordinal()];
                    if (i18 != i17) {
                        gapComposerH.L(-992416412);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                        gapComposerH.Z(false);
                    } else {
                        if (i18 == 2) {
                            throw d21.u(gapComposerH, -992418964, false);
                        }
                        gapComposerH.L(-992414134);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                        gapComposerH.Z(false);
                    }
                    ConfigurationTextField configurationTextField6 = configurationTextField;
                    Modifier modifierE6 = ModifierExtKt.e(SizeKt.h(modifier2, f48615a, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "textArea_input_view");
                    Modifier modifierG9 = n00.g("LVMultilineTextField-0J4Nqao", "textArea_placeHolder_text");
                    Modifier modifierG10 = n00.g("LVMultilineTextField-0J4Nqao", "textArea_supporting_text");
                    KeyboardType.f10809b.getClass();
                    i13 = i16;
                    int i26 = i11 << 6;
                    gapComposer = gapComposerH;
                    LVTextFieldInternalKt.b(str, function1, modifierE6, configurationTextField6, z7, false, str4, modifierG9, z8, str6, modifierG10, new KeyboardOptions(i16, (Boolean) null, KeyboardType.f10810c, 0, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 122, (DefaultConstructorMarker) null), keyboardActions7, false, 6, 6, null, null, null, null, mutableInteractionSource7, false, function8, null, null, null, false, gapComposer, (i11 & 14) | i9 | (i11 & 112) | (i11 & 57344) | ((i11 << 3) & 3670016) | (234881024 & i26) | (i26 & 1879048192), ((i11 >> 18) & 896) | 224256, 438, 126812160);
                    lVColorScheme2 = lVColorScheme7;
                    z5 = z7;
                    z6 = z8;
                    str5 = str6;
                    keyboardActions2 = keyboardActions7;
                    mutableInteractionSource2 = mutableInteractionSource7;
                    function3 = function8;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVColorScheme2 = lVColorScheme;
                    z5 = z;
                    keyboardActions2 = keyboardActions;
                    function3 = function2;
                    z6 = z3;
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                i15 = i13;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: p60
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i3 | 1);
                            LVMultilineTextFieldKt.a(str, function1, modifier2, lVColorScheme2, z5, str2, z6, str5, keyboardActions2, i15, mutableInteractionSource2, function3, (Composer) obj, iA, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i11 = i20 | 905969664;
            i13 = i2;
            if ((i11 & 306783379) == 306783378) {
                z4 = false;
            } else {
                z4 = true;
            }
            if (gapComposerH.p(i11 & 1, z4)) {
                LVColorScheme lVColorScheme8 = LVColorScheme.DEFAULT;
                if (i21 != 0) {
                    z7 = true;
                } else {
                    z7 = z;
                }
                if (i6 != 0) {
                    z8 = false;
                } else {
                    z8 = z3;
                }
                if (i8 != 0) {
                    str6 = null;
                } else {
                    str6 = str5;
                }
                KeyboardActions.g.getClass();
                KeyboardActions keyboardActions8 = KeyboardActions.f5912h;
                if (i12 != 0) {
                    KeyboardCapitalization.f10804b.getClass();
                    i16 = KeyboardCapitalization.f10805c;
                } else {
                    i16 = i13;
                }
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = InteractionSourceKt.a();
                    gapComposerH.q(objX);
                }
                MutableInteractionSource mutableInteractionSource8 = (MutableInteractionSource) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    i17 = 1;
                    objX2 = new n60(1);
                    gapComposerH.q(objX2);
                } else {
                    i17 = 1;
                }
                Function1 function9 = (Function1) objX2;
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                i18 = WhenMappings.f48616a[lVColorScheme8.ordinal()];
                if (i18 != i17) {
                    gapComposerH.L(-992416412);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                    gapComposerH.Z(false);
                } else {
                    if (i18 == 2) {
                        throw d21.u(gapComposerH, -992418964, false);
                    }
                    gapComposerH.L(-992414134);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                    gapComposerH.Z(false);
                }
                ConfigurationTextField configurationTextField7 = configurationTextField;
                Modifier modifierE7 = ModifierExtKt.e(SizeKt.h(modifier2, f48615a, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "textArea_input_view");
                Modifier modifierG11 = n00.g("LVMultilineTextField-0J4Nqao", "textArea_placeHolder_text");
                Modifier modifierG12 = n00.g("LVMultilineTextField-0J4Nqao", "textArea_supporting_text");
                KeyboardType.f10809b.getClass();
                i13 = i16;
                int i27 = i11 << 6;
                gapComposer = gapComposerH;
                LVTextFieldInternalKt.b(str, function1, modifierE7, configurationTextField7, z7, false, str4, modifierG11, z8, str6, modifierG12, new KeyboardOptions(i16, (Boolean) null, KeyboardType.f10810c, 0, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 122, (DefaultConstructorMarker) null), keyboardActions8, false, 6, 6, null, null, null, null, mutableInteractionSource8, false, function9, null, null, null, false, gapComposer, (i11 & 14) | i9 | (i11 & 112) | (i11 & 57344) | ((i11 << 3) & 3670016) | (234881024 & i27) | (i27 & 1879048192), ((i11 >> 18) & 896) | 224256, 438, 126812160);
                lVColorScheme2 = lVColorScheme8;
                z5 = z7;
                z6 = z8;
                str5 = str6;
                keyboardActions2 = keyboardActions8;
                mutableInteractionSource2 = mutableInteractionSource8;
                function3 = function9;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVColorScheme2 = lVColorScheme;
                z5 = z;
                keyboardActions2 = keyboardActions;
                function3 = function2;
                z6 = z3;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            i15 = i13;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: p60
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        LVMultilineTextFieldKt.a(str, function1, modifier2, lVColorScheme2, z5, str2, z6, str5, keyboardActions2, i15, mutableInteractionSource2, function3, (Composer) obj, iA, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i20 |= 1572864;
        z3 = z2;
        i8 = i4 & 128;
        if (i8 != 0) {
            i20 |= 12582912;
            i9 = 196608;
            str5 = str3;
        } else {
            i9 = 196608;
            str5 = str3;
            if ((i3 & 12582912) == 0) {
                if (gapComposerH.K(str5)) {
                    i10 = 8388608;
                } else {
                    i10 = 4194304;
                }
                i20 |= i10;
            }
        }
        i11 = i20 | 100663296;
        i12 = i4 & 512;
        if (i12 != 0) {
            if ((805306368 & i3) == 0) {
                i13 = i2;
                if (gapComposerH.d(i13)) {
                    i14 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i14 = 268435456;
                }
                i11 |= i14;
            }
            if ((i11 & 306783379) == 306783378) {
                z4 = false;
            } else {
                z4 = true;
            }
            if (gapComposerH.p(i11 & 1, z4)) {
                LVColorScheme lVColorScheme9 = LVColorScheme.DEFAULT;
                if (i21 != 0) {
                    z7 = true;
                } else {
                    z7 = z;
                }
                if (i6 != 0) {
                    z8 = false;
                } else {
                    z8 = z3;
                }
                if (i8 != 0) {
                    str6 = null;
                } else {
                    str6 = str5;
                }
                KeyboardActions.g.getClass();
                KeyboardActions keyboardActions9 = KeyboardActions.f5912h;
                if (i12 != 0) {
                    KeyboardCapitalization.f10804b.getClass();
                    i16 = KeyboardCapitalization.f10805c;
                } else {
                    i16 = i13;
                }
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = InteractionSourceKt.a();
                    gapComposerH.q(objX);
                }
                MutableInteractionSource mutableInteractionSource9 = (MutableInteractionSource) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    i17 = 1;
                    objX2 = new n60(1);
                    gapComposerH.q(objX2);
                } else {
                    i17 = 1;
                }
                Function1 function10 = (Function1) objX2;
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                i18 = WhenMappings.f48616a[lVColorScheme9.ordinal()];
                if (i18 != i17) {
                    gapComposerH.L(-992416412);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                    gapComposerH.Z(false);
                } else {
                    if (i18 == 2) {
                        throw d21.u(gapComposerH, -992418964, false);
                    }
                    gapComposerH.L(-992414134);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                    gapComposerH.Z(false);
                }
                ConfigurationTextField configurationTextField8 = configurationTextField;
                Modifier modifierE8 = ModifierExtKt.e(SizeKt.h(modifier2, f48615a, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "textArea_input_view");
                Modifier modifierG13 = n00.g("LVMultilineTextField-0J4Nqao", "textArea_placeHolder_text");
                Modifier modifierG14 = n00.g("LVMultilineTextField-0J4Nqao", "textArea_supporting_text");
                KeyboardType.f10809b.getClass();
                i13 = i16;
                int i28 = i11 << 6;
                gapComposer = gapComposerH;
                LVTextFieldInternalKt.b(str, function1, modifierE8, configurationTextField8, z7, false, str4, modifierG13, z8, str6, modifierG14, new KeyboardOptions(i16, (Boolean) null, KeyboardType.f10810c, 0, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 122, (DefaultConstructorMarker) null), keyboardActions9, false, 6, 6, null, null, null, null, mutableInteractionSource9, false, function10, null, null, null, false, gapComposer, (i11 & 14) | i9 | (i11 & 112) | (i11 & 57344) | ((i11 << 3) & 3670016) | (234881024 & i28) | (i28 & 1879048192), ((i11 >> 18) & 896) | 224256, 438, 126812160);
                lVColorScheme2 = lVColorScheme9;
                z5 = z7;
                z6 = z8;
                str5 = str6;
                keyboardActions2 = keyboardActions9;
                mutableInteractionSource2 = mutableInteractionSource9;
                function3 = function10;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVColorScheme2 = lVColorScheme;
                z5 = z;
                keyboardActions2 = keyboardActions;
                function3 = function2;
                z6 = z3;
                mutableInteractionSource2 = mutableInteractionSource;
            }
            i15 = i13;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: p60
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i3 | 1);
                        LVMultilineTextFieldKt.a(str, function1, modifier2, lVColorScheme2, z5, str2, z6, str5, keyboardActions2, i15, mutableInteractionSource2, function3, (Composer) obj, iA, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i11 = i20 | 905969664;
        i13 = i2;
        if ((i11 & 306783379) == 306783378) {
            z4 = false;
        } else {
            z4 = true;
        }
        if (gapComposerH.p(i11 & 1, z4)) {
            LVColorScheme lVColorScheme10 = LVColorScheme.DEFAULT;
            if (i21 != 0) {
                z7 = true;
            } else {
                z7 = z;
            }
            if (i6 != 0) {
                z8 = false;
            } else {
                z8 = z3;
            }
            if (i8 != 0) {
                str6 = null;
            } else {
                str6 = str5;
            }
            KeyboardActions.g.getClass();
            KeyboardActions keyboardActions10 = KeyboardActions.f5912h;
            if (i12 != 0) {
                KeyboardCapitalization.f10804b.getClass();
                i16 = KeyboardCapitalization.f10805c;
            } else {
                i16 = i13;
            }
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            MutableInteractionSource mutableInteractionSource10 = (MutableInteractionSource) objX;
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                i17 = 1;
                objX2 = new n60(1);
                gapComposerH.q(objX2);
            } else {
                i17 = 1;
            }
            Function1 function11 = (Function1) objX2;
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            i18 = WhenMappings.f48616a[lVColorScheme10.ordinal()];
            if (i18 != i17) {
                gapComposerH.L(-992416412);
                configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                gapComposerH.Z(false);
            } else {
                if (i18 == 2) {
                    throw d21.u(gapComposerH, -992418964, false);
                }
                gapComposerH.L(-992414134);
                configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                gapComposerH.Z(false);
            }
            ConfigurationTextField configurationTextField9 = configurationTextField;
            Modifier modifierE9 = ModifierExtKt.e(SizeKt.h(modifier2, f48615a, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), "textArea_input_view");
            Modifier modifierG15 = n00.g("LVMultilineTextField-0J4Nqao", "textArea_placeHolder_text");
            Modifier modifierG16 = n00.g("LVMultilineTextField-0J4Nqao", "textArea_supporting_text");
            KeyboardType.f10809b.getClass();
            i13 = i16;
            int i29 = i11 << 6;
            gapComposer = gapComposerH;
            LVTextFieldInternalKt.b(str, function1, modifierE9, configurationTextField9, z7, false, str4, modifierG15, z8, str6, modifierG16, new KeyboardOptions(i16, (Boolean) null, KeyboardType.f10810c, 0, (PlatformImeOptions) null, (Boolean) null, (LocaleList) null, 122, (DefaultConstructorMarker) null), keyboardActions10, false, 6, 6, null, null, null, null, mutableInteractionSource10, false, function11, null, null, null, false, gapComposer, (i11 & 14) | i9 | (i11 & 112) | (i11 & 57344) | ((i11 << 3) & 3670016) | (234881024 & i29) | (i29 & 1879048192), ((i11 >> 18) & 896) | 224256, 438, 126812160);
            lVColorScheme2 = lVColorScheme10;
            z5 = z7;
            z6 = z8;
            str5 = str6;
            keyboardActions2 = keyboardActions10;
            mutableInteractionSource2 = mutableInteractionSource10;
            function3 = function11;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            lVColorScheme2 = lVColorScheme;
            z5 = z;
            keyboardActions2 = keyboardActions;
            function3 = function2;
            z6 = z3;
            mutableInteractionSource2 = mutableInteractionSource;
        }
        i15 = i13;
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: p60
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                    LVMultilineTextFieldKt.a(str, function1, modifier2, lVColorScheme2, z5, str2, z6, str5, keyboardActions2, i15, mutableInteractionSource2, function3, (Composer) obj, iA, i4);
                    return Unit.f71739a;
                }
            };
        }
    }
}
