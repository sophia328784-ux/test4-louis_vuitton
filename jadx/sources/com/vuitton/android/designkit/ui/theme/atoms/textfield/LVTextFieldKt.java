package com.vuitton.android.designkit.ui.theme.atoms.textfield;

import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.input.VisualTransformation;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTextField;
import defpackage.b21;
import defpackage.c70;
import defpackage.d21;
import defpackage.o80;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "value", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVTextFieldKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f48633a = new StaticProvidableCompositionLocal(new c70(11));

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48634a;

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
            f48634a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x012f  */
    /* JADX WARN: Code duplicated, block: B:103:0x0136  */
    /* JADX WARN: Code duplicated, block: B:105:0x013a  */
    /* JADX WARN: Code duplicated, block: B:107:0x0144  */
    /* JADX WARN: Code duplicated, block: B:108:0x0147  */
    /* JADX WARN: Code duplicated, block: B:110:0x014c  */
    /* JADX WARN: Code duplicated, block: B:113:0x015b  */
    /* JADX WARN: Code duplicated, block: B:114:0x015e  */
    /* JADX WARN: Code duplicated, block: B:116:0x0162  */
    /* JADX WARN: Code duplicated, block: B:118:0x016a  */
    /* JADX WARN: Code duplicated, block: B:119:0x016d  */
    /* JADX WARN: Code duplicated, block: B:121:0x0174  */
    /* JADX WARN: Code duplicated, block: B:124:0x017e  */
    /* JADX WARN: Code duplicated, block: B:126:0x0183  */
    /* JADX WARN: Code duplicated, block: B:128:0x0187  */
    /* JADX WARN: Code duplicated, block: B:130:0x018f  */
    /* JADX WARN: Code duplicated, block: B:134:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:138:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:141:0x01b2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:142:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:143:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:145:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:146:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:148:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:149:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:152:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:153:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:155:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:156:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:158:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:159:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:161:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:163:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:166:0x0201  */
    /* JADX WARN: Code duplicated, block: B:169:0x0208  */
    /* JADX WARN: Code duplicated, block: B:170:0x020b  */
    /* JADX WARN: Code duplicated, block: B:172:0x020f  */
    /* JADX WARN: Code duplicated, block: B:173:0x0212  */
    /* JADX WARN: Code duplicated, block: B:176:0x0220 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:177:0x0222  */
    /* JADX WARN: Code duplicated, block: B:179:0x0234  */
    /* JADX WARN: Code duplicated, block: B:181:0x023d  */
    /* JADX WARN: Code duplicated, block: B:183:0x02c4  */
    /* JADX WARN: Code duplicated, block: B:186:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:188:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:54:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:56:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:61:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00be  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:71:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:74:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:76:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:81:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:84:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:88:0x0107  */
    /* JADX WARN: Code duplicated, block: B:89:0x010a  */
    /* JADX WARN: Code duplicated, block: B:93:0x0113  */
    /* JADX WARN: Code duplicated, block: B:94:0x011a  */
    /* JADX WARN: Code duplicated, block: B:96:0x0124  */
    /* JADX WARN: Code duplicated, block: B:97:0x0127  */
    public static final void a(String str, Function1 function1, Modifier modifier, LVColorScheme lVColorScheme, boolean z, String str2, boolean z2, String str3, VisualTransformation visualTransformation, KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, MutableInteractionSource mutableInteractionSource, ClearButtonMode clearButtonMode, String str4, boolean z3, Composer composer, int i2, int i3, int i4) {
        int i5;
        boolean z4;
        int i6;
        boolean z5;
        int i7;
        int i8;
        String str5;
        int i9;
        int i10;
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
        int i21;
        int i22;
        int i23;
        int i24;
        boolean z6;
        GapComposer gapComposer;
        LVColorScheme lVColorScheme2;
        VisualTransformation visualTransformation2;
        KeyboardOptions keyboardOptions2;
        MutableInteractionSource mutableInteractionSource2;
        ClearButtonMode clearButtonMode2;
        boolean z7;
        boolean z8;
        boolean z9;
        String str6;
        KeyboardActions keyboardActions2;
        String str7;
        RecomposeScopeImpl recomposeScopeImplB0;
        LVColorScheme lVColorScheme3;
        boolean z10;
        boolean z11;
        String str8;
        KeyboardOptions keyboardOptions3;
        int i25;
        KeyboardActions keyboardActions3;
        MutableInteractionSource mutableInteractionSource3;
        String str9;
        boolean z12;
        int i26;
        ConfigurationTextField configurationTextField;
        Object objX;
        int i27;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVTextField");
        }
        Modifier modifier2 = modifierE;
        str.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(1350035160);
        if ((i2 & 6) == 0) {
            i5 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i5 = i2;
        }
        if ((i2 & 48) == 0) {
            i5 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(modifier2) ? 256 : 128;
        }
        int i28 = i4 & 8;
        if (i28 != 0) {
            i5 |= 3072;
        } else if ((i2 & 3072) == 0) {
            i5 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 2048 : 1024;
        }
        int i29 = i4 & 16;
        if (i29 == 0) {
            if ((i2 & 24576) == 0) {
                z4 = z;
                i5 |= gapComposerH.b(z4) ? 16384 : 8192;
            }
            if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.K(str2)) {
                    i27 = 131072;
                } else {
                    i27 = 65536;
                }
                i5 |= i27;
            }
            i6 = i4 & 64;
            if (i6 != 0) {
                i5 |= 1572864;
                z5 = z2;
            } else {
                z5 = z2;
                if ((i2 & 1572864) == 0) {
                    if (gapComposerH.b(z5)) {
                        i7 = 1048576;
                    } else {
                        i7 = 524288;
                    }
                    i5 |= i7;
                }
            }
            i8 = i4 & 128;
            if (i8 != 0) {
                i5 |= 12582912;
                str5 = str3;
            } else {
                str5 = str3;
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.K(str5)) {
                        i9 = 8388608;
                    } else {
                        i9 = 4194304;
                    }
                    i5 |= i9;
                }
            }
            i10 = i5 | 100663296;
            i11 = i4 & 512;
            if (i11 != 0) {
                if ((805306368 & i2) == 0) {
                    if (gapComposerH.K(keyboardOptions)) {
                        i12 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i12 = 268435456;
                    }
                    i10 |= i12;
                }
                i13 = i10;
                i14 = i4 & 1024;
                if (i14 != 0) {
                    i16 = i3 | 6;
                } else {
                    if (gapComposerH.K(keyboardActions)) {
                        i15 = 4;
                    } else {
                        i15 = 2;
                    }
                    i16 = i3 | i15;
                }
                i17 = i4 & 2048;
                if (i17 != 0) {
                    i16 |= 48;
                } else if ((i3 & 48) != 0) {
                    if (gapComposerH.K(mutableInteractionSource)) {
                        i18 = 32;
                    } else {
                        i18 = 16;
                    }
                    i16 |= i18;
                }
                i19 = i16;
                i20 = i19 | KyberEngine.KyberPolyBytes;
                i21 = i4 & 8192;
                if (i21 != 0) {
                    i22 = i19 | 3456;
                } else if ((i3 & 3072) == 0) {
                    if (gapComposerH.K(str4)) {
                        i23 = 2048;
                    } else {
                        i23 = 1024;
                    }
                    i22 = i20 | i23;
                } else {
                    i22 = i20;
                }
                i24 = i4 & 16384;
                if (i24 != 0) {
                    if ((i3 & 24576) == 0) {
                        i22 |= gapComposerH.b(z3) ? 16384 : 8192;
                    }
                    if ((i13 & 306783379) == 306783378 || (i22 & 9363) != 9362) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if (gapComposerH.p(i13 & 1, z6)) {
                        if (i28 != 0) {
                            lVColorScheme3 = LVColorScheme.DEFAULT;
                        } else {
                            lVColorScheme3 = lVColorScheme;
                        }
                        if (i29 != 0) {
                            z10 = true;
                        } else {
                            z10 = z4;
                        }
                        if (i6 != 0) {
                            z11 = false;
                        } else {
                            z11 = z5;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        } else {
                            str8 = str5;
                        }
                        if (i11 != 0) {
                            KeyboardOptions.f5918h.getClass();
                            keyboardOptions3 = KeyboardOptions.f5919i;
                        } else {
                            keyboardOptions3 = keyboardOptions;
                        }
                        if (i14 != 0) {
                            KeyboardActions.g.getClass();
                            keyboardActions3 = KeyboardActions.f5912h;
                            i25 = i24;
                        } else {
                            i25 = i24;
                            keyboardActions3 = keyboardActions;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = InteractionSourceKt.a();
                                gapComposerH.q(objX);
                            }
                            mutableInteractionSource3 = (MutableInteractionSource) objX;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource;
                        }
                        ClearButtonMode clearButtonMode3 = ClearButtonMode.WhileEditing;
                        if (i21 != 0) {
                            str9 = null;
                        } else {
                            str9 = str4;
                        }
                        if (i25 != 0) {
                            z12 = false;
                        } else {
                            z12 = z3;
                        }
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        i26 = WhenMappings.f48634a[lVColorScheme3.ordinal()];
                        if (i26 != 1) {
                            gapComposerH.L(303692895);
                            configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                            gapComposerH.Z(false);
                        } else {
                            if (i26 == 2) {
                                throw d21.u(gapComposerH, 303690343, false);
                            }
                            gapComposerH.L(303695173);
                            configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                            gapComposerH.Z(false);
                        }
                        ConfigurationTextField configurationTextField2 = configurationTextField;
                        int i30 = i13 << 3;
                        int i31 = i13 << 6;
                        int i32 = (i13 & 14) | ImageMetadata.EDGE_MODE | (i13 & 112) | (i13 & 896) | (57344 & i13) | (i30 & 3670016) | (i31 & 234881024) | (i31 & 1879048192);
                        int i33 = i22 << 6;
                        b21 b21Var = VisualTransformation.Companion.f10865a;
                        gapComposer = gapComposerH;
                        LVTextFieldInternalKt.b(str, function1, modifier2, configurationTextField2, z10, false, str2, null, z11, str8, null, keyboardOptions3, keyboardActions3, true, 0, 0, null, null, null, b21Var, mutableInteractionSource3, false, null, clearButtonMode3, null, str9, z12, gapComposer, i32, ((i13 >> 24) & 112) | 3072 | (i33 & 896) | (i30 & 1879048192), ((i22 >> 3) & 14) | 3072 | (458752 & i33) | (i33 & 3670016), 23577728);
                        lVColorScheme2 = lVColorScheme3;
                        z8 = z10;
                        z9 = z11;
                        str6 = str8;
                        keyboardOptions2 = keyboardOptions3;
                        keyboardActions2 = keyboardActions3;
                        visualTransformation2 = b21Var;
                        mutableInteractionSource2 = mutableInteractionSource3;
                        clearButtonMode2 = clearButtonMode3;
                        str7 = str9;
                        z7 = z12;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        lVColorScheme2 = lVColorScheme;
                        visualTransformation2 = visualTransformation;
                        keyboardOptions2 = keyboardOptions;
                        mutableInteractionSource2 = mutableInteractionSource;
                        clearButtonMode2 = clearButtonMode;
                        z7 = z3;
                        z8 = z4;
                        z9 = z5;
                        str6 = str5;
                        keyboardActions2 = keyboardActions;
                        str7 = str4;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new o80(str, function1, modifier2, lVColorScheme2, z8, str2, z9, str6, visualTransformation2, keyboardOptions2, keyboardActions2, mutableInteractionSource2, clearButtonMode2, str7, z7, i2, i3, i4);
                    }
                }
                i22 |= 24576;
                if ((i13 & 306783379) == 306783378) {
                    z6 = true;
                } else {
                    z6 = true;
                }
                if (gapComposerH.p(i13 & 1, z6)) {
                    if (i28 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i29 != 0) {
                        z10 = true;
                    } else {
                        z10 = z4;
                    }
                    if (i6 != 0) {
                        z11 = false;
                    } else {
                        z11 = z5;
                    }
                    if (i8 != 0) {
                        str8 = null;
                    } else {
                        str8 = str5;
                    }
                    if (i11 != 0) {
                        KeyboardOptions.f5918h.getClass();
                        keyboardOptions3 = KeyboardOptions.f5919i;
                    } else {
                        keyboardOptions3 = keyboardOptions;
                    }
                    if (i14 != 0) {
                        KeyboardActions.g.getClass();
                        keyboardActions3 = KeyboardActions.f5912h;
                        i25 = i24;
                    } else {
                        i25 = i24;
                        keyboardActions3 = keyboardActions;
                    }
                    if (i17 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = InteractionSourceKt.a();
                            gapComposerH.q(objX);
                        }
                        mutableInteractionSource3 = (MutableInteractionSource) objX;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    ClearButtonMode clearButtonMode4 = ClearButtonMode.WhileEditing;
                    if (i21 != 0) {
                        str9 = null;
                    } else {
                        str9 = str4;
                    }
                    if (i25 != 0) {
                        z12 = false;
                    } else {
                        z12 = z3;
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    i26 = WhenMappings.f48634a[lVColorScheme3.ordinal()];
                    if (i26 != 1) {
                        gapComposerH.L(303692895);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                        gapComposerH.Z(false);
                    } else {
                        if (i26 == 2) {
                            throw d21.u(gapComposerH, 303690343, false);
                        }
                        gapComposerH.L(303695173);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                        gapComposerH.Z(false);
                    }
                    ConfigurationTextField configurationTextField3 = configurationTextField;
                    int i34 = i13 << 3;
                    int i35 = i13 << 6;
                    int i36 = (i13 & 14) | ImageMetadata.EDGE_MODE | (i13 & 112) | (i13 & 896) | (57344 & i13) | (i34 & 3670016) | (i35 & 234881024) | (i35 & 1879048192);
                    int i37 = i22 << 6;
                    b21 b21Var2 = VisualTransformation.Companion.f10865a;
                    gapComposer = gapComposerH;
                    LVTextFieldInternalKt.b(str, function1, modifier2, configurationTextField3, z10, false, str2, null, z11, str8, null, keyboardOptions3, keyboardActions3, true, 0, 0, null, null, null, b21Var2, mutableInteractionSource3, false, null, clearButtonMode4, null, str9, z12, gapComposer, i36, ((i13 >> 24) & 112) | 3072 | (i37 & 896) | (i34 & 1879048192), ((i22 >> 3) & 14) | 3072 | (458752 & i37) | (i37 & 3670016), 23577728);
                    lVColorScheme2 = lVColorScheme3;
                    z8 = z10;
                    z9 = z11;
                    str6 = str8;
                    keyboardOptions2 = keyboardOptions3;
                    keyboardActions2 = keyboardActions3;
                    visualTransformation2 = b21Var2;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    clearButtonMode2 = clearButtonMode4;
                    str7 = str9;
                    z7 = z12;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVColorScheme2 = lVColorScheme;
                    visualTransformation2 = visualTransformation;
                    keyboardOptions2 = keyboardOptions;
                    mutableInteractionSource2 = mutableInteractionSource;
                    clearButtonMode2 = clearButtonMode;
                    z7 = z3;
                    z8 = z4;
                    z9 = z5;
                    str6 = str5;
                    keyboardActions2 = keyboardActions;
                    str7 = str4;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new o80(str, function1, modifier2, lVColorScheme2, z8, str2, z9, str6, visualTransformation2, keyboardOptions2, keyboardActions2, mutableInteractionSource2, clearButtonMode2, str7, z7, i2, i3, i4);
                }
            }
            i10 = i5 | 905969664;
            i13 = i10;
            i14 = i4 & 1024;
            if (i14 != 0) {
                i16 = i3 | 6;
            } else {
                if (gapComposerH.K(keyboardActions)) {
                    i15 = 4;
                } else {
                    i15 = 2;
                }
                i16 = i3 | i15;
            }
            i17 = i4 & 2048;
            if (i17 != 0) {
                i16 |= 48;
            } else if ((i3 & 48) != 0) {
                if (gapComposerH.K(mutableInteractionSource)) {
                    i18 = 32;
                } else {
                    i18 = 16;
                }
                i16 |= i18;
            }
            i19 = i16;
            i20 = i19 | KyberEngine.KyberPolyBytes;
            i21 = i4 & 8192;
            if (i21 != 0) {
                i22 = i19 | 3456;
            } else if ((i3 & 3072) == 0) {
                if (gapComposerH.K(str4)) {
                    i23 = 2048;
                } else {
                    i23 = 1024;
                }
                i22 = i20 | i23;
            } else {
                i22 = i20;
            }
            i24 = i4 & 16384;
            if (i24 != 0) {
                if ((i3 & 24576) == 0) {
                    i22 |= gapComposerH.b(z3) ? 16384 : 8192;
                }
                if ((i13 & 306783379) == 306783378) {
                    z6 = true;
                } else {
                    z6 = true;
                }
                if (gapComposerH.p(i13 & 1, z6)) {
                    if (i28 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i29 != 0) {
                        z10 = true;
                    } else {
                        z10 = z4;
                    }
                    if (i6 != 0) {
                        z11 = false;
                    } else {
                        z11 = z5;
                    }
                    if (i8 != 0) {
                        str8 = null;
                    } else {
                        str8 = str5;
                    }
                    if (i11 != 0) {
                        KeyboardOptions.f5918h.getClass();
                        keyboardOptions3 = KeyboardOptions.f5919i;
                    } else {
                        keyboardOptions3 = keyboardOptions;
                    }
                    if (i14 != 0) {
                        KeyboardActions.g.getClass();
                        keyboardActions3 = KeyboardActions.f5912h;
                        i25 = i24;
                    } else {
                        i25 = i24;
                        keyboardActions3 = keyboardActions;
                    }
                    if (i17 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = InteractionSourceKt.a();
                            gapComposerH.q(objX);
                        }
                        mutableInteractionSource3 = (MutableInteractionSource) objX;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    ClearButtonMode clearButtonMode5 = ClearButtonMode.WhileEditing;
                    if (i21 != 0) {
                        str9 = null;
                    } else {
                        str9 = str4;
                    }
                    if (i25 != 0) {
                        z12 = false;
                    } else {
                        z12 = z3;
                    }
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    i26 = WhenMappings.f48634a[lVColorScheme3.ordinal()];
                    if (i26 != 1) {
                        gapComposerH.L(303692895);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                        gapComposerH.Z(false);
                    } else {
                        if (i26 == 2) {
                            throw d21.u(gapComposerH, 303690343, false);
                        }
                        gapComposerH.L(303695173);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                        gapComposerH.Z(false);
                    }
                    ConfigurationTextField configurationTextField4 = configurationTextField;
                    int i38 = i13 << 3;
                    int i39 = i13 << 6;
                    int i310 = (i13 & 14) | ImageMetadata.EDGE_MODE | (i13 & 112) | (i13 & 896) | (57344 & i13) | (i38 & 3670016) | (i39 & 234881024) | (i39 & 1879048192);
                    int i311 = i22 << 6;
                    b21 b21Var3 = VisualTransformation.Companion.f10865a;
                    gapComposer = gapComposerH;
                    LVTextFieldInternalKt.b(str, function1, modifier2, configurationTextField4, z10, false, str2, null, z11, str8, null, keyboardOptions3, keyboardActions3, true, 0, 0, null, null, null, b21Var3, mutableInteractionSource3, false, null, clearButtonMode5, null, str9, z12, gapComposer, i310, ((i13 >> 24) & 112) | 3072 | (i311 & 896) | (i38 & 1879048192), ((i22 >> 3) & 14) | 3072 | (458752 & i311) | (i311 & 3670016), 23577728);
                    lVColorScheme2 = lVColorScheme3;
                    z8 = z10;
                    z9 = z11;
                    str6 = str8;
                    keyboardOptions2 = keyboardOptions3;
                    keyboardActions2 = keyboardActions3;
                    visualTransformation2 = b21Var3;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    clearButtonMode2 = clearButtonMode5;
                    str7 = str9;
                    z7 = z12;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVColorScheme2 = lVColorScheme;
                    visualTransformation2 = visualTransformation;
                    keyboardOptions2 = keyboardOptions;
                    mutableInteractionSource2 = mutableInteractionSource;
                    clearButtonMode2 = clearButtonMode;
                    z7 = z3;
                    z8 = z4;
                    z9 = z5;
                    str6 = str5;
                    keyboardActions2 = keyboardActions;
                    str7 = str4;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new o80(str, function1, modifier2, lVColorScheme2, z8, str2, z9, str6, visualTransformation2, keyboardOptions2, keyboardActions2, mutableInteractionSource2, clearButtonMode2, str7, z7, i2, i3, i4);
                }
            }
            i22 |= 24576;
            if ((i13 & 306783379) == 306783378) {
                z6 = true;
            } else {
                z6 = true;
            }
            if (gapComposerH.p(i13 & 1, z6)) {
                if (i28 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i29 != 0) {
                    z10 = true;
                } else {
                    z10 = z4;
                }
                if (i6 != 0) {
                    z11 = false;
                } else {
                    z11 = z5;
                }
                if (i8 != 0) {
                    str8 = null;
                } else {
                    str8 = str5;
                }
                if (i11 != 0) {
                    KeyboardOptions.f5918h.getClass();
                    keyboardOptions3 = KeyboardOptions.f5919i;
                } else {
                    keyboardOptions3 = keyboardOptions;
                }
                if (i14 != 0) {
                    KeyboardActions.g.getClass();
                    keyboardActions3 = KeyboardActions.f5912h;
                    i25 = i24;
                } else {
                    i25 = i24;
                    keyboardActions3 = keyboardActions;
                }
                if (i17 != 0) {
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = InteractionSourceKt.a();
                        gapComposerH.q(objX);
                    }
                    mutableInteractionSource3 = (MutableInteractionSource) objX;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource;
                }
                ClearButtonMode clearButtonMode6 = ClearButtonMode.WhileEditing;
                if (i21 != 0) {
                    str9 = null;
                } else {
                    str9 = str4;
                }
                if (i25 != 0) {
                    z12 = false;
                } else {
                    z12 = z3;
                }
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                i26 = WhenMappings.f48634a[lVColorScheme3.ordinal()];
                if (i26 != 1) {
                    gapComposerH.L(303692895);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                    gapComposerH.Z(false);
                } else {
                    if (i26 == 2) {
                        throw d21.u(gapComposerH, 303690343, false);
                    }
                    gapComposerH.L(303695173);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                    gapComposerH.Z(false);
                }
                ConfigurationTextField configurationTextField5 = configurationTextField;
                int i312 = i13 << 3;
                int i313 = i13 << 6;
                int i314 = (i13 & 14) | ImageMetadata.EDGE_MODE | (i13 & 112) | (i13 & 896) | (57344 & i13) | (i312 & 3670016) | (i313 & 234881024) | (i313 & 1879048192);
                int i315 = i22 << 6;
                b21 b21Var4 = VisualTransformation.Companion.f10865a;
                gapComposer = gapComposerH;
                LVTextFieldInternalKt.b(str, function1, modifier2, configurationTextField5, z10, false, str2, null, z11, str8, null, keyboardOptions3, keyboardActions3, true, 0, 0, null, null, null, b21Var4, mutableInteractionSource3, false, null, clearButtonMode6, null, str9, z12, gapComposer, i314, ((i13 >> 24) & 112) | 3072 | (i315 & 896) | (i312 & 1879048192), ((i22 >> 3) & 14) | 3072 | (458752 & i315) | (i315 & 3670016), 23577728);
                lVColorScheme2 = lVColorScheme3;
                z8 = z10;
                z9 = z11;
                str6 = str8;
                keyboardOptions2 = keyboardOptions3;
                keyboardActions2 = keyboardActions3;
                visualTransformation2 = b21Var4;
                mutableInteractionSource2 = mutableInteractionSource3;
                clearButtonMode2 = clearButtonMode6;
                str7 = str9;
                z7 = z12;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVColorScheme2 = lVColorScheme;
                visualTransformation2 = visualTransformation;
                keyboardOptions2 = keyboardOptions;
                mutableInteractionSource2 = mutableInteractionSource;
                clearButtonMode2 = clearButtonMode;
                z7 = z3;
                z8 = z4;
                z9 = z5;
                str6 = str5;
                keyboardActions2 = keyboardActions;
                str7 = str4;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new o80(str, function1, modifier2, lVColorScheme2, z8, str2, z9, str6, visualTransformation2, keyboardOptions2, keyboardActions2, mutableInteractionSource2, clearButtonMode2, str7, z7, i2, i3, i4);
            }
        }
        i5 |= 24576;
        z4 = z;
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            if (gapComposerH.K(str2)) {
                i27 = 131072;
            } else {
                i27 = 65536;
            }
            i5 |= i27;
        }
        i6 = i4 & 64;
        if (i6 != 0) {
            i5 |= 1572864;
            z5 = z2;
        } else {
            z5 = z2;
            if ((i2 & 1572864) == 0) {
                if (gapComposerH.b(z5)) {
                    i7 = 1048576;
                } else {
                    i7 = 524288;
                }
                i5 |= i7;
            }
        }
        i8 = i4 & 128;
        if (i8 != 0) {
            i5 |= 12582912;
            str5 = str3;
        } else {
            str5 = str3;
            if ((i2 & 12582912) == 0) {
                if (gapComposerH.K(str5)) {
                    i9 = 8388608;
                } else {
                    i9 = 4194304;
                }
                i5 |= i9;
            }
        }
        i10 = i5 | 100663296;
        i11 = i4 & 512;
        if (i11 != 0) {
            if ((805306368 & i2) == 0) {
                if (gapComposerH.K(keyboardOptions)) {
                    i12 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i12 = 268435456;
                }
                i10 |= i12;
            }
            i13 = i10;
            i14 = i4 & 1024;
            if (i14 != 0) {
                i16 = i3 | 6;
            } else {
                if (gapComposerH.K(keyboardActions)) {
                    i15 = 4;
                } else {
                    i15 = 2;
                }
                i16 = i3 | i15;
            }
            i17 = i4 & 2048;
            if (i17 != 0) {
                i16 |= 48;
            } else if ((i3 & 48) != 0) {
                if (gapComposerH.K(mutableInteractionSource)) {
                    i18 = 32;
                } else {
                    i18 = 16;
                }
                i16 |= i18;
            }
            i19 = i16;
            i20 = i19 | KyberEngine.KyberPolyBytes;
            i21 = i4 & 8192;
            if (i21 != 0) {
                i22 = i19 | 3456;
            } else if ((i3 & 3072) == 0) {
                if (gapComposerH.K(str4)) {
                    i23 = 2048;
                } else {
                    i23 = 1024;
                }
                i22 = i20 | i23;
            } else {
                i22 = i20;
            }
            i24 = i4 & 16384;
            if (i24 != 0) {
                if ((i3 & 24576) == 0) {
                    i22 |= gapComposerH.b(z3) ? 16384 : 8192;
                }
                if ((i13 & 306783379) == 306783378) {
                    z6 = true;
                } else {
                    z6 = true;
                }
                if (gapComposerH.p(i13 & 1, z6)) {
                    if (i28 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i29 != 0) {
                        z10 = true;
                    } else {
                        z10 = z4;
                    }
                    if (i6 != 0) {
                        z11 = false;
                    } else {
                        z11 = z5;
                    }
                    if (i8 != 0) {
                        str8 = null;
                    } else {
                        str8 = str5;
                    }
                    if (i11 != 0) {
                        KeyboardOptions.f5918h.getClass();
                        keyboardOptions3 = KeyboardOptions.f5919i;
                    } else {
                        keyboardOptions3 = keyboardOptions;
                    }
                    if (i14 != 0) {
                        KeyboardActions.g.getClass();
                        keyboardActions3 = KeyboardActions.f5912h;
                        i25 = i24;
                    } else {
                        i25 = i24;
                        keyboardActions3 = keyboardActions;
                    }
                    if (i17 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = InteractionSourceKt.a();
                            gapComposerH.q(objX);
                        }
                        mutableInteractionSource3 = (MutableInteractionSource) objX;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource;
                    }
                    ClearButtonMode clearButtonMode7 = ClearButtonMode.WhileEditing;
                    if (i21 != 0) {
                        str9 = null;
                    } else {
                        str9 = str4;
                    }
                    if (i25 != 0) {
                        z12 = false;
                    } else {
                        z12 = z3;
                    }
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    i26 = WhenMappings.f48634a[lVColorScheme3.ordinal()];
                    if (i26 != 1) {
                        gapComposerH.L(303692895);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                        gapComposerH.Z(false);
                    } else {
                        if (i26 == 2) {
                            throw d21.u(gapComposerH, 303690343, false);
                        }
                        gapComposerH.L(303695173);
                        configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                        gapComposerH.Z(false);
                    }
                    ConfigurationTextField configurationTextField6 = configurationTextField;
                    int i316 = i13 << 3;
                    int i317 = i13 << 6;
                    int i318 = (i13 & 14) | ImageMetadata.EDGE_MODE | (i13 & 112) | (i13 & 896) | (57344 & i13) | (i316 & 3670016) | (i317 & 234881024) | (i317 & 1879048192);
                    int i319 = i22 << 6;
                    b21 b21Var5 = VisualTransformation.Companion.f10865a;
                    gapComposer = gapComposerH;
                    LVTextFieldInternalKt.b(str, function1, modifier2, configurationTextField6, z10, false, str2, null, z11, str8, null, keyboardOptions3, keyboardActions3, true, 0, 0, null, null, null, b21Var5, mutableInteractionSource3, false, null, clearButtonMode7, null, str9, z12, gapComposer, i318, ((i13 >> 24) & 112) | 3072 | (i319 & 896) | (i316 & 1879048192), ((i22 >> 3) & 14) | 3072 | (458752 & i319) | (i319 & 3670016), 23577728);
                    lVColorScheme2 = lVColorScheme3;
                    z8 = z10;
                    z9 = z11;
                    str6 = str8;
                    keyboardOptions2 = keyboardOptions3;
                    keyboardActions2 = keyboardActions3;
                    visualTransformation2 = b21Var5;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    clearButtonMode2 = clearButtonMode7;
                    str7 = str9;
                    z7 = z12;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    lVColorScheme2 = lVColorScheme;
                    visualTransformation2 = visualTransformation;
                    keyboardOptions2 = keyboardOptions;
                    mutableInteractionSource2 = mutableInteractionSource;
                    clearButtonMode2 = clearButtonMode;
                    z7 = z3;
                    z8 = z4;
                    z9 = z5;
                    str6 = str5;
                    keyboardActions2 = keyboardActions;
                    str7 = str4;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new o80(str, function1, modifier2, lVColorScheme2, z8, str2, z9, str6, visualTransformation2, keyboardOptions2, keyboardActions2, mutableInteractionSource2, clearButtonMode2, str7, z7, i2, i3, i4);
                }
            }
            i22 |= 24576;
            if ((i13 & 306783379) == 306783378) {
                z6 = true;
            } else {
                z6 = true;
            }
            if (gapComposerH.p(i13 & 1, z6)) {
                if (i28 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i29 != 0) {
                    z10 = true;
                } else {
                    z10 = z4;
                }
                if (i6 != 0) {
                    z11 = false;
                } else {
                    z11 = z5;
                }
                if (i8 != 0) {
                    str8 = null;
                } else {
                    str8 = str5;
                }
                if (i11 != 0) {
                    KeyboardOptions.f5918h.getClass();
                    keyboardOptions3 = KeyboardOptions.f5919i;
                } else {
                    keyboardOptions3 = keyboardOptions;
                }
                if (i14 != 0) {
                    KeyboardActions.g.getClass();
                    keyboardActions3 = KeyboardActions.f5912h;
                    i25 = i24;
                } else {
                    i25 = i24;
                    keyboardActions3 = keyboardActions;
                }
                if (i17 != 0) {
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = InteractionSourceKt.a();
                        gapComposerH.q(objX);
                    }
                    mutableInteractionSource3 = (MutableInteractionSource) objX;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource;
                }
                ClearButtonMode clearButtonMode8 = ClearButtonMode.WhileEditing;
                if (i21 != 0) {
                    str9 = null;
                } else {
                    str9 = str4;
                }
                if (i25 != 0) {
                    z12 = false;
                } else {
                    z12 = z3;
                }
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                i26 = WhenMappings.f48634a[lVColorScheme3.ordinal()];
                if (i26 != 1) {
                    gapComposerH.L(303692895);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                    gapComposerH.Z(false);
                } else {
                    if (i26 == 2) {
                        throw d21.u(gapComposerH, 303690343, false);
                    }
                    gapComposerH.L(303695173);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                    gapComposerH.Z(false);
                }
                ConfigurationTextField configurationTextField7 = configurationTextField;
                int i3110 = i13 << 3;
                int i3111 = i13 << 6;
                int i3112 = (i13 & 14) | ImageMetadata.EDGE_MODE | (i13 & 112) | (i13 & 896) | (57344 & i13) | (i3110 & 3670016) | (i3111 & 234881024) | (i3111 & 1879048192);
                int i3113 = i22 << 6;
                b21 b21Var6 = VisualTransformation.Companion.f10865a;
                gapComposer = gapComposerH;
                LVTextFieldInternalKt.b(str, function1, modifier2, configurationTextField7, z10, false, str2, null, z11, str8, null, keyboardOptions3, keyboardActions3, true, 0, 0, null, null, null, b21Var6, mutableInteractionSource3, false, null, clearButtonMode8, null, str9, z12, gapComposer, i3112, ((i13 >> 24) & 112) | 3072 | (i3113 & 896) | (i3110 & 1879048192), ((i22 >> 3) & 14) | 3072 | (458752 & i3113) | (i3113 & 3670016), 23577728);
                lVColorScheme2 = lVColorScheme3;
                z8 = z10;
                z9 = z11;
                str6 = str8;
                keyboardOptions2 = keyboardOptions3;
                keyboardActions2 = keyboardActions3;
                visualTransformation2 = b21Var6;
                mutableInteractionSource2 = mutableInteractionSource3;
                clearButtonMode2 = clearButtonMode8;
                str7 = str9;
                z7 = z12;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVColorScheme2 = lVColorScheme;
                visualTransformation2 = visualTransformation;
                keyboardOptions2 = keyboardOptions;
                mutableInteractionSource2 = mutableInteractionSource;
                clearButtonMode2 = clearButtonMode;
                z7 = z3;
                z8 = z4;
                z9 = z5;
                str6 = str5;
                keyboardActions2 = keyboardActions;
                str7 = str4;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new o80(str, function1, modifier2, lVColorScheme2, z8, str2, z9, str6, visualTransformation2, keyboardOptions2, keyboardActions2, mutableInteractionSource2, clearButtonMode2, str7, z7, i2, i3, i4);
            }
        }
        i10 = i5 | 905969664;
        i13 = i10;
        i14 = i4 & 1024;
        if (i14 != 0) {
            i16 = i3 | 6;
        } else {
            if (gapComposerH.K(keyboardActions)) {
                i15 = 4;
            } else {
                i15 = 2;
            }
            i16 = i3 | i15;
        }
        i17 = i4 & 2048;
        if (i17 != 0) {
            i16 |= 48;
        } else if ((i3 & 48) != 0) {
            if (gapComposerH.K(mutableInteractionSource)) {
                i18 = 32;
            } else {
                i18 = 16;
            }
            i16 |= i18;
        }
        i19 = i16;
        i20 = i19 | KyberEngine.KyberPolyBytes;
        i21 = i4 & 8192;
        if (i21 != 0) {
            i22 = i19 | 3456;
        } else if ((i3 & 3072) == 0) {
            if (gapComposerH.K(str4)) {
                i23 = 2048;
            } else {
                i23 = 1024;
            }
            i22 = i20 | i23;
        } else {
            i22 = i20;
        }
        i24 = i4 & 16384;
        if (i24 != 0) {
            if ((i3 & 24576) == 0) {
                i22 |= gapComposerH.b(z3) ? 16384 : 8192;
            }
            if ((i13 & 306783379) == 306783378) {
                z6 = true;
            } else {
                z6 = true;
            }
            if (gapComposerH.p(i13 & 1, z6)) {
                if (i28 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i29 != 0) {
                    z10 = true;
                } else {
                    z10 = z4;
                }
                if (i6 != 0) {
                    z11 = false;
                } else {
                    z11 = z5;
                }
                if (i8 != 0) {
                    str8 = null;
                } else {
                    str8 = str5;
                }
                if (i11 != 0) {
                    KeyboardOptions.f5918h.getClass();
                    keyboardOptions3 = KeyboardOptions.f5919i;
                } else {
                    keyboardOptions3 = keyboardOptions;
                }
                if (i14 != 0) {
                    KeyboardActions.g.getClass();
                    keyboardActions3 = KeyboardActions.f5912h;
                    i25 = i24;
                } else {
                    i25 = i24;
                    keyboardActions3 = keyboardActions;
                }
                if (i17 != 0) {
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = InteractionSourceKt.a();
                        gapComposerH.q(objX);
                    }
                    mutableInteractionSource3 = (MutableInteractionSource) objX;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource;
                }
                ClearButtonMode clearButtonMode9 = ClearButtonMode.WhileEditing;
                if (i21 != 0) {
                    str9 = null;
                } else {
                    str9 = str4;
                }
                if (i25 != 0) {
                    z12 = false;
                } else {
                    z12 = z3;
                }
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                i26 = WhenMappings.f48634a[lVColorScheme3.ordinal()];
                if (i26 != 1) {
                    gapComposerH.L(303692895);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                    gapComposerH.Z(false);
                } else {
                    if (i26 == 2) {
                        throw d21.u(gapComposerH, 303690343, false);
                    }
                    gapComposerH.L(303695173);
                    configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                    gapComposerH.Z(false);
                }
                ConfigurationTextField configurationTextField8 = configurationTextField;
                int i3114 = i13 << 3;
                int i3115 = i13 << 6;
                int i3116 = (i13 & 14) | ImageMetadata.EDGE_MODE | (i13 & 112) | (i13 & 896) | (57344 & i13) | (i3114 & 3670016) | (i3115 & 234881024) | (i3115 & 1879048192);
                int i3117 = i22 << 6;
                b21 b21Var7 = VisualTransformation.Companion.f10865a;
                gapComposer = gapComposerH;
                LVTextFieldInternalKt.b(str, function1, modifier2, configurationTextField8, z10, false, str2, null, z11, str8, null, keyboardOptions3, keyboardActions3, true, 0, 0, null, null, null, b21Var7, mutableInteractionSource3, false, null, clearButtonMode9, null, str9, z12, gapComposer, i3116, ((i13 >> 24) & 112) | 3072 | (i3117 & 896) | (i3114 & 1879048192), ((i22 >> 3) & 14) | 3072 | (458752 & i3117) | (i3117 & 3670016), 23577728);
                lVColorScheme2 = lVColorScheme3;
                z8 = z10;
                z9 = z11;
                str6 = str8;
                keyboardOptions2 = keyboardOptions3;
                keyboardActions2 = keyboardActions3;
                visualTransformation2 = b21Var7;
                mutableInteractionSource2 = mutableInteractionSource3;
                clearButtonMode2 = clearButtonMode9;
                str7 = str9;
                z7 = z12;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                lVColorScheme2 = lVColorScheme;
                visualTransformation2 = visualTransformation;
                keyboardOptions2 = keyboardOptions;
                mutableInteractionSource2 = mutableInteractionSource;
                clearButtonMode2 = clearButtonMode;
                z7 = z3;
                z8 = z4;
                z9 = z5;
                str6 = str5;
                keyboardActions2 = keyboardActions;
                str7 = str4;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new o80(str, function1, modifier2, lVColorScheme2, z8, str2, z9, str6, visualTransformation2, keyboardOptions2, keyboardActions2, mutableInteractionSource2, clearButtonMode2, str7, z7, i2, i3, i4);
            }
        }
        i22 |= 24576;
        if ((i13 & 306783379) == 306783378) {
            z6 = true;
        } else {
            z6 = true;
        }
        if (gapComposerH.p(i13 & 1, z6)) {
            if (i28 != 0) {
                lVColorScheme3 = LVColorScheme.DEFAULT;
            } else {
                lVColorScheme3 = lVColorScheme;
            }
            if (i29 != 0) {
                z10 = true;
            } else {
                z10 = z4;
            }
            if (i6 != 0) {
                z11 = false;
            } else {
                z11 = z5;
            }
            if (i8 != 0) {
                str8 = null;
            } else {
                str8 = str5;
            }
            if (i11 != 0) {
                KeyboardOptions.f5918h.getClass();
                keyboardOptions3 = KeyboardOptions.f5919i;
            } else {
                keyboardOptions3 = keyboardOptions;
            }
            if (i14 != 0) {
                KeyboardActions.g.getClass();
                keyboardActions3 = KeyboardActions.f5912h;
                i25 = i24;
            } else {
                i25 = i24;
                keyboardActions3 = keyboardActions;
            }
            if (i17 != 0) {
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = InteractionSourceKt.a();
                    gapComposerH.q(objX);
                }
                mutableInteractionSource3 = (MutableInteractionSource) objX;
            } else {
                mutableInteractionSource3 = mutableInteractionSource;
            }
            ClearButtonMode clearButtonMode10 = ClearButtonMode.WhileEditing;
            if (i21 != 0) {
                str9 = null;
            } else {
                str9 = str4;
            }
            if (i25 != 0) {
                z12 = false;
            } else {
                z12 = z3;
            }
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            i26 = WhenMappings.f48634a[lVColorScheme3.ordinal()];
            if (i26 != 1) {
                gapComposerH.L(303692895);
                configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48635a;
                gapComposerH.Z(false);
            } else {
                if (i26 == 2) {
                    throw d21.u(gapComposerH, 303690343, false);
                }
                gapComposerH.L(303695173);
                configurationTextField = LVAppDesignKitTheme.m(gapComposerH).f48636b;
                gapComposerH.Z(false);
            }
            ConfigurationTextField configurationTextField9 = configurationTextField;
            int i3118 = i13 << 3;
            int i3119 = i13 << 6;
            int i31110 = (i13 & 14) | ImageMetadata.EDGE_MODE | (i13 & 112) | (i13 & 896) | (57344 & i13) | (i3118 & 3670016) | (i3119 & 234881024) | (i3119 & 1879048192);
            int i31111 = i22 << 6;
            b21 b21Var8 = VisualTransformation.Companion.f10865a;
            gapComposer = gapComposerH;
            LVTextFieldInternalKt.b(str, function1, modifier2, configurationTextField9, z10, false, str2, null, z11, str8, null, keyboardOptions3, keyboardActions3, true, 0, 0, null, null, null, b21Var8, mutableInteractionSource3, false, null, clearButtonMode10, null, str9, z12, gapComposer, i31110, ((i13 >> 24) & 112) | 3072 | (i31111 & 896) | (i3118 & 1879048192), ((i22 >> 3) & 14) | 3072 | (458752 & i31111) | (i31111 & 3670016), 23577728);
            lVColorScheme2 = lVColorScheme3;
            z8 = z10;
            z9 = z11;
            str6 = str8;
            keyboardOptions2 = keyboardOptions3;
            keyboardActions2 = keyboardActions3;
            visualTransformation2 = b21Var8;
            mutableInteractionSource2 = mutableInteractionSource3;
            clearButtonMode2 = clearButtonMode10;
            str7 = str9;
            z7 = z12;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            lVColorScheme2 = lVColorScheme;
            visualTransformation2 = visualTransformation;
            keyboardOptions2 = keyboardOptions;
            mutableInteractionSource2 = mutableInteractionSource;
            clearButtonMode2 = clearButtonMode;
            z7 = z3;
            z8 = z4;
            z9 = z5;
            str6 = str5;
            keyboardActions2 = keyboardActions;
            str7 = str4;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o80(str, function1, modifier2, lVColorScheme2, z8, str2, z9, str6, visualTransformation2, keyboardOptions2, keyboardActions2, mutableInteractionSource2, clearButtonMode2, str7, z7, i2, i3, i4);
        }
    }
}
