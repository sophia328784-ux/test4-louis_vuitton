package com.vuitton.android.designkit.components.components;

import android.content.res.Configuration;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.components.components.LVCustomBottomSheetContentKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.k40;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"components"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVCustomBottomSheetContentKt {
    /* JADX WARN: Code duplicated, block: B:101:0x0127  */
    /* JADX WARN: Code duplicated, block: B:104:0x0139  */
    /* JADX WARN: Code duplicated, block: B:108:0x0142  */
    /* JADX WARN: Code duplicated, block: B:111:0x014b  */
    /* JADX WARN: Code duplicated, block: B:113:0x0155  */
    /* JADX WARN: Code duplicated, block: B:121:0x0173 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:122:0x0175  */
    /* JADX WARN: Code duplicated, block: B:123:0x017b  */
    /* JADX WARN: Code duplicated, block: B:125:0x017f  */
    /* JADX WARN: Code duplicated, block: B:127:0x0182  */
    /* JADX WARN: Code duplicated, block: B:129:0x0185  */
    /* JADX WARN: Code duplicated, block: B:131:0x0188  */
    /* JADX WARN: Code duplicated, block: B:132:0x018a  */
    /* JADX WARN: Code duplicated, block: B:135:0x0190  */
    /* JADX WARN: Code duplicated, block: B:137:0x019a  */
    /* JADX WARN: Code duplicated, block: B:138:0x019c  */
    /* JADX WARN: Code duplicated, block: B:140:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:142:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:144:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:146:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:150:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:151:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:154:0x026e  */
    /* JADX WARN: Code duplicated, block: B:156:0x0275  */
    /* JADX WARN: Code duplicated, block: B:157:0x0279  */
    /* JADX WARN: Code duplicated, block: B:160:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:177:0x0355  */
    /* JADX WARN: Code duplicated, block: B:179:0x0363  */
    /* JADX WARN: Code duplicated, block: B:180:0x0371  */
    /* JADX WARN: Code duplicated, block: B:182:0x037a  */
    /* JADX WARN: Code duplicated, block: B:184:0x038c  */
    /* JADX WARN: Code duplicated, block: B:187:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:189:0x03b0  */
    /* JADX WARN: Code duplicated, block: B:193:0x0406  */
    /* JADX WARN: Code duplicated, block: B:195:0x040b  */
    /* JADX WARN: Code duplicated, block: B:198:0x0425  */
    /* JADX WARN: Code duplicated, block: B:200:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x004f  */
    /* JADX WARN: Code duplicated, block: B:31:0x0054  */
    /* JADX WARN: Code duplicated, block: B:33:0x0058  */
    /* JADX WARN: Code duplicated, block: B:35:0x0060  */
    /* JADX WARN: Code duplicated, block: B:36:0x0063  */
    /* JADX WARN: Code duplicated, block: B:40:0x006a  */
    /* JADX WARN: Code duplicated, block: B:42:0x006f  */
    /* JADX WARN: Code duplicated, block: B:44:0x0073  */
    /* JADX WARN: Code duplicated, block: B:46:0x007b  */
    /* JADX WARN: Code duplicated, block: B:47:0x007e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0087  */
    /* JADX WARN: Code duplicated, block: B:52:0x008c  */
    /* JADX WARN: Code duplicated, block: B:54:0x0092  */
    /* JADX WARN: Code duplicated, block: B:56:0x0098  */
    /* JADX WARN: Code duplicated, block: B:57:0x009b  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:73:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:75:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:78:0x00db  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:88:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:89:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:93:0x010a  */
    /* JADX WARN: Code duplicated, block: B:94:0x0111  */
    /* JADX WARN: Code duplicated, block: B:96:0x0115  */
    /* JADX WARN: Code duplicated, block: B:98:0x011f  */
    /* JADX WARN: Code duplicated, block: B:99:0x0122  */
    public static final void a(Modifier modifier, float f2, String str, String str2, String str3, String str4, TextStyle textStyle, boolean z, String str5, Function0 function0, final Function3 function3, Composer composer, final int i2, final int i3, final int i4) {
        int i5;
        String str6;
        int i6;
        String str7;
        int i7;
        int i8;
        String str8;
        int i9;
        int i10;
        int i11;
        TextStyle textStyle2;
        Modifier modifier2;
        int i12;
        int i13;
        int i14;
        int i15;
        String str9;
        int i16;
        int i17;
        int i18;
        int i19;
        boolean z2;
        GapComposer gapComposer;
        final boolean z3;
        final String str10;
        final String str11;
        final String str12;
        final Modifier modifier3;
        final String str13;
        final Function0 function1;
        final TextStyle textStyle3;
        final String str14;
        final float f3;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        String str15;
        boolean z4;
        Function0 function2;
        Modifier modifier4;
        String str16;
        Object objX;
        int i20;
        float f4;
        TextStyle textStyle4;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function4;
        Modifier modifier5;
        boolean z5;
        float f5;
        Modifier modifierG;
        TextStyle textStyle5;
        String str17;
        boolean z6;
        float f6;
        float f7;
        Modifier modifierG2;
        int i21;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVCustomBottomSheetContent");
        }
        GapComposer gapComposerH = composer.h(642792841);
        int i22 = i4 & 1;
        if (i22 != 0) {
            i5 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i5 = i2;
        }
        int i23 = i5 | 48;
        int i24 = i4 & 4;
        if (i24 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                str6 = str;
                i23 |= gapComposerH.K(str6) ? 256 : 128;
            }
            i6 = i4 & 8;
            if (i6 != 0) {
                if ((i2 & 3072) == 0) {
                    str7 = str2;
                    if (gapComposerH.K(str7)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i23 |= i7;
                }
                i8 = i4 & 16;
                if (i8 != 0) {
                    if ((i2 & 24576) == 0) {
                        str8 = str3;
                        if (gapComposerH.K(str8)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i23 |= i9;
                    }
                    i10 = i4 & 32;
                    if (i10 != 0) {
                        i23 |= ImageMetadata.EDGE_MODE;
                    } else if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.K(str4)) {
                            i11 = 131072;
                        } else {
                            i11 = 65536;
                        }
                        i23 |= i11;
                    }
                    if ((i2 & 1572864) == 0) {
                        textStyle2 = textStyle;
                        if ((i4 & 64) == 0 || !gapComposerH.K(textStyle2)) {
                            i21 = 524288;
                        } else {
                            i21 = 1048576;
                        }
                        i23 |= i21;
                    } else {
                        textStyle2 = textStyle;
                    }
                    modifier2 = modifierE;
                    i12 = i4 & 128;
                    if (i12 != 0) {
                        if ((i2 & 12582912) == 0) {
                            if (gapComposerH.b(z)) {
                                i13 = 8388608;
                            } else {
                                i13 = 4194304;
                            }
                            i23 |= i13;
                        }
                        i14 = i23 | 100663296;
                        i15 = i4 & 512;
                        if (i15 != 0) {
                            if ((805306368 & i2) == 0) {
                                str9 = str5;
                                if (gapComposerH.K(str9)) {
                                    i16 = PKIFailureInfo.duplicateCertReq;
                                } else {
                                    i16 = 268435456;
                                }
                                i14 |= i16;
                            }
                            i17 = i4 & 1024;
                            if (i17 != 0) {
                                i18 = 54;
                            } else if ((i3 & 6) == 0) {
                                if (gapComposerH.y(function0)) {
                                    i19 = 4;
                                } else {
                                    i19 = 2;
                                }
                                i18 = i3 | i19;
                            } else {
                                i18 = i3;
                            }
                            if ((i14 & 306783379) == 306783378 || (i18 & 19) != 18) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (gapComposerH.p(i14 & 1, z2)) {
                                gapComposerH.y0();
                                if ((i2 & 1) != 0 || gapComposerH.h0()) {
                                    if (i22 != 0) {
                                        dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                                    } else {
                                        dTFunctionNameModifier = modifier2;
                                    }
                                    if (i24 != 0) {
                                        str6 = null;
                                    }
                                    if (i6 != 0) {
                                        str7 = null;
                                    }
                                    if (i8 != 0) {
                                        str8 = null;
                                    }
                                    if (i10 != 0) {
                                        str15 = null;
                                    } else {
                                        str15 = str4;
                                    }
                                    if ((i4 & 64) != 0) {
                                        textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                        i14 &= -3670017;
                                    }
                                    if (i12 != 0) {
                                        z4 = false;
                                    } else {
                                        z4 = z;
                                    }
                                    if (i15 != 0) {
                                        str9 = null;
                                    }
                                    if (i17 != 0) {
                                        objX = gapComposerH.x();
                                        if (objX == Composer.Companion.f7939a) {
                                            objX = new k40(12);
                                            gapComposerH.q(objX);
                                        }
                                        function2 = (Function0) objX;
                                    } else {
                                        function2 = function0;
                                    }
                                    String str18 = str6;
                                    modifier4 = dTFunctionNameModifier;
                                    f2 = 0.9f;
                                    str16 = str18;
                                } else {
                                    gapComposerH.D();
                                    if ((i4 & 64) != 0) {
                                        i14 &= -3670017;
                                    }
                                    f2 = f2;
                                    str15 = str4;
                                    z4 = z;
                                    function2 = function0;
                                    str16 = str6;
                                    modifier4 = modifier2;
                                }
                                i20 = i14;
                                gapComposerH.a0();
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                float f8 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                                Dp.Companion companion = Dp.f11004c;
                                if (z4) {
                                    gapComposerH.L(-1816982425);
                                    f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                                    gapComposerH.Z(false);
                                } else {
                                    gapComposerH.L(-1816926749);
                                    f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                                    gapComposerH.Z(false);
                                }
                                float f9 = f4;
                                textStyle4 = textStyle2;
                                Modifier modifierM = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f8 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f9, LVAppDesignKitTheme.l(gapComposerH).f48415c, f9, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                                Alignment.f8582a.getClass();
                                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                                iHashCode = Long.hashCode(gapComposerH.T);
                                persistentCompositionLocalMapU = gapComposerH.U();
                                modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
                                ComposeUiNode.b0.getClass();
                                function4 = ComposeUiNode.Companion.f9641b;
                                modifier5 = modifier4;
                                if (gapComposerH.f7976a != null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                gapComposerH.B();
                                if (gapComposerH.S) {
                                    gapComposerH.C(function4);
                                } else {
                                    gapComposerH.o();
                                }
                                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                                gapComposerH.L(826392783);
                                gapComposerH.Z(false);
                                if (str16 != null || str16.length() <= 0) {
                                    gapComposer = gapComposerH;
                                    z5 = false;
                                    gapComposer.L(827403631);
                                    gapComposer.Z(false);
                                } else {
                                    gapComposerH.L(826477878);
                                    float f10 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                                    if (str8 != null) {
                                        gapComposerH.L(826645650);
                                        f6 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                                        z6 = false;
                                        gapComposerH.Z(false);
                                    } else {
                                        z6 = false;
                                        gapComposerH.L(826743889);
                                        f6 = LVAppDesignKitTheme.l(gapComposerH).d;
                                        gapComposerH.Z(false);
                                    }
                                    float f11 = f6;
                                    if (z4) {
                                        gapComposerH.L(826904593);
                                        f7 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                                        gapComposerH.Z(z6);
                                    } else {
                                        gapComposerH.L(827003669);
                                        f7 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                                        gapComposerH.Z(z6);
                                    }
                                    Modifier modifierM2 = PaddingKt.m(Modifier.Companion.f8607b, f7, f10, Call.Parameters.DEFAULT_CAMERA_ZOOM, f11, 4);
                                    if (str7 == null || (modifierG2 = n00.g("LVCustomBottomSheetContent", str7)) == null) {
                                        modifierG2 = n00.g("LVCustomBottomSheetContent", "bottomSheet_title_text");
                                    }
                                    TextKt.c(str16, modifierM2.o(modifierG2), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, (i20 >> 6) & 14, 0, 131068);
                                    gapComposer = gapComposerH;
                                    z5 = false;
                                    gapComposer.Z(false);
                                }
                                if (str8 == null) {
                                    gapComposer.L(827442287);
                                    gapComposer.Z(z5);
                                    textStyle5 = textStyle4;
                                    str17 = str8;
                                } else {
                                    DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                                    if (z4) {
                                        gapComposer.L(-1121329229);
                                        f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                                        gapComposer.Z(z5);
                                    } else {
                                        gapComposer.L(-1121230153);
                                        f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                                        gapComposer.Z(z5);
                                    }
                                    Modifier modifierM3 = PaddingKt.m(dTFunctionNameModifierI, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                                    if (str15 != null || (modifierG = n00.g("LVCustomBottomSheetContent", str15)) == null) {
                                        modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                                    }
                                    textStyle5 = textStyle4;
                                    str17 = str8;
                                    TextKt.c(str17, modifierM3.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                                    gapComposer.Z(false);
                                }
                                function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                                gapComposer.Z(true);
                                modifier3 = modifier5;
                                str10 = str16;
                                str13 = str15;
                                z3 = z4;
                                str12 = str7;
                                function1 = function2;
                                str14 = str17;
                                str11 = str9;
                                textStyle3 = textStyle5;
                            } else {
                                gapComposer = gapComposerH;
                                gapComposer.D();
                                z3 = z;
                                str10 = str6;
                                str11 = str9;
                                str12 = str7;
                                modifier3 = modifier2;
                                str13 = str4;
                                function1 = function0;
                                textStyle3 = textStyle2;
                                str14 = str8;
                            }
                            f3 = f2;
                            recomposeScopeImplB0 = gapComposer.b0();
                            if (recomposeScopeImplB0 != null) {
                                recomposeScopeImplB0.d = new Function2() { // from class: s50
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj, Object obj2) {
                                        ((Integer) obj2).getClass();
                                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                                        int iA2 = RecomposeScopeImplKt.a(i3);
                                        LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                                        return Unit.f71739a;
                                    }
                                };
                            }
                        }
                        i14 = i23 | 905969664;
                        str9 = str5;
                        i17 = i4 & 1024;
                        if (i17 != 0) {
                            i18 = 54;
                        } else if ((i3 & 6) == 0) {
                            if (gapComposerH.y(function0)) {
                                i19 = 4;
                            } else {
                                i19 = 2;
                            }
                            i18 = i3 | i19;
                        } else {
                            i18 = i3;
                        }
                        if ((i14 & 306783379) == 306783378) {
                            z2 = true;
                        } else {
                            z2 = true;
                        }
                        if (gapComposerH.p(i14 & 1, z2)) {
                            gapComposerH.y0();
                            if ((i2 & 1) != 0) {
                                if (i22 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                                } else {
                                    dTFunctionNameModifier = modifier2;
                                }
                                if (i24 != 0) {
                                    str6 = null;
                                }
                                if (i6 != 0) {
                                    str7 = null;
                                }
                                if (i8 != 0) {
                                    str8 = null;
                                }
                                if (i10 != 0) {
                                    str15 = null;
                                } else {
                                    str15 = str4;
                                }
                                if ((i4 & 64) != 0) {
                                    textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                    i14 &= -3670017;
                                }
                                if (i12 != 0) {
                                    z4 = false;
                                } else {
                                    z4 = z;
                                }
                                if (i15 != 0) {
                                    str9 = null;
                                }
                                if (i17 != 0) {
                                    objX = gapComposerH.x();
                                    if (objX == Composer.Companion.f7939a) {
                                        objX = new k40(12);
                                        gapComposerH.q(objX);
                                    }
                                    function2 = (Function0) objX;
                                } else {
                                    function2 = function0;
                                }
                                String str19 = str6;
                                modifier4 = dTFunctionNameModifier;
                                f2 = 0.9f;
                                str16 = str19;
                            } else {
                                if (i22 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                                } else {
                                    dTFunctionNameModifier = modifier2;
                                }
                                if (i24 != 0) {
                                    str6 = null;
                                }
                                if (i6 != 0) {
                                    str7 = null;
                                }
                                if (i8 != 0) {
                                    str8 = null;
                                }
                                if (i10 != 0) {
                                    str15 = null;
                                } else {
                                    str15 = str4;
                                }
                                if ((i4 & 64) != 0) {
                                    textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                    i14 &= -3670017;
                                }
                                if (i12 != 0) {
                                    z4 = false;
                                } else {
                                    z4 = z;
                                }
                                if (i15 != 0) {
                                    str9 = null;
                                }
                                if (i17 != 0) {
                                    objX = gapComposerH.x();
                                    if (objX == Composer.Companion.f7939a) {
                                        objX = new k40(12);
                                        gapComposerH.q(objX);
                                    }
                                    function2 = (Function0) objX;
                                } else {
                                    function2 = function0;
                                }
                                String str110 = str6;
                                modifier4 = dTFunctionNameModifier;
                                f2 = 0.9f;
                                str16 = str110;
                            }
                            i20 = i14;
                            gapComposerH.a0();
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            float f12 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                            Dp.Companion companion2 = Dp.f11004c;
                            if (z4) {
                                gapComposerH.L(-1816982425);
                                f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-1816926749);
                                f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                                gapComposerH.Z(false);
                            }
                            float f13 = f4;
                            textStyle4 = textStyle2;
                            Modifier modifierM4 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f12 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f13, LVAppDesignKitTheme.l(gapComposerH).f48415c, f13, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                            Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                            Alignment.f8582a.getClass();
                            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, gapComposerH, 0);
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierM4);
                            ComposeUiNode.b0.getClass();
                            function4 = ComposeUiNode.Companion.f9641b;
                            modifier5 = modifier4;
                            if (gapComposerH.f7976a != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            if (gapComposerH.S) {
                                gapComposerH.C(function4);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                            gapComposerH.L(826392783);
                            gapComposerH.Z(false);
                            if (str16 != null) {
                                gapComposer = gapComposerH;
                                z5 = false;
                                gapComposer.L(827403631);
                                gapComposer.Z(false);
                            } else {
                                gapComposer = gapComposerH;
                                z5 = false;
                                gapComposer.L(827403631);
                                gapComposer.Z(false);
                            }
                            if (str8 == null) {
                                gapComposer.L(827442287);
                                gapComposer.Z(z5);
                                textStyle5 = textStyle4;
                                str17 = str8;
                            } else {
                                DTFunctionNameModifier dTFunctionNameModifierI2 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                                if (z4) {
                                    gapComposer.L(-1121329229);
                                    f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                                    gapComposer.Z(z5);
                                } else {
                                    gapComposer.L(-1121230153);
                                    f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                                    gapComposer.Z(z5);
                                }
                                Modifier modifierM5 = PaddingKt.m(dTFunctionNameModifierI2, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                                if (str15 != null) {
                                    modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                                } else {
                                    modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                                }
                                textStyle5 = textStyle4;
                                str17 = str8;
                                TextKt.c(str17, modifierM5.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                                gapComposer.Z(false);
                            }
                            function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                            gapComposer.Z(true);
                            modifier3 = modifier5;
                            str10 = str16;
                            str13 = str15;
                            z3 = z4;
                            str12 = str7;
                            function1 = function2;
                            str14 = str17;
                            str11 = str9;
                            textStyle3 = textStyle5;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            z3 = z;
                            str10 = str6;
                            str11 = str9;
                            str12 = str7;
                            modifier3 = modifier2;
                            str13 = str4;
                            function1 = function0;
                            textStyle3 = textStyle2;
                            str14 = str8;
                        }
                        f3 = f2;
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: s50
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i3);
                                    LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i23 |= 12582912;
                    i14 = i23 | 100663296;
                    i15 = i4 & 512;
                    if (i15 != 0) {
                        if ((805306368 & i2) == 0) {
                            str9 = str5;
                            if (gapComposerH.K(str9)) {
                                i16 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i16 = 268435456;
                            }
                            i14 |= i16;
                        }
                        i17 = i4 & 1024;
                        if (i17 != 0) {
                            i18 = 54;
                        } else if ((i3 & 6) == 0) {
                            if (gapComposerH.y(function0)) {
                                i19 = 4;
                            } else {
                                i19 = 2;
                            }
                            i18 = i3 | i19;
                        } else {
                            i18 = i3;
                        }
                        if ((i14 & 306783379) == 306783378) {
                            z2 = true;
                        } else {
                            z2 = true;
                        }
                        if (gapComposerH.p(i14 & 1, z2)) {
                            gapComposerH.y0();
                            if ((i2 & 1) != 0) {
                                if (i22 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                                } else {
                                    dTFunctionNameModifier = modifier2;
                                }
                                if (i24 != 0) {
                                    str6 = null;
                                }
                                if (i6 != 0) {
                                    str7 = null;
                                }
                                if (i8 != 0) {
                                    str8 = null;
                                }
                                if (i10 != 0) {
                                    str15 = null;
                                } else {
                                    str15 = str4;
                                }
                                if ((i4 & 64) != 0) {
                                    textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                    i14 &= -3670017;
                                }
                                if (i12 != 0) {
                                    z4 = false;
                                } else {
                                    z4 = z;
                                }
                                if (i15 != 0) {
                                    str9 = null;
                                }
                                if (i17 != 0) {
                                    objX = gapComposerH.x();
                                    if (objX == Composer.Companion.f7939a) {
                                        objX = new k40(12);
                                        gapComposerH.q(objX);
                                    }
                                    function2 = (Function0) objX;
                                } else {
                                    function2 = function0;
                                }
                                String str111 = str6;
                                modifier4 = dTFunctionNameModifier;
                                f2 = 0.9f;
                                str16 = str111;
                            } else {
                                if (i22 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                                } else {
                                    dTFunctionNameModifier = modifier2;
                                }
                                if (i24 != 0) {
                                    str6 = null;
                                }
                                if (i6 != 0) {
                                    str7 = null;
                                }
                                if (i8 != 0) {
                                    str8 = null;
                                }
                                if (i10 != 0) {
                                    str15 = null;
                                } else {
                                    str15 = str4;
                                }
                                if ((i4 & 64) != 0) {
                                    textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                    i14 &= -3670017;
                                }
                                if (i12 != 0) {
                                    z4 = false;
                                } else {
                                    z4 = z;
                                }
                                if (i15 != 0) {
                                    str9 = null;
                                }
                                if (i17 != 0) {
                                    objX = gapComposerH.x();
                                    if (objX == Composer.Companion.f7939a) {
                                        objX = new k40(12);
                                        gapComposerH.q(objX);
                                    }
                                    function2 = (Function0) objX;
                                } else {
                                    function2 = function0;
                                }
                                String str112 = str6;
                                modifier4 = dTFunctionNameModifier;
                                f2 = 0.9f;
                                str16 = str112;
                            }
                            i20 = i14;
                            gapComposerH.a0();
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            float f14 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                            Dp.Companion companion3 = Dp.f11004c;
                            if (z4) {
                                gapComposerH.L(-1816982425);
                                f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-1816926749);
                                f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                                gapComposerH.Z(false);
                            }
                            float f15 = f4;
                            textStyle4 = textStyle2;
                            Modifier modifierM6 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f14 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f15, LVAppDesignKitTheme.l(gapComposerH).f48415c, f15, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                            Arrangement$Top$1 arrangement$Top$3 = Arrangement.f4920c;
                            Alignment.f8582a.getClass();
                            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$3, Alignment.Companion.n, gapComposerH, 0);
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierM6);
                            ComposeUiNode.b0.getClass();
                            function4 = ComposeUiNode.Companion.f9641b;
                            modifier5 = modifier4;
                            if (gapComposerH.f7976a != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            if (gapComposerH.S) {
                                gapComposerH.C(function4);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                            gapComposerH.L(826392783);
                            gapComposerH.Z(false);
                            if (str16 != null) {
                                gapComposer = gapComposerH;
                                z5 = false;
                                gapComposer.L(827403631);
                                gapComposer.Z(false);
                            } else {
                                gapComposer = gapComposerH;
                                z5 = false;
                                gapComposer.L(827403631);
                                gapComposer.Z(false);
                            }
                            if (str8 == null) {
                                gapComposer.L(827442287);
                                gapComposer.Z(z5);
                                textStyle5 = textStyle4;
                                str17 = str8;
                            } else {
                                DTFunctionNameModifier dTFunctionNameModifierI3 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                                if (z4) {
                                    gapComposer.L(-1121329229);
                                    f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                                    gapComposer.Z(z5);
                                } else {
                                    gapComposer.L(-1121230153);
                                    f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                                    gapComposer.Z(z5);
                                }
                                Modifier modifierM7 = PaddingKt.m(dTFunctionNameModifierI3, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                                if (str15 != null) {
                                    modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                                } else {
                                    modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                                }
                                textStyle5 = textStyle4;
                                str17 = str8;
                                TextKt.c(str17, modifierM7.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                                gapComposer.Z(false);
                            }
                            function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                            gapComposer.Z(true);
                            modifier3 = modifier5;
                            str10 = str16;
                            str13 = str15;
                            z3 = z4;
                            str12 = str7;
                            function1 = function2;
                            str14 = str17;
                            str11 = str9;
                            textStyle3 = textStyle5;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            z3 = z;
                            str10 = str6;
                            str11 = str9;
                            str12 = str7;
                            modifier3 = modifier2;
                            str13 = str4;
                            function1 = function0;
                            textStyle3 = textStyle2;
                            str14 = str8;
                        }
                        f3 = f2;
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: s50
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i3);
                                    LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i14 = i23 | 905969664;
                    str9 = str5;
                    i17 = i4 & 1024;
                    if (i17 != 0) {
                        i18 = 54;
                    } else if ((i3 & 6) == 0) {
                        if (gapComposerH.y(function0)) {
                            i19 = 4;
                        } else {
                            i19 = 2;
                        }
                        i18 = i3 | i19;
                    } else {
                        i18 = i3;
                    }
                    if ((i14 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i14 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0) {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str113 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str113;
                        } else {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str114 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str114;
                        }
                        i20 = i14;
                        gapComposerH.a0();
                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                        float f16 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                        Dp.Companion companion4 = Dp.f11004c;
                        if (z4) {
                            gapComposerH.L(-1816982425);
                            f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-1816926749);
                            f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        }
                        float f17 = f4;
                        textStyle4 = textStyle2;
                        Modifier modifierM8 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f16 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f17, LVAppDesignKitTheme.l(gapComposerH).f48415c, f17, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                        Arrangement$Top$1 arrangement$Top$4 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        columnMeasurePolicyA = ColumnKt.a(arrangement$Top$4, Alignment.Companion.n, gapComposerH, 0);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierM8);
                        ComposeUiNode.b0.getClass();
                        function4 = ComposeUiNode.Companion.f9641b;
                        modifier5 = modifier4;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function4);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        gapComposerH.L(826392783);
                        gapComposerH.Z(false);
                        if (str16 != null) {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        }
                        if (str8 == null) {
                            gapComposer.L(827442287);
                            gapComposer.Z(z5);
                            textStyle5 = textStyle4;
                            str17 = str8;
                        } else {
                            DTFunctionNameModifier dTFunctionNameModifierI4 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                            if (z4) {
                                gapComposer.L(-1121329229);
                                f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                                gapComposer.Z(z5);
                            } else {
                                gapComposer.L(-1121230153);
                                f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                                gapComposer.Z(z5);
                            }
                            Modifier modifierM9 = PaddingKt.m(dTFunctionNameModifierI4, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                            if (str15 != null) {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            } else {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            }
                            textStyle5 = textStyle4;
                            str17 = str8;
                            TextKt.c(str17, modifierM9.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                            gapComposer.Z(false);
                        }
                        function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                        gapComposer.Z(true);
                        modifier3 = modifier5;
                        str10 = str16;
                        str13 = str15;
                        z3 = z4;
                        str12 = str7;
                        function1 = function2;
                        str14 = str17;
                        str11 = str9;
                        textStyle3 = textStyle5;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        z3 = z;
                        str10 = str6;
                        str11 = str9;
                        str12 = str7;
                        modifier3 = modifier2;
                        str13 = str4;
                        function1 = function0;
                        textStyle3 = textStyle2;
                        str14 = str8;
                    }
                    f3 = f2;
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: s50
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i2 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i3);
                                LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i23 |= 24576;
                str8 = str3;
                i10 = i4 & 32;
                if (i10 != 0) {
                    i23 |= ImageMetadata.EDGE_MODE;
                } else if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.K(str4)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i23 |= i11;
                }
                if ((i2 & 1572864) == 0) {
                    textStyle2 = textStyle;
                    if ((i4 & 64) == 0) {
                        i21 = 524288;
                    } else {
                        i21 = 524288;
                    }
                    i23 |= i21;
                } else {
                    textStyle2 = textStyle;
                }
                modifier2 = modifierE;
                i12 = i4 & 128;
                if (i12 != 0) {
                    if ((i2 & 12582912) == 0) {
                        if (gapComposerH.b(z)) {
                            i13 = 8388608;
                        } else {
                            i13 = 4194304;
                        }
                        i23 |= i13;
                    }
                    i14 = i23 | 100663296;
                    i15 = i4 & 512;
                    if (i15 != 0) {
                        if ((805306368 & i2) == 0) {
                            str9 = str5;
                            if (gapComposerH.K(str9)) {
                                i16 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i16 = 268435456;
                            }
                            i14 |= i16;
                        }
                        i17 = i4 & 1024;
                        if (i17 != 0) {
                            i18 = 54;
                        } else if ((i3 & 6) == 0) {
                            if (gapComposerH.y(function0)) {
                                i19 = 4;
                            } else {
                                i19 = 2;
                            }
                            i18 = i3 | i19;
                        } else {
                            i18 = i3;
                        }
                        if ((i14 & 306783379) == 306783378) {
                            z2 = true;
                        } else {
                            z2 = true;
                        }
                        if (gapComposerH.p(i14 & 1, z2)) {
                            gapComposerH.y0();
                            if ((i2 & 1) != 0) {
                                if (i22 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                                } else {
                                    dTFunctionNameModifier = modifier2;
                                }
                                if (i24 != 0) {
                                    str6 = null;
                                }
                                if (i6 != 0) {
                                    str7 = null;
                                }
                                if (i8 != 0) {
                                    str8 = null;
                                }
                                if (i10 != 0) {
                                    str15 = null;
                                } else {
                                    str15 = str4;
                                }
                                if ((i4 & 64) != 0) {
                                    textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                    i14 &= -3670017;
                                }
                                if (i12 != 0) {
                                    z4 = false;
                                } else {
                                    z4 = z;
                                }
                                if (i15 != 0) {
                                    str9 = null;
                                }
                                if (i17 != 0) {
                                    objX = gapComposerH.x();
                                    if (objX == Composer.Companion.f7939a) {
                                        objX = new k40(12);
                                        gapComposerH.q(objX);
                                    }
                                    function2 = (Function0) objX;
                                } else {
                                    function2 = function0;
                                }
                                String str115 = str6;
                                modifier4 = dTFunctionNameModifier;
                                f2 = 0.9f;
                                str16 = str115;
                            } else {
                                if (i22 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                                } else {
                                    dTFunctionNameModifier = modifier2;
                                }
                                if (i24 != 0) {
                                    str6 = null;
                                }
                                if (i6 != 0) {
                                    str7 = null;
                                }
                                if (i8 != 0) {
                                    str8 = null;
                                }
                                if (i10 != 0) {
                                    str15 = null;
                                } else {
                                    str15 = str4;
                                }
                                if ((i4 & 64) != 0) {
                                    textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                    i14 &= -3670017;
                                }
                                if (i12 != 0) {
                                    z4 = false;
                                } else {
                                    z4 = z;
                                }
                                if (i15 != 0) {
                                    str9 = null;
                                }
                                if (i17 != 0) {
                                    objX = gapComposerH.x();
                                    if (objX == Composer.Companion.f7939a) {
                                        objX = new k40(12);
                                        gapComposerH.q(objX);
                                    }
                                    function2 = (Function0) objX;
                                } else {
                                    function2 = function0;
                                }
                                String str116 = str6;
                                modifier4 = dTFunctionNameModifier;
                                f2 = 0.9f;
                                str16 = str116;
                            }
                            i20 = i14;
                            gapComposerH.a0();
                            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                            float f18 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                            Dp.Companion companion5 = Dp.f11004c;
                            if (z4) {
                                gapComposerH.L(-1816982425);
                                f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-1816926749);
                                f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                                gapComposerH.Z(false);
                            }
                            float f19 = f4;
                            textStyle4 = textStyle2;
                            Modifier modifierM10 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f18 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f19, LVAppDesignKitTheme.l(gapComposerH).f48415c, f19, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                            Arrangement$Top$1 arrangement$Top$5 = Arrangement.f4920c;
                            Alignment.f8582a.getClass();
                            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$5, Alignment.Companion.n, gapComposerH, 0);
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierM10);
                            ComposeUiNode.b0.getClass();
                            function4 = ComposeUiNode.Companion.f9641b;
                            modifier5 = modifier4;
                            if (gapComposerH.f7976a != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            if (gapComposerH.S) {
                                gapComposerH.C(function4);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                            gapComposerH.L(826392783);
                            gapComposerH.Z(false);
                            if (str16 != null) {
                                gapComposer = gapComposerH;
                                z5 = false;
                                gapComposer.L(827403631);
                                gapComposer.Z(false);
                            } else {
                                gapComposer = gapComposerH;
                                z5 = false;
                                gapComposer.L(827403631);
                                gapComposer.Z(false);
                            }
                            if (str8 == null) {
                                gapComposer.L(827442287);
                                gapComposer.Z(z5);
                                textStyle5 = textStyle4;
                                str17 = str8;
                            } else {
                                DTFunctionNameModifier dTFunctionNameModifierI5 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                                if (z4) {
                                    gapComposer.L(-1121329229);
                                    f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                                    gapComposer.Z(z5);
                                } else {
                                    gapComposer.L(-1121230153);
                                    f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                                    gapComposer.Z(z5);
                                }
                                Modifier modifierM11 = PaddingKt.m(dTFunctionNameModifierI5, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                                if (str15 != null) {
                                    modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                                } else {
                                    modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                                }
                                textStyle5 = textStyle4;
                                str17 = str8;
                                TextKt.c(str17, modifierM11.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                                gapComposer.Z(false);
                            }
                            function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                            gapComposer.Z(true);
                            modifier3 = modifier5;
                            str10 = str16;
                            str13 = str15;
                            z3 = z4;
                            str12 = str7;
                            function1 = function2;
                            str14 = str17;
                            str11 = str9;
                            textStyle3 = textStyle5;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            z3 = z;
                            str10 = str6;
                            str11 = str9;
                            str12 = str7;
                            modifier3 = modifier2;
                            str13 = str4;
                            function1 = function0;
                            textStyle3 = textStyle2;
                            str14 = str8;
                        }
                        f3 = f2;
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: s50
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i3);
                                    LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i14 = i23 | 905969664;
                    str9 = str5;
                    i17 = i4 & 1024;
                    if (i17 != 0) {
                        i18 = 54;
                    } else if ((i3 & 6) == 0) {
                        if (gapComposerH.y(function0)) {
                            i19 = 4;
                        } else {
                            i19 = 2;
                        }
                        i18 = i3 | i19;
                    } else {
                        i18 = i3;
                    }
                    if ((i14 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i14 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0) {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str117 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str117;
                        } else {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str118 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str118;
                        }
                        i20 = i14;
                        gapComposerH.a0();
                        OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                        float f110 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                        Dp.Companion companion6 = Dp.f11004c;
                        if (z4) {
                            gapComposerH.L(-1816982425);
                            f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-1816926749);
                            f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        }
                        float f111 = f4;
                        textStyle4 = textStyle2;
                        Modifier modifierM12 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f110 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f111, LVAppDesignKitTheme.l(gapComposerH).f48415c, f111, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                        Arrangement$Top$1 arrangement$Top$6 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        columnMeasurePolicyA = ColumnKt.a(arrangement$Top$6, Alignment.Companion.n, gapComposerH, 0);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierM12);
                        ComposeUiNode.b0.getClass();
                        function4 = ComposeUiNode.Companion.f9641b;
                        modifier5 = modifier4;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function4);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        gapComposerH.L(826392783);
                        gapComposerH.Z(false);
                        if (str16 != null) {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        }
                        if (str8 == null) {
                            gapComposer.L(827442287);
                            gapComposer.Z(z5);
                            textStyle5 = textStyle4;
                            str17 = str8;
                        } else {
                            DTFunctionNameModifier dTFunctionNameModifierI6 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                            if (z4) {
                                gapComposer.L(-1121329229);
                                f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                                gapComposer.Z(z5);
                            } else {
                                gapComposer.L(-1121230153);
                                f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                                gapComposer.Z(z5);
                            }
                            Modifier modifierM13 = PaddingKt.m(dTFunctionNameModifierI6, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                            if (str15 != null) {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            } else {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            }
                            textStyle5 = textStyle4;
                            str17 = str8;
                            TextKt.c(str17, modifierM13.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                            gapComposer.Z(false);
                        }
                        function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                        gapComposer.Z(true);
                        modifier3 = modifier5;
                        str10 = str16;
                        str13 = str15;
                        z3 = z4;
                        str12 = str7;
                        function1 = function2;
                        str14 = str17;
                        str11 = str9;
                        textStyle3 = textStyle5;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        z3 = z;
                        str10 = str6;
                        str11 = str9;
                        str12 = str7;
                        modifier3 = modifier2;
                        str13 = str4;
                        function1 = function0;
                        textStyle3 = textStyle2;
                        str14 = str8;
                    }
                    f3 = f2;
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: s50
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i2 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i3);
                                LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i23 |= 12582912;
                i14 = i23 | 100663296;
                i15 = i4 & 512;
                if (i15 != 0) {
                    if ((805306368 & i2) == 0) {
                        str9 = str5;
                        if (gapComposerH.K(str9)) {
                            i16 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i16 = 268435456;
                        }
                        i14 |= i16;
                    }
                    i17 = i4 & 1024;
                    if (i17 != 0) {
                        i18 = 54;
                    } else if ((i3 & 6) == 0) {
                        if (gapComposerH.y(function0)) {
                            i19 = 4;
                        } else {
                            i19 = 2;
                        }
                        i18 = i3 | i19;
                    } else {
                        i18 = i3;
                    }
                    if ((i14 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i14 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0) {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str119 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str119;
                        } else {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str1110 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str1110;
                        }
                        i20 = i14;
                        gapComposerH.a0();
                        OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                        float f112 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                        Dp.Companion companion7 = Dp.f11004c;
                        if (z4) {
                            gapComposerH.L(-1816982425);
                            f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-1816926749);
                            f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        }
                        float f113 = f4;
                        textStyle4 = textStyle2;
                        Modifier modifierM14 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f112 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f113, LVAppDesignKitTheme.l(gapComposerH).f48415c, f113, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                        Arrangement$Top$1 arrangement$Top$7 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        columnMeasurePolicyA = ColumnKt.a(arrangement$Top$7, Alignment.Companion.n, gapComposerH, 0);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierM14);
                        ComposeUiNode.b0.getClass();
                        function4 = ComposeUiNode.Companion.f9641b;
                        modifier5 = modifier4;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function4);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        gapComposerH.L(826392783);
                        gapComposerH.Z(false);
                        if (str16 != null) {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        }
                        if (str8 == null) {
                            gapComposer.L(827442287);
                            gapComposer.Z(z5);
                            textStyle5 = textStyle4;
                            str17 = str8;
                        } else {
                            DTFunctionNameModifier dTFunctionNameModifierI7 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                            if (z4) {
                                gapComposer.L(-1121329229);
                                f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                                gapComposer.Z(z5);
                            } else {
                                gapComposer.L(-1121230153);
                                f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                                gapComposer.Z(z5);
                            }
                            Modifier modifierM15 = PaddingKt.m(dTFunctionNameModifierI7, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                            if (str15 != null) {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            } else {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            }
                            textStyle5 = textStyle4;
                            str17 = str8;
                            TextKt.c(str17, modifierM15.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                            gapComposer.Z(false);
                        }
                        function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                        gapComposer.Z(true);
                        modifier3 = modifier5;
                        str10 = str16;
                        str13 = str15;
                        z3 = z4;
                        str12 = str7;
                        function1 = function2;
                        str14 = str17;
                        str11 = str9;
                        textStyle3 = textStyle5;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        z3 = z;
                        str10 = str6;
                        str11 = str9;
                        str12 = str7;
                        modifier3 = modifier2;
                        str13 = str4;
                        function1 = function0;
                        textStyle3 = textStyle2;
                        str14 = str8;
                    }
                    f3 = f2;
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: s50
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i2 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i3);
                                LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i14 = i23 | 905969664;
                str9 = str5;
                i17 = i4 & 1024;
                if (i17 != 0) {
                    i18 = 54;
                } else if ((i3 & 6) == 0) {
                    if (gapComposerH.y(function0)) {
                        i19 = 4;
                    } else {
                        i19 = 2;
                    }
                    i18 = i3 | i19;
                } else {
                    i18 = i3;
                }
                if ((i14 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i14 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str1111 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str1111;
                    } else {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str1112 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str1112;
                    }
                    i20 = i14;
                    gapComposerH.a0();
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    float f114 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                    Dp.Companion companion8 = Dp.f11004c;
                    if (z4) {
                        gapComposerH.L(-1816982425);
                        f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1816926749);
                        f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    float f115 = f4;
                    textStyle4 = textStyle2;
                    Modifier modifierM16 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f114 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f115, LVAppDesignKitTheme.l(gapComposerH).f48415c, f115, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                    Arrangement$Top$1 arrangement$Top$8 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$8, Alignment.Companion.n, gapComposerH, 0);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierM16);
                    ComposeUiNode.b0.getClass();
                    function4 = ComposeUiNode.Companion.f9641b;
                    modifier5 = modifier4;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function4);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    gapComposerH.L(826392783);
                    gapComposerH.Z(false);
                    if (str16 != null) {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    }
                    if (str8 == null) {
                        gapComposer.L(827442287);
                        gapComposer.Z(z5);
                        textStyle5 = textStyle4;
                        str17 = str8;
                    } else {
                        DTFunctionNameModifier dTFunctionNameModifierI8 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                        if (z4) {
                            gapComposer.L(-1121329229);
                            f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                            gapComposer.Z(z5);
                        } else {
                            gapComposer.L(-1121230153);
                            f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                            gapComposer.Z(z5);
                        }
                        Modifier modifierM17 = PaddingKt.m(dTFunctionNameModifierI8, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        if (str15 != null) {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        } else {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        }
                        textStyle5 = textStyle4;
                        str17 = str8;
                        TextKt.c(str17, modifierM17.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                        gapComposer.Z(false);
                    }
                    function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                    gapComposer.Z(true);
                    modifier3 = modifier5;
                    str10 = str16;
                    str13 = str15;
                    z3 = z4;
                    str12 = str7;
                    function1 = function2;
                    str14 = str17;
                    str11 = str9;
                    textStyle3 = textStyle5;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    z3 = z;
                    str10 = str6;
                    str11 = str9;
                    str12 = str7;
                    modifier3 = modifier2;
                    str13 = str4;
                    function1 = function0;
                    textStyle3 = textStyle2;
                    str14 = str8;
                }
                f3 = f2;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: s50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i23 |= 3072;
            str7 = str2;
            i8 = i4 & 16;
            if (i8 != 0) {
                if ((i2 & 24576) == 0) {
                    str8 = str3;
                    if (gapComposerH.K(str8)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i23 |= i9;
                }
                i10 = i4 & 32;
                if (i10 != 0) {
                    i23 |= ImageMetadata.EDGE_MODE;
                } else if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.K(str4)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i23 |= i11;
                }
                if ((i2 & 1572864) == 0) {
                    textStyle2 = textStyle;
                    if ((i4 & 64) == 0) {
                        i21 = 524288;
                    } else {
                        i21 = 524288;
                    }
                    i23 |= i21;
                } else {
                    textStyle2 = textStyle;
                }
                modifier2 = modifierE;
                i12 = i4 & 128;
                if (i12 != 0) {
                    if ((i2 & 12582912) == 0) {
                        if (gapComposerH.b(z)) {
                            i13 = 8388608;
                        } else {
                            i13 = 4194304;
                        }
                        i23 |= i13;
                    }
                    i14 = i23 | 100663296;
                    i15 = i4 & 512;
                    if (i15 != 0) {
                        if ((805306368 & i2) == 0) {
                            str9 = str5;
                            if (gapComposerH.K(str9)) {
                                i16 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i16 = 268435456;
                            }
                            i14 |= i16;
                        }
                        i17 = i4 & 1024;
                        if (i17 != 0) {
                            i18 = 54;
                        } else if ((i3 & 6) == 0) {
                            if (gapComposerH.y(function0)) {
                                i19 = 4;
                            } else {
                                i19 = 2;
                            }
                            i18 = i3 | i19;
                        } else {
                            i18 = i3;
                        }
                        if ((i14 & 306783379) == 306783378) {
                            z2 = true;
                        } else {
                            z2 = true;
                        }
                        if (gapComposerH.p(i14 & 1, z2)) {
                            gapComposerH.y0();
                            if ((i2 & 1) != 0) {
                                if (i22 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                                } else {
                                    dTFunctionNameModifier = modifier2;
                                }
                                if (i24 != 0) {
                                    str6 = null;
                                }
                                if (i6 != 0) {
                                    str7 = null;
                                }
                                if (i8 != 0) {
                                    str8 = null;
                                }
                                if (i10 != 0) {
                                    str15 = null;
                                } else {
                                    str15 = str4;
                                }
                                if ((i4 & 64) != 0) {
                                    textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                    i14 &= -3670017;
                                }
                                if (i12 != 0) {
                                    z4 = false;
                                } else {
                                    z4 = z;
                                }
                                if (i15 != 0) {
                                    str9 = null;
                                }
                                if (i17 != 0) {
                                    objX = gapComposerH.x();
                                    if (objX == Composer.Companion.f7939a) {
                                        objX = new k40(12);
                                        gapComposerH.q(objX);
                                    }
                                    function2 = (Function0) objX;
                                } else {
                                    function2 = function0;
                                }
                                String str1113 = str6;
                                modifier4 = dTFunctionNameModifier;
                                f2 = 0.9f;
                                str16 = str1113;
                            } else {
                                if (i22 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                                } else {
                                    dTFunctionNameModifier = modifier2;
                                }
                                if (i24 != 0) {
                                    str6 = null;
                                }
                                if (i6 != 0) {
                                    str7 = null;
                                }
                                if (i8 != 0) {
                                    str8 = null;
                                }
                                if (i10 != 0) {
                                    str15 = null;
                                } else {
                                    str15 = str4;
                                }
                                if ((i4 & 64) != 0) {
                                    textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                    i14 &= -3670017;
                                }
                                if (i12 != 0) {
                                    z4 = false;
                                } else {
                                    z4 = z;
                                }
                                if (i15 != 0) {
                                    str9 = null;
                                }
                                if (i17 != 0) {
                                    objX = gapComposerH.x();
                                    if (objX == Composer.Companion.f7939a) {
                                        objX = new k40(12);
                                        gapComposerH.q(objX);
                                    }
                                    function2 = (Function0) objX;
                                } else {
                                    function2 = function0;
                                }
                                String str1114 = str6;
                                modifier4 = dTFunctionNameModifier;
                                f2 = 0.9f;
                                str16 = str1114;
                            }
                            i20 = i14;
                            gapComposerH.a0();
                            OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                            float f116 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                            Dp.Companion companion9 = Dp.f11004c;
                            if (z4) {
                                gapComposerH.L(-1816982425);
                                f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-1816926749);
                                f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                                gapComposerH.Z(false);
                            }
                            float f117 = f4;
                            textStyle4 = textStyle2;
                            Modifier modifierM18 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f116 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f117, LVAppDesignKitTheme.l(gapComposerH).f48415c, f117, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                            Arrangement$Top$1 arrangement$Top$9 = Arrangement.f4920c;
                            Alignment.f8582a.getClass();
                            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$9, Alignment.Companion.n, gapComposerH, 0);
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierM18);
                            ComposeUiNode.b0.getClass();
                            function4 = ComposeUiNode.Companion.f9641b;
                            modifier5 = modifier4;
                            if (gapComposerH.f7976a != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            if (gapComposerH.S) {
                                gapComposerH.C(function4);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                            gapComposerH.L(826392783);
                            gapComposerH.Z(false);
                            if (str16 != null) {
                                gapComposer = gapComposerH;
                                z5 = false;
                                gapComposer.L(827403631);
                                gapComposer.Z(false);
                            } else {
                                gapComposer = gapComposerH;
                                z5 = false;
                                gapComposer.L(827403631);
                                gapComposer.Z(false);
                            }
                            if (str8 == null) {
                                gapComposer.L(827442287);
                                gapComposer.Z(z5);
                                textStyle5 = textStyle4;
                                str17 = str8;
                            } else {
                                DTFunctionNameModifier dTFunctionNameModifierI9 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                                if (z4) {
                                    gapComposer.L(-1121329229);
                                    f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                                    gapComposer.Z(z5);
                                } else {
                                    gapComposer.L(-1121230153);
                                    f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                                    gapComposer.Z(z5);
                                }
                                Modifier modifierM19 = PaddingKt.m(dTFunctionNameModifierI9, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                                if (str15 != null) {
                                    modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                                } else {
                                    modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                                }
                                textStyle5 = textStyle4;
                                str17 = str8;
                                TextKt.c(str17, modifierM19.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                                gapComposer.Z(false);
                            }
                            function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                            gapComposer.Z(true);
                            modifier3 = modifier5;
                            str10 = str16;
                            str13 = str15;
                            z3 = z4;
                            str12 = str7;
                            function1 = function2;
                            str14 = str17;
                            str11 = str9;
                            textStyle3 = textStyle5;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            z3 = z;
                            str10 = str6;
                            str11 = str9;
                            str12 = str7;
                            modifier3 = modifier2;
                            str13 = str4;
                            function1 = function0;
                            textStyle3 = textStyle2;
                            str14 = str8;
                        }
                        f3 = f2;
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: s50
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i3);
                                    LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i14 = i23 | 905969664;
                    str9 = str5;
                    i17 = i4 & 1024;
                    if (i17 != 0) {
                        i18 = 54;
                    } else if ((i3 & 6) == 0) {
                        if (gapComposerH.y(function0)) {
                            i19 = 4;
                        } else {
                            i19 = 2;
                        }
                        i18 = i3 | i19;
                    } else {
                        i18 = i3;
                    }
                    if ((i14 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i14 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0) {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str1115 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str1115;
                        } else {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str1116 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str1116;
                        }
                        i20 = i14;
                        gapComposerH.a0();
                        OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                        float f118 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                        Dp.Companion companion10 = Dp.f11004c;
                        if (z4) {
                            gapComposerH.L(-1816982425);
                            f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-1816926749);
                            f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        }
                        float f119 = f4;
                        textStyle4 = textStyle2;
                        Modifier modifierM110 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f118 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f119, LVAppDesignKitTheme.l(gapComposerH).f48415c, f119, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                        Arrangement$Top$1 arrangement$Top$10 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        columnMeasurePolicyA = ColumnKt.a(arrangement$Top$10, Alignment.Companion.n, gapComposerH, 0);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierM110);
                        ComposeUiNode.b0.getClass();
                        function4 = ComposeUiNode.Companion.f9641b;
                        modifier5 = modifier4;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function4);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        gapComposerH.L(826392783);
                        gapComposerH.Z(false);
                        if (str16 != null) {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        }
                        if (str8 == null) {
                            gapComposer.L(827442287);
                            gapComposer.Z(z5);
                            textStyle5 = textStyle4;
                            str17 = str8;
                        } else {
                            DTFunctionNameModifier dTFunctionNameModifierI10 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                            if (z4) {
                                gapComposer.L(-1121329229);
                                f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                                gapComposer.Z(z5);
                            } else {
                                gapComposer.L(-1121230153);
                                f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                                gapComposer.Z(z5);
                            }
                            Modifier modifierM111 = PaddingKt.m(dTFunctionNameModifierI10, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                            if (str15 != null) {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            } else {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            }
                            textStyle5 = textStyle4;
                            str17 = str8;
                            TextKt.c(str17, modifierM111.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                            gapComposer.Z(false);
                        }
                        function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                        gapComposer.Z(true);
                        modifier3 = modifier5;
                        str10 = str16;
                        str13 = str15;
                        z3 = z4;
                        str12 = str7;
                        function1 = function2;
                        str14 = str17;
                        str11 = str9;
                        textStyle3 = textStyle5;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        z3 = z;
                        str10 = str6;
                        str11 = str9;
                        str12 = str7;
                        modifier3 = modifier2;
                        str13 = str4;
                        function1 = function0;
                        textStyle3 = textStyle2;
                        str14 = str8;
                    }
                    f3 = f2;
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: s50
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i2 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i3);
                                LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i23 |= 12582912;
                i14 = i23 | 100663296;
                i15 = i4 & 512;
                if (i15 != 0) {
                    if ((805306368 & i2) == 0) {
                        str9 = str5;
                        if (gapComposerH.K(str9)) {
                            i16 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i16 = 268435456;
                        }
                        i14 |= i16;
                    }
                    i17 = i4 & 1024;
                    if (i17 != 0) {
                        i18 = 54;
                    } else if ((i3 & 6) == 0) {
                        if (gapComposerH.y(function0)) {
                            i19 = 4;
                        } else {
                            i19 = 2;
                        }
                        i18 = i3 | i19;
                    } else {
                        i18 = i3;
                    }
                    if ((i14 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i14 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0) {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str1117 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str1117;
                        } else {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str1118 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str1118;
                        }
                        i20 = i14;
                        gapComposerH.a0();
                        OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                        float f1110 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                        Dp.Companion companion11 = Dp.f11004c;
                        if (z4) {
                            gapComposerH.L(-1816982425);
                            f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-1816926749);
                            f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        }
                        float f1111 = f4;
                        textStyle4 = textStyle2;
                        Modifier modifierM112 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f1110 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f1111, LVAppDesignKitTheme.l(gapComposerH).f48415c, f1111, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                        Arrangement$Top$1 arrangement$Top$11 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        columnMeasurePolicyA = ColumnKt.a(arrangement$Top$11, Alignment.Companion.n, gapComposerH, 0);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierM112);
                        ComposeUiNode.b0.getClass();
                        function4 = ComposeUiNode.Companion.f9641b;
                        modifier5 = modifier4;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function4);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        gapComposerH.L(826392783);
                        gapComposerH.Z(false);
                        if (str16 != null) {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        }
                        if (str8 == null) {
                            gapComposer.L(827442287);
                            gapComposer.Z(z5);
                            textStyle5 = textStyle4;
                            str17 = str8;
                        } else {
                            DTFunctionNameModifier dTFunctionNameModifierI11 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                            if (z4) {
                                gapComposer.L(-1121329229);
                                f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                                gapComposer.Z(z5);
                            } else {
                                gapComposer.L(-1121230153);
                                f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                                gapComposer.Z(z5);
                            }
                            Modifier modifierM113 = PaddingKt.m(dTFunctionNameModifierI11, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                            if (str15 != null) {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            } else {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            }
                            textStyle5 = textStyle4;
                            str17 = str8;
                            TextKt.c(str17, modifierM113.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                            gapComposer.Z(false);
                        }
                        function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                        gapComposer.Z(true);
                        modifier3 = modifier5;
                        str10 = str16;
                        str13 = str15;
                        z3 = z4;
                        str12 = str7;
                        function1 = function2;
                        str14 = str17;
                        str11 = str9;
                        textStyle3 = textStyle5;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        z3 = z;
                        str10 = str6;
                        str11 = str9;
                        str12 = str7;
                        modifier3 = modifier2;
                        str13 = str4;
                        function1 = function0;
                        textStyle3 = textStyle2;
                        str14 = str8;
                    }
                    f3 = f2;
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: s50
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i2 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i3);
                                LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i14 = i23 | 905969664;
                str9 = str5;
                i17 = i4 & 1024;
                if (i17 != 0) {
                    i18 = 54;
                } else if ((i3 & 6) == 0) {
                    if (gapComposerH.y(function0)) {
                        i19 = 4;
                    } else {
                        i19 = 2;
                    }
                    i18 = i3 | i19;
                } else {
                    i18 = i3;
                }
                if ((i14 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i14 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str1119 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str1119;
                    } else {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str11110 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str11110;
                    }
                    i20 = i14;
                    gapComposerH.a0();
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    float f1112 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                    Dp.Companion companion12 = Dp.f11004c;
                    if (z4) {
                        gapComposerH.L(-1816982425);
                        f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1816926749);
                        f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    float f1113 = f4;
                    textStyle4 = textStyle2;
                    Modifier modifierM114 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f1112 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f1113, LVAppDesignKitTheme.l(gapComposerH).f48415c, f1113, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                    Arrangement$Top$1 arrangement$Top$12 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$12, Alignment.Companion.n, gapComposerH, 0);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierM114);
                    ComposeUiNode.b0.getClass();
                    function4 = ComposeUiNode.Companion.f9641b;
                    modifier5 = modifier4;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function4);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    gapComposerH.L(826392783);
                    gapComposerH.Z(false);
                    if (str16 != null) {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    }
                    if (str8 == null) {
                        gapComposer.L(827442287);
                        gapComposer.Z(z5);
                        textStyle5 = textStyle4;
                        str17 = str8;
                    } else {
                        DTFunctionNameModifier dTFunctionNameModifierI12 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                        if (z4) {
                            gapComposer.L(-1121329229);
                            f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                            gapComposer.Z(z5);
                        } else {
                            gapComposer.L(-1121230153);
                            f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                            gapComposer.Z(z5);
                        }
                        Modifier modifierM115 = PaddingKt.m(dTFunctionNameModifierI12, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        if (str15 != null) {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        } else {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        }
                        textStyle5 = textStyle4;
                        str17 = str8;
                        TextKt.c(str17, modifierM115.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                        gapComposer.Z(false);
                    }
                    function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                    gapComposer.Z(true);
                    modifier3 = modifier5;
                    str10 = str16;
                    str13 = str15;
                    z3 = z4;
                    str12 = str7;
                    function1 = function2;
                    str14 = str17;
                    str11 = str9;
                    textStyle3 = textStyle5;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    z3 = z;
                    str10 = str6;
                    str11 = str9;
                    str12 = str7;
                    modifier3 = modifier2;
                    str13 = str4;
                    function1 = function0;
                    textStyle3 = textStyle2;
                    str14 = str8;
                }
                f3 = f2;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: s50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i23 |= 24576;
            str8 = str3;
            i10 = i4 & 32;
            if (i10 != 0) {
                i23 |= ImageMetadata.EDGE_MODE;
            } else if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.K(str4)) {
                    i11 = 131072;
                } else {
                    i11 = 65536;
                }
                i23 |= i11;
            }
            if ((i2 & 1572864) == 0) {
                textStyle2 = textStyle;
                if ((i4 & 64) == 0) {
                    i21 = 524288;
                } else {
                    i21 = 524288;
                }
                i23 |= i21;
            } else {
                textStyle2 = textStyle;
            }
            modifier2 = modifierE;
            i12 = i4 & 128;
            if (i12 != 0) {
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.b(z)) {
                        i13 = 8388608;
                    } else {
                        i13 = 4194304;
                    }
                    i23 |= i13;
                }
                i14 = i23 | 100663296;
                i15 = i4 & 512;
                if (i15 != 0) {
                    if ((805306368 & i2) == 0) {
                        str9 = str5;
                        if (gapComposerH.K(str9)) {
                            i16 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i16 = 268435456;
                        }
                        i14 |= i16;
                    }
                    i17 = i4 & 1024;
                    if (i17 != 0) {
                        i18 = 54;
                    } else if ((i3 & 6) == 0) {
                        if (gapComposerH.y(function0)) {
                            i19 = 4;
                        } else {
                            i19 = 2;
                        }
                        i18 = i3 | i19;
                    } else {
                        i18 = i3;
                    }
                    if ((i14 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i14 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0) {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str11111 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str11111;
                        } else {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str11112 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str11112;
                        }
                        i20 = i14;
                        gapComposerH.a0();
                        OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                        float f1114 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                        Dp.Companion companion13 = Dp.f11004c;
                        if (z4) {
                            gapComposerH.L(-1816982425);
                            f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-1816926749);
                            f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        }
                        float f1115 = f4;
                        textStyle4 = textStyle2;
                        Modifier modifierM116 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f1114 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f1115, LVAppDesignKitTheme.l(gapComposerH).f48415c, f1115, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                        Arrangement$Top$1 arrangement$Top$13 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        columnMeasurePolicyA = ColumnKt.a(arrangement$Top$13, Alignment.Companion.n, gapComposerH, 0);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierM116);
                        ComposeUiNode.b0.getClass();
                        function4 = ComposeUiNode.Companion.f9641b;
                        modifier5 = modifier4;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function4);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        gapComposerH.L(826392783);
                        gapComposerH.Z(false);
                        if (str16 != null) {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        }
                        if (str8 == null) {
                            gapComposer.L(827442287);
                            gapComposer.Z(z5);
                            textStyle5 = textStyle4;
                            str17 = str8;
                        } else {
                            DTFunctionNameModifier dTFunctionNameModifierI13 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                            if (z4) {
                                gapComposer.L(-1121329229);
                                f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                                gapComposer.Z(z5);
                            } else {
                                gapComposer.L(-1121230153);
                                f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                                gapComposer.Z(z5);
                            }
                            Modifier modifierM117 = PaddingKt.m(dTFunctionNameModifierI13, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                            if (str15 != null) {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            } else {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            }
                            textStyle5 = textStyle4;
                            str17 = str8;
                            TextKt.c(str17, modifierM117.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                            gapComposer.Z(false);
                        }
                        function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                        gapComposer.Z(true);
                        modifier3 = modifier5;
                        str10 = str16;
                        str13 = str15;
                        z3 = z4;
                        str12 = str7;
                        function1 = function2;
                        str14 = str17;
                        str11 = str9;
                        textStyle3 = textStyle5;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        z3 = z;
                        str10 = str6;
                        str11 = str9;
                        str12 = str7;
                        modifier3 = modifier2;
                        str13 = str4;
                        function1 = function0;
                        textStyle3 = textStyle2;
                        str14 = str8;
                    }
                    f3 = f2;
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: s50
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i2 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i3);
                                LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i14 = i23 | 905969664;
                str9 = str5;
                i17 = i4 & 1024;
                if (i17 != 0) {
                    i18 = 54;
                } else if ((i3 & 6) == 0) {
                    if (gapComposerH.y(function0)) {
                        i19 = 4;
                    } else {
                        i19 = 2;
                    }
                    i18 = i3 | i19;
                } else {
                    i18 = i3;
                }
                if ((i14 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i14 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str11113 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str11113;
                    } else {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str11114 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str11114;
                    }
                    i20 = i14;
                    gapComposerH.a0();
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    float f1116 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                    Dp.Companion companion14 = Dp.f11004c;
                    if (z4) {
                        gapComposerH.L(-1816982425);
                        f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1816926749);
                        f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    float f1117 = f4;
                    textStyle4 = textStyle2;
                    Modifier modifierM118 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f1116 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f1117, LVAppDesignKitTheme.l(gapComposerH).f48415c, f1117, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                    Arrangement$Top$1 arrangement$Top$14 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$14, Alignment.Companion.n, gapComposerH, 0);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierM118);
                    ComposeUiNode.b0.getClass();
                    function4 = ComposeUiNode.Companion.f9641b;
                    modifier5 = modifier4;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function4);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    gapComposerH.L(826392783);
                    gapComposerH.Z(false);
                    if (str16 != null) {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    }
                    if (str8 == null) {
                        gapComposer.L(827442287);
                        gapComposer.Z(z5);
                        textStyle5 = textStyle4;
                        str17 = str8;
                    } else {
                        DTFunctionNameModifier dTFunctionNameModifierI14 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                        if (z4) {
                            gapComposer.L(-1121329229);
                            f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                            gapComposer.Z(z5);
                        } else {
                            gapComposer.L(-1121230153);
                            f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                            gapComposer.Z(z5);
                        }
                        Modifier modifierM119 = PaddingKt.m(dTFunctionNameModifierI14, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        if (str15 != null) {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        } else {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        }
                        textStyle5 = textStyle4;
                        str17 = str8;
                        TextKt.c(str17, modifierM119.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                        gapComposer.Z(false);
                    }
                    function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                    gapComposer.Z(true);
                    modifier3 = modifier5;
                    str10 = str16;
                    str13 = str15;
                    z3 = z4;
                    str12 = str7;
                    function1 = function2;
                    str14 = str17;
                    str11 = str9;
                    textStyle3 = textStyle5;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    z3 = z;
                    str10 = str6;
                    str11 = str9;
                    str12 = str7;
                    modifier3 = modifier2;
                    str13 = str4;
                    function1 = function0;
                    textStyle3 = textStyle2;
                    str14 = str8;
                }
                f3 = f2;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: s50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i23 |= 12582912;
            i14 = i23 | 100663296;
            i15 = i4 & 512;
            if (i15 != 0) {
                if ((805306368 & i2) == 0) {
                    str9 = str5;
                    if (gapComposerH.K(str9)) {
                        i16 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i16 = 268435456;
                    }
                    i14 |= i16;
                }
                i17 = i4 & 1024;
                if (i17 != 0) {
                    i18 = 54;
                } else if ((i3 & 6) == 0) {
                    if (gapComposerH.y(function0)) {
                        i19 = 4;
                    } else {
                        i19 = 2;
                    }
                    i18 = i3 | i19;
                } else {
                    i18 = i3;
                }
                if ((i14 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i14 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str11115 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str11115;
                    } else {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str11116 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str11116;
                    }
                    i20 = i14;
                    gapComposerH.a0();
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    float f1118 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                    Dp.Companion companion15 = Dp.f11004c;
                    if (z4) {
                        gapComposerH.L(-1816982425);
                        f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1816926749);
                        f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    float f1119 = f4;
                    textStyle4 = textStyle2;
                    Modifier modifierM1110 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f1118 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f1119, LVAppDesignKitTheme.l(gapComposerH).f48415c, f1119, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                    Arrangement$Top$1 arrangement$Top$15 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$15, Alignment.Companion.n, gapComposerH, 0);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierM1110);
                    ComposeUiNode.b0.getClass();
                    function4 = ComposeUiNode.Companion.f9641b;
                    modifier5 = modifier4;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function4);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    gapComposerH.L(826392783);
                    gapComposerH.Z(false);
                    if (str16 != null) {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    }
                    if (str8 == null) {
                        gapComposer.L(827442287);
                        gapComposer.Z(z5);
                        textStyle5 = textStyle4;
                        str17 = str8;
                    } else {
                        DTFunctionNameModifier dTFunctionNameModifierI15 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                        if (z4) {
                            gapComposer.L(-1121329229);
                            f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                            gapComposer.Z(z5);
                        } else {
                            gapComposer.L(-1121230153);
                            f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                            gapComposer.Z(z5);
                        }
                        Modifier modifierM1111 = PaddingKt.m(dTFunctionNameModifierI15, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        if (str15 != null) {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        } else {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        }
                        textStyle5 = textStyle4;
                        str17 = str8;
                        TextKt.c(str17, modifierM1111.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                        gapComposer.Z(false);
                    }
                    function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                    gapComposer.Z(true);
                    modifier3 = modifier5;
                    str10 = str16;
                    str13 = str15;
                    z3 = z4;
                    str12 = str7;
                    function1 = function2;
                    str14 = str17;
                    str11 = str9;
                    textStyle3 = textStyle5;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    z3 = z;
                    str10 = str6;
                    str11 = str9;
                    str12 = str7;
                    modifier3 = modifier2;
                    str13 = str4;
                    function1 = function0;
                    textStyle3 = textStyle2;
                    str14 = str8;
                }
                f3 = f2;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: s50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i14 = i23 | 905969664;
            str9 = str5;
            i17 = i4 & 1024;
            if (i17 != 0) {
                i18 = 54;
            } else if ((i3 & 6) == 0) {
                if (gapComposerH.y(function0)) {
                    i19 = 4;
                } else {
                    i19 = 2;
                }
                i18 = i3 | i19;
            } else {
                i18 = i3;
            }
            if ((i14 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (gapComposerH.p(i14 & 1, z2)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i22 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i24 != 0) {
                        str6 = null;
                    }
                    if (i6 != 0) {
                        str7 = null;
                    }
                    if (i8 != 0) {
                        str8 = null;
                    }
                    if (i10 != 0) {
                        str15 = null;
                    } else {
                        str15 = str4;
                    }
                    if ((i4 & 64) != 0) {
                        textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                        i14 &= -3670017;
                    }
                    if (i12 != 0) {
                        z4 = false;
                    } else {
                        z4 = z;
                    }
                    if (i15 != 0) {
                        str9 = null;
                    }
                    if (i17 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = new k40(12);
                            gapComposerH.q(objX);
                        }
                        function2 = (Function0) objX;
                    } else {
                        function2 = function0;
                    }
                    String str11117 = str6;
                    modifier4 = dTFunctionNameModifier;
                    f2 = 0.9f;
                    str16 = str11117;
                } else {
                    if (i22 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i24 != 0) {
                        str6 = null;
                    }
                    if (i6 != 0) {
                        str7 = null;
                    }
                    if (i8 != 0) {
                        str8 = null;
                    }
                    if (i10 != 0) {
                        str15 = null;
                    } else {
                        str15 = str4;
                    }
                    if ((i4 & 64) != 0) {
                        textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                        i14 &= -3670017;
                    }
                    if (i12 != 0) {
                        z4 = false;
                    } else {
                        z4 = z;
                    }
                    if (i15 != 0) {
                        str9 = null;
                    }
                    if (i17 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = new k40(12);
                            gapComposerH.q(objX);
                        }
                        function2 = (Function0) objX;
                    } else {
                        function2 = function0;
                    }
                    String str11118 = str6;
                    modifier4 = dTFunctionNameModifier;
                    f2 = 0.9f;
                    str16 = str11118;
                }
                i20 = i14;
                gapComposerH.a0();
                OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                float f11110 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                Dp.Companion companion16 = Dp.f11004c;
                if (z4) {
                    gapComposerH.L(-1816982425);
                    f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1816926749);
                    f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                    gapComposerH.Z(false);
                }
                float f11111 = f4;
                textStyle4 = textStyle2;
                Modifier modifierM1112 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f11110 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f11111, LVAppDesignKitTheme.l(gapComposerH).f48415c, f11111, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                Arrangement$Top$1 arrangement$Top$16 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$16, Alignment.Companion.n, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierM1112);
                ComposeUiNode.b0.getClass();
                function4 = ComposeUiNode.Companion.f9641b;
                modifier5 = modifier4;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function4);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                gapComposerH.L(826392783);
                gapComposerH.Z(false);
                if (str16 != null) {
                    gapComposer = gapComposerH;
                    z5 = false;
                    gapComposer.L(827403631);
                    gapComposer.Z(false);
                } else {
                    gapComposer = gapComposerH;
                    z5 = false;
                    gapComposer.L(827403631);
                    gapComposer.Z(false);
                }
                if (str8 == null) {
                    gapComposer.L(827442287);
                    gapComposer.Z(z5);
                    textStyle5 = textStyle4;
                    str17 = str8;
                } else {
                    DTFunctionNameModifier dTFunctionNameModifierI16 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                    if (z4) {
                        gapComposer.L(-1121329229);
                        f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                        gapComposer.Z(z5);
                    } else {
                        gapComposer.L(-1121230153);
                        f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                        gapComposer.Z(z5);
                    }
                    Modifier modifierM1113 = PaddingKt.m(dTFunctionNameModifierI16, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                    if (str15 != null) {
                        modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                    } else {
                        modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                    }
                    textStyle5 = textStyle4;
                    str17 = str8;
                    TextKt.c(str17, modifierM1113.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                    gapComposer.Z(false);
                }
                function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                gapComposer.Z(true);
                modifier3 = modifier5;
                str10 = str16;
                str13 = str15;
                z3 = z4;
                str12 = str7;
                function1 = function2;
                str14 = str17;
                str11 = str9;
                textStyle3 = textStyle5;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                z3 = z;
                str10 = str6;
                str11 = str9;
                str12 = str7;
                modifier3 = modifier2;
                str13 = str4;
                function1 = function0;
                textStyle3 = textStyle2;
                str14 = str8;
            }
            f3 = f2;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: s50
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i3);
                        LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i23 = i5 | 432;
        str6 = str;
        i6 = i4 & 8;
        if (i6 != 0) {
            if ((i2 & 3072) == 0) {
                str7 = str2;
                if (gapComposerH.K(str7)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i23 |= i7;
            }
            i8 = i4 & 16;
            if (i8 != 0) {
                if ((i2 & 24576) == 0) {
                    str8 = str3;
                    if (gapComposerH.K(str8)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i23 |= i9;
                }
                i10 = i4 & 32;
                if (i10 != 0) {
                    i23 |= ImageMetadata.EDGE_MODE;
                } else if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.K(str4)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i23 |= i11;
                }
                if ((i2 & 1572864) == 0) {
                    textStyle2 = textStyle;
                    if ((i4 & 64) == 0) {
                        i21 = 524288;
                    } else {
                        i21 = 524288;
                    }
                    i23 |= i21;
                } else {
                    textStyle2 = textStyle;
                }
                modifier2 = modifierE;
                i12 = i4 & 128;
                if (i12 != 0) {
                    if ((i2 & 12582912) == 0) {
                        if (gapComposerH.b(z)) {
                            i13 = 8388608;
                        } else {
                            i13 = 4194304;
                        }
                        i23 |= i13;
                    }
                    i14 = i23 | 100663296;
                    i15 = i4 & 512;
                    if (i15 != 0) {
                        if ((805306368 & i2) == 0) {
                            str9 = str5;
                            if (gapComposerH.K(str9)) {
                                i16 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i16 = 268435456;
                            }
                            i14 |= i16;
                        }
                        i17 = i4 & 1024;
                        if (i17 != 0) {
                            i18 = 54;
                        } else if ((i3 & 6) == 0) {
                            if (gapComposerH.y(function0)) {
                                i19 = 4;
                            } else {
                                i19 = 2;
                            }
                            i18 = i3 | i19;
                        } else {
                            i18 = i3;
                        }
                        if ((i14 & 306783379) == 306783378) {
                            z2 = true;
                        } else {
                            z2 = true;
                        }
                        if (gapComposerH.p(i14 & 1, z2)) {
                            gapComposerH.y0();
                            if ((i2 & 1) != 0) {
                                if (i22 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                                } else {
                                    dTFunctionNameModifier = modifier2;
                                }
                                if (i24 != 0) {
                                    str6 = null;
                                }
                                if (i6 != 0) {
                                    str7 = null;
                                }
                                if (i8 != 0) {
                                    str8 = null;
                                }
                                if (i10 != 0) {
                                    str15 = null;
                                } else {
                                    str15 = str4;
                                }
                                if ((i4 & 64) != 0) {
                                    textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                    i14 &= -3670017;
                                }
                                if (i12 != 0) {
                                    z4 = false;
                                } else {
                                    z4 = z;
                                }
                                if (i15 != 0) {
                                    str9 = null;
                                }
                                if (i17 != 0) {
                                    objX = gapComposerH.x();
                                    if (objX == Composer.Companion.f7939a) {
                                        objX = new k40(12);
                                        gapComposerH.q(objX);
                                    }
                                    function2 = (Function0) objX;
                                } else {
                                    function2 = function0;
                                }
                                String str11119 = str6;
                                modifier4 = dTFunctionNameModifier;
                                f2 = 0.9f;
                                str16 = str11119;
                            } else {
                                if (i22 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                                } else {
                                    dTFunctionNameModifier = modifier2;
                                }
                                if (i24 != 0) {
                                    str6 = null;
                                }
                                if (i6 != 0) {
                                    str7 = null;
                                }
                                if (i8 != 0) {
                                    str8 = null;
                                }
                                if (i10 != 0) {
                                    str15 = null;
                                } else {
                                    str15 = str4;
                                }
                                if ((i4 & 64) != 0) {
                                    textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                    i14 &= -3670017;
                                }
                                if (i12 != 0) {
                                    z4 = false;
                                } else {
                                    z4 = z;
                                }
                                if (i15 != 0) {
                                    str9 = null;
                                }
                                if (i17 != 0) {
                                    objX = gapComposerH.x();
                                    if (objX == Composer.Companion.f7939a) {
                                        objX = new k40(12);
                                        gapComposerH.q(objX);
                                    }
                                    function2 = (Function0) objX;
                                } else {
                                    function2 = function0;
                                }
                                String str111110 = str6;
                                modifier4 = dTFunctionNameModifier;
                                f2 = 0.9f;
                                str16 = str111110;
                            }
                            i20 = i14;
                            gapComposerH.a0();
                            OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                            float f11112 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                            Dp.Companion companion17 = Dp.f11004c;
                            if (z4) {
                                gapComposerH.L(-1816982425);
                                f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-1816926749);
                                f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                                gapComposerH.Z(false);
                            }
                            float f11113 = f4;
                            textStyle4 = textStyle2;
                            Modifier modifierM1114 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f11112 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f11113, LVAppDesignKitTheme.l(gapComposerH).f48415c, f11113, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                            Arrangement$Top$1 arrangement$Top$17 = Arrangement.f4920c;
                            Alignment.f8582a.getClass();
                            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$17, Alignment.Companion.n, gapComposerH, 0);
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierM1114);
                            ComposeUiNode.b0.getClass();
                            function4 = ComposeUiNode.Companion.f9641b;
                            modifier5 = modifier4;
                            if (gapComposerH.f7976a != null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            gapComposerH.B();
                            if (gapComposerH.S) {
                                gapComposerH.C(function4);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                            gapComposerH.L(826392783);
                            gapComposerH.Z(false);
                            if (str16 != null) {
                                gapComposer = gapComposerH;
                                z5 = false;
                                gapComposer.L(827403631);
                                gapComposer.Z(false);
                            } else {
                                gapComposer = gapComposerH;
                                z5 = false;
                                gapComposer.L(827403631);
                                gapComposer.Z(false);
                            }
                            if (str8 == null) {
                                gapComposer.L(827442287);
                                gapComposer.Z(z5);
                                textStyle5 = textStyle4;
                                str17 = str8;
                            } else {
                                DTFunctionNameModifier dTFunctionNameModifierI17 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                                if (z4) {
                                    gapComposer.L(-1121329229);
                                    f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                                    gapComposer.Z(z5);
                                } else {
                                    gapComposer.L(-1121230153);
                                    f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                                    gapComposer.Z(z5);
                                }
                                Modifier modifierM1115 = PaddingKt.m(dTFunctionNameModifierI17, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                                if (str15 != null) {
                                    modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                                } else {
                                    modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                                }
                                textStyle5 = textStyle4;
                                str17 = str8;
                                TextKt.c(str17, modifierM1115.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                                gapComposer.Z(false);
                            }
                            function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                            gapComposer.Z(true);
                            modifier3 = modifier5;
                            str10 = str16;
                            str13 = str15;
                            z3 = z4;
                            str12 = str7;
                            function1 = function2;
                            str14 = str17;
                            str11 = str9;
                            textStyle3 = textStyle5;
                        } else {
                            gapComposer = gapComposerH;
                            gapComposer.D();
                            z3 = z;
                            str10 = str6;
                            str11 = str9;
                            str12 = str7;
                            modifier3 = modifier2;
                            str13 = str4;
                            function1 = function0;
                            textStyle3 = textStyle2;
                            str14 = str8;
                        }
                        f3 = f2;
                        recomposeScopeImplB0 = gapComposer.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: s50
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i3);
                                    LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i14 = i23 | 905969664;
                    str9 = str5;
                    i17 = i4 & 1024;
                    if (i17 != 0) {
                        i18 = 54;
                    } else if ((i3 & 6) == 0) {
                        if (gapComposerH.y(function0)) {
                            i19 = 4;
                        } else {
                            i19 = 2;
                        }
                        i18 = i3 | i19;
                    } else {
                        i18 = i3;
                    }
                    if ((i14 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i14 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0) {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str111111 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str111111;
                        } else {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str111112 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str111112;
                        }
                        i20 = i14;
                        gapComposerH.a0();
                        OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                        float f11114 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                        Dp.Companion companion18 = Dp.f11004c;
                        if (z4) {
                            gapComposerH.L(-1816982425);
                            f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-1816926749);
                            f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        }
                        float f11115 = f4;
                        textStyle4 = textStyle2;
                        Modifier modifierM1116 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f11114 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f11115, LVAppDesignKitTheme.l(gapComposerH).f48415c, f11115, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                        Arrangement$Top$1 arrangement$Top$18 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        columnMeasurePolicyA = ColumnKt.a(arrangement$Top$18, Alignment.Companion.n, gapComposerH, 0);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierM1116);
                        ComposeUiNode.b0.getClass();
                        function4 = ComposeUiNode.Companion.f9641b;
                        modifier5 = modifier4;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function4);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        gapComposerH.L(826392783);
                        gapComposerH.Z(false);
                        if (str16 != null) {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        }
                        if (str8 == null) {
                            gapComposer.L(827442287);
                            gapComposer.Z(z5);
                            textStyle5 = textStyle4;
                            str17 = str8;
                        } else {
                            DTFunctionNameModifier dTFunctionNameModifierI18 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                            if (z4) {
                                gapComposer.L(-1121329229);
                                f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                                gapComposer.Z(z5);
                            } else {
                                gapComposer.L(-1121230153);
                                f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                                gapComposer.Z(z5);
                            }
                            Modifier modifierM1117 = PaddingKt.m(dTFunctionNameModifierI18, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                            if (str15 != null) {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            } else {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            }
                            textStyle5 = textStyle4;
                            str17 = str8;
                            TextKt.c(str17, modifierM1117.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                            gapComposer.Z(false);
                        }
                        function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                        gapComposer.Z(true);
                        modifier3 = modifier5;
                        str10 = str16;
                        str13 = str15;
                        z3 = z4;
                        str12 = str7;
                        function1 = function2;
                        str14 = str17;
                        str11 = str9;
                        textStyle3 = textStyle5;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        z3 = z;
                        str10 = str6;
                        str11 = str9;
                        str12 = str7;
                        modifier3 = modifier2;
                        str13 = str4;
                        function1 = function0;
                        textStyle3 = textStyle2;
                        str14 = str8;
                    }
                    f3 = f2;
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: s50
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i2 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i3);
                                LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i23 |= 12582912;
                i14 = i23 | 100663296;
                i15 = i4 & 512;
                if (i15 != 0) {
                    if ((805306368 & i2) == 0) {
                        str9 = str5;
                        if (gapComposerH.K(str9)) {
                            i16 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i16 = 268435456;
                        }
                        i14 |= i16;
                    }
                    i17 = i4 & 1024;
                    if (i17 != 0) {
                        i18 = 54;
                    } else if ((i3 & 6) == 0) {
                        if (gapComposerH.y(function0)) {
                            i19 = 4;
                        } else {
                            i19 = 2;
                        }
                        i18 = i3 | i19;
                    } else {
                        i18 = i3;
                    }
                    if ((i14 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i14 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0) {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str111113 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str111113;
                        } else {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str111114 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str111114;
                        }
                        i20 = i14;
                        gapComposerH.a0();
                        OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                        float f11116 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                        Dp.Companion companion19 = Dp.f11004c;
                        if (z4) {
                            gapComposerH.L(-1816982425);
                            f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-1816926749);
                            f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        }
                        float f11117 = f4;
                        textStyle4 = textStyle2;
                        Modifier modifierM1118 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f11116 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f11117, LVAppDesignKitTheme.l(gapComposerH).f48415c, f11117, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                        Arrangement$Top$1 arrangement$Top$19 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        columnMeasurePolicyA = ColumnKt.a(arrangement$Top$19, Alignment.Companion.n, gapComposerH, 0);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierM1118);
                        ComposeUiNode.b0.getClass();
                        function4 = ComposeUiNode.Companion.f9641b;
                        modifier5 = modifier4;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function4);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        gapComposerH.L(826392783);
                        gapComposerH.Z(false);
                        if (str16 != null) {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        }
                        if (str8 == null) {
                            gapComposer.L(827442287);
                            gapComposer.Z(z5);
                            textStyle5 = textStyle4;
                            str17 = str8;
                        } else {
                            DTFunctionNameModifier dTFunctionNameModifierI19 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                            if (z4) {
                                gapComposer.L(-1121329229);
                                f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                                gapComposer.Z(z5);
                            } else {
                                gapComposer.L(-1121230153);
                                f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                                gapComposer.Z(z5);
                            }
                            Modifier modifierM1119 = PaddingKt.m(dTFunctionNameModifierI19, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                            if (str15 != null) {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            } else {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            }
                            textStyle5 = textStyle4;
                            str17 = str8;
                            TextKt.c(str17, modifierM1119.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                            gapComposer.Z(false);
                        }
                        function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                        gapComposer.Z(true);
                        modifier3 = modifier5;
                        str10 = str16;
                        str13 = str15;
                        z3 = z4;
                        str12 = str7;
                        function1 = function2;
                        str14 = str17;
                        str11 = str9;
                        textStyle3 = textStyle5;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        z3 = z;
                        str10 = str6;
                        str11 = str9;
                        str12 = str7;
                        modifier3 = modifier2;
                        str13 = str4;
                        function1 = function0;
                        textStyle3 = textStyle2;
                        str14 = str8;
                    }
                    f3 = f2;
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: s50
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i2 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i3);
                                LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i14 = i23 | 905969664;
                str9 = str5;
                i17 = i4 & 1024;
                if (i17 != 0) {
                    i18 = 54;
                } else if ((i3 & 6) == 0) {
                    if (gapComposerH.y(function0)) {
                        i19 = 4;
                    } else {
                        i19 = 2;
                    }
                    i18 = i3 | i19;
                } else {
                    i18 = i3;
                }
                if ((i14 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i14 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str111115 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str111115;
                    } else {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str111116 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str111116;
                    }
                    i20 = i14;
                    gapComposerH.a0();
                    OpaqueKey opaqueKey110 = ComposerKt.f7940a;
                    float f11118 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                    Dp.Companion companion110 = Dp.f11004c;
                    if (z4) {
                        gapComposerH.L(-1816982425);
                        f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1816926749);
                        f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    float f11119 = f4;
                    textStyle4 = textStyle2;
                    Modifier modifierM11110 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f11118 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f11119, LVAppDesignKitTheme.l(gapComposerH).f48415c, f11119, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                    Arrangement$Top$1 arrangement$Top$110 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$110, Alignment.Companion.n, gapComposerH, 0);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierM11110);
                    ComposeUiNode.b0.getClass();
                    function4 = ComposeUiNode.Companion.f9641b;
                    modifier5 = modifier4;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function4);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    gapComposerH.L(826392783);
                    gapComposerH.Z(false);
                    if (str16 != null) {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    }
                    if (str8 == null) {
                        gapComposer.L(827442287);
                        gapComposer.Z(z5);
                        textStyle5 = textStyle4;
                        str17 = str8;
                    } else {
                        DTFunctionNameModifier dTFunctionNameModifierI110 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                        if (z4) {
                            gapComposer.L(-1121329229);
                            f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                            gapComposer.Z(z5);
                        } else {
                            gapComposer.L(-1121230153);
                            f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                            gapComposer.Z(z5);
                        }
                        Modifier modifierM11111 = PaddingKt.m(dTFunctionNameModifierI110, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        if (str15 != null) {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        } else {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        }
                        textStyle5 = textStyle4;
                        str17 = str8;
                        TextKt.c(str17, modifierM11111.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                        gapComposer.Z(false);
                    }
                    function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                    gapComposer.Z(true);
                    modifier3 = modifier5;
                    str10 = str16;
                    str13 = str15;
                    z3 = z4;
                    str12 = str7;
                    function1 = function2;
                    str14 = str17;
                    str11 = str9;
                    textStyle3 = textStyle5;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    z3 = z;
                    str10 = str6;
                    str11 = str9;
                    str12 = str7;
                    modifier3 = modifier2;
                    str13 = str4;
                    function1 = function0;
                    textStyle3 = textStyle2;
                    str14 = str8;
                }
                f3 = f2;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: s50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i23 |= 24576;
            str8 = str3;
            i10 = i4 & 32;
            if (i10 != 0) {
                i23 |= ImageMetadata.EDGE_MODE;
            } else if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.K(str4)) {
                    i11 = 131072;
                } else {
                    i11 = 65536;
                }
                i23 |= i11;
            }
            if ((i2 & 1572864) == 0) {
                textStyle2 = textStyle;
                if ((i4 & 64) == 0) {
                    i21 = 524288;
                } else {
                    i21 = 524288;
                }
                i23 |= i21;
            } else {
                textStyle2 = textStyle;
            }
            modifier2 = modifierE;
            i12 = i4 & 128;
            if (i12 != 0) {
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.b(z)) {
                        i13 = 8388608;
                    } else {
                        i13 = 4194304;
                    }
                    i23 |= i13;
                }
                i14 = i23 | 100663296;
                i15 = i4 & 512;
                if (i15 != 0) {
                    if ((805306368 & i2) == 0) {
                        str9 = str5;
                        if (gapComposerH.K(str9)) {
                            i16 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i16 = 268435456;
                        }
                        i14 |= i16;
                    }
                    i17 = i4 & 1024;
                    if (i17 != 0) {
                        i18 = 54;
                    } else if ((i3 & 6) == 0) {
                        if (gapComposerH.y(function0)) {
                            i19 = 4;
                        } else {
                            i19 = 2;
                        }
                        i18 = i3 | i19;
                    } else {
                        i18 = i3;
                    }
                    if ((i14 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i14 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0) {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str111117 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str111117;
                        } else {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str111118 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str111118;
                        }
                        i20 = i14;
                        gapComposerH.a0();
                        OpaqueKey opaqueKey111 = ComposerKt.f7940a;
                        float f111110 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                        Dp.Companion companion111 = Dp.f11004c;
                        if (z4) {
                            gapComposerH.L(-1816982425);
                            f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-1816926749);
                            f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        }
                        float f111111 = f4;
                        textStyle4 = textStyle2;
                        Modifier modifierM11112 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f111110 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f111111, LVAppDesignKitTheme.l(gapComposerH).f48415c, f111111, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                        Arrangement$Top$1 arrangement$Top$111 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        columnMeasurePolicyA = ColumnKt.a(arrangement$Top$111, Alignment.Companion.n, gapComposerH, 0);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierM11112);
                        ComposeUiNode.b0.getClass();
                        function4 = ComposeUiNode.Companion.f9641b;
                        modifier5 = modifier4;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function4);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        gapComposerH.L(826392783);
                        gapComposerH.Z(false);
                        if (str16 != null) {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        }
                        if (str8 == null) {
                            gapComposer.L(827442287);
                            gapComposer.Z(z5);
                            textStyle5 = textStyle4;
                            str17 = str8;
                        } else {
                            DTFunctionNameModifier dTFunctionNameModifierI111 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                            if (z4) {
                                gapComposer.L(-1121329229);
                                f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                                gapComposer.Z(z5);
                            } else {
                                gapComposer.L(-1121230153);
                                f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                                gapComposer.Z(z5);
                            }
                            Modifier modifierM11113 = PaddingKt.m(dTFunctionNameModifierI111, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                            if (str15 != null) {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            } else {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            }
                            textStyle5 = textStyle4;
                            str17 = str8;
                            TextKt.c(str17, modifierM11113.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                            gapComposer.Z(false);
                        }
                        function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                        gapComposer.Z(true);
                        modifier3 = modifier5;
                        str10 = str16;
                        str13 = str15;
                        z3 = z4;
                        str12 = str7;
                        function1 = function2;
                        str14 = str17;
                        str11 = str9;
                        textStyle3 = textStyle5;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        z3 = z;
                        str10 = str6;
                        str11 = str9;
                        str12 = str7;
                        modifier3 = modifier2;
                        str13 = str4;
                        function1 = function0;
                        textStyle3 = textStyle2;
                        str14 = str8;
                    }
                    f3 = f2;
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: s50
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i2 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i3);
                                LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i14 = i23 | 905969664;
                str9 = str5;
                i17 = i4 & 1024;
                if (i17 != 0) {
                    i18 = 54;
                } else if ((i3 & 6) == 0) {
                    if (gapComposerH.y(function0)) {
                        i19 = 4;
                    } else {
                        i19 = 2;
                    }
                    i18 = i3 | i19;
                } else {
                    i18 = i3;
                }
                if ((i14 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i14 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str111119 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str111119;
                    } else {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str1111110 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str1111110;
                    }
                    i20 = i14;
                    gapComposerH.a0();
                    OpaqueKey opaqueKey112 = ComposerKt.f7940a;
                    float f111112 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                    Dp.Companion companion112 = Dp.f11004c;
                    if (z4) {
                        gapComposerH.L(-1816982425);
                        f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1816926749);
                        f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    float f111113 = f4;
                    textStyle4 = textStyle2;
                    Modifier modifierM11114 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f111112 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f111113, LVAppDesignKitTheme.l(gapComposerH).f48415c, f111113, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                    Arrangement$Top$1 arrangement$Top$112 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$112, Alignment.Companion.n, gapComposerH, 0);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierM11114);
                    ComposeUiNode.b0.getClass();
                    function4 = ComposeUiNode.Companion.f9641b;
                    modifier5 = modifier4;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function4);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    gapComposerH.L(826392783);
                    gapComposerH.Z(false);
                    if (str16 != null) {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    }
                    if (str8 == null) {
                        gapComposer.L(827442287);
                        gapComposer.Z(z5);
                        textStyle5 = textStyle4;
                        str17 = str8;
                    } else {
                        DTFunctionNameModifier dTFunctionNameModifierI112 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                        if (z4) {
                            gapComposer.L(-1121329229);
                            f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                            gapComposer.Z(z5);
                        } else {
                            gapComposer.L(-1121230153);
                            f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                            gapComposer.Z(z5);
                        }
                        Modifier modifierM11115 = PaddingKt.m(dTFunctionNameModifierI112, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        if (str15 != null) {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        } else {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        }
                        textStyle5 = textStyle4;
                        str17 = str8;
                        TextKt.c(str17, modifierM11115.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                        gapComposer.Z(false);
                    }
                    function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                    gapComposer.Z(true);
                    modifier3 = modifier5;
                    str10 = str16;
                    str13 = str15;
                    z3 = z4;
                    str12 = str7;
                    function1 = function2;
                    str14 = str17;
                    str11 = str9;
                    textStyle3 = textStyle5;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    z3 = z;
                    str10 = str6;
                    str11 = str9;
                    str12 = str7;
                    modifier3 = modifier2;
                    str13 = str4;
                    function1 = function0;
                    textStyle3 = textStyle2;
                    str14 = str8;
                }
                f3 = f2;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: s50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i23 |= 12582912;
            i14 = i23 | 100663296;
            i15 = i4 & 512;
            if (i15 != 0) {
                if ((805306368 & i2) == 0) {
                    str9 = str5;
                    if (gapComposerH.K(str9)) {
                        i16 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i16 = 268435456;
                    }
                    i14 |= i16;
                }
                i17 = i4 & 1024;
                if (i17 != 0) {
                    i18 = 54;
                } else if ((i3 & 6) == 0) {
                    if (gapComposerH.y(function0)) {
                        i19 = 4;
                    } else {
                        i19 = 2;
                    }
                    i18 = i3 | i19;
                } else {
                    i18 = i3;
                }
                if ((i14 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i14 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str1111111 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str1111111;
                    } else {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str1111112 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str1111112;
                    }
                    i20 = i14;
                    gapComposerH.a0();
                    OpaqueKey opaqueKey113 = ComposerKt.f7940a;
                    float f111114 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                    Dp.Companion companion113 = Dp.f11004c;
                    if (z4) {
                        gapComposerH.L(-1816982425);
                        f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1816926749);
                        f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    float f111115 = f4;
                    textStyle4 = textStyle2;
                    Modifier modifierM11116 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f111114 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f111115, LVAppDesignKitTheme.l(gapComposerH).f48415c, f111115, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                    Arrangement$Top$1 arrangement$Top$113 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$113, Alignment.Companion.n, gapComposerH, 0);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierM11116);
                    ComposeUiNode.b0.getClass();
                    function4 = ComposeUiNode.Companion.f9641b;
                    modifier5 = modifier4;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function4);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    gapComposerH.L(826392783);
                    gapComposerH.Z(false);
                    if (str16 != null) {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    }
                    if (str8 == null) {
                        gapComposer.L(827442287);
                        gapComposer.Z(z5);
                        textStyle5 = textStyle4;
                        str17 = str8;
                    } else {
                        DTFunctionNameModifier dTFunctionNameModifierI113 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                        if (z4) {
                            gapComposer.L(-1121329229);
                            f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                            gapComposer.Z(z5);
                        } else {
                            gapComposer.L(-1121230153);
                            f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                            gapComposer.Z(z5);
                        }
                        Modifier modifierM11117 = PaddingKt.m(dTFunctionNameModifierI113, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        if (str15 != null) {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        } else {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        }
                        textStyle5 = textStyle4;
                        str17 = str8;
                        TextKt.c(str17, modifierM11117.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                        gapComposer.Z(false);
                    }
                    function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                    gapComposer.Z(true);
                    modifier3 = modifier5;
                    str10 = str16;
                    str13 = str15;
                    z3 = z4;
                    str12 = str7;
                    function1 = function2;
                    str14 = str17;
                    str11 = str9;
                    textStyle3 = textStyle5;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    z3 = z;
                    str10 = str6;
                    str11 = str9;
                    str12 = str7;
                    modifier3 = modifier2;
                    str13 = str4;
                    function1 = function0;
                    textStyle3 = textStyle2;
                    str14 = str8;
                }
                f3 = f2;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: s50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i14 = i23 | 905969664;
            str9 = str5;
            i17 = i4 & 1024;
            if (i17 != 0) {
                i18 = 54;
            } else if ((i3 & 6) == 0) {
                if (gapComposerH.y(function0)) {
                    i19 = 4;
                } else {
                    i19 = 2;
                }
                i18 = i3 | i19;
            } else {
                i18 = i3;
            }
            if ((i14 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (gapComposerH.p(i14 & 1, z2)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i22 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i24 != 0) {
                        str6 = null;
                    }
                    if (i6 != 0) {
                        str7 = null;
                    }
                    if (i8 != 0) {
                        str8 = null;
                    }
                    if (i10 != 0) {
                        str15 = null;
                    } else {
                        str15 = str4;
                    }
                    if ((i4 & 64) != 0) {
                        textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                        i14 &= -3670017;
                    }
                    if (i12 != 0) {
                        z4 = false;
                    } else {
                        z4 = z;
                    }
                    if (i15 != 0) {
                        str9 = null;
                    }
                    if (i17 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = new k40(12);
                            gapComposerH.q(objX);
                        }
                        function2 = (Function0) objX;
                    } else {
                        function2 = function0;
                    }
                    String str1111113 = str6;
                    modifier4 = dTFunctionNameModifier;
                    f2 = 0.9f;
                    str16 = str1111113;
                } else {
                    if (i22 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i24 != 0) {
                        str6 = null;
                    }
                    if (i6 != 0) {
                        str7 = null;
                    }
                    if (i8 != 0) {
                        str8 = null;
                    }
                    if (i10 != 0) {
                        str15 = null;
                    } else {
                        str15 = str4;
                    }
                    if ((i4 & 64) != 0) {
                        textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                        i14 &= -3670017;
                    }
                    if (i12 != 0) {
                        z4 = false;
                    } else {
                        z4 = z;
                    }
                    if (i15 != 0) {
                        str9 = null;
                    }
                    if (i17 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = new k40(12);
                            gapComposerH.q(objX);
                        }
                        function2 = (Function0) objX;
                    } else {
                        function2 = function0;
                    }
                    String str1111114 = str6;
                    modifier4 = dTFunctionNameModifier;
                    f2 = 0.9f;
                    str16 = str1111114;
                }
                i20 = i14;
                gapComposerH.a0();
                OpaqueKey opaqueKey114 = ComposerKt.f7940a;
                float f111116 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                Dp.Companion companion114 = Dp.f11004c;
                if (z4) {
                    gapComposerH.L(-1816982425);
                    f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1816926749);
                    f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                    gapComposerH.Z(false);
                }
                float f111117 = f4;
                textStyle4 = textStyle2;
                Modifier modifierM11118 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f111116 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f111117, LVAppDesignKitTheme.l(gapComposerH).f48415c, f111117, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                Arrangement$Top$1 arrangement$Top$114 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$114, Alignment.Companion.n, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierM11118);
                ComposeUiNode.b0.getClass();
                function4 = ComposeUiNode.Companion.f9641b;
                modifier5 = modifier4;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function4);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                gapComposerH.L(826392783);
                gapComposerH.Z(false);
                if (str16 != null) {
                    gapComposer = gapComposerH;
                    z5 = false;
                    gapComposer.L(827403631);
                    gapComposer.Z(false);
                } else {
                    gapComposer = gapComposerH;
                    z5 = false;
                    gapComposer.L(827403631);
                    gapComposer.Z(false);
                }
                if (str8 == null) {
                    gapComposer.L(827442287);
                    gapComposer.Z(z5);
                    textStyle5 = textStyle4;
                    str17 = str8;
                } else {
                    DTFunctionNameModifier dTFunctionNameModifierI114 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                    if (z4) {
                        gapComposer.L(-1121329229);
                        f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                        gapComposer.Z(z5);
                    } else {
                        gapComposer.L(-1121230153);
                        f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                        gapComposer.Z(z5);
                    }
                    Modifier modifierM11119 = PaddingKt.m(dTFunctionNameModifierI114, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                    if (str15 != null) {
                        modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                    } else {
                        modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                    }
                    textStyle5 = textStyle4;
                    str17 = str8;
                    TextKt.c(str17, modifierM11119.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                    gapComposer.Z(false);
                }
                function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                gapComposer.Z(true);
                modifier3 = modifier5;
                str10 = str16;
                str13 = str15;
                z3 = z4;
                str12 = str7;
                function1 = function2;
                str14 = str17;
                str11 = str9;
                textStyle3 = textStyle5;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                z3 = z;
                str10 = str6;
                str11 = str9;
                str12 = str7;
                modifier3 = modifier2;
                str13 = str4;
                function1 = function0;
                textStyle3 = textStyle2;
                str14 = str8;
            }
            f3 = f2;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: s50
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i3);
                        LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i23 |= 3072;
        str7 = str2;
        i8 = i4 & 16;
        if (i8 != 0) {
            if ((i2 & 24576) == 0) {
                str8 = str3;
                if (gapComposerH.K(str8)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i23 |= i9;
            }
            i10 = i4 & 32;
            if (i10 != 0) {
                i23 |= ImageMetadata.EDGE_MODE;
            } else if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.K(str4)) {
                    i11 = 131072;
                } else {
                    i11 = 65536;
                }
                i23 |= i11;
            }
            if ((i2 & 1572864) == 0) {
                textStyle2 = textStyle;
                if ((i4 & 64) == 0) {
                    i21 = 524288;
                } else {
                    i21 = 524288;
                }
                i23 |= i21;
            } else {
                textStyle2 = textStyle;
            }
            modifier2 = modifierE;
            i12 = i4 & 128;
            if (i12 != 0) {
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.b(z)) {
                        i13 = 8388608;
                    } else {
                        i13 = 4194304;
                    }
                    i23 |= i13;
                }
                i14 = i23 | 100663296;
                i15 = i4 & 512;
                if (i15 != 0) {
                    if ((805306368 & i2) == 0) {
                        str9 = str5;
                        if (gapComposerH.K(str9)) {
                            i16 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i16 = 268435456;
                        }
                        i14 |= i16;
                    }
                    i17 = i4 & 1024;
                    if (i17 != 0) {
                        i18 = 54;
                    } else if ((i3 & 6) == 0) {
                        if (gapComposerH.y(function0)) {
                            i19 = 4;
                        } else {
                            i19 = 2;
                        }
                        i18 = i3 | i19;
                    } else {
                        i18 = i3;
                    }
                    if ((i14 & 306783379) == 306783378) {
                        z2 = true;
                    } else {
                        z2 = true;
                    }
                    if (gapComposerH.p(i14 & 1, z2)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0) {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str1111115 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str1111115;
                        } else {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i24 != 0) {
                                str6 = null;
                            }
                            if (i6 != 0) {
                                str7 = null;
                            }
                            if (i8 != 0) {
                                str8 = null;
                            }
                            if (i10 != 0) {
                                str15 = null;
                            } else {
                                str15 = str4;
                            }
                            if ((i4 & 64) != 0) {
                                textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                                i14 &= -3670017;
                            }
                            if (i12 != 0) {
                                z4 = false;
                            } else {
                                z4 = z;
                            }
                            if (i15 != 0) {
                                str9 = null;
                            }
                            if (i17 != 0) {
                                objX = gapComposerH.x();
                                if (objX == Composer.Companion.f7939a) {
                                    objX = new k40(12);
                                    gapComposerH.q(objX);
                                }
                                function2 = (Function0) objX;
                            } else {
                                function2 = function0;
                            }
                            String str1111116 = str6;
                            modifier4 = dTFunctionNameModifier;
                            f2 = 0.9f;
                            str16 = str1111116;
                        }
                        i20 = i14;
                        gapComposerH.a0();
                        OpaqueKey opaqueKey115 = ComposerKt.f7940a;
                        float f111118 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                        Dp.Companion companion115 = Dp.f11004c;
                        if (z4) {
                            gapComposerH.L(-1816982425);
                            f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-1816926749);
                            f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                            gapComposerH.Z(false);
                        }
                        float f111119 = f4;
                        textStyle4 = textStyle2;
                        Modifier modifierM111110 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f111118 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f111119, LVAppDesignKitTheme.l(gapComposerH).f48415c, f111119, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                        Arrangement$Top$1 arrangement$Top$115 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        columnMeasurePolicyA = ColumnKt.a(arrangement$Top$115, Alignment.Companion.n, gapComposerH, 0);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierM111110);
                        ComposeUiNode.b0.getClass();
                        function4 = ComposeUiNode.Companion.f9641b;
                        modifier5 = modifier4;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function4);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        gapComposerH.L(826392783);
                        gapComposerH.Z(false);
                        if (str16 != null) {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        } else {
                            gapComposer = gapComposerH;
                            z5 = false;
                            gapComposer.L(827403631);
                            gapComposer.Z(false);
                        }
                        if (str8 == null) {
                            gapComposer.L(827442287);
                            gapComposer.Z(z5);
                            textStyle5 = textStyle4;
                            str17 = str8;
                        } else {
                            DTFunctionNameModifier dTFunctionNameModifierI115 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                            if (z4) {
                                gapComposer.L(-1121329229);
                                f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                                gapComposer.Z(z5);
                            } else {
                                gapComposer.L(-1121230153);
                                f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                                gapComposer.Z(z5);
                            }
                            Modifier modifierM111111 = PaddingKt.m(dTFunctionNameModifierI115, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                            if (str15 != null) {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            } else {
                                modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                            }
                            textStyle5 = textStyle4;
                            str17 = str8;
                            TextKt.c(str17, modifierM111111.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                            gapComposer.Z(false);
                        }
                        function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                        gapComposer.Z(true);
                        modifier3 = modifier5;
                        str10 = str16;
                        str13 = str15;
                        z3 = z4;
                        str12 = str7;
                        function1 = function2;
                        str14 = str17;
                        str11 = str9;
                        textStyle3 = textStyle5;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        z3 = z;
                        str10 = str6;
                        str11 = str9;
                        str12 = str7;
                        modifier3 = modifier2;
                        str13 = str4;
                        function1 = function0;
                        textStyle3 = textStyle2;
                        str14 = str8;
                    }
                    f3 = f2;
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: s50
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i2 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i3);
                                LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i14 = i23 | 905969664;
                str9 = str5;
                i17 = i4 & 1024;
                if (i17 != 0) {
                    i18 = 54;
                } else if ((i3 & 6) == 0) {
                    if (gapComposerH.y(function0)) {
                        i19 = 4;
                    } else {
                        i19 = 2;
                    }
                    i18 = i3 | i19;
                } else {
                    i18 = i3;
                }
                if ((i14 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i14 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str1111117 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str1111117;
                    } else {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str1111118 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str1111118;
                    }
                    i20 = i14;
                    gapComposerH.a0();
                    OpaqueKey opaqueKey116 = ComposerKt.f7940a;
                    float f1111110 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                    Dp.Companion companion116 = Dp.f11004c;
                    if (z4) {
                        gapComposerH.L(-1816982425);
                        f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1816926749);
                        f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    float f1111111 = f4;
                    textStyle4 = textStyle2;
                    Modifier modifierM111112 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f1111110 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f1111111, LVAppDesignKitTheme.l(gapComposerH).f48415c, f1111111, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                    Arrangement$Top$1 arrangement$Top$116 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$116, Alignment.Companion.n, gapComposerH, 0);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierM111112);
                    ComposeUiNode.b0.getClass();
                    function4 = ComposeUiNode.Companion.f9641b;
                    modifier5 = modifier4;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function4);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    gapComposerH.L(826392783);
                    gapComposerH.Z(false);
                    if (str16 != null) {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    }
                    if (str8 == null) {
                        gapComposer.L(827442287);
                        gapComposer.Z(z5);
                        textStyle5 = textStyle4;
                        str17 = str8;
                    } else {
                        DTFunctionNameModifier dTFunctionNameModifierI116 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                        if (z4) {
                            gapComposer.L(-1121329229);
                            f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                            gapComposer.Z(z5);
                        } else {
                            gapComposer.L(-1121230153);
                            f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                            gapComposer.Z(z5);
                        }
                        Modifier modifierM111113 = PaddingKt.m(dTFunctionNameModifierI116, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        if (str15 != null) {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        } else {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        }
                        textStyle5 = textStyle4;
                        str17 = str8;
                        TextKt.c(str17, modifierM111113.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                        gapComposer.Z(false);
                    }
                    function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                    gapComposer.Z(true);
                    modifier3 = modifier5;
                    str10 = str16;
                    str13 = str15;
                    z3 = z4;
                    str12 = str7;
                    function1 = function2;
                    str14 = str17;
                    str11 = str9;
                    textStyle3 = textStyle5;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    z3 = z;
                    str10 = str6;
                    str11 = str9;
                    str12 = str7;
                    modifier3 = modifier2;
                    str13 = str4;
                    function1 = function0;
                    textStyle3 = textStyle2;
                    str14 = str8;
                }
                f3 = f2;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: s50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i23 |= 12582912;
            i14 = i23 | 100663296;
            i15 = i4 & 512;
            if (i15 != 0) {
                if ((805306368 & i2) == 0) {
                    str9 = str5;
                    if (gapComposerH.K(str9)) {
                        i16 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i16 = 268435456;
                    }
                    i14 |= i16;
                }
                i17 = i4 & 1024;
                if (i17 != 0) {
                    i18 = 54;
                } else if ((i3 & 6) == 0) {
                    if (gapComposerH.y(function0)) {
                        i19 = 4;
                    } else {
                        i19 = 2;
                    }
                    i18 = i3 | i19;
                } else {
                    i18 = i3;
                }
                if ((i14 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i14 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str1111119 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str1111119;
                    } else {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str11111110 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str11111110;
                    }
                    i20 = i14;
                    gapComposerH.a0();
                    OpaqueKey opaqueKey117 = ComposerKt.f7940a;
                    float f1111112 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                    Dp.Companion companion117 = Dp.f11004c;
                    if (z4) {
                        gapComposerH.L(-1816982425);
                        f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1816926749);
                        f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    float f1111113 = f4;
                    textStyle4 = textStyle2;
                    Modifier modifierM111114 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f1111112 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f1111113, LVAppDesignKitTheme.l(gapComposerH).f48415c, f1111113, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                    Arrangement$Top$1 arrangement$Top$117 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$117, Alignment.Companion.n, gapComposerH, 0);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierM111114);
                    ComposeUiNode.b0.getClass();
                    function4 = ComposeUiNode.Companion.f9641b;
                    modifier5 = modifier4;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function4);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    gapComposerH.L(826392783);
                    gapComposerH.Z(false);
                    if (str16 != null) {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    }
                    if (str8 == null) {
                        gapComposer.L(827442287);
                        gapComposer.Z(z5);
                        textStyle5 = textStyle4;
                        str17 = str8;
                    } else {
                        DTFunctionNameModifier dTFunctionNameModifierI117 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                        if (z4) {
                            gapComposer.L(-1121329229);
                            f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                            gapComposer.Z(z5);
                        } else {
                            gapComposer.L(-1121230153);
                            f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                            gapComposer.Z(z5);
                        }
                        Modifier modifierM111115 = PaddingKt.m(dTFunctionNameModifierI117, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        if (str15 != null) {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        } else {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        }
                        textStyle5 = textStyle4;
                        str17 = str8;
                        TextKt.c(str17, modifierM111115.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                        gapComposer.Z(false);
                    }
                    function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                    gapComposer.Z(true);
                    modifier3 = modifier5;
                    str10 = str16;
                    str13 = str15;
                    z3 = z4;
                    str12 = str7;
                    function1 = function2;
                    str14 = str17;
                    str11 = str9;
                    textStyle3 = textStyle5;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    z3 = z;
                    str10 = str6;
                    str11 = str9;
                    str12 = str7;
                    modifier3 = modifier2;
                    str13 = str4;
                    function1 = function0;
                    textStyle3 = textStyle2;
                    str14 = str8;
                }
                f3 = f2;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: s50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i14 = i23 | 905969664;
            str9 = str5;
            i17 = i4 & 1024;
            if (i17 != 0) {
                i18 = 54;
            } else if ((i3 & 6) == 0) {
                if (gapComposerH.y(function0)) {
                    i19 = 4;
                } else {
                    i19 = 2;
                }
                i18 = i3 | i19;
            } else {
                i18 = i3;
            }
            if ((i14 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (gapComposerH.p(i14 & 1, z2)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i22 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i24 != 0) {
                        str6 = null;
                    }
                    if (i6 != 0) {
                        str7 = null;
                    }
                    if (i8 != 0) {
                        str8 = null;
                    }
                    if (i10 != 0) {
                        str15 = null;
                    } else {
                        str15 = str4;
                    }
                    if ((i4 & 64) != 0) {
                        textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                        i14 &= -3670017;
                    }
                    if (i12 != 0) {
                        z4 = false;
                    } else {
                        z4 = z;
                    }
                    if (i15 != 0) {
                        str9 = null;
                    }
                    if (i17 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = new k40(12);
                            gapComposerH.q(objX);
                        }
                        function2 = (Function0) objX;
                    } else {
                        function2 = function0;
                    }
                    String str11111111 = str6;
                    modifier4 = dTFunctionNameModifier;
                    f2 = 0.9f;
                    str16 = str11111111;
                } else {
                    if (i22 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i24 != 0) {
                        str6 = null;
                    }
                    if (i6 != 0) {
                        str7 = null;
                    }
                    if (i8 != 0) {
                        str8 = null;
                    }
                    if (i10 != 0) {
                        str15 = null;
                    } else {
                        str15 = str4;
                    }
                    if ((i4 & 64) != 0) {
                        textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                        i14 &= -3670017;
                    }
                    if (i12 != 0) {
                        z4 = false;
                    } else {
                        z4 = z;
                    }
                    if (i15 != 0) {
                        str9 = null;
                    }
                    if (i17 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = new k40(12);
                            gapComposerH.q(objX);
                        }
                        function2 = (Function0) objX;
                    } else {
                        function2 = function0;
                    }
                    String str11111112 = str6;
                    modifier4 = dTFunctionNameModifier;
                    f2 = 0.9f;
                    str16 = str11111112;
                }
                i20 = i14;
                gapComposerH.a0();
                OpaqueKey opaqueKey118 = ComposerKt.f7940a;
                float f1111114 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                Dp.Companion companion118 = Dp.f11004c;
                if (z4) {
                    gapComposerH.L(-1816982425);
                    f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1816926749);
                    f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                    gapComposerH.Z(false);
                }
                float f1111115 = f4;
                textStyle4 = textStyle2;
                Modifier modifierM111116 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f1111114 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f1111115, LVAppDesignKitTheme.l(gapComposerH).f48415c, f1111115, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                Arrangement$Top$1 arrangement$Top$118 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$118, Alignment.Companion.n, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierM111116);
                ComposeUiNode.b0.getClass();
                function4 = ComposeUiNode.Companion.f9641b;
                modifier5 = modifier4;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function4);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                gapComposerH.L(826392783);
                gapComposerH.Z(false);
                if (str16 != null) {
                    gapComposer = gapComposerH;
                    z5 = false;
                    gapComposer.L(827403631);
                    gapComposer.Z(false);
                } else {
                    gapComposer = gapComposerH;
                    z5 = false;
                    gapComposer.L(827403631);
                    gapComposer.Z(false);
                }
                if (str8 == null) {
                    gapComposer.L(827442287);
                    gapComposer.Z(z5);
                    textStyle5 = textStyle4;
                    str17 = str8;
                } else {
                    DTFunctionNameModifier dTFunctionNameModifierI118 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                    if (z4) {
                        gapComposer.L(-1121329229);
                        f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                        gapComposer.Z(z5);
                    } else {
                        gapComposer.L(-1121230153);
                        f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                        gapComposer.Z(z5);
                    }
                    Modifier modifierM111117 = PaddingKt.m(dTFunctionNameModifierI118, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                    if (str15 != null) {
                        modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                    } else {
                        modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                    }
                    textStyle5 = textStyle4;
                    str17 = str8;
                    TextKt.c(str17, modifierM111117.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                    gapComposer.Z(false);
                }
                function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                gapComposer.Z(true);
                modifier3 = modifier5;
                str10 = str16;
                str13 = str15;
                z3 = z4;
                str12 = str7;
                function1 = function2;
                str14 = str17;
                str11 = str9;
                textStyle3 = textStyle5;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                z3 = z;
                str10 = str6;
                str11 = str9;
                str12 = str7;
                modifier3 = modifier2;
                str13 = str4;
                function1 = function0;
                textStyle3 = textStyle2;
                str14 = str8;
            }
            f3 = f2;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: s50
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i3);
                        LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i23 |= 24576;
        str8 = str3;
        i10 = i4 & 32;
        if (i10 != 0) {
            i23 |= ImageMetadata.EDGE_MODE;
        } else if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            if (gapComposerH.K(str4)) {
                i11 = 131072;
            } else {
                i11 = 65536;
            }
            i23 |= i11;
        }
        if ((i2 & 1572864) == 0) {
            textStyle2 = textStyle;
            if ((i4 & 64) == 0) {
                i21 = 524288;
            } else {
                i21 = 524288;
            }
            i23 |= i21;
        } else {
            textStyle2 = textStyle;
        }
        modifier2 = modifierE;
        i12 = i4 & 128;
        if (i12 != 0) {
            if ((i2 & 12582912) == 0) {
                if (gapComposerH.b(z)) {
                    i13 = 8388608;
                } else {
                    i13 = 4194304;
                }
                i23 |= i13;
            }
            i14 = i23 | 100663296;
            i15 = i4 & 512;
            if (i15 != 0) {
                if ((805306368 & i2) == 0) {
                    str9 = str5;
                    if (gapComposerH.K(str9)) {
                        i16 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i16 = 268435456;
                    }
                    i14 |= i16;
                }
                i17 = i4 & 1024;
                if (i17 != 0) {
                    i18 = 54;
                } else if ((i3 & 6) == 0) {
                    if (gapComposerH.y(function0)) {
                        i19 = 4;
                    } else {
                        i19 = 2;
                    }
                    i18 = i3 | i19;
                } else {
                    i18 = i3;
                }
                if ((i14 & 306783379) == 306783378) {
                    z2 = true;
                } else {
                    z2 = true;
                }
                if (gapComposerH.p(i14 & 1, z2)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str11111113 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str11111113;
                    } else {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i24 != 0) {
                            str6 = null;
                        }
                        if (i6 != 0) {
                            str7 = null;
                        }
                        if (i8 != 0) {
                            str8 = null;
                        }
                        if (i10 != 0) {
                            str15 = null;
                        } else {
                            str15 = str4;
                        }
                        if ((i4 & 64) != 0) {
                            textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                            i14 &= -3670017;
                        }
                        if (i12 != 0) {
                            z4 = false;
                        } else {
                            z4 = z;
                        }
                        if (i15 != 0) {
                            str9 = null;
                        }
                        if (i17 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(12);
                                gapComposerH.q(objX);
                            }
                            function2 = (Function0) objX;
                        } else {
                            function2 = function0;
                        }
                        String str11111114 = str6;
                        modifier4 = dTFunctionNameModifier;
                        f2 = 0.9f;
                        str16 = str11111114;
                    }
                    i20 = i14;
                    gapComposerH.a0();
                    OpaqueKey opaqueKey119 = ComposerKt.f7940a;
                    float f1111116 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                    Dp.Companion companion119 = Dp.f11004c;
                    if (z4) {
                        gapComposerH.L(-1816982425);
                        f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1816926749);
                        f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                        gapComposerH.Z(false);
                    }
                    float f1111117 = f4;
                    textStyle4 = textStyle2;
                    Modifier modifierM111118 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f1111116 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f1111117, LVAppDesignKitTheme.l(gapComposerH).f48415c, f1111117, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                    Arrangement$Top$1 arrangement$Top$119 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$119, Alignment.Companion.n, gapComposerH, 0);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierM111118);
                    ComposeUiNode.b0.getClass();
                    function4 = ComposeUiNode.Companion.f9641b;
                    modifier5 = modifier4;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function4);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    gapComposerH.L(826392783);
                    gapComposerH.Z(false);
                    if (str16 != null) {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    } else {
                        gapComposer = gapComposerH;
                        z5 = false;
                        gapComposer.L(827403631);
                        gapComposer.Z(false);
                    }
                    if (str8 == null) {
                        gapComposer.L(827442287);
                        gapComposer.Z(z5);
                        textStyle5 = textStyle4;
                        str17 = str8;
                    } else {
                        DTFunctionNameModifier dTFunctionNameModifierI119 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                        if (z4) {
                            gapComposer.L(-1121329229);
                            f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                            gapComposer.Z(z5);
                        } else {
                            gapComposer.L(-1121230153);
                            f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                            gapComposer.Z(z5);
                        }
                        Modifier modifierM111119 = PaddingKt.m(dTFunctionNameModifierI119, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                        if (str15 != null) {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        } else {
                            modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                        }
                        textStyle5 = textStyle4;
                        str17 = str8;
                        TextKt.c(str17, modifierM111119.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                        gapComposer.Z(false);
                    }
                    function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                    gapComposer.Z(true);
                    modifier3 = modifier5;
                    str10 = str16;
                    str13 = str15;
                    z3 = z4;
                    str12 = str7;
                    function1 = function2;
                    str14 = str17;
                    str11 = str9;
                    textStyle3 = textStyle5;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    z3 = z;
                    str10 = str6;
                    str11 = str9;
                    str12 = str7;
                    modifier3 = modifier2;
                    str13 = str4;
                    function1 = function0;
                    textStyle3 = textStyle2;
                    str14 = str8;
                }
                f3 = f2;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: s50
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i14 = i23 | 905969664;
            str9 = str5;
            i17 = i4 & 1024;
            if (i17 != 0) {
                i18 = 54;
            } else if ((i3 & 6) == 0) {
                if (gapComposerH.y(function0)) {
                    i19 = 4;
                } else {
                    i19 = 2;
                }
                i18 = i3 | i19;
            } else {
                i18 = i3;
            }
            if ((i14 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (gapComposerH.p(i14 & 1, z2)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i22 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i24 != 0) {
                        str6 = null;
                    }
                    if (i6 != 0) {
                        str7 = null;
                    }
                    if (i8 != 0) {
                        str8 = null;
                    }
                    if (i10 != 0) {
                        str15 = null;
                    } else {
                        str15 = str4;
                    }
                    if ((i4 & 64) != 0) {
                        textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                        i14 &= -3670017;
                    }
                    if (i12 != 0) {
                        z4 = false;
                    } else {
                        z4 = z;
                    }
                    if (i15 != 0) {
                        str9 = null;
                    }
                    if (i17 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = new k40(12);
                            gapComposerH.q(objX);
                        }
                        function2 = (Function0) objX;
                    } else {
                        function2 = function0;
                    }
                    String str11111115 = str6;
                    modifier4 = dTFunctionNameModifier;
                    f2 = 0.9f;
                    str16 = str11111115;
                } else {
                    if (i22 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i24 != 0) {
                        str6 = null;
                    }
                    if (i6 != 0) {
                        str7 = null;
                    }
                    if (i8 != 0) {
                        str8 = null;
                    }
                    if (i10 != 0) {
                        str15 = null;
                    } else {
                        str15 = str4;
                    }
                    if ((i4 & 64) != 0) {
                        textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                        i14 &= -3670017;
                    }
                    if (i12 != 0) {
                        z4 = false;
                    } else {
                        z4 = z;
                    }
                    if (i15 != 0) {
                        str9 = null;
                    }
                    if (i17 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = new k40(12);
                            gapComposerH.q(objX);
                        }
                        function2 = (Function0) objX;
                    } else {
                        function2 = function0;
                    }
                    String str11111116 = str6;
                    modifier4 = dTFunctionNameModifier;
                    f2 = 0.9f;
                    str16 = str11111116;
                }
                i20 = i14;
                gapComposerH.a0();
                OpaqueKey opaqueKey1110 = ComposerKt.f7940a;
                float f1111118 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                Dp.Companion companion1110 = Dp.f11004c;
                if (z4) {
                    gapComposerH.L(-1816982425);
                    f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1816926749);
                    f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                    gapComposerH.Z(false);
                }
                float f1111119 = f4;
                textStyle4 = textStyle2;
                Modifier modifierM1111110 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f1111118 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f1111119, LVAppDesignKitTheme.l(gapComposerH).f48415c, f1111119, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                Arrangement$Top$1 arrangement$Top$1110 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1110, Alignment.Companion.n, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierM1111110);
                ComposeUiNode.b0.getClass();
                function4 = ComposeUiNode.Companion.f9641b;
                modifier5 = modifier4;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function4);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                gapComposerH.L(826392783);
                gapComposerH.Z(false);
                if (str16 != null) {
                    gapComposer = gapComposerH;
                    z5 = false;
                    gapComposer.L(827403631);
                    gapComposer.Z(false);
                } else {
                    gapComposer = gapComposerH;
                    z5 = false;
                    gapComposer.L(827403631);
                    gapComposer.Z(false);
                }
                if (str8 == null) {
                    gapComposer.L(827442287);
                    gapComposer.Z(z5);
                    textStyle5 = textStyle4;
                    str17 = str8;
                } else {
                    DTFunctionNameModifier dTFunctionNameModifierI1110 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                    if (z4) {
                        gapComposer.L(-1121329229);
                        f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                        gapComposer.Z(z5);
                    } else {
                        gapComposer.L(-1121230153);
                        f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                        gapComposer.Z(z5);
                    }
                    Modifier modifierM1111111 = PaddingKt.m(dTFunctionNameModifierI1110, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                    if (str15 != null) {
                        modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                    } else {
                        modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                    }
                    textStyle5 = textStyle4;
                    str17 = str8;
                    TextKt.c(str17, modifierM1111111.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                    gapComposer.Z(false);
                }
                function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                gapComposer.Z(true);
                modifier3 = modifier5;
                str10 = str16;
                str13 = str15;
                z3 = z4;
                str12 = str7;
                function1 = function2;
                str14 = str17;
                str11 = str9;
                textStyle3 = textStyle5;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                z3 = z;
                str10 = str6;
                str11 = str9;
                str12 = str7;
                modifier3 = modifier2;
                str13 = str4;
                function1 = function0;
                textStyle3 = textStyle2;
                str14 = str8;
            }
            f3 = f2;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: s50
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i3);
                        LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i23 |= 12582912;
        i14 = i23 | 100663296;
        i15 = i4 & 512;
        if (i15 != 0) {
            if ((805306368 & i2) == 0) {
                str9 = str5;
                if (gapComposerH.K(str9)) {
                    i16 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i16 = 268435456;
                }
                i14 |= i16;
            }
            i17 = i4 & 1024;
            if (i17 != 0) {
                i18 = 54;
            } else if ((i3 & 6) == 0) {
                if (gapComposerH.y(function0)) {
                    i19 = 4;
                } else {
                    i19 = 2;
                }
                i18 = i3 | i19;
            } else {
                i18 = i3;
            }
            if ((i14 & 306783379) == 306783378) {
                z2 = true;
            } else {
                z2 = true;
            }
            if (gapComposerH.p(i14 & 1, z2)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i22 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i24 != 0) {
                        str6 = null;
                    }
                    if (i6 != 0) {
                        str7 = null;
                    }
                    if (i8 != 0) {
                        str8 = null;
                    }
                    if (i10 != 0) {
                        str15 = null;
                    } else {
                        str15 = str4;
                    }
                    if ((i4 & 64) != 0) {
                        textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                        i14 &= -3670017;
                    }
                    if (i12 != 0) {
                        z4 = false;
                    } else {
                        z4 = z;
                    }
                    if (i15 != 0) {
                        str9 = null;
                    }
                    if (i17 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = new k40(12);
                            gapComposerH.q(objX);
                        }
                        function2 = (Function0) objX;
                    } else {
                        function2 = function0;
                    }
                    String str11111117 = str6;
                    modifier4 = dTFunctionNameModifier;
                    f2 = 0.9f;
                    str16 = str11111117;
                } else {
                    if (i22 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i24 != 0) {
                        str6 = null;
                    }
                    if (i6 != 0) {
                        str7 = null;
                    }
                    if (i8 != 0) {
                        str8 = null;
                    }
                    if (i10 != 0) {
                        str15 = null;
                    } else {
                        str15 = str4;
                    }
                    if ((i4 & 64) != 0) {
                        textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                        i14 &= -3670017;
                    }
                    if (i12 != 0) {
                        z4 = false;
                    } else {
                        z4 = z;
                    }
                    if (i15 != 0) {
                        str9 = null;
                    }
                    if (i17 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = new k40(12);
                            gapComposerH.q(objX);
                        }
                        function2 = (Function0) objX;
                    } else {
                        function2 = function0;
                    }
                    String str11111118 = str6;
                    modifier4 = dTFunctionNameModifier;
                    f2 = 0.9f;
                    str16 = str11111118;
                }
                i20 = i14;
                gapComposerH.a0();
                OpaqueKey opaqueKey1111 = ComposerKt.f7940a;
                float f11111110 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                Dp.Companion companion1111 = Dp.f11004c;
                if (z4) {
                    gapComposerH.L(-1816982425);
                    f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1816926749);
                    f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                    gapComposerH.Z(false);
                }
                float f11111111 = f4;
                textStyle4 = textStyle2;
                Modifier modifierM1111112 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f11111110 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f11111111, LVAppDesignKitTheme.l(gapComposerH).f48415c, f11111111, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                Arrangement$Top$1 arrangement$Top$1111 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1111, Alignment.Companion.n, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierM1111112);
                ComposeUiNode.b0.getClass();
                function4 = ComposeUiNode.Companion.f9641b;
                modifier5 = modifier4;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function4);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                gapComposerH.L(826392783);
                gapComposerH.Z(false);
                if (str16 != null) {
                    gapComposer = gapComposerH;
                    z5 = false;
                    gapComposer.L(827403631);
                    gapComposer.Z(false);
                } else {
                    gapComposer = gapComposerH;
                    z5 = false;
                    gapComposer.L(827403631);
                    gapComposer.Z(false);
                }
                if (str8 == null) {
                    gapComposer.L(827442287);
                    gapComposer.Z(z5);
                    textStyle5 = textStyle4;
                    str17 = str8;
                } else {
                    DTFunctionNameModifier dTFunctionNameModifierI1111 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                    if (z4) {
                        gapComposer.L(-1121329229);
                        f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                        gapComposer.Z(z5);
                    } else {
                        gapComposer.L(-1121230153);
                        f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                        gapComposer.Z(z5);
                    }
                    Modifier modifierM1111113 = PaddingKt.m(dTFunctionNameModifierI1111, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                    if (str15 != null) {
                        modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                    } else {
                        modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                    }
                    textStyle5 = textStyle4;
                    str17 = str8;
                    TextKt.c(str17, modifierM1111113.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                    gapComposer.Z(false);
                }
                function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
                gapComposer.Z(true);
                modifier3 = modifier5;
                str10 = str16;
                str13 = str15;
                z3 = z4;
                str12 = str7;
                function1 = function2;
                str14 = str17;
                str11 = str9;
                textStyle3 = textStyle5;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                z3 = z;
                str10 = str6;
                str11 = str9;
                str12 = str7;
                modifier3 = modifier2;
                str13 = str4;
                function1 = function0;
                textStyle3 = textStyle2;
                str14 = str8;
            }
            f3 = f2;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: s50
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i3);
                        LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i14 = i23 | 905969664;
        str9 = str5;
        i17 = i4 & 1024;
        if (i17 != 0) {
            i18 = 54;
        } else if ((i3 & 6) == 0) {
            if (gapComposerH.y(function0)) {
                i19 = 4;
            } else {
                i19 = 2;
            }
            i18 = i3 | i19;
        } else {
            i18 = i3;
        }
        if ((i14 & 306783379) == 306783378) {
            z2 = true;
        } else {
            z2 = true;
        }
        if (gapComposerH.p(i14 & 1, z2)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i22 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i24 != 0) {
                    str6 = null;
                }
                if (i6 != 0) {
                    str7 = null;
                }
                if (i8 != 0) {
                    str8 = null;
                }
                if (i10 != 0) {
                    str15 = null;
                } else {
                    str15 = str4;
                }
                if ((i4 & 64) != 0) {
                    textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                    i14 &= -3670017;
                }
                if (i12 != 0) {
                    z4 = false;
                } else {
                    z4 = z;
                }
                if (i15 != 0) {
                    str9 = null;
                }
                if (i17 != 0) {
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = new k40(12);
                        gapComposerH.q(objX);
                    }
                    function2 = (Function0) objX;
                } else {
                    function2 = function0;
                }
                String str11111119 = str6;
                modifier4 = dTFunctionNameModifier;
                f2 = 0.9f;
                str16 = str11111119;
            } else {
                if (i22 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVCustomBottomSheetContent");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i24 != 0) {
                    str6 = null;
                }
                if (i6 != 0) {
                    str7 = null;
                }
                if (i8 != 0) {
                    str8 = null;
                }
                if (i10 != 0) {
                    str15 = null;
                } else {
                    str15 = str4;
                }
                if ((i4 & 64) != 0) {
                    textStyle2 = LVAppDesignKitTheme.n(gapComposerH).n;
                    i14 &= -3670017;
                }
                if (i12 != 0) {
                    z4 = false;
                } else {
                    z4 = z;
                }
                if (i15 != 0) {
                    str9 = null;
                }
                if (i17 != 0) {
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = new k40(12);
                        gapComposerH.q(objX);
                    }
                    function2 = (Function0) objX;
                } else {
                    function2 = function0;
                }
                String str111111110 = str6;
                modifier4 = dTFunctionNameModifier;
                f2 = 0.9f;
                str16 = str111111110;
            }
            i20 = i14;
            gapComposerH.a0();
            OpaqueKey opaqueKey1112 = ComposerKt.f7940a;
            float f11111112 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
            Dp.Companion companion1112 = Dp.f11004c;
            if (z4) {
                gapComposerH.L(-1816982425);
                f4 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1816926749);
                f4 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                gapComposerH.Z(false);
            }
            float f11111113 = f4;
            textStyle4 = textStyle2;
            Modifier modifierM1111114 = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.b(SizeKt.d(SizeKt.h(SizeKt.v(modifier4, null, 3), Call.Parameters.DEFAULT_CAMERA_ZOOM, f11111112 * f2, 1), 1.0f)), ScrollKt.b(gapComposerH), false, 14), f11111113, LVAppDesignKitTheme.l(gapComposerH).f48415c, f11111113, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            Arrangement$Top$1 arrangement$Top$1112 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1112, Alignment.Companion.n, gapComposerH, 0);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierM1111114);
            ComposeUiNode.b0.getClass();
            function4 = ComposeUiNode.Companion.f9641b;
            modifier5 = modifier4;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(826392783);
            gapComposerH.Z(false);
            if (str16 != null) {
                gapComposer = gapComposerH;
                z5 = false;
                gapComposer.L(827403631);
                gapComposer.Z(false);
            } else {
                gapComposer = gapComposerH;
                z5 = false;
                gapComposer.L(827403631);
                gapComposer.Z(false);
            }
            if (str8 == null) {
                gapComposer.L(827442287);
                gapComposer.Z(z5);
                textStyle5 = textStyle4;
                str17 = str8;
            } else {
                DTFunctionNameModifier dTFunctionNameModifierI1112 = n00.i(gapComposer, 827442288, "LVCustomBottomSheetContent");
                if (z4) {
                    gapComposer.L(-1121329229);
                    f5 = LVAppDesignKitTheme.l(gapComposer).f48417f;
                    gapComposer.Z(z5);
                } else {
                    gapComposer.L(-1121230153);
                    f5 = LVAppDesignKitTheme.d(gapComposer).f48383a;
                    gapComposer.Z(z5);
                }
                Modifier modifierM1111115 = PaddingKt.m(dTFunctionNameModifierI1112, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
                if (str15 != null) {
                    modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                } else {
                    modifierG = n00.g("LVCustomBottomSheetContent", "bottomSheet_subtitle_text");
                }
                textStyle5 = textStyle4;
                str17 = str8;
                TextKt.c(str17, modifierM1111115.o(modifierG), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposer, 0, (i20 << 3) & 29360128, 131068);
                gapComposer.Z(false);
            }
            function3.A(ColumnScopeInstance.f4944a, gapComposer, 54);
            gapComposer.Z(true);
            modifier3 = modifier5;
            str10 = str16;
            str13 = str15;
            z3 = z4;
            str12 = str7;
            function1 = function2;
            str14 = str17;
            str11 = str9;
            textStyle3 = textStyle5;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            z3 = z;
            str10 = str6;
            str11 = str9;
            str12 = str7;
            modifier3 = modifier2;
            str13 = str4;
            function1 = function0;
            textStyle3 = textStyle2;
            str14 = str8;
        }
        f3 = f2;
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: s50
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    LVCustomBottomSheetContentKt.a(modifier3, f3, str10, str12, str14, str13, textStyle3, z3, str11, function1, function3, (Composer) obj, iA, iA2, i4);
                    return Unit.f71739a;
                }
            };
        }
    }
}
