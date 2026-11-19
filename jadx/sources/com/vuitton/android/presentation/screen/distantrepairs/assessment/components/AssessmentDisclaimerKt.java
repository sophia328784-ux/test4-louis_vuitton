package com.vuitton.android.presentation.screen.distantrepairs.assessment.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentDisclaimerKt;
import defpackage.cj;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AssessmentDisclaimerKt {
    /* JADX WARN: Code duplicated, block: B:30:0x0058  */
    /* JADX WARN: Code duplicated, block: B:32:0x0060  */
    /* JADX WARN: Code duplicated, block: B:33:0x0063  */
    /* JADX WARN: Code duplicated, block: B:37:0x006c  */
    /* JADX WARN: Code duplicated, block: B:39:0x0071  */
    /* JADX WARN: Code duplicated, block: B:41:0x0075  */
    /* JADX WARN: Code duplicated, block: B:43:0x007d  */
    /* JADX WARN: Code duplicated, block: B:44:0x0080  */
    /* JADX WARN: Code duplicated, block: B:48:0x008a  */
    /* JADX WARN: Code duplicated, block: B:49:0x008c  */
    /* JADX WARN: Code duplicated, block: B:52:0x0095  */
    /* JADX WARN: Code duplicated, block: B:54:0x009c  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:66:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:70:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:75:0x00de  */
    /* JADX WARN: Code duplicated, block: B:76:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:79:0x0129  */
    /* JADX WARN: Code duplicated, block: B:81:0x0132  */
    /* JADX WARN: Code duplicated, block: B:82:0x0136  */
    /* JADX WARN: Code duplicated, block: B:85:0x017b  */
    /* JADX WARN: Code duplicated, block: B:87:0x0182  */
    /* JADX WARN: Code duplicated, block: B:88:0x0186  */
    /* JADX WARN: Code duplicated, block: B:90:0x021b  */
    /* JADX WARN: Code duplicated, block: B:92:0x021f  */
    /* JADX WARN: Code duplicated, block: B:94:0x0225  */
    /* JADX WARN: Code duplicated, block: B:97:0x0232  */
    /* JADX WARN: Code duplicated, block: B:99:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, final String str, TextStyle textStyle, long j2, Function3 function3, Composer composer, final int i2, final int i3) {
        int i4;
        String str2;
        TextStyle textStyle2;
        long j3;
        int i5;
        int i6;
        Function3 function4;
        int i7;
        boolean z;
        final Modifier modifier2;
        final TextStyle textStyle3;
        final long j4;
        final Function3 function5;
        RecomposeScopeImpl recomposeScopeImplB0;
        TextStyle textStyle4;
        TextStyle textStyle5;
        int i8;
        long j5;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function2;
        Function2 function6;
        Function2 function7;
        Function1 function1;
        Function2 function8;
        Modifier modifier3;
        long j6;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "AssessmentDisclaimer-uDo3WH8");
        }
        str.getClass();
        GapComposer gapComposerH = composer.h(-775902427);
        Applier applier = gapComposerH.f7976a;
        int i9 = i3 & 1;
        if (i9 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        }
        if ((i2 & 48) == 0) {
            str2 = str;
            i4 |= gapComposerH.K(str2) ? 32 : 16;
        } else {
            str2 = str;
        }
        if ((i3 & 4) == 0) {
            textStyle2 = textStyle;
            int i10 = gapComposerH.K(textStyle2) ? 256 : 128;
            int i11 = i4 | i10;
            if ((i3 & 8) == 0) {
                j3 = j2;
                int i12 = gapComposerH.e(j3) ? 2048 : 1024;
                i5 = i11 | i12;
                i6 = i3 & 16;
                if (i6 != 0) {
                    if ((i2 & 24576) == 0) {
                        function4 = function3;
                        if (gapComposerH.y(function4)) {
                            i7 = 16384;
                        } else {
                            i7 = 8192;
                        }
                        i5 |= i7;
                    }
                    if ((i5 & 9363) != 9362) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (gapComposerH.p(i5 & 1, z)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0 || gapComposerH.h0()) {
                            if (i9 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                            }
                            if ((i3 & 4) != 0) {
                                textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                                i5 &= -897;
                            } else {
                                textStyle4 = textStyle2;
                            }
                            if ((i3 & 8) != 0) {
                                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                                i5 &= -7169;
                            }
                            if (i6 != 0) {
                                ComposableSingletons$AssessmentDisclaimerKt.f57059a.getClass();
                                function5 = ComposableSingletons$AssessmentDisclaimerKt.f57060b;
                                textStyle5 = textStyle4;
                                i8 = i5;
                                j5 = j3;
                            } else {
                                textStyle5 = textStyle4;
                                i8 = i5;
                            }
                            gapComposerH.a0();
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            Modifier modifierI = PaddingKt.i(BackgroundKt.b(dTFunctionNameModifier, j5, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                            Alignment.f8582a.getClass();
                            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
                            ComposeUiNode.b0.getClass();
                            function0 = ComposeUiNode.Companion.f9641b;
                            if (applier == null) {
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
                            function6 = ComposeUiNode.Companion.f9643e;
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                            Integer numValueOf = Integer.valueOf(iHashCode);
                            function7 = ComposeUiNode.Companion.g;
                            Updater.c(gapComposerH, numValueOf, function7);
                            function1 = ComposeUiNode.Companion.f9645h;
                            Updater.b(gapComposerH, function1);
                            function8 = ComposeUiNode.Companion.d;
                            Updater.c(gapComposerH, modifierC, function8);
                            BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
                            modifier3 = dTFunctionNameModifier;
                            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                            j6 = j5;
                            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
                            iHashCode2 = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU2 = gapComposerH.U();
                            modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
                            if (applier == null) {
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
                            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function1);
                            Updater.c(gapComposerH, modifierC2, function8);
                            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, PaddingKt.m(SizeKt.f(new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8"), LVAppDesignKitTheme.d(gapComposerH).m), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), 0L, gapComposerH, 56, 8);
                            TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposerH, (i8 >> 3) & 14, (i8 << 15) & 29360128, 131066);
                            gapComposerH = gapComposerH;
                            gapComposerH.Z(true);
                            function5.A(ColumnScopeInstance.f4944a, gapComposerH, Integer.valueOf(((i8 >> 9) & 112) | 6));
                            gapComposerH.Z(true);
                            modifier2 = modifier3;
                            j4 = j6;
                            textStyle3 = textStyle5;
                        } else {
                            gapComposerH.D();
                            if ((i3 & 4) != 0) {
                                i5 &= -897;
                            }
                            if ((i3 & 8) != 0) {
                                i5 &= -7169;
                            }
                            i8 = i5;
                            textStyle5 = textStyle2;
                        }
                        j5 = j3;
                        function5 = function4;
                        gapComposerH.a0();
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierI2 = PaddingKt.i(BackgroundKt.b(dTFunctionNameModifier, j5, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                        Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        columnMeasurePolicyA = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, gapComposerH, 0);
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierI2);
                        ComposeUiNode.b0.getClass();
                        function0 = ComposeUiNode.Companion.f9641b;
                        if (applier == null) {
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
                        function6 = ComposeUiNode.Companion.f9643e;
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                        Integer numValueOf2 = Integer.valueOf(iHashCode);
                        function7 = ComposeUiNode.Companion.g;
                        Updater.c(gapComposerH, numValueOf2, function7);
                        function1 = ComposeUiNode.Companion.f9645h;
                        Updater.b(gapComposerH, function1);
                        function8 = ComposeUiNode.Companion.d;
                        Updater.c(gapComposerH, modifierC, function8);
                        BiasAlignment.Vertical vertical2 = Alignment.Companion.f8591k;
                        modifier3 = dTFunctionNameModifier;
                        DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                        j6 = j5;
                        rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical2, gapComposerH, 48);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier3);
                        if (applier == null) {
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
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                        cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function1);
                        Updater.c(gapComposerH, modifierC2, function8);
                        IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, PaddingKt.m(SizeKt.f(new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8"), LVAppDesignKitTheme.d(gapComposerH).m), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), 0L, gapComposerH, 56, 8);
                        TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposerH, (i8 >> 3) & 14, (i8 << 15) & 29360128, 131066);
                        gapComposerH = gapComposerH;
                        gapComposerH.Z(true);
                        function5.A(ColumnScopeInstance.f4944a, gapComposerH, Integer.valueOf(((i8 >> 9) & 112) | 6));
                        gapComposerH.Z(true);
                        modifier2 = modifier3;
                        j4 = j6;
                        textStyle3 = textStyle5;
                    } else {
                        gapComposerH.D();
                        modifier2 = dTFunctionNameModifier;
                        textStyle3 = textStyle2;
                        j4 = j3;
                        function5 = function4;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: e9
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                AssessmentDisclaimerKt.a(modifier2, str, textStyle3, j4, function5, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i5 |= 24576;
                function4 = function3;
                if ((i5 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i5 & 1, z)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i9 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                        }
                        if ((i3 & 4) != 0) {
                            textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                            i5 &= -897;
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if ((i3 & 8) != 0) {
                            j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                            i5 &= -7169;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$AssessmentDisclaimerKt.f57059a.getClass();
                            function5 = ComposableSingletons$AssessmentDisclaimerKt.f57060b;
                            textStyle5 = textStyle4;
                            i8 = i5;
                            j5 = j3;
                        } else {
                            textStyle5 = textStyle4;
                            i8 = i5;
                            j5 = j3;
                            function5 = function4;
                        }
                    } else {
                        if (i9 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                        }
                        if ((i3 & 4) != 0) {
                            textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                            i5 &= -897;
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if ((i3 & 8) != 0) {
                            j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                            i5 &= -7169;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$AssessmentDisclaimerKt.f57059a.getClass();
                            function5 = ComposableSingletons$AssessmentDisclaimerKt.f57060b;
                            textStyle5 = textStyle4;
                            i8 = i5;
                            j5 = j3;
                        } else {
                            textStyle5 = textStyle4;
                            i8 = i5;
                            j5 = j3;
                            function5 = function4;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifierI3 = PaddingKt.i(BackgroundKt.b(dTFunctionNameModifier, j5, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                    Arrangement$Top$1 arrangement$Top$3 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$3, Alignment.Companion.n, gapComposerH, 0);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierI3);
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (applier == null) {
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
                    function6 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                    Integer numValueOf3 = Integer.valueOf(iHashCode);
                    function7 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf3, function7);
                    function1 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function1);
                    function8 = ComposeUiNode.Companion.d;
                    Updater.c(gapComposerH, modifierC, function8);
                    BiasAlignment.Vertical vertical3 = Alignment.Companion.f8591k;
                    modifier3 = dTFunctionNameModifier;
                    DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                    j6 = j5;
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical3, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier4);
                    if (applier == null) {
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
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                    cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function1);
                    Updater.c(gapComposerH, modifierC2, function8);
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, PaddingKt.m(SizeKt.f(new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8"), LVAppDesignKitTheme.d(gapComposerH).m), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), 0L, gapComposerH, 56, 8);
                    TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposerH, (i8 >> 3) & 14, (i8 << 15) & 29360128, 131066);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(true);
                    function5.A(ColumnScopeInstance.f4944a, gapComposerH, Integer.valueOf(((i8 >> 9) & 112) | 6));
                    gapComposerH.Z(true);
                    modifier2 = modifier3;
                    j4 = j6;
                    textStyle3 = textStyle5;
                } else {
                    gapComposerH.D();
                    modifier2 = dTFunctionNameModifier;
                    textStyle3 = textStyle2;
                    j4 = j3;
                    function5 = function4;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: e9
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            AssessmentDisclaimerKt.a(modifier2, str, textStyle3, j4, function5, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            j3 = j2;
            i5 = i11 | i12;
            i6 = i3 & 16;
            if (i6 != 0) {
                if ((i2 & 24576) == 0) {
                    function4 = function3;
                    if (gapComposerH.y(function4)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i5 |= i7;
                }
                if ((i5 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i5 & 1, z)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i9 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                        }
                        if ((i3 & 4) != 0) {
                            textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                            i5 &= -897;
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if ((i3 & 8) != 0) {
                            j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                            i5 &= -7169;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$AssessmentDisclaimerKt.f57059a.getClass();
                            function5 = ComposableSingletons$AssessmentDisclaimerKt.f57060b;
                            textStyle5 = textStyle4;
                            i8 = i5;
                            j5 = j3;
                        } else {
                            textStyle5 = textStyle4;
                            i8 = i5;
                            j5 = j3;
                            function5 = function4;
                        }
                    } else {
                        if (i9 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                        }
                        if ((i3 & 4) != 0) {
                            textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                            i5 &= -897;
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if ((i3 & 8) != 0) {
                            j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                            i5 &= -7169;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$AssessmentDisclaimerKt.f57059a.getClass();
                            function5 = ComposableSingletons$AssessmentDisclaimerKt.f57060b;
                            textStyle5 = textStyle4;
                            i8 = i5;
                            j5 = j3;
                        } else {
                            textStyle5 = textStyle4;
                            i8 = i5;
                            j5 = j3;
                            function5 = function4;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Modifier modifierI4 = PaddingKt.i(BackgroundKt.b(dTFunctionNameModifier, j5, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                    Arrangement$Top$1 arrangement$Top$4 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$4, Alignment.Companion.n, gapComposerH, 0);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierI4);
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (applier == null) {
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
                    function6 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                    Integer numValueOf4 = Integer.valueOf(iHashCode);
                    function7 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf4, function7);
                    function1 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function1);
                    function8 = ComposeUiNode.Companion.d;
                    Updater.c(gapComposerH, modifierC, function8);
                    BiasAlignment.Vertical vertical4 = Alignment.Companion.f8591k;
                    modifier3 = dTFunctionNameModifier;
                    DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                    j6 = j5;
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical4, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier5);
                    if (applier == null) {
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
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                    cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function1);
                    Updater.c(gapComposerH, modifierC2, function8);
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, PaddingKt.m(SizeKt.f(new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8"), LVAppDesignKitTheme.d(gapComposerH).m), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), 0L, gapComposerH, 56, 8);
                    TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposerH, (i8 >> 3) & 14, (i8 << 15) & 29360128, 131066);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(true);
                    function5.A(ColumnScopeInstance.f4944a, gapComposerH, Integer.valueOf(((i8 >> 9) & 112) | 6));
                    gapComposerH.Z(true);
                    modifier2 = modifier3;
                    j4 = j6;
                    textStyle3 = textStyle5;
                } else {
                    gapComposerH.D();
                    modifier2 = dTFunctionNameModifier;
                    textStyle3 = textStyle2;
                    j4 = j3;
                    function5 = function4;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: e9
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            AssessmentDisclaimerKt.a(modifier2, str, textStyle3, j4, function5, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i5 |= 24576;
            function4 = function3;
            if ((i5 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i5 & 1, z)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i9 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                    }
                    if ((i3 & 4) != 0) {
                        textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                        i5 &= -897;
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if ((i3 & 8) != 0) {
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                        i5 &= -7169;
                    }
                    if (i6 != 0) {
                        ComposableSingletons$AssessmentDisclaimerKt.f57059a.getClass();
                        function5 = ComposableSingletons$AssessmentDisclaimerKt.f57060b;
                        textStyle5 = textStyle4;
                        i8 = i5;
                        j5 = j3;
                    } else {
                        textStyle5 = textStyle4;
                        i8 = i5;
                        j5 = j3;
                        function5 = function4;
                    }
                } else {
                    if (i9 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                    }
                    if ((i3 & 4) != 0) {
                        textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                        i5 &= -897;
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if ((i3 & 8) != 0) {
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                        i5 &= -7169;
                    }
                    if (i6 != 0) {
                        ComposableSingletons$AssessmentDisclaimerKt.f57059a.getClass();
                        function5 = ComposableSingletons$AssessmentDisclaimerKt.f57060b;
                        textStyle5 = textStyle4;
                        i8 = i5;
                        j5 = j3;
                    } else {
                        textStyle5 = textStyle4;
                        i8 = i5;
                        j5 = j3;
                        function5 = function4;
                    }
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                Modifier modifierI5 = PaddingKt.i(BackgroundKt.b(dTFunctionNameModifier, j5, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                Arrangement$Top$1 arrangement$Top$5 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$5, Alignment.Companion.n, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierI5);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
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
                function6 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                Integer numValueOf5 = Integer.valueOf(iHashCode);
                function7 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf5, function7);
                function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function1);
                function8 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function8);
                BiasAlignment.Vertical vertical5 = Alignment.Companion.f8591k;
                modifier3 = dTFunctionNameModifier;
                DTFunctionNameModifier dTFunctionNameModifier6 = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                j6 = j5;
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical5, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier6);
                if (applier == null) {
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
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function1);
                Updater.c(gapComposerH, modifierC2, function8);
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, PaddingKt.m(SizeKt.f(new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8"), LVAppDesignKitTheme.d(gapComposerH).m), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), 0L, gapComposerH, 56, 8);
                TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposerH, (i8 >> 3) & 14, (i8 << 15) & 29360128, 131066);
                gapComposerH = gapComposerH;
                gapComposerH.Z(true);
                function5.A(ColumnScopeInstance.f4944a, gapComposerH, Integer.valueOf(((i8 >> 9) & 112) | 6));
                gapComposerH.Z(true);
                modifier2 = modifier3;
                j4 = j6;
                textStyle3 = textStyle5;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                textStyle3 = textStyle2;
                j4 = j3;
                function5 = function4;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: e9
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        AssessmentDisclaimerKt.a(modifier2, str, textStyle3, j4, function5, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        textStyle2 = textStyle;
        int i13 = i4 | i10;
        if ((i3 & 8) == 0) {
            j3 = j2;
            if (gapComposerH.e(j3)) {
            }
            i5 = i13 | i12;
            i6 = i3 & 16;
            if (i6 != 0) {
                if ((i2 & 24576) == 0) {
                    function4 = function3;
                    if (gapComposerH.y(function4)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i5 |= i7;
                }
                if ((i5 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i5 & 1, z)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i9 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                        }
                        if ((i3 & 4) != 0) {
                            textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                            i5 &= -897;
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if ((i3 & 8) != 0) {
                            j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                            i5 &= -7169;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$AssessmentDisclaimerKt.f57059a.getClass();
                            function5 = ComposableSingletons$AssessmentDisclaimerKt.f57060b;
                            textStyle5 = textStyle4;
                            i8 = i5;
                            j5 = j3;
                        } else {
                            textStyle5 = textStyle4;
                            i8 = i5;
                            j5 = j3;
                            function5 = function4;
                        }
                    } else {
                        if (i9 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                        }
                        if ((i3 & 4) != 0) {
                            textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                            i5 &= -897;
                        } else {
                            textStyle4 = textStyle2;
                        }
                        if ((i3 & 8) != 0) {
                            j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                            i5 &= -7169;
                        }
                        if (i6 != 0) {
                            ComposableSingletons$AssessmentDisclaimerKt.f57059a.getClass();
                            function5 = ComposableSingletons$AssessmentDisclaimerKt.f57060b;
                            textStyle5 = textStyle4;
                            i8 = i5;
                            j5 = j3;
                        } else {
                            textStyle5 = textStyle4;
                            i8 = i5;
                            j5 = j3;
                            function5 = function4;
                        }
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    Modifier modifierI6 = PaddingKt.i(BackgroundKt.b(dTFunctionNameModifier, j5, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                    Arrangement$Top$1 arrangement$Top$6 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$6, Alignment.Companion.n, gapComposerH, 0);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierI6);
                    ComposeUiNode.b0.getClass();
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (applier == null) {
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
                    function6 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                    Integer numValueOf6 = Integer.valueOf(iHashCode);
                    function7 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf6, function7);
                    function1 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function1);
                    function8 = ComposeUiNode.Companion.d;
                    Updater.c(gapComposerH, modifierC, function8);
                    BiasAlignment.Vertical vertical6 = Alignment.Companion.f8591k;
                    modifier3 = dTFunctionNameModifier;
                    DTFunctionNameModifier dTFunctionNameModifier7 = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                    j6 = j5;
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical6, gapComposerH, 48);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier7);
                    if (applier == null) {
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
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                    cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function1);
                    Updater.c(gapComposerH, modifierC2, function8);
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, PaddingKt.m(SizeKt.f(new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8"), LVAppDesignKitTheme.d(gapComposerH).m), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), 0L, gapComposerH, 56, 8);
                    TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposerH, (i8 >> 3) & 14, (i8 << 15) & 29360128, 131066);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(true);
                    function5.A(ColumnScopeInstance.f4944a, gapComposerH, Integer.valueOf(((i8 >> 9) & 112) | 6));
                    gapComposerH.Z(true);
                    modifier2 = modifier3;
                    j4 = j6;
                    textStyle3 = textStyle5;
                } else {
                    gapComposerH.D();
                    modifier2 = dTFunctionNameModifier;
                    textStyle3 = textStyle2;
                    j4 = j3;
                    function5 = function4;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: e9
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            AssessmentDisclaimerKt.a(modifier2, str, textStyle3, j4, function5, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i5 |= 24576;
            function4 = function3;
            if ((i5 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i5 & 1, z)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i9 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                    }
                    if ((i3 & 4) != 0) {
                        textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                        i5 &= -897;
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if ((i3 & 8) != 0) {
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                        i5 &= -7169;
                    }
                    if (i6 != 0) {
                        ComposableSingletons$AssessmentDisclaimerKt.f57059a.getClass();
                        function5 = ComposableSingletons$AssessmentDisclaimerKt.f57060b;
                        textStyle5 = textStyle4;
                        i8 = i5;
                        j5 = j3;
                    } else {
                        textStyle5 = textStyle4;
                        i8 = i5;
                        j5 = j3;
                        function5 = function4;
                    }
                } else {
                    if (i9 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                    }
                    if ((i3 & 4) != 0) {
                        textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                        i5 &= -897;
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if ((i3 & 8) != 0) {
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                        i5 &= -7169;
                    }
                    if (i6 != 0) {
                        ComposableSingletons$AssessmentDisclaimerKt.f57059a.getClass();
                        function5 = ComposableSingletons$AssessmentDisclaimerKt.f57060b;
                        textStyle5 = textStyle4;
                        i8 = i5;
                        j5 = j3;
                    } else {
                        textStyle5 = textStyle4;
                        i8 = i5;
                        j5 = j3;
                        function5 = function4;
                    }
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                Modifier modifierI7 = PaddingKt.i(BackgroundKt.b(dTFunctionNameModifier, j5, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                Arrangement$Top$1 arrangement$Top$7 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$7, Alignment.Companion.n, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierI7);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
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
                function6 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                Integer numValueOf7 = Integer.valueOf(iHashCode);
                function7 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf7, function7);
                function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function1);
                function8 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function8);
                BiasAlignment.Vertical vertical7 = Alignment.Companion.f8591k;
                modifier3 = dTFunctionNameModifier;
                DTFunctionNameModifier dTFunctionNameModifier8 = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                j6 = j5;
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical7, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier8);
                if (applier == null) {
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
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function1);
                Updater.c(gapComposerH, modifierC2, function8);
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, PaddingKt.m(SizeKt.f(new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8"), LVAppDesignKitTheme.d(gapComposerH).m), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), 0L, gapComposerH, 56, 8);
                TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposerH, (i8 >> 3) & 14, (i8 << 15) & 29360128, 131066);
                gapComposerH = gapComposerH;
                gapComposerH.Z(true);
                function5.A(ColumnScopeInstance.f4944a, gapComposerH, Integer.valueOf(((i8 >> 9) & 112) | 6));
                gapComposerH.Z(true);
                modifier2 = modifier3;
                j4 = j6;
                textStyle3 = textStyle5;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                textStyle3 = textStyle2;
                j4 = j3;
                function5 = function4;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: e9
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        AssessmentDisclaimerKt.a(modifier2, str, textStyle3, j4, function5, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        j3 = j2;
        i5 = i13 | i12;
        i6 = i3 & 16;
        if (i6 != 0) {
            if ((i2 & 24576) == 0) {
                function4 = function3;
                if (gapComposerH.y(function4)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i5 |= i7;
            }
            if ((i5 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i5 & 1, z)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i9 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                    }
                    if ((i3 & 4) != 0) {
                        textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                        i5 &= -897;
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if ((i3 & 8) != 0) {
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                        i5 &= -7169;
                    }
                    if (i6 != 0) {
                        ComposableSingletons$AssessmentDisclaimerKt.f57059a.getClass();
                        function5 = ComposableSingletons$AssessmentDisclaimerKt.f57060b;
                        textStyle5 = textStyle4;
                        i8 = i5;
                        j5 = j3;
                    } else {
                        textStyle5 = textStyle4;
                        i8 = i5;
                        j5 = j3;
                        function5 = function4;
                    }
                } else {
                    if (i9 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                    }
                    if ((i3 & 4) != 0) {
                        textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                        i5 &= -897;
                    } else {
                        textStyle4 = textStyle2;
                    }
                    if ((i3 & 8) != 0) {
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                        i5 &= -7169;
                    }
                    if (i6 != 0) {
                        ComposableSingletons$AssessmentDisclaimerKt.f57059a.getClass();
                        function5 = ComposableSingletons$AssessmentDisclaimerKt.f57060b;
                        textStyle5 = textStyle4;
                        i8 = i5;
                        j5 = j3;
                    } else {
                        textStyle5 = textStyle4;
                        i8 = i5;
                        j5 = j3;
                        function5 = function4;
                    }
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                Modifier modifierI8 = PaddingKt.i(BackgroundKt.b(dTFunctionNameModifier, j5, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                Arrangement$Top$1 arrangement$Top$8 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$8, Alignment.Companion.n, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierI8);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
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
                function6 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                Integer numValueOf8 = Integer.valueOf(iHashCode);
                function7 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf8, function7);
                function1 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function1);
                function8 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function8);
                BiasAlignment.Vertical vertical8 = Alignment.Companion.f8591k;
                modifier3 = dTFunctionNameModifier;
                DTFunctionNameModifier dTFunctionNameModifier9 = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                j6 = j5;
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical8, gapComposerH, 48);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier9);
                if (applier == null) {
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
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function1);
                Updater.c(gapComposerH, modifierC2, function8);
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, PaddingKt.m(SizeKt.f(new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8"), LVAppDesignKitTheme.d(gapComposerH).m), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), 0L, gapComposerH, 56, 8);
                TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposerH, (i8 >> 3) & 14, (i8 << 15) & 29360128, 131066);
                gapComposerH = gapComposerH;
                gapComposerH.Z(true);
                function5.A(ColumnScopeInstance.f4944a, gapComposerH, Integer.valueOf(((i8 >> 9) & 112) | 6));
                gapComposerH.Z(true);
                modifier2 = modifier3;
                j4 = j6;
                textStyle3 = textStyle5;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                textStyle3 = textStyle2;
                j4 = j3;
                function5 = function4;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: e9
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        AssessmentDisclaimerKt.a(modifier2, str, textStyle3, j4, function5, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 |= 24576;
        function4 = function3;
        if ((i5 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i5 & 1, z)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i9 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                }
                if ((i3 & 4) != 0) {
                    textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                    i5 &= -897;
                } else {
                    textStyle4 = textStyle2;
                }
                if ((i3 & 8) != 0) {
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                    i5 &= -7169;
                }
                if (i6 != 0) {
                    ComposableSingletons$AssessmentDisclaimerKt.f57059a.getClass();
                    function5 = ComposableSingletons$AssessmentDisclaimerKt.f57060b;
                    textStyle5 = textStyle4;
                    i8 = i5;
                    j5 = j3;
                } else {
                    textStyle5 = textStyle4;
                    i8 = i5;
                    j5 = j3;
                    function5 = function4;
                }
            } else {
                if (i9 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
                }
                if ((i3 & 4) != 0) {
                    textStyle4 = LVAppDesignKitTheme.n(gapComposerH).f48427h;
                    i5 &= -897;
                } else {
                    textStyle4 = textStyle2;
                }
                if ((i3 & 8) != 0) {
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                    i5 &= -7169;
                }
                if (i6 != 0) {
                    ComposableSingletons$AssessmentDisclaimerKt.f57059a.getClass();
                    function5 = ComposableSingletons$AssessmentDisclaimerKt.f57060b;
                    textStyle5 = textStyle4;
                    i8 = i5;
                    j5 = j3;
                } else {
                    textStyle5 = textStyle4;
                    i8 = i5;
                    j5 = j3;
                    function5 = function4;
                }
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey9 = ComposerKt.f7940a;
            Modifier modifierI9 = PaddingKt.i(BackgroundKt.b(dTFunctionNameModifier, j5, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Top$1 arrangement$Top$9 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$9, Alignment.Companion.n, gapComposerH, 0);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierI9);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
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
            function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf9 = Integer.valueOf(iHashCode);
            function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf9, function7);
            function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            function8 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function8);
            BiasAlignment.Vertical vertical9 = Alignment.Companion.f8591k;
            modifier3 = dTFunctionNameModifier;
            DTFunctionNameModifier dTFunctionNameModifier10 = new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8");
            j6 = j5;
            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical9, gapComposerH, 48);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier10);
            if (applier == null) {
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
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function8);
            IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, PaddingKt.m(SizeKt.f(new DTFunctionNameModifier("AssessmentDisclaimer-uDo3WH8"), LVAppDesignKitTheme.d(gapComposerH).m), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), 0L, gapComposerH, 56, 8);
            TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle5, gapComposerH, (i8 >> 3) & 14, (i8 << 15) & 29360128, 131066);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            function5.A(ColumnScopeInstance.f4944a, gapComposerH, Integer.valueOf(((i8 >> 9) & 112) | 6));
            gapComposerH.Z(true);
            modifier2 = modifier3;
            j4 = j6;
            textStyle3 = textStyle5;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
            textStyle3 = textStyle2;
            j4 = j3;
            function5 = function4;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: e9
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    AssessmentDisclaimerKt.a(modifier2, str, textStyle3, j4, function5, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }
}
