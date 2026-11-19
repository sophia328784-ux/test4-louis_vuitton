package com.vuitton.android.presentation.screen.authentication.welcome.components;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetKt;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetState;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginViewState;
import com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeViewState;
import defpackage.a;
import defpackage.b51;
import defpackage.b90;
import defpackage.r30;
import defpackage.r61;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WelcomeComposableKt {
    /* JADX WARN: Code duplicated, block: B:100:0x016d  */
    /* JADX WARN: Code duplicated, block: B:104:0x017e  */
    /* JADX WARN: Code duplicated, block: B:106:0x0184  */
    /* JADX WARN: Code duplicated, block: B:108:0x0197  */
    /* JADX WARN: Code duplicated, block: B:110:0x019d  */
    /* JADX WARN: Code duplicated, block: B:112:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:114:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:116:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:118:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:120:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:123:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:124:0x01da  */
    /* JADX WARN: Code duplicated, block: B:128:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:131:0x020b  */
    /* JADX WARN: Code duplicated, block: B:132:0x020e  */
    /* JADX WARN: Code duplicated, block: B:136:0x0217  */
    /* JADX WARN: Code duplicated, block: B:140:0x0229  */
    /* JADX WARN: Code duplicated, block: B:144:0x0234  */
    /* JADX WARN: Code duplicated, block: B:146:0x027f  */
    /* JADX WARN: Code duplicated, block: B:149:0x0297  */
    /* JADX WARN: Code duplicated, block: B:151:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x005c  */
    /* JADX WARN: Code duplicated, block: B:27:0x0064  */
    /* JADX WARN: Code duplicated, block: B:29:0x006c  */
    /* JADX WARN: Code duplicated, block: B:30:0x006f  */
    /* JADX WARN: Code duplicated, block: B:34:0x0076  */
    /* JADX WARN: Code duplicated, block: B:35:0x007c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0084  */
    /* JADX WARN: Code duplicated, block: B:38:0x0087  */
    /* JADX WARN: Code duplicated, block: B:42:0x008e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0095  */
    /* JADX WARN: Code duplicated, block: B:45:0x009d  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:50:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:53:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:58:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:59:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:62:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:69:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:70:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:77:0x010f  */
    /* JADX WARN: Code duplicated, block: B:80:0x0119  */
    /* JADX WARN: Code duplicated, block: B:82:0x0120  */
    /* JADX WARN: Code duplicated, block: B:83:0x0123  */
    /* JADX WARN: Code duplicated, block: B:86:0x0129  */
    /* JADX WARN: Code duplicated, block: B:88:0x012f  */
    /* JADX WARN: Code duplicated, block: B:90:0x0142  */
    /* JADX WARN: Code duplicated, block: B:92:0x0148  */
    /* JADX WARN: Code duplicated, block: B:94:0x014e  */
    /* JADX WARN: Code duplicated, block: B:96:0x0161  */
    /* JADX WARN: Code duplicated, block: B:98:0x0167  */
    public static final void a(Modifier modifier, SocialLoginBottomSheetState socialLoginBottomSheetState, WelcomeViewState welcomeViewState, boolean z, Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4, Function0 function5, Composer composer, int i2, int i3) {
        boolean z2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        Function0 function6;
        int i12;
        int i13;
        Modifier modifier2;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        boolean z3;
        GapComposer gapComposer;
        Function0 function7;
        Function0 function8;
        Function0 function9;
        Function0 function10;
        boolean z4;
        Modifier modifier3;
        Function0 function11;
        Function0 function12;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z5;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i22;
        Function0 function13;
        int i23;
        Function0 function14;
        int i24;
        Function0 function15;
        Function0 function16;
        boolean z6;
        Object objX;
        int i25;
        boolean z7;
        Object objX2;
        boolean z8;
        Object objX3;
        Object objX4;
        Object objX5;
        Object objX6;
        Object objX7;
        Object objX8;
        Object objX9;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "WelcomeComposable");
        }
        socialLoginBottomSheetState.getClass();
        welcomeViewState.getClass();
        GapComposer gapComposerH = composer.h(-316892523);
        int i26 = i2 | 6 | (gapComposerH.K(socialLoginBottomSheetState) ? 32 : 16) | (gapComposerH.y(welcomeViewState) ? 256 : 128);
        int i27 = i3 & 8;
        if (i27 == 0) {
            if ((i2 & 3072) == 0) {
                z2 = z;
                i26 |= gapComposerH.b(z2) ? 2048 : 1024;
            }
            i4 = i26 | 24576;
            i5 = i3 & 32;
            if (i5 != 0) {
                i7 = i26 | 221184;
            } else {
                if (gapComposerH.y(function0)) {
                    i6 = 131072;
                } else {
                    i6 = 65536;
                }
                i7 = i4 | i6;
            }
            i8 = i3 & 64;
            if (i8 != 0) {
                i10 = i7 | 1572864;
            } else {
                if (gapComposerH.y(function1)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i10 = i7 | i9;
            }
            i11 = i3 & 128;
            if (i11 != 0) {
                i13 = i10 | 12582912;
                function6 = function2;
            } else {
                function6 = function2;
                if (gapComposerH.y(function6)) {
                    i12 = 8388608;
                } else {
                    i12 = 4194304;
                }
                i13 = i10 | i12;
            }
            modifier2 = modifierE;
            i14 = i3 & 256;
            if (i14 != 0) {
                i16 = i13 | 100663296;
            } else {
                if (gapComposerH.y(function3)) {
                    i15 = 67108864;
                } else {
                    i15 = 33554432;
                }
                i16 = i13 | i15;
            }
            i17 = i3 & 512;
            if (i17 != 0) {
                i19 = i16 | 805306368;
            } else {
                if (gapComposerH.y(function4)) {
                    i18 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i18 = 268435456;
                }
                i19 = i16 | i18;
            }
            i20 = i3 & 1024;
            if (i20 != 0) {
                i21 = 6;
            } else if (gapComposerH.y(function5)) {
                i21 = 4;
            } else {
                i21 = 2;
            }
            if ((i19 & 306783379) == 306783378 || (i21 & 3) != 2) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i19 & 1, z3)) {
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("WelcomeComposable");
                if (i27 != 0) {
                    z5 = false;
                } else {
                    z5 = z2;
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i5 != 0) {
                    objX9 = gapComposerH.x();
                    if (objX9 == composer$Companion$Empty$1) {
                        objX9 = new b51(25);
                        gapComposerH.q(objX9);
                    }
                    function13 = (Function0) objX9;
                    i22 = 6;
                } else {
                    i22 = 6;
                    function13 = function0;
                }
                if (i8 != 0) {
                    objX8 = gapComposerH.x();
                    if (objX8 == composer$Companion$Empty$1) {
                        objX8 = new b51(26);
                        gapComposerH.q(objX8);
                    }
                    function14 = (Function0) objX8;
                    i23 = i20;
                } else {
                    i23 = i20;
                    function14 = function1;
                }
                if (i11 != 0) {
                    objX7 = gapComposerH.x();
                    if (objX7 == composer$Companion$Empty$1) {
                        objX7 = new b51(27);
                        gapComposerH.q(objX7);
                    }
                    function6 = (Function0) objX7;
                }
                Function0 function17 = function6;
                if (i14 != 0) {
                    objX6 = gapComposerH.x();
                    if (objX6 == composer$Companion$Empty$1) {
                        objX6 = new b51(28);
                        gapComposerH.q(objX6);
                    }
                    int i28 = i21;
                    function15 = (Function0) objX6;
                    i24 = i28;
                } else {
                    i24 = i21;
                    function15 = function3;
                }
                if (i17 != 0) {
                    objX5 = gapComposerH.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new b51(29);
                        gapComposerH.q(objX5);
                    }
                    function9 = (Function0) objX5;
                } else {
                    function9 = function4;
                }
                if (i23 != 0) {
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new r61(0);
                        gapComposerH.q(objX4);
                    }
                    function16 = (Function0) objX4;
                } else {
                    function16 = function5;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Unit unit = Unit.f71739a;
                int i29 = i22;
                if ((i19 & 1879048192) == 536870912) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                objX = gapComposerH.x();
                if (z6 || objX == composer$Companion$Empty$1) {
                    objX = new WelcomeComposableKt$WelcomeComposable$7$1(function9, null);
                    gapComposerH.q(objX);
                }
                EffectsKt.e(gapComposerH, unit, (Function2) objX);
                gapComposerH.L(-205956787);
                gapComposerH.Z(false);
                SocialLoginViewState socialLoginViewState = (SocialLoginViewState) socialLoginBottomSheetState.f54154b.getF10755b();
                SnackbarHostState snackbarHostState = socialLoginBottomSheetState.f54158h;
                i25 = i19 & 112;
                if (i25 == 32) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                objX2 = gapComposerH.x();
                if (z7 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new r30(socialLoginBottomSheetState, 2);
                    gapComposerH.q(objX2);
                }
                Function0 function18 = (Function0) objX2;
                z8 = i25 == 32;
                objX3 = gapComposerH.x();
                if (z8 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new r30(socialLoginBottomSheetState, 3);
                    gapComposerH.q(objX3);
                }
                int i30 = i19 >> 3;
                int i31 = i19 << 3;
                WelcomeScreenKt.b(dTFunctionNameModifier, welcomeViewState, socialLoginViewState, z5, function18, (Function0) objX3, function14, function13, function17, function15, snackbarHostState, function16, gapComposerH, i29 | (i30 & 112) | (i19 & 7168) | (3670016 & i19) | ((i19 << 6) & 29360128) | (234881024 & i31) | (i31 & 1879048192), (i24 << 3) & 112, 0);
                gapComposer = gapComposerH;
                SocialLoginBottomSheetKt.a(socialLoginBottomSheetState, gapComposer, i30 & 14);
                modifier3 = dTFunctionNameModifier;
                z4 = z5;
                function12 = function14;
                function7 = function13;
                function11 = function17;
                function8 = function15;
                function10 = function16;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                function7 = function0;
                function8 = function3;
                function9 = function4;
                function10 = function5;
                z4 = z2;
                modifier3 = modifier2;
                function11 = function6;
                function12 = function1;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new b90(modifier3, socialLoginBottomSheetState, welcomeViewState, z4, function7, function12, function11, function8, function9, function10, i2, i3);
            }
        }
        i26 |= 3072;
        z2 = z;
        i4 = i26 | 24576;
        i5 = i3 & 32;
        if (i5 != 0) {
            i7 = i26 | 221184;
        } else {
            if (gapComposerH.y(function0)) {
                i6 = 131072;
            } else {
                i6 = 65536;
            }
            i7 = i4 | i6;
        }
        i8 = i3 & 64;
        if (i8 != 0) {
            i10 = i7 | 1572864;
        } else {
            if (gapComposerH.y(function1)) {
                i9 = 1048576;
            } else {
                i9 = 524288;
            }
            i10 = i7 | i9;
        }
        i11 = i3 & 128;
        if (i11 != 0) {
            i13 = i10 | 12582912;
            function6 = function2;
        } else {
            function6 = function2;
            if (gapComposerH.y(function6)) {
                i12 = 8388608;
            } else {
                i12 = 4194304;
            }
            i13 = i10 | i12;
        }
        modifier2 = modifierE;
        i14 = i3 & 256;
        if (i14 != 0) {
            i16 = i13 | 100663296;
        } else {
            if (gapComposerH.y(function3)) {
                i15 = 67108864;
            } else {
                i15 = 33554432;
            }
            i16 = i13 | i15;
        }
        i17 = i3 & 512;
        if (i17 != 0) {
            i19 = i16 | 805306368;
        } else {
            if (gapComposerH.y(function4)) {
                i18 = PKIFailureInfo.duplicateCertReq;
            } else {
                i18 = 268435456;
            }
            i19 = i16 | i18;
        }
        i20 = i3 & 1024;
        if (i20 != 0) {
            i21 = 6;
        } else if (gapComposerH.y(function5)) {
            i21 = 4;
        } else {
            i21 = 2;
        }
        if ((i19 & 306783379) == 306783378) {
            z3 = true;
        } else {
            z3 = true;
        }
        if (gapComposerH.p(i19 & 1, z3)) {
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("WelcomeComposable");
            if (i27 != 0) {
                z5 = false;
            } else {
                z5 = z2;
            }
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i5 != 0) {
                objX9 = gapComposerH.x();
                if (objX9 == composer$Companion$Empty$1) {
                    objX9 = new b51(25);
                    gapComposerH.q(objX9);
                }
                function13 = (Function0) objX9;
                i22 = 6;
            } else {
                i22 = 6;
                function13 = function0;
            }
            if (i8 != 0) {
                objX8 = gapComposerH.x();
                if (objX8 == composer$Companion$Empty$1) {
                    objX8 = new b51(26);
                    gapComposerH.q(objX8);
                }
                function14 = (Function0) objX8;
                i23 = i20;
            } else {
                i23 = i20;
                function14 = function1;
            }
            if (i11 != 0) {
                objX7 = gapComposerH.x();
                if (objX7 == composer$Companion$Empty$1) {
                    objX7 = new b51(27);
                    gapComposerH.q(objX7);
                }
                function6 = (Function0) objX7;
            }
            Function0 function19 = function6;
            if (i14 != 0) {
                objX6 = gapComposerH.x();
                if (objX6 == composer$Companion$Empty$1) {
                    objX6 = new b51(28);
                    gapComposerH.q(objX6);
                }
                int i210 = i21;
                function15 = (Function0) objX6;
                i24 = i210;
            } else {
                i24 = i21;
                function15 = function3;
            }
            if (i17 != 0) {
                objX5 = gapComposerH.x();
                if (objX5 == composer$Companion$Empty$1) {
                    objX5 = new b51(29);
                    gapComposerH.q(objX5);
                }
                function9 = (Function0) objX5;
            } else {
                function9 = function4;
            }
            if (i23 != 0) {
                objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new r61(0);
                    gapComposerH.q(objX4);
                }
                function16 = (Function0) objX4;
            } else {
                function16 = function5;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            Unit unit2 = Unit.f71739a;
            int i211 = i22;
            if ((i19 & 1879048192) == 536870912) {
                z6 = true;
            } else {
                z6 = false;
            }
            objX = gapComposerH.x();
            if (z6) {
                objX = new WelcomeComposableKt$WelcomeComposable$7$1(function9, null);
                gapComposerH.q(objX);
            } else {
                objX = new WelcomeComposableKt$WelcomeComposable$7$1(function9, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit2, (Function2) objX);
            gapComposerH.L(-205956787);
            gapComposerH.Z(false);
            SocialLoginViewState socialLoginViewState2 = (SocialLoginViewState) socialLoginBottomSheetState.f54154b.getF10755b();
            SnackbarHostState snackbarHostState2 = socialLoginBottomSheetState.f54158h;
            i25 = i19 & 112;
            if (i25 == 32) {
                z7 = true;
            } else {
                z7 = false;
            }
            objX2 = gapComposerH.x();
            if (z7) {
                objX2 = new r30(socialLoginBottomSheetState, 2);
                gapComposerH.q(objX2);
            } else {
                objX2 = new r30(socialLoginBottomSheetState, 2);
                gapComposerH.q(objX2);
            }
            Function0 function110 = (Function0) objX2;
            if (i25 == 32) {
            }
            objX3 = gapComposerH.x();
            if (z8) {
                objX3 = new r30(socialLoginBottomSheetState, 3);
                gapComposerH.q(objX3);
            } else {
                objX3 = new r30(socialLoginBottomSheetState, 3);
                gapComposerH.q(objX3);
            }
            int i32 = i19 >> 3;
            int i33 = i19 << 3;
            WelcomeScreenKt.b(dTFunctionNameModifier2, welcomeViewState, socialLoginViewState2, z5, function110, (Function0) objX3, function14, function13, function19, function15, snackbarHostState2, function16, gapComposerH, i211 | (i32 & 112) | (i19 & 7168) | (3670016 & i19) | ((i19 << 6) & 29360128) | (234881024 & i33) | (i33 & 1879048192), (i24 << 3) & 112, 0);
            gapComposer = gapComposerH;
            SocialLoginBottomSheetKt.a(socialLoginBottomSheetState, gapComposer, i32 & 14);
            modifier3 = dTFunctionNameModifier2;
            z4 = z5;
            function12 = function14;
            function7 = function13;
            function11 = function19;
            function8 = function15;
            function10 = function16;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            function7 = function0;
            function8 = function3;
            function9 = function4;
            function10 = function5;
            z4 = z2;
            modifier3 = modifier2;
            function11 = function6;
            function12 = function1;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b90(modifier3, socialLoginBottomSheetState, welcomeViewState, z4, function7, function12, function11, function8, function9, function10, i2, i3);
        }
    }
}
