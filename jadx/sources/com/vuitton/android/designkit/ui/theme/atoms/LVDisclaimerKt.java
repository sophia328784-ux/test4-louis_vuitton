package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.cj;
import defpackage.n00;
import defpackage.qm;
import defpackage.x20;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVDisclaimerKt {
    /* JADX WARN: Code duplicated, block: B:102:0x0150  */
    /* JADX WARN: Code duplicated, block: B:105:0x0163  */
    /* JADX WARN: Code duplicated, block: B:106:0x0182  */
    /* JADX WARN: Code duplicated, block: B:109:0x01c7  */
    /* JADX WARN: Code duplicated, block: B:111:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:112:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:115:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:116:0x0241  */
    /* JADX WARN: Code duplicated, block: B:119:0x0282  */
    /* JADX WARN: Code duplicated, block: B:121:0x0289  */
    /* JADX WARN: Code duplicated, block: B:122:0x028d  */
    /* JADX WARN: Code duplicated, block: B:125:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:127:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:129:0x0310  */
    /* JADX WARN: Code duplicated, block: B:131:0x0314  */
    /* JADX WARN: Code duplicated, block: B:133:0x0318  */
    /* JADX WARN: Code duplicated, block: B:136:0x0329  */
    /* JADX WARN: Code duplicated, block: B:138:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:34:0x0062  */
    /* JADX WARN: Code duplicated, block: B:49:0x0084  */
    /* JADX WARN: Code duplicated, block: B:51:0x0089  */
    /* JADX WARN: Code duplicated, block: B:53:0x008d  */
    /* JADX WARN: Code duplicated, block: B:55:0x0095  */
    /* JADX WARN: Code duplicated, block: B:56:0x0098  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:64:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:75:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:85:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:89:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:90:0x010a  */
    /* JADX WARN: Code duplicated, block: B:92:0x010e  */
    /* JADX WARN: Code duplicated, block: B:93:0x0116  */
    /* JADX WARN: Code duplicated, block: B:95:0x011a  */
    /* JADX WARN: Code duplicated, block: B:98:0x011e  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8, types: [boolean, int] */
    public static final void a(Modifier modifier, String str, Painter painter, long j2, String str2, Function0 function0, Composer composer, int i2, int i3) {
        int i4;
        int i5;
        String str3;
        int i6;
        int i7;
        Function0 function1;
        int i8;
        Modifier modifier2;
        boolean z;
        Painter painter2;
        long j3;
        String str4;
        Function0 function2;
        Modifier modifier3;
        GapComposer gapComposer;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        Painter painterA;
        long j4;
        int i9;
        Modifier modifier4;
        String str5;
        long j5;
        Object objX;
        Function0 function3;
        Modifier dTFunctionNameModifier2;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function4;
        String str6;
        Function2 function5;
        Function2 function6;
        Function2 function7;
        Function1 function8;
        Function2 function9;
        Modifier modifier5;
        Painter painter3;
        Function2 function10;
        Function0 function11;
        ?? r7;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        GapComposer gapComposer2;
        String str7;
        int i10;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVDisclaimer-fWhpE4E");
        }
        str.getClass();
        GapComposer gapComposerH = composer.h(1076670049);
        Applier applier = gapComposerH.f7976a;
        int i11 = i3 & 1;
        if (i11 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            if ((i3 & 4) != 0) {
                i10 = 128;
            } else {
                if ((i2 & 512) == 0 ? gapComposerH.K(painter) : gapComposerH.y(painter)) {
                    i10 = 256;
                } else {
                    i10 = 128;
                }
            }
            i4 |= i10;
        }
        int i12 = i3 & 8;
        if (i12 == 0) {
            if ((i2 & 3072) == 0) {
                i4 |= gapComposerH.e(j2) ? 2048 : 1024;
            }
            i5 = i3 & 16;
            if (i5 != 0) {
                if ((i2 & 24576) == 0) {
                    str3 = str2;
                    if (gapComposerH.K(str3)) {
                        i6 = 16384;
                    } else {
                        i6 = 8192;
                    }
                    i4 |= i6;
                }
                i7 = i3 & 32;
                if (i7 != 0) {
                    if ((196608 & i2) == 0) {
                        function1 = function0;
                        if (gapComposerH.y(function1)) {
                            i8 = 131072;
                        } else {
                            i8 = 65536;
                        }
                        i4 |= i8;
                    }
                    modifier2 = modifierE;
                    if ((i4 & 74899) != 74898) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (gapComposerH.p(i4 & 1, z)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0 || gapComposerH.h0()) {
                            if (i11 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if ((i3 & 4) != 0) {
                                painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0);
                                i4 &= -897;
                            } else {
                                painterA = painter;
                            }
                            if (i12 != 0) {
                                Color.f8866b.getClass();
                                j4 = Color.f8871i;
                            } else {
                                j4 = j2;
                            }
                            if (i5 != 0) {
                                str3 = null;
                            }
                            i9 = i4;
                            if (i7 != 0) {
                                function1 = null;
                            }
                            modifier4 = dTFunctionNameModifier;
                            str5 = str3;
                            j5 = j4;
                        } else {
                            gapComposerH.D();
                            if ((i3 & 4) != 0) {
                                i4 &= -897;
                            }
                            painterA = painter;
                            i9 = i4;
                            str5 = str3;
                            modifier4 = modifier2;
                            j5 = j2;
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        Modifier modifierB = BackgroundKt.b(ClipKt.a(ModifierExtKt.e(modifier4, "disclaimer_section_view"), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = new x20(23);
                            gapComposerH.q(objX);
                        }
                        Modifier modifierB2 = SemanticsModifierKt.b(modifierB, true, (Function1) objX);
                        if (function1 != null) {
                            Function0 function12 = function1;
                            dTFunctionNameModifier2 = ModifierExtKt.c(new DTFunctionNameModifier("LVDisclaimer-fWhpE4E"), false, null, null, function12, 31);
                            function3 = function12;
                        } else {
                            function3 = function1;
                            dTFunctionNameModifier2 = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                        }
                        Modifier modifierI = PaddingKt.i(modifierB2.o(dTFunctionNameModifier2), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                        Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                        Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
                        Alignment.f8582a.getClass();
                        rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.f8591k, gapComposerH, 48);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
                        ComposeUiNode.b0.getClass();
                        function4 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        str6 = str5;
                        if (gapComposerH.S) {
                            gapComposerH.C(function4);
                        } else {
                            gapComposerH.o();
                        }
                        function5 = ComposeUiNode.Companion.f9644f;
                        Updater.c(gapComposerH, rowMeasurePolicyA, function5);
                        function6 = ComposeUiNode.Companion.f9643e;
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                        Integer numValueOf = Integer.valueOf(iHashCode);
                        function7 = ComposeUiNode.Companion.g;
                        Updater.c(gapComposerH, numValueOf, function7);
                        function8 = ComposeUiNode.Companion.f9645h;
                        Updater.b(gapComposerH, function8);
                        function9 = ComposeUiNode.Companion.d;
                        Updater.c(gapComposerH, modifierC, function9);
                        if (painterA != null) {
                            int i13 = (i9 & 7168) | 56 | ((i9 >> 6) & 14);
                            modifier5 = modifier4;
                            function11 = function4;
                            function10 = function9;
                            Painter painter4 = painterA;
                            r7 = 0;
                            IconKt.a(painter4, null, ModifierExtKt.e(SizeKt.o(n00.i(gapComposerH, 1986842396, "LVDisclaimer-fWhpE4E"), LVAppDesignKitTheme.d(gapComposerH).o), "disclaimer_icon_image"), j5, gapComposerH, i13, 0);
                            painter3 = painter4;
                            gapComposerH.Z(false);
                        } else {
                            modifier5 = modifier4;
                            painter3 = painterA;
                            function10 = function9;
                            function11 = function4;
                            r7 = 0;
                            gapComposerH.L(1987137733);
                            gapComposerH.Z(false);
                        }
                        Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
                        DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                        columnMeasurePolicyA = ColumnKt.a(spacedAlignedF2, Alignment.Companion.n, gapComposerH, r7);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier3);
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function11);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, columnMeasurePolicyA, function5);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                        cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
                        TextKt.c(str, n00.f(gapComposerH, modifierC2, function10, "LVDisclaimer-fWhpE4E", "disclaimer_description_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i9 >> 3) & 14, 0, 131064);
                        gapComposer2 = gapComposerH;
                        if (str6 != null) {
                            str7 = str6;
                            LVLinkKt.b(n00.d(gapComposer2, -1412835391, "LVDisclaimer-fWhpE4E", "disclaimer_link_button"), str7, false, null, null, gapComposer2, (i9 >> 9) & 112, 28);
                            gapComposer2.Z(r7);
                        } else {
                            str7 = str6;
                            gapComposer2.L(-1412656645);
                            gapComposer2.Z(r7);
                        }
                        gapComposer2.Z(true);
                        gapComposer2.Z(true);
                        modifier3 = modifier5;
                        str4 = str7;
                        function2 = function3;
                        painter2 = painter3;
                        j3 = j5;
                        gapComposer = gapComposer2;
                    } else {
                        gapComposerH.D();
                        painter2 = painter;
                        j3 = j2;
                        str4 = str3;
                        function2 = function1;
                        modifier3 = modifier2;
                        gapComposer = gapComposerH;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new qm(modifier3, str, painter2, j3, str4, function2, i2, i3);
                    }
                }
                i4 |= ImageMetadata.EDGE_MODE;
                function1 = function0;
                modifier2 = modifierE;
                if ((i4 & 74899) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i4 & 1, z)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i11 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0);
                            i4 &= -897;
                        } else {
                            painterA = painter;
                        }
                        if (i12 != 0) {
                            Color.f8866b.getClass();
                            j4 = Color.f8871i;
                        } else {
                            j4 = j2;
                        }
                        if (i5 != 0) {
                            str3 = null;
                        }
                        i9 = i4;
                        if (i7 != 0) {
                            function1 = null;
                        }
                        modifier4 = dTFunctionNameModifier;
                        str5 = str3;
                        j5 = j4;
                    } else {
                        if (i11 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0);
                            i4 &= -897;
                        } else {
                            painterA = painter;
                        }
                        if (i12 != 0) {
                            Color.f8866b.getClass();
                            j4 = Color.f8871i;
                        } else {
                            j4 = j2;
                        }
                        if (i5 != 0) {
                            str3 = null;
                        }
                        i9 = i4;
                        if (i7 != 0) {
                            function1 = null;
                        }
                        modifier4 = dTFunctionNameModifier;
                        str5 = str3;
                        j5 = j4;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierB3 = BackgroundKt.b(ClipKt.a(ModifierExtKt.e(modifier4, "disclaimer_section_view"), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = new x20(23);
                        gapComposerH.q(objX);
                    }
                    Modifier modifierB4 = SemanticsModifierKt.b(modifierB3, true, (Function1) objX);
                    if (function1 != null) {
                        Function0 function13 = function1;
                        dTFunctionNameModifier2 = ModifierExtKt.c(new DTFunctionNameModifier("LVDisclaimer-fWhpE4E"), false, null, null, function13, 31);
                        function3 = function13;
                    } else {
                        function3 = function1;
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                    }
                    Modifier modifierI2 = PaddingKt.i(modifierB4.o(dTFunctionNameModifier2), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                    Arrangement$Start$1 arrangement$Start$2 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF3 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
                    Alignment.f8582a.getClass();
                    rowMeasurePolicyA = RowKt.a(spacedAlignedF3, Alignment.Companion.f8591k, gapComposerH, 48);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierI2);
                    ComposeUiNode.b0.getClass();
                    function4 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    str6 = str5;
                    if (gapComposerH.S) {
                        gapComposerH.C(function4);
                    } else {
                        gapComposerH.o();
                    }
                    function5 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, rowMeasurePolicyA, function5);
                    function6 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                    Integer numValueOf2 = Integer.valueOf(iHashCode);
                    function7 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf2, function7);
                    function8 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function8);
                    function9 = ComposeUiNode.Companion.d;
                    Updater.c(gapComposerH, modifierC, function9);
                    if (painterA != null) {
                        int i14 = (i9 & 7168) | 56 | ((i9 >> 6) & 14);
                        modifier5 = modifier4;
                        function11 = function4;
                        function10 = function9;
                        Painter painter5 = painterA;
                        r7 = 0;
                        IconKt.a(painter5, null, ModifierExtKt.e(SizeKt.o(n00.i(gapComposerH, 1986842396, "LVDisclaimer-fWhpE4E"), LVAppDesignKitTheme.d(gapComposerH).o), "disclaimer_icon_image"), j5, gapComposerH, i14, 0);
                        painter3 = painter5;
                        gapComposerH.Z(false);
                    } else {
                        modifier5 = modifier4;
                        painter3 = painterA;
                        function10 = function9;
                        function11 = function4;
                        r7 = 0;
                        gapComposerH.L(1987137733);
                        gapComposerH.Z(false);
                    }
                    Arrangement.SpacedAligned spacedAlignedF4 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
                    DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                    columnMeasurePolicyA = ColumnKt.a(spacedAlignedF4, Alignment.Companion.n, gapComposerH, r7);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier4);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function11);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, function5);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                    cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
                    TextKt.c(str, n00.f(gapComposerH, modifierC2, function10, "LVDisclaimer-fWhpE4E", "disclaimer_description_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i9 >> 3) & 14, 0, 131064);
                    gapComposer2 = gapComposerH;
                    if (str6 != null) {
                        str7 = str6;
                        LVLinkKt.b(n00.d(gapComposer2, -1412835391, "LVDisclaimer-fWhpE4E", "disclaimer_link_button"), str7, false, null, null, gapComposer2, (i9 >> 9) & 112, 28);
                        gapComposer2.Z(r7);
                    } else {
                        str7 = str6;
                        gapComposer2.L(-1412656645);
                        gapComposer2.Z(r7);
                    }
                    gapComposer2.Z(true);
                    gapComposer2.Z(true);
                    modifier3 = modifier5;
                    str4 = str7;
                    function2 = function3;
                    painter2 = painter3;
                    j3 = j5;
                    gapComposer = gapComposer2;
                } else {
                    gapComposerH.D();
                    painter2 = painter;
                    j3 = j2;
                    str4 = str3;
                    function2 = function1;
                    modifier3 = modifier2;
                    gapComposer = gapComposerH;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new qm(modifier3, str, painter2, j3, str4, function2, i2, i3);
                }
            }
            i4 |= 24576;
            str3 = str2;
            i7 = i3 & 32;
            if (i7 != 0) {
                if ((196608 & i2) == 0) {
                    function1 = function0;
                    if (gapComposerH.y(function1)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
                modifier2 = modifierE;
                if ((i4 & 74899) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i4 & 1, z)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i11 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0);
                            i4 &= -897;
                        } else {
                            painterA = painter;
                        }
                        if (i12 != 0) {
                            Color.f8866b.getClass();
                            j4 = Color.f8871i;
                        } else {
                            j4 = j2;
                        }
                        if (i5 != 0) {
                            str3 = null;
                        }
                        i9 = i4;
                        if (i7 != 0) {
                            function1 = null;
                        }
                        modifier4 = dTFunctionNameModifier;
                        str5 = str3;
                        j5 = j4;
                    } else {
                        if (i11 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0);
                            i4 &= -897;
                        } else {
                            painterA = painter;
                        }
                        if (i12 != 0) {
                            Color.f8866b.getClass();
                            j4 = Color.f8871i;
                        } else {
                            j4 = j2;
                        }
                        if (i5 != 0) {
                            str3 = null;
                        }
                        i9 = i4;
                        if (i7 != 0) {
                            function1 = null;
                        }
                        modifier4 = dTFunctionNameModifier;
                        str5 = str3;
                        j5 = j4;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifierB5 = BackgroundKt.b(ClipKt.a(ModifierExtKt.e(modifier4, "disclaimer_section_view"), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = new x20(23);
                        gapComposerH.q(objX);
                    }
                    Modifier modifierB6 = SemanticsModifierKt.b(modifierB5, true, (Function1) objX);
                    if (function1 != null) {
                        Function0 function14 = function1;
                        dTFunctionNameModifier2 = ModifierExtKt.c(new DTFunctionNameModifier("LVDisclaimer-fWhpE4E"), false, null, null, function14, 31);
                        function3 = function14;
                    } else {
                        function3 = function1;
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                    }
                    Modifier modifierI3 = PaddingKt.i(modifierB6.o(dTFunctionNameModifier2), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                    Arrangement$Start$1 arrangement$Start$3 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF5 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
                    Alignment.f8582a.getClass();
                    rowMeasurePolicyA = RowKt.a(spacedAlignedF5, Alignment.Companion.f8591k, gapComposerH, 48);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierI3);
                    ComposeUiNode.b0.getClass();
                    function4 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    str6 = str5;
                    if (gapComposerH.S) {
                        gapComposerH.C(function4);
                    } else {
                        gapComposerH.o();
                    }
                    function5 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, rowMeasurePolicyA, function5);
                    function6 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                    Integer numValueOf3 = Integer.valueOf(iHashCode);
                    function7 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf3, function7);
                    function8 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function8);
                    function9 = ComposeUiNode.Companion.d;
                    Updater.c(gapComposerH, modifierC, function9);
                    if (painterA != null) {
                        int i15 = (i9 & 7168) | 56 | ((i9 >> 6) & 14);
                        modifier5 = modifier4;
                        function11 = function4;
                        function10 = function9;
                        Painter painter6 = painterA;
                        r7 = 0;
                        IconKt.a(painter6, null, ModifierExtKt.e(SizeKt.o(n00.i(gapComposerH, 1986842396, "LVDisclaimer-fWhpE4E"), LVAppDesignKitTheme.d(gapComposerH).o), "disclaimer_icon_image"), j5, gapComposerH, i15, 0);
                        painter3 = painter6;
                        gapComposerH.Z(false);
                    } else {
                        modifier5 = modifier4;
                        painter3 = painterA;
                        function10 = function9;
                        function11 = function4;
                        r7 = 0;
                        gapComposerH.L(1987137733);
                        gapComposerH.Z(false);
                    }
                    Arrangement.SpacedAligned spacedAlignedF6 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
                    DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                    columnMeasurePolicyA = ColumnKt.a(spacedAlignedF6, Alignment.Companion.n, gapComposerH, r7);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier5);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function11);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, function5);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                    cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
                    TextKt.c(str, n00.f(gapComposerH, modifierC2, function10, "LVDisclaimer-fWhpE4E", "disclaimer_description_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i9 >> 3) & 14, 0, 131064);
                    gapComposer2 = gapComposerH;
                    if (str6 != null) {
                        str7 = str6;
                        LVLinkKt.b(n00.d(gapComposer2, -1412835391, "LVDisclaimer-fWhpE4E", "disclaimer_link_button"), str7, false, null, null, gapComposer2, (i9 >> 9) & 112, 28);
                        gapComposer2.Z(r7);
                    } else {
                        str7 = str6;
                        gapComposer2.L(-1412656645);
                        gapComposer2.Z(r7);
                    }
                    gapComposer2.Z(true);
                    gapComposer2.Z(true);
                    modifier3 = modifier5;
                    str4 = str7;
                    function2 = function3;
                    painter2 = painter3;
                    j3 = j5;
                    gapComposer = gapComposer2;
                } else {
                    gapComposerH.D();
                    painter2 = painter;
                    j3 = j2;
                    str4 = str3;
                    function2 = function1;
                    modifier3 = modifier2;
                    gapComposer = gapComposerH;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new qm(modifier3, str, painter2, j3, str4, function2, i2, i3);
                }
            }
            i4 |= ImageMetadata.EDGE_MODE;
            function1 = function0;
            modifier2 = modifierE;
            if ((i4 & 74899) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i11 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0);
                        i4 &= -897;
                    } else {
                        painterA = painter;
                    }
                    if (i12 != 0) {
                        Color.f8866b.getClass();
                        j4 = Color.f8871i;
                    } else {
                        j4 = j2;
                    }
                    if (i5 != 0) {
                        str3 = null;
                    }
                    i9 = i4;
                    if (i7 != 0) {
                        function1 = null;
                    }
                    modifier4 = dTFunctionNameModifier;
                    str5 = str3;
                    j5 = j4;
                } else {
                    if (i11 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0);
                        i4 &= -897;
                    } else {
                        painterA = painter;
                    }
                    if (i12 != 0) {
                        Color.f8866b.getClass();
                        j4 = Color.f8871i;
                    } else {
                        j4 = j2;
                    }
                    if (i5 != 0) {
                        str3 = null;
                    }
                    i9 = i4;
                    if (i7 != 0) {
                        function1 = null;
                    }
                    modifier4 = dTFunctionNameModifier;
                    str5 = str3;
                    j5 = j4;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                Modifier modifierB7 = BackgroundKt.b(ClipKt.a(ModifierExtKt.e(modifier4, "disclaimer_section_view"), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new x20(23);
                    gapComposerH.q(objX);
                }
                Modifier modifierB8 = SemanticsModifierKt.b(modifierB7, true, (Function1) objX);
                if (function1 != null) {
                    Function0 function15 = function1;
                    dTFunctionNameModifier2 = ModifierExtKt.c(new DTFunctionNameModifier("LVDisclaimer-fWhpE4E"), false, null, null, function15, 31);
                    function3 = function15;
                } else {
                    function3 = function1;
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                }
                Modifier modifierI4 = PaddingKt.i(modifierB8.o(dTFunctionNameModifier2), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                Arrangement$Start$1 arrangement$Start$4 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF7 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(spacedAlignedF7, Alignment.Companion.f8591k, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierI4);
                ComposeUiNode.b0.getClass();
                function4 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                str6 = str5;
                if (gapComposerH.S) {
                    gapComposerH.C(function4);
                } else {
                    gapComposerH.o();
                }
                function5 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, rowMeasurePolicyA, function5);
                function6 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                Integer numValueOf4 = Integer.valueOf(iHashCode);
                function7 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf4, function7);
                function8 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function8);
                function9 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function9);
                if (painterA != null) {
                    int i16 = (i9 & 7168) | 56 | ((i9 >> 6) & 14);
                    modifier5 = modifier4;
                    function11 = function4;
                    function10 = function9;
                    Painter painter7 = painterA;
                    r7 = 0;
                    IconKt.a(painter7, null, ModifierExtKt.e(SizeKt.o(n00.i(gapComposerH, 1986842396, "LVDisclaimer-fWhpE4E"), LVAppDesignKitTheme.d(gapComposerH).o), "disclaimer_icon_image"), j5, gapComposerH, i16, 0);
                    painter3 = painter7;
                    gapComposerH.Z(false);
                } else {
                    modifier5 = modifier4;
                    painter3 = painterA;
                    function10 = function9;
                    function11 = function4;
                    r7 = 0;
                    gapComposerH.L(1987137733);
                    gapComposerH.Z(false);
                }
                Arrangement.SpacedAligned spacedAlignedF8 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
                DTFunctionNameModifier dTFunctionNameModifier6 = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                columnMeasurePolicyA = ColumnKt.a(spacedAlignedF8, Alignment.Companion.n, gapComposerH, r7);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier6);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function11);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function5);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
                TextKt.c(str, n00.f(gapComposerH, modifierC2, function10, "LVDisclaimer-fWhpE4E", "disclaimer_description_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i9 >> 3) & 14, 0, 131064);
                gapComposer2 = gapComposerH;
                if (str6 != null) {
                    str7 = str6;
                    LVLinkKt.b(n00.d(gapComposer2, -1412835391, "LVDisclaimer-fWhpE4E", "disclaimer_link_button"), str7, false, null, null, gapComposer2, (i9 >> 9) & 112, 28);
                    gapComposer2.Z(r7);
                } else {
                    str7 = str6;
                    gapComposer2.L(-1412656645);
                    gapComposer2.Z(r7);
                }
                gapComposer2.Z(true);
                gapComposer2.Z(true);
                modifier3 = modifier5;
                str4 = str7;
                function2 = function3;
                painter2 = painter3;
                j3 = j5;
                gapComposer = gapComposer2;
            } else {
                gapComposerH.D();
                painter2 = painter;
                j3 = j2;
                str4 = str3;
                function2 = function1;
                modifier3 = modifier2;
                gapComposer = gapComposerH;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new qm(modifier3, str, painter2, j3, str4, function2, i2, i3);
            }
        }
        i4 |= 3072;
        i5 = i3 & 16;
        if (i5 != 0) {
            if ((i2 & 24576) == 0) {
                str3 = str2;
                if (gapComposerH.K(str3)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i4 |= i6;
            }
            i7 = i3 & 32;
            if (i7 != 0) {
                if ((196608 & i2) == 0) {
                    function1 = function0;
                    if (gapComposerH.y(function1)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
                modifier2 = modifierE;
                if ((i4 & 74899) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i4 & 1, z)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i11 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0);
                            i4 &= -897;
                        } else {
                            painterA = painter;
                        }
                        if (i12 != 0) {
                            Color.f8866b.getClass();
                            j4 = Color.f8871i;
                        } else {
                            j4 = j2;
                        }
                        if (i5 != 0) {
                            str3 = null;
                        }
                        i9 = i4;
                        if (i7 != 0) {
                            function1 = null;
                        }
                        modifier4 = dTFunctionNameModifier;
                        str5 = str3;
                        j5 = j4;
                    } else {
                        if (i11 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if ((i3 & 4) != 0) {
                            painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0);
                            i4 &= -897;
                        } else {
                            painterA = painter;
                        }
                        if (i12 != 0) {
                            Color.f8866b.getClass();
                            j4 = Color.f8871i;
                        } else {
                            j4 = j2;
                        }
                        if (i5 != 0) {
                            str3 = null;
                        }
                        i9 = i4;
                        if (i7 != 0) {
                            function1 = null;
                        }
                        modifier4 = dTFunctionNameModifier;
                        str5 = str3;
                        j5 = j4;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    Modifier modifierB9 = BackgroundKt.b(ClipKt.a(ModifierExtKt.e(modifier4, "disclaimer_section_view"), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = new x20(23);
                        gapComposerH.q(objX);
                    }
                    Modifier modifierB10 = SemanticsModifierKt.b(modifierB9, true, (Function1) objX);
                    if (function1 != null) {
                        Function0 function16 = function1;
                        dTFunctionNameModifier2 = ModifierExtKt.c(new DTFunctionNameModifier("LVDisclaimer-fWhpE4E"), false, null, null, function16, 31);
                        function3 = function16;
                    } else {
                        function3 = function1;
                        dTFunctionNameModifier2 = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                    }
                    Modifier modifierI5 = PaddingKt.i(modifierB10.o(dTFunctionNameModifier2), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                    Arrangement$Start$1 arrangement$Start$5 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF9 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
                    Alignment.f8582a.getClass();
                    rowMeasurePolicyA = RowKt.a(spacedAlignedF9, Alignment.Companion.f8591k, gapComposerH, 48);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierI5);
                    ComposeUiNode.b0.getClass();
                    function4 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    str6 = str5;
                    if (gapComposerH.S) {
                        gapComposerH.C(function4);
                    } else {
                        gapComposerH.o();
                    }
                    function5 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, rowMeasurePolicyA, function5);
                    function6 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                    Integer numValueOf5 = Integer.valueOf(iHashCode);
                    function7 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf5, function7);
                    function8 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function8);
                    function9 = ComposeUiNode.Companion.d;
                    Updater.c(gapComposerH, modifierC, function9);
                    if (painterA != null) {
                        int i17 = (i9 & 7168) | 56 | ((i9 >> 6) & 14);
                        modifier5 = modifier4;
                        function11 = function4;
                        function10 = function9;
                        Painter painter8 = painterA;
                        r7 = 0;
                        IconKt.a(painter8, null, ModifierExtKt.e(SizeKt.o(n00.i(gapComposerH, 1986842396, "LVDisclaimer-fWhpE4E"), LVAppDesignKitTheme.d(gapComposerH).o), "disclaimer_icon_image"), j5, gapComposerH, i17, 0);
                        painter3 = painter8;
                        gapComposerH.Z(false);
                    } else {
                        modifier5 = modifier4;
                        painter3 = painterA;
                        function10 = function9;
                        function11 = function4;
                        r7 = 0;
                        gapComposerH.L(1987137733);
                        gapComposerH.Z(false);
                    }
                    Arrangement.SpacedAligned spacedAlignedF10 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
                    DTFunctionNameModifier dTFunctionNameModifier7 = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                    columnMeasurePolicyA = ColumnKt.a(spacedAlignedF10, Alignment.Companion.n, gapComposerH, r7);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier7);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function11);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, function5);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                    cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
                    TextKt.c(str, n00.f(gapComposerH, modifierC2, function10, "LVDisclaimer-fWhpE4E", "disclaimer_description_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i9 >> 3) & 14, 0, 131064);
                    gapComposer2 = gapComposerH;
                    if (str6 != null) {
                        str7 = str6;
                        LVLinkKt.b(n00.d(gapComposer2, -1412835391, "LVDisclaimer-fWhpE4E", "disclaimer_link_button"), str7, false, null, null, gapComposer2, (i9 >> 9) & 112, 28);
                        gapComposer2.Z(r7);
                    } else {
                        str7 = str6;
                        gapComposer2.L(-1412656645);
                        gapComposer2.Z(r7);
                    }
                    gapComposer2.Z(true);
                    gapComposer2.Z(true);
                    modifier3 = modifier5;
                    str4 = str7;
                    function2 = function3;
                    painter2 = painter3;
                    j3 = j5;
                    gapComposer = gapComposer2;
                } else {
                    gapComposerH.D();
                    painter2 = painter;
                    j3 = j2;
                    str4 = str3;
                    function2 = function1;
                    modifier3 = modifier2;
                    gapComposer = gapComposerH;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new qm(modifier3, str, painter2, j3, str4, function2, i2, i3);
                }
            }
            i4 |= ImageMetadata.EDGE_MODE;
            function1 = function0;
            modifier2 = modifierE;
            if ((i4 & 74899) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i11 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0);
                        i4 &= -897;
                    } else {
                        painterA = painter;
                    }
                    if (i12 != 0) {
                        Color.f8866b.getClass();
                        j4 = Color.f8871i;
                    } else {
                        j4 = j2;
                    }
                    if (i5 != 0) {
                        str3 = null;
                    }
                    i9 = i4;
                    if (i7 != 0) {
                        function1 = null;
                    }
                    modifier4 = dTFunctionNameModifier;
                    str5 = str3;
                    j5 = j4;
                } else {
                    if (i11 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0);
                        i4 &= -897;
                    } else {
                        painterA = painter;
                    }
                    if (i12 != 0) {
                        Color.f8866b.getClass();
                        j4 = Color.f8871i;
                    } else {
                        j4 = j2;
                    }
                    if (i5 != 0) {
                        str3 = null;
                    }
                    i9 = i4;
                    if (i7 != 0) {
                        function1 = null;
                    }
                    modifier4 = dTFunctionNameModifier;
                    str5 = str3;
                    j5 = j4;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                Modifier modifierB11 = BackgroundKt.b(ClipKt.a(ModifierExtKt.e(modifier4, "disclaimer_section_view"), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new x20(23);
                    gapComposerH.q(objX);
                }
                Modifier modifierB12 = SemanticsModifierKt.b(modifierB11, true, (Function1) objX);
                if (function1 != null) {
                    Function0 function17 = function1;
                    dTFunctionNameModifier2 = ModifierExtKt.c(new DTFunctionNameModifier("LVDisclaimer-fWhpE4E"), false, null, null, function17, 31);
                    function3 = function17;
                } else {
                    function3 = function1;
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                }
                Modifier modifierI6 = PaddingKt.i(modifierB12.o(dTFunctionNameModifier2), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                Arrangement$Start$1 arrangement$Start$6 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF11 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(spacedAlignedF11, Alignment.Companion.f8591k, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierI6);
                ComposeUiNode.b0.getClass();
                function4 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                str6 = str5;
                if (gapComposerH.S) {
                    gapComposerH.C(function4);
                } else {
                    gapComposerH.o();
                }
                function5 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, rowMeasurePolicyA, function5);
                function6 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                Integer numValueOf6 = Integer.valueOf(iHashCode);
                function7 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf6, function7);
                function8 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function8);
                function9 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function9);
                if (painterA != null) {
                    int i18 = (i9 & 7168) | 56 | ((i9 >> 6) & 14);
                    modifier5 = modifier4;
                    function11 = function4;
                    function10 = function9;
                    Painter painter9 = painterA;
                    r7 = 0;
                    IconKt.a(painter9, null, ModifierExtKt.e(SizeKt.o(n00.i(gapComposerH, 1986842396, "LVDisclaimer-fWhpE4E"), LVAppDesignKitTheme.d(gapComposerH).o), "disclaimer_icon_image"), j5, gapComposerH, i18, 0);
                    painter3 = painter9;
                    gapComposerH.Z(false);
                } else {
                    modifier5 = modifier4;
                    painter3 = painterA;
                    function10 = function9;
                    function11 = function4;
                    r7 = 0;
                    gapComposerH.L(1987137733);
                    gapComposerH.Z(false);
                }
                Arrangement.SpacedAligned spacedAlignedF12 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
                DTFunctionNameModifier dTFunctionNameModifier8 = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                columnMeasurePolicyA = ColumnKt.a(spacedAlignedF12, Alignment.Companion.n, gapComposerH, r7);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier8);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function11);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function5);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
                TextKt.c(str, n00.f(gapComposerH, modifierC2, function10, "LVDisclaimer-fWhpE4E", "disclaimer_description_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i9 >> 3) & 14, 0, 131064);
                gapComposer2 = gapComposerH;
                if (str6 != null) {
                    str7 = str6;
                    LVLinkKt.b(n00.d(gapComposer2, -1412835391, "LVDisclaimer-fWhpE4E", "disclaimer_link_button"), str7, false, null, null, gapComposer2, (i9 >> 9) & 112, 28);
                    gapComposer2.Z(r7);
                } else {
                    str7 = str6;
                    gapComposer2.L(-1412656645);
                    gapComposer2.Z(r7);
                }
                gapComposer2.Z(true);
                gapComposer2.Z(true);
                modifier3 = modifier5;
                str4 = str7;
                function2 = function3;
                painter2 = painter3;
                j3 = j5;
                gapComposer = gapComposer2;
            } else {
                gapComposerH.D();
                painter2 = painter;
                j3 = j2;
                str4 = str3;
                function2 = function1;
                modifier3 = modifier2;
                gapComposer = gapComposerH;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new qm(modifier3, str, painter2, j3, str4, function2, i2, i3);
            }
        }
        i4 |= 24576;
        str3 = str2;
        i7 = i3 & 32;
        if (i7 != 0) {
            if ((196608 & i2) == 0) {
                function1 = function0;
                if (gapComposerH.y(function1)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i4 |= i8;
            }
            modifier2 = modifierE;
            if ((i4 & 74899) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i11 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0);
                        i4 &= -897;
                    } else {
                        painterA = painter;
                    }
                    if (i12 != 0) {
                        Color.f8866b.getClass();
                        j4 = Color.f8871i;
                    } else {
                        j4 = j2;
                    }
                    if (i5 != 0) {
                        str3 = null;
                    }
                    i9 = i4;
                    if (i7 != 0) {
                        function1 = null;
                    }
                    modifier4 = dTFunctionNameModifier;
                    str5 = str3;
                    j5 = j4;
                } else {
                    if (i11 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if ((i3 & 4) != 0) {
                        painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0);
                        i4 &= -897;
                    } else {
                        painterA = painter;
                    }
                    if (i12 != 0) {
                        Color.f8866b.getClass();
                        j4 = Color.f8871i;
                    } else {
                        j4 = j2;
                    }
                    if (i5 != 0) {
                        str3 = null;
                    }
                    i9 = i4;
                    if (i7 != 0) {
                        function1 = null;
                    }
                    modifier4 = dTFunctionNameModifier;
                    str5 = str3;
                    j5 = j4;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                Modifier modifierB13 = BackgroundKt.b(ClipKt.a(ModifierExtKt.e(modifier4, "disclaimer_section_view"), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new x20(23);
                    gapComposerH.q(objX);
                }
                Modifier modifierB14 = SemanticsModifierKt.b(modifierB13, true, (Function1) objX);
                if (function1 != null) {
                    Function0 function18 = function1;
                    dTFunctionNameModifier2 = ModifierExtKt.c(new DTFunctionNameModifier("LVDisclaimer-fWhpE4E"), false, null, null, function18, 31);
                    function3 = function18;
                } else {
                    function3 = function1;
                    dTFunctionNameModifier2 = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                }
                Modifier modifierI7 = PaddingKt.i(modifierB14.o(dTFunctionNameModifier2), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                Arrangement$Start$1 arrangement$Start$7 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF13 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(spacedAlignedF13, Alignment.Companion.f8591k, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierI7);
                ComposeUiNode.b0.getClass();
                function4 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                str6 = str5;
                if (gapComposerH.S) {
                    gapComposerH.C(function4);
                } else {
                    gapComposerH.o();
                }
                function5 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, rowMeasurePolicyA, function5);
                function6 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                Integer numValueOf7 = Integer.valueOf(iHashCode);
                function7 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf7, function7);
                function8 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function8);
                function9 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function9);
                if (painterA != null) {
                    int i19 = (i9 & 7168) | 56 | ((i9 >> 6) & 14);
                    modifier5 = modifier4;
                    function11 = function4;
                    function10 = function9;
                    Painter painter10 = painterA;
                    r7 = 0;
                    IconKt.a(painter10, null, ModifierExtKt.e(SizeKt.o(n00.i(gapComposerH, 1986842396, "LVDisclaimer-fWhpE4E"), LVAppDesignKitTheme.d(gapComposerH).o), "disclaimer_icon_image"), j5, gapComposerH, i19, 0);
                    painter3 = painter10;
                    gapComposerH.Z(false);
                } else {
                    modifier5 = modifier4;
                    painter3 = painterA;
                    function10 = function9;
                    function11 = function4;
                    r7 = 0;
                    gapComposerH.L(1987137733);
                    gapComposerH.Z(false);
                }
                Arrangement.SpacedAligned spacedAlignedF14 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
                DTFunctionNameModifier dTFunctionNameModifier9 = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                columnMeasurePolicyA = ColumnKt.a(spacedAlignedF14, Alignment.Companion.n, gapComposerH, r7);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier9);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function11);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function5);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
                TextKt.c(str, n00.f(gapComposerH, modifierC2, function10, "LVDisclaimer-fWhpE4E", "disclaimer_description_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i9 >> 3) & 14, 0, 131064);
                gapComposer2 = gapComposerH;
                if (str6 != null) {
                    str7 = str6;
                    LVLinkKt.b(n00.d(gapComposer2, -1412835391, "LVDisclaimer-fWhpE4E", "disclaimer_link_button"), str7, false, null, null, gapComposer2, (i9 >> 9) & 112, 28);
                    gapComposer2.Z(r7);
                } else {
                    str7 = str6;
                    gapComposer2.L(-1412656645);
                    gapComposer2.Z(r7);
                }
                gapComposer2.Z(true);
                gapComposer2.Z(true);
                modifier3 = modifier5;
                str4 = str7;
                function2 = function3;
                painter2 = painter3;
                j3 = j5;
                gapComposer = gapComposer2;
            } else {
                gapComposerH.D();
                painter2 = painter;
                j3 = j2;
                str4 = str3;
                function2 = function1;
                modifier3 = modifier2;
                gapComposer = gapComposerH;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new qm(modifier3, str, painter2, j3, str4, function2, i2, i3);
            }
        }
        i4 |= ImageMetadata.EDGE_MODE;
        function1 = function0;
        modifier2 = modifierE;
        if ((i4 & 74899) != 74898) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i4 & 1, z)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i11 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if ((i3 & 4) != 0) {
                    painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0);
                    i4 &= -897;
                } else {
                    painterA = painter;
                }
                if (i12 != 0) {
                    Color.f8866b.getClass();
                    j4 = Color.f8871i;
                } else {
                    j4 = j2;
                }
                if (i5 != 0) {
                    str3 = null;
                }
                i9 = i4;
                if (i7 != 0) {
                    function1 = null;
                }
                modifier4 = dTFunctionNameModifier;
                str5 = str3;
                j5 = j4;
            } else {
                if (i11 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if ((i3 & 4) != 0) {
                    painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0);
                    i4 &= -897;
                } else {
                    painterA = painter;
                }
                if (i12 != 0) {
                    Color.f8866b.getClass();
                    j4 = Color.f8871i;
                } else {
                    j4 = j2;
                }
                if (i5 != 0) {
                    str3 = null;
                }
                i9 = i4;
                if (i7 != 0) {
                    function1 = null;
                }
                modifier4 = dTFunctionNameModifier;
                str5 = str3;
                j5 = j4;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            Modifier modifierB15 = BackgroundKt.b(ClipKt.a(ModifierExtKt.e(modifier4, "disclaimer_section_view"), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
            objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new x20(23);
                gapComposerH.q(objX);
            }
            Modifier modifierB16 = SemanticsModifierKt.b(modifierB15, true, (Function1) objX);
            if (function1 != null) {
                Function0 function19 = function1;
                dTFunctionNameModifier2 = ModifierExtKt.c(new DTFunctionNameModifier("LVDisclaimer-fWhpE4E"), false, null, null, function19, 31);
                function3 = function19;
            } else {
                function3 = function1;
                dTFunctionNameModifier2 = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
            }
            Modifier modifierI8 = PaddingKt.i(modifierB16.o(dTFunctionNameModifier2), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Start$1 arrangement$Start$8 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF15 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
            Alignment.f8582a.getClass();
            rowMeasurePolicyA = RowKt.a(spacedAlignedF15, Alignment.Companion.f8591k, gapComposerH, 48);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierI8);
            ComposeUiNode.b0.getClass();
            function4 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            str6 = str5;
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function5);
            function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf8 = Integer.valueOf(iHashCode);
            function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf8, function7);
            function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            function9 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function9);
            if (painterA != null) {
                int i110 = (i9 & 7168) | 56 | ((i9 >> 6) & 14);
                modifier5 = modifier4;
                function11 = function4;
                function10 = function9;
                Painter painter11 = painterA;
                r7 = 0;
                IconKt.a(painter11, null, ModifierExtKt.e(SizeKt.o(n00.i(gapComposerH, 1986842396, "LVDisclaimer-fWhpE4E"), LVAppDesignKitTheme.d(gapComposerH).o), "disclaimer_icon_image"), j5, gapComposerH, i110, 0);
                painter3 = painter11;
                gapComposerH.Z(false);
            } else {
                modifier5 = modifier4;
                painter3 = painterA;
                function10 = function9;
                function11 = function4;
                r7 = 0;
                gapComposerH.L(1987137733);
                gapComposerH.Z(false);
            }
            Arrangement.SpacedAligned spacedAlignedF16 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            DTFunctionNameModifier dTFunctionNameModifier10 = new DTFunctionNameModifier("LVDisclaimer-fWhpE4E");
            columnMeasurePolicyA = ColumnKt.a(spacedAlignedF16, Alignment.Companion.n, gapComposerH, r7);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier10);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function11);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
            TextKt.c(str, n00.f(gapComposerH, modifierC2, function10, "LVDisclaimer-fWhpE4E", "disclaimer_description_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, (i9 >> 3) & 14, 0, 131064);
            gapComposer2 = gapComposerH;
            if (str6 != null) {
                str7 = str6;
                LVLinkKt.b(n00.d(gapComposer2, -1412835391, "LVDisclaimer-fWhpE4E", "disclaimer_link_button"), str7, false, null, null, gapComposer2, (i9 >> 9) & 112, 28);
                gapComposer2.Z(r7);
            } else {
                str7 = str6;
                gapComposer2.L(-1412656645);
                gapComposer2.Z(r7);
            }
            gapComposer2.Z(true);
            gapComposer2.Z(true);
            modifier3 = modifier5;
            str4 = str7;
            function2 = function3;
            painter2 = painter3;
            j3 = j5;
            gapComposer = gapComposer2;
        } else {
            gapComposerH.D();
            painter2 = painter;
            j3 = j2;
            str4 = str3;
            function2 = function1;
            modifier3 = modifier2;
            gapComposer = gapComposerH;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qm(modifier3, str, painter2, j3, str4, function2, i2, i3);
        }
    }
}
