package com.vuitton.android.designkit.components.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtonKt;
import defpackage.ai;
import defpackage.cj;
import defpackage.ky;
import defpackage.n60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"components"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVRadioButtonBlockKt {
    /* JADX WARN: Code duplicated, block: B:100:0x018d  */
    /* JADX WARN: Code duplicated, block: B:103:0x019a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:104:0x019c  */
    /* JADX WARN: Code duplicated, block: B:107:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:109:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:110:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:113:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:116:0x0267  */
    /* JADX WARN: Code duplicated, block: B:118:0x026e  */
    /* JADX WARN: Code duplicated, block: B:119:0x0272  */
    /* JADX WARN: Code duplicated, block: B:122:0x0286  */
    /* JADX WARN: Code duplicated, block: B:123:0x0289  */
    /* JADX WARN: Code duplicated, block: B:126:0x0291  */
    /* JADX WARN: Code duplicated, block: B:127:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:130:0x0307  */
    /* JADX WARN: Code duplicated, block: B:132:0x030f  */
    /* JADX WARN: Code duplicated, block: B:134:0x0322  */
    /* JADX WARN: Code duplicated, block: B:137:0x0369  */
    /* JADX WARN: Code duplicated, block: B:140:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:142:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:143:0x03bd  */
    /* JADX WARN: Code duplicated, block: B:146:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:148:0x03e7  */
    /* JADX WARN: Code duplicated, block: B:150:0x03eb  */
    /* JADX WARN: Code duplicated, block: B:152:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:154:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:157:0x0405  */
    /* JADX WARN: Code duplicated, block: B:159:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0068  */
    /* JADX WARN: Code duplicated, block: B:38:0x006d  */
    /* JADX WARN: Code duplicated, block: B:40:0x0071  */
    /* JADX WARN: Code duplicated, block: B:42:0x0079  */
    /* JADX WARN: Code duplicated, block: B:43:0x007c  */
    /* JADX WARN: Code duplicated, block: B:47:0x0086  */
    /* JADX WARN: Code duplicated, block: B:48:0x0089  */
    /* JADX WARN: Code duplicated, block: B:51:0x0093  */
    /* JADX WARN: Code duplicated, block: B:53:0x0099  */
    /* JADX WARN: Code duplicated, block: B:54:0x009c  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:60:0x00af  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:64:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:65:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:70:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:73:0x00dd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x00df  */
    /* JADX WARN: Code duplicated, block: B:75:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:78:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:79:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:81:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:82:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:85:0x0101  */
    /* JADX WARN: Code duplicated, block: B:86:0x0104  */
    /* JADX WARN: Code duplicated, block: B:89:0x0130  */
    /* JADX WARN: Code duplicated, block: B:91:0x0139  */
    /* JADX WARN: Code duplicated, block: B:92:0x013d  */
    /* JADX WARN: Code duplicated, block: B:95:0x017d  */
    /* JADX WARN: Code duplicated, block: B:96:0x017f  */
    /* JADX WARN: Code duplicated, block: B:99:0x018b  */
    public static final void a(Modifier modifier, String str, String str2, boolean z, boolean z2, Function1 function1, Function2 function2, String str3, Composer composer, int i2, int i3) {
        int i4;
        String str4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        String str5;
        int i11;
        Modifier modifier2;
        boolean z3;
        GapComposer gapComposer;
        boolean z4;
        Function2 function3;
        String str6;
        Modifier modifier3;
        String str7;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        String str8;
        boolean z5;
        ComposableLambdaImpl composableLambdaImpl;
        String str9;
        BiasAlignment biasAlignment;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Modifier modifier4;
        Function2 function4;
        Function2 function5;
        Function2 function6;
        Function1 function7;
        Function2 function8;
        boolean z6;
        boolean z7;
        boolean z8;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean z9;
        BiasAlignment.Vertical vertical;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        Object objX2;
        int i12;
        int i13;
        int i14;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode3;
        PersistentCompositionLocalMap persistentCompositionLocalMapU3;
        Modifier modifierC3;
        String str10;
        boolean z10;
        long j2;
        boolean z11;
        MeasurePolicy measurePolicyD2;
        int iHashCode4;
        PersistentCompositionLocalMap persistentCompositionLocalMapU4;
        Modifier modifierC4;
        long j3;
        int i15;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVRadioButtonBlock");
        }
        function1.getClass();
        GapComposer gapComposerH = composer.h(129245913);
        Applier applier = gapComposerH.f7976a;
        int i16 = i3 & 1;
        if (i16 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(str) ? 32 : 16;
        }
        int i17 = i3 & 4;
        if (i17 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                str4 = str2;
                i4 |= gapComposerH.K(str4) ? 256 : 128;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                if ((i2 & 3072) == 0) {
                    if (gapComposerH.b(z)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i4 |= i6;
                }
                if (gapComposerH.b(z2)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i8 = i4 | i7;
                if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.y(function1)) {
                        i15 = 131072;
                    } else {
                        i15 = 65536;
                    }
                    i8 |= i15;
                }
                i9 = i8 | 1572864;
                i10 = i3 & 128;
                if (i10 != 0) {
                    if ((12582912 & i2) == 0) {
                        str5 = str3;
                        if (gapComposerH.K(str5)) {
                            i11 = 8388608;
                        } else {
                            i11 = 4194304;
                        }
                        i9 |= i11;
                    }
                    modifier2 = modifierE;
                    if ((i9 & 4793491) != 4793490) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (gapComposerH.p(i9 & 1, z3)) {
                        if (i16 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVRadioButtonBlock");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i17 != 0) {
                            str8 = "";
                        } else {
                            str8 = str4;
                        }
                        if (i5 != 0) {
                            z5 = true;
                        } else {
                            z5 = z;
                        }
                        ComposableSingletons$LVRadioButtonBlockKt.f48237a.getClass();
                        composableLambdaImpl = ComposableSingletons$LVRadioButtonBlockKt.f48238b;
                        if (i10 != 0) {
                            str9 = null;
                        } else {
                            str9 = str5;
                        }
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        Modifier modifierD = SizeKt.d(dTFunctionNameModifier, 1.0f);
                        Alignment.f8582a.getClass();
                        biasAlignment = Alignment.Companion.f8584b;
                        measurePolicyD = BoxKt.d(biasAlignment, false);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
                        ComposeUiNode.b0.getClass();
                        function0 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        modifier4 = dTFunctionNameModifier;
                        if (gapComposerH.S) {
                            gapComposerH.C(function0);
                        } else {
                            gapComposerH.o();
                        }
                        function4 = ComposeUiNode.Companion.f9644f;
                        Updater.c(gapComposerH, measurePolicyD, function4);
                        function5 = ComposeUiNode.Companion.f9643e;
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
                        Integer numValueOf = Integer.valueOf(iHashCode);
                        function6 = ComposeUiNode.Companion.g;
                        Updater.c(gapComposerH, numValueOf, function6);
                        function7 = ComposeUiNode.Companion.f9645h;
                        Updater.b(gapComposerH, function7);
                        function8 = ComposeUiNode.Companion.d;
                        Updater.c(gapComposerH, modifierC, function8);
                        Modifier modifierD2 = tr.d("LVRadioButtonBlock", 1.0f);
                        Role.f10289b.getClass();
                        Role role = new Role(Role.f10291e);
                        if ((i9 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        boolean z12 = z6;
                        if ((i9 & 57344) == 16384) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        z8 = z12 | z7;
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (z8 || objX == composer$Companion$Empty$1) {
                            objX = new ky(function1, z2, 2);
                            gapComposerH.q(objX);
                        }
                        Function0 function9 = (Function0) objX;
                        z9 = z5;
                        Modifier modifierB = SelectableKt.b(modifierD2, z2, z9, role, function9, 8);
                        vertical = Alignment.Companion.l;
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
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
                        Updater.c(gapComposerH, rowMeasurePolicyA, function4);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
                        cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
                        Updater.c(gapComposerH, modifierC2, function8);
                        DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("LVRadioButtonBlock");
                        objX2 = gapComposerH.x();
                        i12 = 3;
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new n60(i12);
                            gapComposerH.q(objX2);
                        }
                        Modifier modifierB2 = SemanticsModifierKt.b(dTFunctionNameModifier2, false, (Function1) objX2);
                        RowScopeInstance rowScopeInstance = RowScopeInstance.f5040a;
                        i13 = i9 >> 6;
                        i14 = i9 >> 3;
                        LVRadioButtonKt.a(rowScopeInstance.b(modifierB2, vertical), z9, z2, null, function1, gapComposerH, (i14 & 57344) | (i13 & 1008), 8);
                        Modifier modifierK = PaddingKt.k(rowScopeInstance.b(rowScopeInstance.a(new DTFunctionNameModifier("LVRadioButtonBlock"), 1.0f, true), vertical), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1);
                        columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
                        iHashCode3 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU3 = gapComposerH.U();
                        modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK);
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
                        Updater.c(gapComposerH, columnMeasurePolicyA, function4);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
                        cj.t(iHashCode3, gapComposerH, function6, gapComposerH, function7);
                        DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC3, function8, "LVRadioButtonBlock");
                        if (str9 == null) {
                            str10 = "";
                        } else {
                            str10 = str9;
                        }
                        Modifier modifierE2 = ModifierExtKt.e(dTFunctionNameModifierE, str10);
                        if (z9) {
                            gapComposerH.L(597359660);
                            j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                            z10 = false;
                            gapComposerH.Z(false);
                        } else {
                            z10 = false;
                            gapComposerH.L(597458023);
                            j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                            gapComposerH.Z(false);
                        }
                        z11 = z10;
                        TextKt.c(str, modifierE2, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, i14 & 14, 0, 131064);
                        gapComposer = gapComposerH;
                        if (str8.length() > 0) {
                            gapComposer.L(597701869);
                            if (z9) {
                                gapComposer.L(597803301);
                                j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.l;
                                gapComposer.Z(z11);
                            } else {
                                gapComposer.L(597908639);
                                j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.n;
                                gapComposer.Z(z11);
                            }
                            String str11 = str8;
                            TextKt.c(str11, null, j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, i13 & 14, 0, 131066);
                            str4 = str11;
                            gapComposer = gapComposer;
                            gapComposer.Z(z11);
                        } else {
                            str4 = str8;
                            gapComposer.L(598128553);
                            gapComposer.Z(z11);
                        }
                        gapComposer.Z(true);
                        gapComposer.Z(true);
                        Modifier modifierM = PaddingKt.m(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LVRadioButtonBlock"), Alignment.Companion.g), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                        measurePolicyD2 = BoxKt.d(biasAlignment, z11);
                        iHashCode4 = Long.hashCode(gapComposer.T);
                        persistentCompositionLocalMapU4 = gapComposer.U();
                        modifierC4 = ComposedModifierKt.c(gapComposer, modifierM);
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposer.B();
                        if (gapComposer.S) {
                            gapComposer.C(function0);
                        } else {
                            gapComposer.o();
                        }
                        Updater.c(gapComposer, measurePolicyD2, function4);
                        Updater.c(gapComposer, persistentCompositionLocalMapU4, function5);
                        cj.t(iHashCode4, gapComposer, function6, gapComposer, function7);
                        Updater.c(gapComposer, modifierC4, function8);
                        composableLambdaImpl.invoke(gapComposer, 6);
                        gapComposer.Z(true);
                        gapComposer.Z(true);
                        z4 = z9;
                        function3 = composableLambdaImpl;
                        str6 = str9;
                        modifier3 = modifier4;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        z4 = z;
                        function3 = function2;
                        str6 = str5;
                        modifier3 = modifier2;
                    }
                    str7 = str4;
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new ai(modifier3, str, str7, z4, z2, function1, function3, str6, i2, i3);
                    }
                }
                i9 = i8 | 14155776;
                str5 = str3;
                modifier2 = modifierE;
                if ((i9 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i9 & 1, z3)) {
                    if (i16 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVRadioButtonBlock");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i17 != 0) {
                        str8 = "";
                    } else {
                        str8 = str4;
                    }
                    if (i5 != 0) {
                        z5 = true;
                    } else {
                        z5 = z;
                    }
                    ComposableSingletons$LVRadioButtonBlockKt.f48237a.getClass();
                    composableLambdaImpl = ComposableSingletons$LVRadioButtonBlockKt.f48238b;
                    if (i10 != 0) {
                        str9 = null;
                    } else {
                        str9 = str5;
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierD3 = SizeKt.d(dTFunctionNameModifier, 1.0f);
                    Alignment.f8582a.getClass();
                    biasAlignment = Alignment.Companion.f8584b;
                    measurePolicyD = BoxKt.d(biasAlignment, false);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierD3);
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    modifier4 = dTFunctionNameModifier;
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    function4 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, measurePolicyD, function4);
                    function5 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
                    Integer numValueOf2 = Integer.valueOf(iHashCode);
                    function6 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf2, function6);
                    function7 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function7);
                    function8 = ComposeUiNode.Companion.d;
                    Updater.c(gapComposerH, modifierC, function8);
                    Modifier modifierD4 = tr.d("LVRadioButtonBlock", 1.0f);
                    Role.f10289b.getClass();
                    Role role2 = new Role(Role.f10291e);
                    if ((i9 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    boolean z13 = z6;
                    if ((i9 & 57344) == 16384) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    z8 = z13 | z7;
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (z8) {
                        objX = new ky(function1, z2, 2);
                        gapComposerH.q(objX);
                    } else {
                        objX = new ky(function1, z2, 2);
                        gapComposerH.q(objX);
                    }
                    Function0 function10 = (Function0) objX;
                    z9 = z5;
                    Modifier modifierB3 = SelectableKt.b(modifierD4, z2, z9, role2, function10, 8);
                    vertical = Alignment.Companion.l;
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB3);
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
                    Updater.c(gapComposerH, rowMeasurePolicyA, function4);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
                    cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
                    Updater.c(gapComposerH, modifierC2, function8);
                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("LVRadioButtonBlock");
                    objX2 = gapComposerH.x();
                    i12 = 3;
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new n60(i12);
                        gapComposerH.q(objX2);
                    }
                    Modifier modifierB4 = SemanticsModifierKt.b(dTFunctionNameModifier3, false, (Function1) objX2);
                    RowScopeInstance rowScopeInstance2 = RowScopeInstance.f5040a;
                    i13 = i9 >> 6;
                    i14 = i9 >> 3;
                    LVRadioButtonKt.a(rowScopeInstance2.b(modifierB4, vertical), z9, z2, null, function1, gapComposerH, (i14 & 57344) | (i13 & 1008), 8);
                    Modifier modifierK2 = PaddingKt.k(rowScopeInstance2.b(rowScopeInstance2.a(new DTFunctionNameModifier("LVRadioButtonBlock"), 1.0f, true), vertical), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1);
                    columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
                    iHashCode3 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU3 = gapComposerH.U();
                    modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK2);
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
                    Updater.c(gapComposerH, columnMeasurePolicyA, function4);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
                    cj.t(iHashCode3, gapComposerH, function6, gapComposerH, function7);
                    DTFunctionNameModifier dTFunctionNameModifierE2 = tr.e(gapComposerH, modifierC3, function8, "LVRadioButtonBlock");
                    if (str9 == null) {
                        str10 = "";
                    } else {
                        str10 = str9;
                    }
                    Modifier modifierE3 = ModifierExtKt.e(dTFunctionNameModifierE2, str10);
                    if (z9) {
                        gapComposerH.L(597359660);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                        z10 = false;
                        gapComposerH.Z(false);
                    } else {
                        z10 = false;
                        gapComposerH.L(597458023);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                        gapComposerH.Z(false);
                    }
                    z11 = z10;
                    TextKt.c(str, modifierE3, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, i14 & 14, 0, 131064);
                    gapComposer = gapComposerH;
                    if (str8.length() > 0) {
                        gapComposer.L(597701869);
                        if (z9) {
                            gapComposer.L(597803301);
                            j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.l;
                            gapComposer.Z(z11);
                        } else {
                            gapComposer.L(597908639);
                            j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.n;
                            gapComposer.Z(z11);
                        }
                        String str12 = str8;
                        TextKt.c(str12, null, j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, i13 & 14, 0, 131066);
                        str4 = str12;
                        gapComposer = gapComposer;
                        gapComposer.Z(z11);
                    } else {
                        str4 = str8;
                        gapComposer.L(598128553);
                        gapComposer.Z(z11);
                    }
                    gapComposer.Z(true);
                    gapComposer.Z(true);
                    Modifier modifierM2 = PaddingKt.m(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LVRadioButtonBlock"), Alignment.Companion.g), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                    measurePolicyD2 = BoxKt.d(biasAlignment, z11);
                    iHashCode4 = Long.hashCode(gapComposer.T);
                    persistentCompositionLocalMapU4 = gapComposer.U();
                    modifierC4 = ComposedModifierKt.c(gapComposer, modifierM2);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer.B();
                    if (gapComposer.S) {
                        gapComposer.C(function0);
                    } else {
                        gapComposer.o();
                    }
                    Updater.c(gapComposer, measurePolicyD2, function4);
                    Updater.c(gapComposer, persistentCompositionLocalMapU4, function5);
                    cj.t(iHashCode4, gapComposer, function6, gapComposer, function7);
                    Updater.c(gapComposer, modifierC4, function8);
                    composableLambdaImpl.invoke(gapComposer, 6);
                    gapComposer.Z(true);
                    gapComposer.Z(true);
                    z4 = z9;
                    function3 = composableLambdaImpl;
                    str6 = str9;
                    modifier3 = modifier4;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    z4 = z;
                    function3 = function2;
                    str6 = str5;
                    modifier3 = modifier2;
                }
                str7 = str4;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new ai(modifier3, str, str7, z4, z2, function1, function3, str6, i2, i3);
                }
            }
            i4 |= 3072;
            if (gapComposerH.b(z2)) {
                i7 = 16384;
            } else {
                i7 = 8192;
            }
            i8 = i4 | i7;
            if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.y(function1)) {
                    i15 = 131072;
                } else {
                    i15 = 65536;
                }
                i8 |= i15;
            }
            i9 = i8 | 1572864;
            i10 = i3 & 128;
            if (i10 != 0) {
                if ((12582912 & i2) == 0) {
                    str5 = str3;
                    if (gapComposerH.K(str5)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i9 |= i11;
                }
                modifier2 = modifierE;
                if ((i9 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i9 & 1, z3)) {
                    if (i16 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVRadioButtonBlock");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i17 != 0) {
                        str8 = "";
                    } else {
                        str8 = str4;
                    }
                    if (i5 != 0) {
                        z5 = true;
                    } else {
                        z5 = z;
                    }
                    ComposableSingletons$LVRadioButtonBlockKt.f48237a.getClass();
                    composableLambdaImpl = ComposableSingletons$LVRadioButtonBlockKt.f48238b;
                    if (i10 != 0) {
                        str9 = null;
                    } else {
                        str9 = str5;
                    }
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifierD5 = SizeKt.d(dTFunctionNameModifier, 1.0f);
                    Alignment.f8582a.getClass();
                    biasAlignment = Alignment.Companion.f8584b;
                    measurePolicyD = BoxKt.d(biasAlignment, false);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierD5);
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    modifier4 = dTFunctionNameModifier;
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    function4 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, measurePolicyD, function4);
                    function5 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
                    Integer numValueOf3 = Integer.valueOf(iHashCode);
                    function6 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf3, function6);
                    function7 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function7);
                    function8 = ComposeUiNode.Companion.d;
                    Updater.c(gapComposerH, modifierC, function8);
                    Modifier modifierD6 = tr.d("LVRadioButtonBlock", 1.0f);
                    Role.f10289b.getClass();
                    Role role3 = new Role(Role.f10291e);
                    if ((i9 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    boolean z14 = z6;
                    if ((i9 & 57344) == 16384) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    z8 = z14 | z7;
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (z8) {
                        objX = new ky(function1, z2, 2);
                        gapComposerH.q(objX);
                    } else {
                        objX = new ky(function1, z2, 2);
                        gapComposerH.q(objX);
                    }
                    Function0 function11 = (Function0) objX;
                    z9 = z5;
                    Modifier modifierB5 = SelectableKt.b(modifierD6, z2, z9, role3, function11, 8);
                    vertical = Alignment.Companion.l;
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB5);
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
                    Updater.c(gapComposerH, rowMeasurePolicyA, function4);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
                    cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
                    Updater.c(gapComposerH, modifierC2, function8);
                    DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("LVRadioButtonBlock");
                    objX2 = gapComposerH.x();
                    i12 = 3;
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new n60(i12);
                        gapComposerH.q(objX2);
                    }
                    Modifier modifierB6 = SemanticsModifierKt.b(dTFunctionNameModifier4, false, (Function1) objX2);
                    RowScopeInstance rowScopeInstance3 = RowScopeInstance.f5040a;
                    i13 = i9 >> 6;
                    i14 = i9 >> 3;
                    LVRadioButtonKt.a(rowScopeInstance3.b(modifierB6, vertical), z9, z2, null, function1, gapComposerH, (i14 & 57344) | (i13 & 1008), 8);
                    Modifier modifierK3 = PaddingKt.k(rowScopeInstance3.b(rowScopeInstance3.a(new DTFunctionNameModifier("LVRadioButtonBlock"), 1.0f, true), vertical), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1);
                    columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
                    iHashCode3 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU3 = gapComposerH.U();
                    modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK3);
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
                    Updater.c(gapComposerH, columnMeasurePolicyA, function4);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
                    cj.t(iHashCode3, gapComposerH, function6, gapComposerH, function7);
                    DTFunctionNameModifier dTFunctionNameModifierE3 = tr.e(gapComposerH, modifierC3, function8, "LVRadioButtonBlock");
                    if (str9 == null) {
                        str10 = "";
                    } else {
                        str10 = str9;
                    }
                    Modifier modifierE4 = ModifierExtKt.e(dTFunctionNameModifierE3, str10);
                    if (z9) {
                        gapComposerH.L(597359660);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                        z10 = false;
                        gapComposerH.Z(false);
                    } else {
                        z10 = false;
                        gapComposerH.L(597458023);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                        gapComposerH.Z(false);
                    }
                    z11 = z10;
                    TextKt.c(str, modifierE4, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, i14 & 14, 0, 131064);
                    gapComposer = gapComposerH;
                    if (str8.length() > 0) {
                        gapComposer.L(597701869);
                        if (z9) {
                            gapComposer.L(597803301);
                            j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.l;
                            gapComposer.Z(z11);
                        } else {
                            gapComposer.L(597908639);
                            j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.n;
                            gapComposer.Z(z11);
                        }
                        String str13 = str8;
                        TextKt.c(str13, null, j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, i13 & 14, 0, 131066);
                        str4 = str13;
                        gapComposer = gapComposer;
                        gapComposer.Z(z11);
                    } else {
                        str4 = str8;
                        gapComposer.L(598128553);
                        gapComposer.Z(z11);
                    }
                    gapComposer.Z(true);
                    gapComposer.Z(true);
                    Modifier modifierM3 = PaddingKt.m(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LVRadioButtonBlock"), Alignment.Companion.g), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                    measurePolicyD2 = BoxKt.d(biasAlignment, z11);
                    iHashCode4 = Long.hashCode(gapComposer.T);
                    persistentCompositionLocalMapU4 = gapComposer.U();
                    modifierC4 = ComposedModifierKt.c(gapComposer, modifierM3);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer.B();
                    if (gapComposer.S) {
                        gapComposer.C(function0);
                    } else {
                        gapComposer.o();
                    }
                    Updater.c(gapComposer, measurePolicyD2, function4);
                    Updater.c(gapComposer, persistentCompositionLocalMapU4, function5);
                    cj.t(iHashCode4, gapComposer, function6, gapComposer, function7);
                    Updater.c(gapComposer, modifierC4, function8);
                    composableLambdaImpl.invoke(gapComposer, 6);
                    gapComposer.Z(true);
                    gapComposer.Z(true);
                    z4 = z9;
                    function3 = composableLambdaImpl;
                    str6 = str9;
                    modifier3 = modifier4;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    z4 = z;
                    function3 = function2;
                    str6 = str5;
                    modifier3 = modifier2;
                }
                str7 = str4;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new ai(modifier3, str, str7, z4, z2, function1, function3, str6, i2, i3);
                }
            }
            i9 = i8 | 14155776;
            str5 = str3;
            modifier2 = modifierE;
            if ((i9 & 4793491) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i9 & 1, z3)) {
                if (i16 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVRadioButtonBlock");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i17 != 0) {
                    str8 = "";
                } else {
                    str8 = str4;
                }
                if (i5 != 0) {
                    z5 = true;
                } else {
                    z5 = z;
                }
                ComposableSingletons$LVRadioButtonBlockKt.f48237a.getClass();
                composableLambdaImpl = ComposableSingletons$LVRadioButtonBlockKt.f48238b;
                if (i10 != 0) {
                    str9 = null;
                } else {
                    str9 = str5;
                }
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                Modifier modifierD7 = SizeKt.d(dTFunctionNameModifier, 1.0f);
                Alignment.f8582a.getClass();
                biasAlignment = Alignment.Companion.f8584b;
                measurePolicyD = BoxKt.d(biasAlignment, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierD7);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                modifier4 = dTFunctionNameModifier;
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function4 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD, function4);
                function5 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
                Integer numValueOf4 = Integer.valueOf(iHashCode);
                function6 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf4, function6);
                function7 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function7);
                function8 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function8);
                Modifier modifierD8 = tr.d("LVRadioButtonBlock", 1.0f);
                Role.f10289b.getClass();
                Role role4 = new Role(Role.f10291e);
                if ((i9 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                boolean z15 = z6;
                if ((i9 & 57344) == 16384) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                z8 = z15 | z7;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (z8) {
                    objX = new ky(function1, z2, 2);
                    gapComposerH.q(objX);
                } else {
                    objX = new ky(function1, z2, 2);
                    gapComposerH.q(objX);
                }
                Function0 function12 = (Function0) objX;
                z9 = z5;
                Modifier modifierB7 = SelectableKt.b(modifierD8, z2, z9, role4, function12, 8);
                vertical = Alignment.Companion.l;
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB7);
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
                Updater.c(gapComposerH, rowMeasurePolicyA, function4);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
                cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
                Updater.c(gapComposerH, modifierC2, function8);
                DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier("LVRadioButtonBlock");
                objX2 = gapComposerH.x();
                i12 = 3;
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new n60(i12);
                    gapComposerH.q(objX2);
                }
                Modifier modifierB8 = SemanticsModifierKt.b(dTFunctionNameModifier5, false, (Function1) objX2);
                RowScopeInstance rowScopeInstance4 = RowScopeInstance.f5040a;
                i13 = i9 >> 6;
                i14 = i9 >> 3;
                LVRadioButtonKt.a(rowScopeInstance4.b(modifierB8, vertical), z9, z2, null, function1, gapComposerH, (i14 & 57344) | (i13 & 1008), 8);
                Modifier modifierK4 = PaddingKt.k(rowScopeInstance4.b(rowScopeInstance4.a(new DTFunctionNameModifier("LVRadioButtonBlock"), 1.0f, true), vertical), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1);
                columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
                iHashCode3 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU3 = gapComposerH.U();
                modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK4);
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
                Updater.c(gapComposerH, columnMeasurePolicyA, function4);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
                cj.t(iHashCode3, gapComposerH, function6, gapComposerH, function7);
                DTFunctionNameModifier dTFunctionNameModifierE4 = tr.e(gapComposerH, modifierC3, function8, "LVRadioButtonBlock");
                if (str9 == null) {
                    str10 = "";
                } else {
                    str10 = str9;
                }
                Modifier modifierE5 = ModifierExtKt.e(dTFunctionNameModifierE4, str10);
                if (z9) {
                    gapComposerH.L(597359660);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    z10 = false;
                    gapComposerH.Z(false);
                } else {
                    z10 = false;
                    gapComposerH.L(597458023);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                    gapComposerH.Z(false);
                }
                z11 = z10;
                TextKt.c(str, modifierE5, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, i14 & 14, 0, 131064);
                gapComposer = gapComposerH;
                if (str8.length() > 0) {
                    gapComposer.L(597701869);
                    if (z9) {
                        gapComposer.L(597803301);
                        j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.l;
                        gapComposer.Z(z11);
                    } else {
                        gapComposer.L(597908639);
                        j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.n;
                        gapComposer.Z(z11);
                    }
                    String str14 = str8;
                    TextKt.c(str14, null, j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, i13 & 14, 0, 131066);
                    str4 = str14;
                    gapComposer = gapComposer;
                    gapComposer.Z(z11);
                } else {
                    str4 = str8;
                    gapComposer.L(598128553);
                    gapComposer.Z(z11);
                }
                gapComposer.Z(true);
                gapComposer.Z(true);
                Modifier modifierM4 = PaddingKt.m(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LVRadioButtonBlock"), Alignment.Companion.g), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                measurePolicyD2 = BoxKt.d(biasAlignment, z11);
                iHashCode4 = Long.hashCode(gapComposer.T);
                persistentCompositionLocalMapU4 = gapComposer.U();
                modifierC4 = ComposedModifierKt.c(gapComposer, modifierM4);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function0);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, measurePolicyD2, function4);
                Updater.c(gapComposer, persistentCompositionLocalMapU4, function5);
                cj.t(iHashCode4, gapComposer, function6, gapComposer, function7);
                Updater.c(gapComposer, modifierC4, function8);
                composableLambdaImpl.invoke(gapComposer, 6);
                gapComposer.Z(true);
                gapComposer.Z(true);
                z4 = z9;
                function3 = composableLambdaImpl;
                str6 = str9;
                modifier3 = modifier4;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                z4 = z;
                function3 = function2;
                str6 = str5;
                modifier3 = modifier2;
            }
            str7 = str4;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new ai(modifier3, str, str7, z4, z2, function1, function3, str6, i2, i3);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        str4 = str2;
        i5 = i3 & 8;
        if (i5 != 0) {
            if ((i2 & 3072) == 0) {
                if (gapComposerH.b(z)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            if (gapComposerH.b(z2)) {
                i7 = 16384;
            } else {
                i7 = 8192;
            }
            i8 = i4 | i7;
            if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.y(function1)) {
                    i15 = 131072;
                } else {
                    i15 = 65536;
                }
                i8 |= i15;
            }
            i9 = i8 | 1572864;
            i10 = i3 & 128;
            if (i10 != 0) {
                if ((12582912 & i2) == 0) {
                    str5 = str3;
                    if (gapComposerH.K(str5)) {
                        i11 = 8388608;
                    } else {
                        i11 = 4194304;
                    }
                    i9 |= i11;
                }
                modifier2 = modifierE;
                if ((i9 & 4793491) != 4793490) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i9 & 1, z3)) {
                    if (i16 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVRadioButtonBlock");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i17 != 0) {
                        str8 = "";
                    } else {
                        str8 = str4;
                    }
                    if (i5 != 0) {
                        z5 = true;
                    } else {
                        z5 = z;
                    }
                    ComposableSingletons$LVRadioButtonBlockKt.f48237a.getClass();
                    composableLambdaImpl = ComposableSingletons$LVRadioButtonBlockKt.f48238b;
                    if (i10 != 0) {
                        str9 = null;
                    } else {
                        str9 = str5;
                    }
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    Modifier modifierD9 = SizeKt.d(dTFunctionNameModifier, 1.0f);
                    Alignment.f8582a.getClass();
                    biasAlignment = Alignment.Companion.f8584b;
                    measurePolicyD = BoxKt.d(biasAlignment, false);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierD9);
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    modifier4 = dTFunctionNameModifier;
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    function4 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, measurePolicyD, function4);
                    function5 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
                    Integer numValueOf5 = Integer.valueOf(iHashCode);
                    function6 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf5, function6);
                    function7 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function7);
                    function8 = ComposeUiNode.Companion.d;
                    Updater.c(gapComposerH, modifierC, function8);
                    Modifier modifierD10 = tr.d("LVRadioButtonBlock", 1.0f);
                    Role.f10289b.getClass();
                    Role role5 = new Role(Role.f10291e);
                    if ((i9 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    boolean z16 = z6;
                    if ((i9 & 57344) == 16384) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    z8 = z16 | z7;
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (z8) {
                        objX = new ky(function1, z2, 2);
                        gapComposerH.q(objX);
                    } else {
                        objX = new ky(function1, z2, 2);
                        gapComposerH.q(objX);
                    }
                    Function0 function13 = (Function0) objX;
                    z9 = z5;
                    Modifier modifierB9 = SelectableKt.b(modifierD10, z2, z9, role5, function13, 8);
                    vertical = Alignment.Companion.l;
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB9);
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
                    Updater.c(gapComposerH, rowMeasurePolicyA, function4);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
                    cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
                    Updater.c(gapComposerH, modifierC2, function8);
                    DTFunctionNameModifier dTFunctionNameModifier6 = new DTFunctionNameModifier("LVRadioButtonBlock");
                    objX2 = gapComposerH.x();
                    i12 = 3;
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new n60(i12);
                        gapComposerH.q(objX2);
                    }
                    Modifier modifierB10 = SemanticsModifierKt.b(dTFunctionNameModifier6, false, (Function1) objX2);
                    RowScopeInstance rowScopeInstance5 = RowScopeInstance.f5040a;
                    i13 = i9 >> 6;
                    i14 = i9 >> 3;
                    LVRadioButtonKt.a(rowScopeInstance5.b(modifierB10, vertical), z9, z2, null, function1, gapComposerH, (i14 & 57344) | (i13 & 1008), 8);
                    Modifier modifierK5 = PaddingKt.k(rowScopeInstance5.b(rowScopeInstance5.a(new DTFunctionNameModifier("LVRadioButtonBlock"), 1.0f, true), vertical), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1);
                    columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
                    iHashCode3 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU3 = gapComposerH.U();
                    modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK5);
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
                    Updater.c(gapComposerH, columnMeasurePolicyA, function4);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
                    cj.t(iHashCode3, gapComposerH, function6, gapComposerH, function7);
                    DTFunctionNameModifier dTFunctionNameModifierE5 = tr.e(gapComposerH, modifierC3, function8, "LVRadioButtonBlock");
                    if (str9 == null) {
                        str10 = "";
                    } else {
                        str10 = str9;
                    }
                    Modifier modifierE6 = ModifierExtKt.e(dTFunctionNameModifierE5, str10);
                    if (z9) {
                        gapComposerH.L(597359660);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                        z10 = false;
                        gapComposerH.Z(false);
                    } else {
                        z10 = false;
                        gapComposerH.L(597458023);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                        gapComposerH.Z(false);
                    }
                    z11 = z10;
                    TextKt.c(str, modifierE6, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, i14 & 14, 0, 131064);
                    gapComposer = gapComposerH;
                    if (str8.length() > 0) {
                        gapComposer.L(597701869);
                        if (z9) {
                            gapComposer.L(597803301);
                            j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.l;
                            gapComposer.Z(z11);
                        } else {
                            gapComposer.L(597908639);
                            j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.n;
                            gapComposer.Z(z11);
                        }
                        String str15 = str8;
                        TextKt.c(str15, null, j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, i13 & 14, 0, 131066);
                        str4 = str15;
                        gapComposer = gapComposer;
                        gapComposer.Z(z11);
                    } else {
                        str4 = str8;
                        gapComposer.L(598128553);
                        gapComposer.Z(z11);
                    }
                    gapComposer.Z(true);
                    gapComposer.Z(true);
                    Modifier modifierM5 = PaddingKt.m(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LVRadioButtonBlock"), Alignment.Companion.g), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                    measurePolicyD2 = BoxKt.d(biasAlignment, z11);
                    iHashCode4 = Long.hashCode(gapComposer.T);
                    persistentCompositionLocalMapU4 = gapComposer.U();
                    modifierC4 = ComposedModifierKt.c(gapComposer, modifierM5);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer.B();
                    if (gapComposer.S) {
                        gapComposer.C(function0);
                    } else {
                        gapComposer.o();
                    }
                    Updater.c(gapComposer, measurePolicyD2, function4);
                    Updater.c(gapComposer, persistentCompositionLocalMapU4, function5);
                    cj.t(iHashCode4, gapComposer, function6, gapComposer, function7);
                    Updater.c(gapComposer, modifierC4, function8);
                    composableLambdaImpl.invoke(gapComposer, 6);
                    gapComposer.Z(true);
                    gapComposer.Z(true);
                    z4 = z9;
                    function3 = composableLambdaImpl;
                    str6 = str9;
                    modifier3 = modifier4;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    z4 = z;
                    function3 = function2;
                    str6 = str5;
                    modifier3 = modifier2;
                }
                str7 = str4;
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new ai(modifier3, str, str7, z4, z2, function1, function3, str6, i2, i3);
                }
            }
            i9 = i8 | 14155776;
            str5 = str3;
            modifier2 = modifierE;
            if ((i9 & 4793491) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i9 & 1, z3)) {
                if (i16 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVRadioButtonBlock");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i17 != 0) {
                    str8 = "";
                } else {
                    str8 = str4;
                }
                if (i5 != 0) {
                    z5 = true;
                } else {
                    z5 = z;
                }
                ComposableSingletons$LVRadioButtonBlockKt.f48237a.getClass();
                composableLambdaImpl = ComposableSingletons$LVRadioButtonBlockKt.f48238b;
                if (i10 != 0) {
                    str9 = null;
                } else {
                    str9 = str5;
                }
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                Modifier modifierD11 = SizeKt.d(dTFunctionNameModifier, 1.0f);
                Alignment.f8582a.getClass();
                biasAlignment = Alignment.Companion.f8584b;
                measurePolicyD = BoxKt.d(biasAlignment, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierD11);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                modifier4 = dTFunctionNameModifier;
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function4 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD, function4);
                function5 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
                Integer numValueOf6 = Integer.valueOf(iHashCode);
                function6 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf6, function6);
                function7 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function7);
                function8 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function8);
                Modifier modifierD12 = tr.d("LVRadioButtonBlock", 1.0f);
                Role.f10289b.getClass();
                Role role6 = new Role(Role.f10291e);
                if ((i9 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                boolean z17 = z6;
                if ((i9 & 57344) == 16384) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                z8 = z17 | z7;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (z8) {
                    objX = new ky(function1, z2, 2);
                    gapComposerH.q(objX);
                } else {
                    objX = new ky(function1, z2, 2);
                    gapComposerH.q(objX);
                }
                Function0 function14 = (Function0) objX;
                z9 = z5;
                Modifier modifierB11 = SelectableKt.b(modifierD12, z2, z9, role6, function14, 8);
                vertical = Alignment.Companion.l;
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB11);
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
                Updater.c(gapComposerH, rowMeasurePolicyA, function4);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
                cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
                Updater.c(gapComposerH, modifierC2, function8);
                DTFunctionNameModifier dTFunctionNameModifier7 = new DTFunctionNameModifier("LVRadioButtonBlock");
                objX2 = gapComposerH.x();
                i12 = 3;
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new n60(i12);
                    gapComposerH.q(objX2);
                }
                Modifier modifierB12 = SemanticsModifierKt.b(dTFunctionNameModifier7, false, (Function1) objX2);
                RowScopeInstance rowScopeInstance6 = RowScopeInstance.f5040a;
                i13 = i9 >> 6;
                i14 = i9 >> 3;
                LVRadioButtonKt.a(rowScopeInstance6.b(modifierB12, vertical), z9, z2, null, function1, gapComposerH, (i14 & 57344) | (i13 & 1008), 8);
                Modifier modifierK6 = PaddingKt.k(rowScopeInstance6.b(rowScopeInstance6.a(new DTFunctionNameModifier("LVRadioButtonBlock"), 1.0f, true), vertical), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1);
                columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
                iHashCode3 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU3 = gapComposerH.U();
                modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK6);
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
                Updater.c(gapComposerH, columnMeasurePolicyA, function4);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
                cj.t(iHashCode3, gapComposerH, function6, gapComposerH, function7);
                DTFunctionNameModifier dTFunctionNameModifierE6 = tr.e(gapComposerH, modifierC3, function8, "LVRadioButtonBlock");
                if (str9 == null) {
                    str10 = "";
                } else {
                    str10 = str9;
                }
                Modifier modifierE7 = ModifierExtKt.e(dTFunctionNameModifierE6, str10);
                if (z9) {
                    gapComposerH.L(597359660);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    z10 = false;
                    gapComposerH.Z(false);
                } else {
                    z10 = false;
                    gapComposerH.L(597458023);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                    gapComposerH.Z(false);
                }
                z11 = z10;
                TextKt.c(str, modifierE7, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, i14 & 14, 0, 131064);
                gapComposer = gapComposerH;
                if (str8.length() > 0) {
                    gapComposer.L(597701869);
                    if (z9) {
                        gapComposer.L(597803301);
                        j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.l;
                        gapComposer.Z(z11);
                    } else {
                        gapComposer.L(597908639);
                        j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.n;
                        gapComposer.Z(z11);
                    }
                    String str16 = str8;
                    TextKt.c(str16, null, j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, i13 & 14, 0, 131066);
                    str4 = str16;
                    gapComposer = gapComposer;
                    gapComposer.Z(z11);
                } else {
                    str4 = str8;
                    gapComposer.L(598128553);
                    gapComposer.Z(z11);
                }
                gapComposer.Z(true);
                gapComposer.Z(true);
                Modifier modifierM6 = PaddingKt.m(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LVRadioButtonBlock"), Alignment.Companion.g), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                measurePolicyD2 = BoxKt.d(biasAlignment, z11);
                iHashCode4 = Long.hashCode(gapComposer.T);
                persistentCompositionLocalMapU4 = gapComposer.U();
                modifierC4 = ComposedModifierKt.c(gapComposer, modifierM6);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function0);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, measurePolicyD2, function4);
                Updater.c(gapComposer, persistentCompositionLocalMapU4, function5);
                cj.t(iHashCode4, gapComposer, function6, gapComposer, function7);
                Updater.c(gapComposer, modifierC4, function8);
                composableLambdaImpl.invoke(gapComposer, 6);
                gapComposer.Z(true);
                gapComposer.Z(true);
                z4 = z9;
                function3 = composableLambdaImpl;
                str6 = str9;
                modifier3 = modifier4;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                z4 = z;
                function3 = function2;
                str6 = str5;
                modifier3 = modifier2;
            }
            str7 = str4;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new ai(modifier3, str, str7, z4, z2, function1, function3, str6, i2, i3);
            }
        }
        i4 |= 3072;
        if (gapComposerH.b(z2)) {
            i7 = 16384;
        } else {
            i7 = 8192;
        }
        i8 = i4 | i7;
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            if (gapComposerH.y(function1)) {
                i15 = 131072;
            } else {
                i15 = 65536;
            }
            i8 |= i15;
        }
        i9 = i8 | 1572864;
        i10 = i3 & 128;
        if (i10 != 0) {
            if ((12582912 & i2) == 0) {
                str5 = str3;
                if (gapComposerH.K(str5)) {
                    i11 = 8388608;
                } else {
                    i11 = 4194304;
                }
                i9 |= i11;
            }
            modifier2 = modifierE;
            if ((i9 & 4793491) != 4793490) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i9 & 1, z3)) {
                if (i16 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVRadioButtonBlock");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i17 != 0) {
                    str8 = "";
                } else {
                    str8 = str4;
                }
                if (i5 != 0) {
                    z5 = true;
                } else {
                    z5 = z;
                }
                ComposableSingletons$LVRadioButtonBlockKt.f48237a.getClass();
                composableLambdaImpl = ComposableSingletons$LVRadioButtonBlockKt.f48238b;
                if (i10 != 0) {
                    str9 = null;
                } else {
                    str9 = str5;
                }
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                Modifier modifierD13 = SizeKt.d(dTFunctionNameModifier, 1.0f);
                Alignment.f8582a.getClass();
                biasAlignment = Alignment.Companion.f8584b;
                measurePolicyD = BoxKt.d(biasAlignment, false);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierD13);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                modifier4 = dTFunctionNameModifier;
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function4 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD, function4);
                function5 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
                Integer numValueOf7 = Integer.valueOf(iHashCode);
                function6 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf7, function6);
                function7 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function7);
                function8 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function8);
                Modifier modifierD14 = tr.d("LVRadioButtonBlock", 1.0f);
                Role.f10289b.getClass();
                Role role7 = new Role(Role.f10291e);
                if ((i9 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                boolean z18 = z6;
                if ((i9 & 57344) == 16384) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                z8 = z18 | z7;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (z8) {
                    objX = new ky(function1, z2, 2);
                    gapComposerH.q(objX);
                } else {
                    objX = new ky(function1, z2, 2);
                    gapComposerH.q(objX);
                }
                Function0 function15 = (Function0) objX;
                z9 = z5;
                Modifier modifierB13 = SelectableKt.b(modifierD14, z2, z9, role7, function15, 8);
                vertical = Alignment.Companion.l;
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB13);
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
                Updater.c(gapComposerH, rowMeasurePolicyA, function4);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
                cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
                Updater.c(gapComposerH, modifierC2, function8);
                DTFunctionNameModifier dTFunctionNameModifier8 = new DTFunctionNameModifier("LVRadioButtonBlock");
                objX2 = gapComposerH.x();
                i12 = 3;
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new n60(i12);
                    gapComposerH.q(objX2);
                }
                Modifier modifierB14 = SemanticsModifierKt.b(dTFunctionNameModifier8, false, (Function1) objX2);
                RowScopeInstance rowScopeInstance7 = RowScopeInstance.f5040a;
                i13 = i9 >> 6;
                i14 = i9 >> 3;
                LVRadioButtonKt.a(rowScopeInstance7.b(modifierB14, vertical), z9, z2, null, function1, gapComposerH, (i14 & 57344) | (i13 & 1008), 8);
                Modifier modifierK7 = PaddingKt.k(rowScopeInstance7.b(rowScopeInstance7.a(new DTFunctionNameModifier("LVRadioButtonBlock"), 1.0f, true), vertical), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1);
                columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
                iHashCode3 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU3 = gapComposerH.U();
                modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK7);
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
                Updater.c(gapComposerH, columnMeasurePolicyA, function4);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
                cj.t(iHashCode3, gapComposerH, function6, gapComposerH, function7);
                DTFunctionNameModifier dTFunctionNameModifierE7 = tr.e(gapComposerH, modifierC3, function8, "LVRadioButtonBlock");
                if (str9 == null) {
                    str10 = "";
                } else {
                    str10 = str9;
                }
                Modifier modifierE8 = ModifierExtKt.e(dTFunctionNameModifierE7, str10);
                if (z9) {
                    gapComposerH.L(597359660);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    z10 = false;
                    gapComposerH.Z(false);
                } else {
                    z10 = false;
                    gapComposerH.L(597458023);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                    gapComposerH.Z(false);
                }
                z11 = z10;
                TextKt.c(str, modifierE8, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, i14 & 14, 0, 131064);
                gapComposer = gapComposerH;
                if (str8.length() > 0) {
                    gapComposer.L(597701869);
                    if (z9) {
                        gapComposer.L(597803301);
                        j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.l;
                        gapComposer.Z(z11);
                    } else {
                        gapComposer.L(597908639);
                        j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.n;
                        gapComposer.Z(z11);
                    }
                    String str17 = str8;
                    TextKt.c(str17, null, j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, i13 & 14, 0, 131066);
                    str4 = str17;
                    gapComposer = gapComposer;
                    gapComposer.Z(z11);
                } else {
                    str4 = str8;
                    gapComposer.L(598128553);
                    gapComposer.Z(z11);
                }
                gapComposer.Z(true);
                gapComposer.Z(true);
                Modifier modifierM7 = PaddingKt.m(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LVRadioButtonBlock"), Alignment.Companion.g), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                measurePolicyD2 = BoxKt.d(biasAlignment, z11);
                iHashCode4 = Long.hashCode(gapComposer.T);
                persistentCompositionLocalMapU4 = gapComposer.U();
                modifierC4 = ComposedModifierKt.c(gapComposer, modifierM7);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function0);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, measurePolicyD2, function4);
                Updater.c(gapComposer, persistentCompositionLocalMapU4, function5);
                cj.t(iHashCode4, gapComposer, function6, gapComposer, function7);
                Updater.c(gapComposer, modifierC4, function8);
                composableLambdaImpl.invoke(gapComposer, 6);
                gapComposer.Z(true);
                gapComposer.Z(true);
                z4 = z9;
                function3 = composableLambdaImpl;
                str6 = str9;
                modifier3 = modifier4;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                z4 = z;
                function3 = function2;
                str6 = str5;
                modifier3 = modifier2;
            }
            str7 = str4;
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new ai(modifier3, str, str7, z4, z2, function1, function3, str6, i2, i3);
            }
        }
        i9 = i8 | 14155776;
        str5 = str3;
        modifier2 = modifierE;
        if ((i9 & 4793491) != 4793490) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i9 & 1, z3)) {
            if (i16 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVRadioButtonBlock");
            } else {
                dTFunctionNameModifier = modifier2;
            }
            if (i17 != 0) {
                str8 = "";
            } else {
                str8 = str4;
            }
            if (i5 != 0) {
                z5 = true;
            } else {
                z5 = z;
            }
            ComposableSingletons$LVRadioButtonBlockKt.f48237a.getClass();
            composableLambdaImpl = ComposableSingletons$LVRadioButtonBlockKt.f48238b;
            if (i10 != 0) {
                str9 = null;
            } else {
                str9 = str5;
            }
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            Modifier modifierD15 = SizeKt.d(dTFunctionNameModifier, 1.0f);
            Alignment.f8582a.getClass();
            biasAlignment = Alignment.Companion.f8584b;
            measurePolicyD = BoxKt.d(biasAlignment, false);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierD15);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            modifier4 = dTFunctionNameModifier;
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            function4 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function4);
            function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
            Integer numValueOf8 = Integer.valueOf(iHashCode);
            function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf8, function6);
            function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function7);
            function8 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function8);
            Modifier modifierD16 = tr.d("LVRadioButtonBlock", 1.0f);
            Role.f10289b.getClass();
            Role role8 = new Role(Role.f10291e);
            if ((i9 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                z6 = true;
            } else {
                z6 = false;
            }
            boolean z19 = z6;
            if ((i9 & 57344) == 16384) {
                z7 = true;
            } else {
                z7 = false;
            }
            z8 = z19 | z7;
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z8) {
                objX = new ky(function1, z2, 2);
                gapComposerH.q(objX);
            } else {
                objX = new ky(function1, z2, 2);
                gapComposerH.q(objX);
            }
            Function0 function16 = (Function0) objX;
            z9 = z5;
            Modifier modifierB15 = SelectableKt.b(modifierD16, z2, z9, role8, function16, 8);
            vertical = Alignment.Companion.l;
            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB15);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
            cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
            Updater.c(gapComposerH, modifierC2, function8);
            DTFunctionNameModifier dTFunctionNameModifier9 = new DTFunctionNameModifier("LVRadioButtonBlock");
            objX2 = gapComposerH.x();
            i12 = 3;
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new n60(i12);
                gapComposerH.q(objX2);
            }
            Modifier modifierB16 = SemanticsModifierKt.b(dTFunctionNameModifier9, false, (Function1) objX2);
            RowScopeInstance rowScopeInstance8 = RowScopeInstance.f5040a;
            i13 = i9 >> 6;
            i14 = i9 >> 3;
            LVRadioButtonKt.a(rowScopeInstance8.b(modifierB16, vertical), z9, z2, null, function1, gapComposerH, (i14 & 57344) | (i13 & 1008), 8);
            Modifier modifierK8 = PaddingKt.k(rowScopeInstance8.b(rowScopeInstance8.a(new DTFunctionNameModifier("LVRadioButtonBlock"), 1.0f, true), vertical), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 1);
            columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            iHashCode3 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU3 = gapComposerH.U();
            modifierC3 = ComposedModifierKt.c(gapComposerH, modifierK8);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
            cj.t(iHashCode3, gapComposerH, function6, gapComposerH, function7);
            DTFunctionNameModifier dTFunctionNameModifierE8 = tr.e(gapComposerH, modifierC3, function8, "LVRadioButtonBlock");
            if (str9 == null) {
                str10 = "";
            } else {
                str10 = str9;
            }
            Modifier modifierE9 = ModifierExtKt.e(dTFunctionNameModifierE8, str10);
            if (z9) {
                gapComposerH.L(597359660);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                z10 = false;
                gapComposerH.Z(false);
            } else {
                z10 = false;
                gapComposerH.L(597458023);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.n;
                gapComposerH.Z(false);
            }
            z11 = z10;
            TextKt.c(str, modifierE9, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, i14 & 14, 0, 131064);
            gapComposer = gapComposerH;
            if (str8.length() > 0) {
                gapComposer.L(597701869);
                if (z9) {
                    gapComposer.L(597803301);
                    j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.l;
                    gapComposer.Z(z11);
                } else {
                    gapComposer.L(597908639);
                    j3 = LVAppDesignKitTheme.c(gapComposer).f48361b.n;
                    gapComposer.Z(z11);
                }
                String str18 = str8;
                TextKt.c(str18, null, j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, i13 & 14, 0, 131066);
                str4 = str18;
                gapComposer = gapComposer;
                gapComposer.Z(z11);
            } else {
                str4 = str8;
                gapComposer.L(598128553);
                gapComposer.Z(z11);
            }
            gapComposer.Z(true);
            gapComposer.Z(true);
            Modifier modifierM8 = PaddingKt.m(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LVRadioButtonBlock"), Alignment.Companion.g), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
            measurePolicyD2 = BoxKt.d(biasAlignment, z11);
            iHashCode4 = Long.hashCode(gapComposer.T);
            persistentCompositionLocalMapU4 = gapComposer.U();
            modifierC4 = ComposedModifierKt.c(gapComposer, modifierM8);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function0);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, measurePolicyD2, function4);
            Updater.c(gapComposer, persistentCompositionLocalMapU4, function5);
            cj.t(iHashCode4, gapComposer, function6, gapComposer, function7);
            Updater.c(gapComposer, modifierC4, function8);
            composableLambdaImpl.invoke(gapComposer, 6);
            gapComposer.Z(true);
            gapComposer.Z(true);
            z4 = z9;
            function3 = composableLambdaImpl;
            str6 = str9;
            modifier3 = modifier4;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            z4 = z;
            function3 = function2;
            str6 = str5;
            modifier3 = modifier2;
        }
        str7 = str4;
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ai(modifier3, str, str7, z4, z2, function1, function3, str6, i2, i3);
        }
    }
}
