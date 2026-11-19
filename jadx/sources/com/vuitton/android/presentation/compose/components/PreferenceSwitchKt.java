package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchLegalState;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import defpackage.t60;
import defpackage.v40;
import defpackage.x3;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;", "state", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PreferenceSwitchKt {
    /* JADX WARN: Code duplicated, block: B:101:0x0133  */
    /* JADX WARN: Code duplicated, block: B:102:0x0135  */
    /* JADX WARN: Code duplicated, block: B:106:0x013f  */
    /* JADX WARN: Code duplicated, block: B:109:0x0193  */
    /* JADX WARN: Code duplicated, block: B:111:0x019a  */
    /* JADX WARN: Code duplicated, block: B:112:0x019e  */
    /* JADX WARN: Code duplicated, block: B:115:0x01df  */
    /* JADX WARN: Code duplicated, block: B:117:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:118:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:121:0x0255  */
    /* JADX WARN: Code duplicated, block: B:122:0x0258  */
    /* JADX WARN: Code duplicated, block: B:125:0x026c  */
    /* JADX WARN: Code duplicated, block: B:126:0x026e  */
    /* JADX WARN: Code duplicated, block: B:132:0x027d  */
    /* JADX WARN: Code duplicated, block: B:135:0x029c  */
    /* JADX WARN: Code duplicated, block: B:136:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:139:0x032f  */
    /* JADX WARN: Code duplicated, block: B:140:0x035f  */
    /* JADX WARN: Code duplicated, block: B:142:0x036c  */
    /* JADX WARN: Code duplicated, block: B:144:0x0386  */
    /* JADX WARN: Code duplicated, block: B:147:0x0399  */
    /* JADX WARN: Code duplicated, block: B:149:0x039e  */
    /* JADX WARN: Code duplicated, block: B:151:0x03a3  */
    /* JADX WARN: Code duplicated, block: B:153:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:156:0x03b3  */
    /* JADX WARN: Code duplicated, block: B:158:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x0080  */
    /* JADX WARN: Code duplicated, block: B:46:0x0086  */
    /* JADX WARN: Code duplicated, block: B:47:0x0089  */
    /* JADX WARN: Code duplicated, block: B:51:0x0091  */
    /* JADX WARN: Code duplicated, block: B:53:0x0097  */
    /* JADX WARN: Code duplicated, block: B:54:0x009a  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:71:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:75:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:76:0x00de  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:82:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:86:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:89:0x0107  */
    /* JADX WARN: Code duplicated, block: B:90:0x0109  */
    /* JADX WARN: Code duplicated, block: B:94:0x0114 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:95:0x0116  */
    /* JADX WARN: Code duplicated, block: B:96:0x0119 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:97:0x011b  */
    public static final void a(Modifier modifier, String str, String str2, boolean z, boolean z2, boolean z3, String str3, Function1 function1, Composer composer, int i2, int i3) {
        int i4;
        boolean z4;
        int i5;
        String str4;
        int i6;
        int i7;
        boolean z5;
        Modifier modifier2;
        boolean z6;
        String str5;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z7;
        String str6;
        boolean z8;
        Object objX;
        LVSwitchLegalState lVSwitchLegalState;
        MutableState mutableState;
        int i8;
        boolean z9;
        boolean z10;
        Object objX2;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function5;
        Modifier modifier3;
        Function2 function6;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        String str7;
        boolean z11;
        boolean z12;
        Object objX3;
        String str8;
        boolean z13;
        String str9;
        int i9;
        int i10;
        int i11;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "PreferenceSwitch");
        }
        str.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-1857521016);
        Applier applier = gapComposerH.f7976a;
        int i12 = i3 & 1;
        if (i12 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(str2) ? 256 : 128;
        }
        int i13 = i3 & 8;
        if (i13 == 0) {
            if ((i2 & 3072) == 0) {
                z4 = z;
                i4 |= gapComposerH.b(z4) ? 2048 : 1024;
            }
            if ((i2 & 24576) == 0) {
                if (gapComposerH.b(z2)) {
                    i11 = 16384;
                } else {
                    i11 = 8192;
                }
                i4 |= i11;
            }
            if ((196608 & i2) == 0) {
                if (gapComposerH.b(z3)) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i4 |= i10;
            }
            i5 = i3 & 64;
            if (i5 != 0) {
                i4 |= 1572864;
                str4 = str3;
            } else {
                str4 = str3;
                if ((i2 & 1572864) == 0) {
                    if (gapComposerH.K(str4)) {
                        i6 = 1048576;
                    } else {
                        i6 = 524288;
                    }
                    i4 |= i6;
                }
            }
            if ((i2 & 12582912) == 0) {
                if (gapComposerH.y(function1)) {
                    i9 = 8388608;
                } else {
                    i9 = 4194304;
                }
                i4 |= i9;
            }
            i7 = i4;
            if ((i7 & 4793491) != 4793490) {
                z5 = true;
            } else {
                z5 = false;
            }
            if (gapComposerH.p(i7 & 1, z5)) {
                if (i12 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("PreferenceSwitch");
                }
                if (i13 != 0) {
                    z7 = true;
                } else {
                    z7 = z4;
                }
                if (i5 != 0) {
                    str6 = null;
                } else {
                    str6 = str4;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                if ((i7 & 57344) == 16384) {
                    z8 = true;
                } else {
                    z8 = false;
                }
                objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (z8 || objX == composer$Companion$Empty$1) {
                    if (z2) {
                        lVSwitchLegalState = LVSwitchLegalState.ACCEPTED;
                    } else {
                        if (z2) {
                            v40.g();
                            return;
                        }
                        lVSwitchLegalState = LVSwitchLegalState.DENIED;
                    }
                    objX = SnapshotStateKt.g(lVSwitchLegalState);
                    gapComposerH.q(objX);
                }
                mutableState = (MutableState) objX;
                boolean zK = gapComposerH.K(mutableState);
                i8 = i7 & 29360128;
                if (i8 == 8388608) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                z10 = zK | z9;
                objX2 = gapComposerH.x();
                if (z10 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new x3(mutableState, function1, 12);
                    gapComposerH.q(objX2);
                }
                Modifier modifierM = PaddingKt.m(SemanticsModifierKt.b(dTFunctionNameModifier, true, (Function1) objX2), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function4);
                function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                modifier3 = dTFunctionNameModifier;
                function6 = ComposeUiNode.Companion.d;
                Modifier modifierE = n00.e(gapComposerH, modifierC, function6, "PreferenceSwitch", 1.0f);
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierE);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                Updater.c(gapComposerH, modifierC2, function6);
                int i14 = i7 >> 3;
                TextKt.c(str, ModifierExtKt.e(RowScopeInstance.f5040a.a(new DTFunctionNameModifier("PreferenceSwitch"), 0.8f, true), "cbdtSettings_preference_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48428i, gapComposerH, i14 & 14, 0, 131068);
                gapComposerH = gapComposerH;
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("PreferenceSwitch");
                if (((LVSwitchLegalState) mutableState.getF10755b()) == LVSwitchLegalState.ACCEPTED) {
                    str7 = "cbdtSettings_preference_button_selected";
                } else {
                    str7 = "cbdtSettings_preference_button";
                }
                Modifier modifierA = com.vuitton.android.presentation.extensions.ModifierExtKt.a(dTFunctionNameModifier2, str7, null, 6);
                LVSwitchLegalState lVSwitchLegalState2 = (LVSwitchLegalState) mutableState.getF10755b();
                boolean zK2 = gapComposerH.K(mutableState);
                if (i8 == 8388608) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                z12 = zK2 | z11;
                objX3 = gapComposerH.x();
                if (z12 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new PreferenceSwitchKt$PreferenceSwitch$2$1$1$1(mutableState, function1);
                    gapComposerH.q(objX3);
                }
                boolean z14 = z7;
                LVSwitchKt.c(modifierA, lVSwitchLegalState2, z14, (Function1) ((KFunction) objX3), gapComposerH, i14 & 896, 0);
                gapComposerH.Z(true);
                if (str2 == null) {
                    gapComposerH.L(-1250158461);
                    z13 = false;
                    gapComposerH.Z(false);
                    str8 = "PreferenceSwitch";
                } else {
                    gapComposerH.L(-1250158460);
                    str8 = "PreferenceSwitch";
                    TextKt.c(str2, PaddingKt.m(new DTFunctionNameModifier("PreferenceSwitch"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48420j, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131068);
                    gapComposerH = gapComposerH;
                    z13 = false;
                    gapComposerH.Z(false);
                }
                str9 = str8;
                SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier(str9), LVAppDesignKitTheme.l(gapComposerH).f48417f));
                if (str6 != null) {
                    GapComposer gapComposer = gapComposerH;
                    String str10 = str6;
                    LVDisclaimerKt.a(o60.c(gapComposerH, -1249716803, str9, 1.0f), str10, null, 0L, null, null, gapComposer, ((i7 >> 15) & 112) | 6, 60);
                    gapComposerH = gapComposer;
                    str4 = str10;
                    cj.x(new DTFunctionNameModifier(str9), LVAppDesignKitTheme.l(gapComposerH).f48417f, gapComposerH, z13);
                } else {
                    str4 = str6;
                    gapComposerH.L(-1249544784);
                    gapComposerH.Z(z13);
                }
                if (z3) {
                    gapComposerH.L(-1249509196);
                    DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 3);
                    gapComposerH.Z(z13);
                } else {
                    gapComposerH.L(-1249420784);
                    gapComposerH.Z(z13);
                }
                gapComposerH.Z(true);
                z6 = z14;
                modifier2 = modifier3;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                z6 = z4;
            }
            str5 = str4;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new t60(modifier2, str, str2, z6, z2, z3, str5, function1, i2, i3);
            }
        }
        i4 |= 3072;
        z4 = z;
        if ((i2 & 24576) == 0) {
            if (gapComposerH.b(z2)) {
                i11 = 16384;
            } else {
                i11 = 8192;
            }
            i4 |= i11;
        }
        if ((196608 & i2) == 0) {
            if (gapComposerH.b(z3)) {
                i10 = 131072;
            } else {
                i10 = 65536;
            }
            i4 |= i10;
        }
        i5 = i3 & 64;
        if (i5 != 0) {
            i4 |= 1572864;
            str4 = str3;
        } else {
            str4 = str3;
            if ((i2 & 1572864) == 0) {
                if (gapComposerH.K(str4)) {
                    i6 = 1048576;
                } else {
                    i6 = 524288;
                }
                i4 |= i6;
            }
        }
        if ((i2 & 12582912) == 0) {
            if (gapComposerH.y(function1)) {
                i9 = 8388608;
            } else {
                i9 = 4194304;
            }
            i4 |= i9;
        }
        i7 = i4;
        if ((i7 & 4793491) != 4793490) {
            z5 = true;
        } else {
            z5 = false;
        }
        if (gapComposerH.p(i7 & 1, z5)) {
            if (i12 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("PreferenceSwitch");
            }
            if (i13 != 0) {
                z7 = true;
            } else {
                z7 = z4;
            }
            if (i5 != 0) {
                str6 = null;
            } else {
                str6 = str4;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            if ((i7 & 57344) == 16384) {
                z8 = true;
            } else {
                z8 = false;
            }
            objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z8) {
                if (z2) {
                    lVSwitchLegalState = LVSwitchLegalState.ACCEPTED;
                } else {
                    if (z2) {
                        v40.g();
                        return;
                    }
                    lVSwitchLegalState = LVSwitchLegalState.DENIED;
                }
                objX = SnapshotStateKt.g(lVSwitchLegalState);
                gapComposerH.q(objX);
            } else {
                if (z2) {
                    lVSwitchLegalState = LVSwitchLegalState.ACCEPTED;
                } else {
                    if (z2) {
                        v40.g();
                        return;
                    }
                    lVSwitchLegalState = LVSwitchLegalState.DENIED;
                }
                objX = SnapshotStateKt.g(lVSwitchLegalState);
                gapComposerH.q(objX);
            }
            mutableState = (MutableState) objX;
            boolean zK3 = gapComposerH.K(mutableState);
            i8 = i7 & 29360128;
            if (i8 == 8388608) {
                z9 = true;
            } else {
                z9 = false;
            }
            z10 = zK3 | z9;
            objX2 = gapComposerH.x();
            if (z10) {
                objX2 = new x3(mutableState, function1, 12);
                gapComposerH.q(objX2);
            } else {
                objX2 = new x3(mutableState, function1, 12);
                gapComposerH.q(objX2);
            }
            Modifier modifierM2 = PaddingKt.m(SemanticsModifierKt.b(dTFunctionNameModifier, true, (Function1) objX2), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, gapComposerH, 0);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierM2);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function4);
            function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            modifier3 = dTFunctionNameModifier;
            function6 = ComposeUiNode.Companion.d;
            Modifier modifierE2 = n00.e(gapComposerH, modifierC, function6, "PreferenceSwitch", 1.0f);
            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierE2);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            int i15 = i7 >> 3;
            TextKt.c(str, ModifierExtKt.e(RowScopeInstance.f5040a.a(new DTFunctionNameModifier("PreferenceSwitch"), 0.8f, true), "cbdtSettings_preference_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48428i, gapComposerH, i15 & 14, 0, 131068);
            gapComposerH = gapComposerH;
            DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("PreferenceSwitch");
            if (((LVSwitchLegalState) mutableState.getF10755b()) == LVSwitchLegalState.ACCEPTED) {
                str7 = "cbdtSettings_preference_button_selected";
            } else {
                str7 = "cbdtSettings_preference_button";
            }
            Modifier modifierA2 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(dTFunctionNameModifier3, str7, null, 6);
            LVSwitchLegalState lVSwitchLegalState3 = (LVSwitchLegalState) mutableState.getF10755b();
            boolean zK4 = gapComposerH.K(mutableState);
            if (i8 == 8388608) {
                z11 = true;
            } else {
                z11 = false;
            }
            z12 = zK4 | z11;
            objX3 = gapComposerH.x();
            if (z12) {
                objX3 = new PreferenceSwitchKt$PreferenceSwitch$2$1$1$1(mutableState, function1);
                gapComposerH.q(objX3);
            } else {
                objX3 = new PreferenceSwitchKt$PreferenceSwitch$2$1$1$1(mutableState, function1);
                gapComposerH.q(objX3);
            }
            boolean z15 = z7;
            LVSwitchKt.c(modifierA2, lVSwitchLegalState3, z15, (Function1) ((KFunction) objX3), gapComposerH, i15 & 896, 0);
            gapComposerH.Z(true);
            if (str2 == null) {
                gapComposerH.L(-1250158461);
                z13 = false;
                gapComposerH.Z(false);
                str8 = "PreferenceSwitch";
            } else {
                gapComposerH.L(-1250158460);
                str8 = "PreferenceSwitch";
                TextKt.c(str2, PaddingKt.m(new DTFunctionNameModifier("PreferenceSwitch"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48420j, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131068);
                gapComposerH = gapComposerH;
                z13 = false;
                gapComposerH.Z(false);
            }
            str9 = str8;
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier(str9), LVAppDesignKitTheme.l(gapComposerH).f48417f));
            if (str6 != null) {
                GapComposer gapComposer2 = gapComposerH;
                String str11 = str6;
                LVDisclaimerKt.a(o60.c(gapComposerH, -1249716803, str9, 1.0f), str11, null, 0L, null, null, gapComposer2, ((i7 >> 15) & 112) | 6, 60);
                gapComposerH = gapComposer2;
                str4 = str11;
                cj.x(new DTFunctionNameModifier(str9), LVAppDesignKitTheme.l(gapComposerH).f48417f, gapComposerH, z13);
            } else {
                str4 = str6;
                gapComposerH.L(-1249544784);
                gapComposerH.Z(z13);
            }
            if (z3) {
                gapComposerH.L(-1249509196);
                DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 3);
                gapComposerH.Z(z13);
            } else {
                gapComposerH.L(-1249420784);
                gapComposerH.Z(z13);
            }
            gapComposerH.Z(true);
            z6 = z15;
            modifier2 = modifier3;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
            z6 = z4;
        }
        str5 = str4;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new t60(modifier2, str, str2, z6, z2, z3, str5, function1, i2, i3);
        }
    }

    public static final void b(Function1 function1, MutableState mutableState, LVSwitchLegalState lVSwitchLegalState) {
        LVSwitchLegalState lVSwitchLegalState2 = LVSwitchLegalState.ACCEPTED;
        mutableState.setValue(lVSwitchLegalState == lVSwitchLegalState2 ? LVSwitchLegalState.DENIED : lVSwitchLegalState2);
        function1.invoke(Boolean.valueOf(((LVSwitchLegalState) mutableState.getF10755b()) == lVSwitchLegalState2));
    }
}
