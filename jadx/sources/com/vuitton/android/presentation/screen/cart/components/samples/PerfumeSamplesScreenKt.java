package com.vuitton.android.presentation.screen.cart.components.samples;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
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
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Html_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.cart.models.PerfumeSampleState;
import com.vuitton.android.presentation.screen.cart.models.PerfumeSampleUiModel;
import defpackage.cj;
import defpackage.gi0;
import defpackage.ky;
import defpackage.n00;
import defpackage.pq0;
import defpackage.tr;
import defpackage.ud;
import defpackage.x4;
import defpackage.xg0;
import defpackage.yk0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PerfumeSamplesScreenKt {
    /* JADX WARN: Code duplicated, block: B:102:0x0381  */
    /* JADX WARN: Code duplicated, block: B:103:0x0383  */
    /* JADX WARN: Code duplicated, block: B:110:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:112:0x040d  */
    /* JADX WARN: Code duplicated, block: B:114:0x0412  */
    /* JADX WARN: Code duplicated, block: B:116:0x0417  */
    /* JADX WARN: Code duplicated, block: B:118:0x041c  */
    /* JADX WARN: Code duplicated, block: B:60:0x0143  */
    /* JADX WARN: Code duplicated, block: B:63:0x017e  */
    /* JADX WARN: Code duplicated, block: B:65:0x0185  */
    /* JADX WARN: Code duplicated, block: B:66:0x0189  */
    /* JADX WARN: Code duplicated, block: B:69:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:72:0x023a  */
    /* JADX WARN: Code duplicated, block: B:74:0x0241  */
    /* JADX WARN: Code duplicated, block: B:76:0x0249  */
    /* JADX WARN: Code duplicated, block: B:79:0x0298  */
    /* JADX WARN: Code duplicated, block: B:81:0x029f  */
    /* JADX WARN: Code duplicated, block: B:82:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:85:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:87:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:88:0x02da  */
    /* JADX WARN: Code duplicated, block: B:91:0x02ed  */
    /* JADX WARN: Code duplicated, block: B:92:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:95:0x0364  */
    /* JADX WARN: Code duplicated, block: B:98:0x037a  */
    /* JADX WARN: Code duplicated, block: B:99:0x037c  */
    public static final void a(Modifier modifier, PerfumeSampleUiModel perfumeSampleUiModel, Function1 function1, Composer composer, int i2) {
        float f2;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean zB;
        Object objX;
        BiasAlignment.Vertical vertical;
        Arrangement$Start$1 arrangement$Start$1;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function5;
        Function2 function6;
        String str;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        RowScopeInstance rowScopeInstance;
        MeasurePolicy measurePolicyD;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        Function0 function7;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode3;
        PersistentCompositionLocalMap persistentCompositionLocalMapU3;
        Modifier modifierC3;
        RowMeasurePolicy rowMeasurePolicyA2;
        int iHashCode4;
        PersistentCompositionLocalMap persistentCompositionLocalMapU4;
        Modifier modifierC4;
        String str2;
        String str3;
        Object objX2;
        boolean z;
        boolean z2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PerfumeSampleItem");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1613498107);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.y(perfumeSampleUiModel) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX3 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
            if (objX3 == composer$Companion$Empty$3) {
                objX3 = new Dp(120.0f);
                gapComposerH.q(objX3);
            }
            float f3 = ((Dp) objX3).f11006b;
            PerfumeSampleState perfumeSampleState = perfumeSampleUiModel.f55217f;
            String str4 = perfumeSampleUiModel.d;
            boolean zD = gapComposerH.d(perfumeSampleState.ordinal());
            Object objX4 = gapComposerH.x();
            if (zD || objX4 == composer$Companion$Empty$3) {
                objX4 = Boolean.valueOf(perfumeSampleState == PerfumeSampleState.SELECTED);
                gapComposerH.q(objX4);
            }
            boolean zBooleanValue = ((Boolean) objX4).booleanValue();
            boolean zD2 = gapComposerH.d(perfumeSampleState.ordinal());
            Object objX5 = gapComposerH.x();
            if (zD2 || objX5 == composer$Companion$Empty$3) {
                objX5 = Boolean.valueOf(perfumeSampleState != PerfumeSampleState.DISABLED);
                gapComposerH.q(objX5);
            }
            boolean zBooleanValue2 = ((Boolean) objX5).booleanValue();
            Modifier modifierB = BackgroundKt.b(SizeKt.f(ClipKt.a(modifier2, LVAppDesignKitTheme.j(gapComposerH).f48410b), f3), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            if (zBooleanValue2) {
                gapComposerH.L(-1551149699);
                gapComposerH.Z(false);
                f2 = 1.0f;
            } else {
                gapComposerH.L(-1551230950);
                f2 = LVAppDesignKitTheme.h(gapComposerH).d;
                gapComposerH.Z(false);
            }
            Modifier modifierA = AlphaKt.a(modifierB, f2);
            Role.f10289b.getClass();
            Role role = new Role(Role.f10290c);
            boolean zB2 = ((i3 & 896) == 256) | gapComposerH.b(zBooleanValue);
            Object objX6 = gapComposerH.x();
            if (zB2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$3;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$3;
                if (objX6 == composer$Companion$Empty$1) {
                }
                Modifier modifierE2 = ModifierExtKt.e(ClickableKt.d(modifierA, zBooleanValue2, null, role, (Function0) objX6, 10), "cartSamples_elementItem_button");
                zB = gapComposerH.b(zBooleanValue);
                objX = gapComposerH.x();
                if (zB || objX == composer$Companion$Empty$1) {
                    objX = new x4(zBooleanValue, 6);
                    gapComposerH.q(objX);
                }
                Modifier modifierB2 = SemanticsModifierKt.b(modifierE2, true, (Function1) objX);
                Alignment.f8582a.getClass();
                vertical = Alignment.Companion.l;
                arrangement$Start$1 = Arrangement.f4918a;
                rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
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
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function4);
                function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                function6 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function6);
                Modifier modifierE3 = ModifierExtKt.e(AspectRatioKt.a(SizeKt.f(new DTFunctionNameModifier("PerfumeSampleItem"), f3), 1.0f, true), "cartSamples_elementItem_image");
                str = perfumeSampleUiModel.f55216e;
                if (str == null) {
                    str = "";
                }
                ContentScale.f9447a.getClass();
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                ImageLoaderKt.b(modifierE3, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
                Modifier modifierC5 = SizeKt.c(new DTFunctionNameModifier("PerfumeSampleItem"), 1.0f);
                rowScopeInstance = RowScopeInstance.f5040a;
                Modifier modifierA2 = rowScopeInstance.a(modifierC5, 1.0f, true);
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    function7 = function0;
                    gapComposerH.C(function7);
                } else {
                    function7 = function0;
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                Updater.c(gapComposerH, modifierC2, function6);
                Modifier modifierG = BoxScopeInstance.f4938a.g(PaddingKt.j(tr.d("PerfumeSampleItem", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c), Alignment.Companion.f8587f);
                columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.n, gapComposerH, 6);
                iHashCode3 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU3 = gapComposerH.U();
                modifierC3 = ComposedModifierKt.c(gapComposerH, modifierG);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function7);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
                cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function5);
                Modifier modifierE4 = n00.e(gapComposerH, modifierC3, function6, "PerfumeSampleItem", 1.0f);
                rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
                iHashCode4 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU4 = gapComposerH.U();
                modifierC4 = ComposedModifierKt.c(gapComposerH, modifierE4);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function7);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU4, function3);
                cj.t(iHashCode4, gapComposerH, function4, gapComposerH, function5);
                Updater.c(gapComposerH, modifierC4, function6);
                str2 = perfumeSampleUiModel.f55215c;
                if (str2 == null) {
                    str3 = "";
                } else {
                    str3 = str2;
                }
                TextKt.c(str3, ModifierExtKt.e(PaddingKt.m(cj.b("PerfumeSampleItem", rowScopeInstance, 1.0f, true), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), "cartSamples_elementItemTitle_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131068);
                gapComposerH = gapComposerH;
                Modifier modifierE5 = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("PerfumeSampleItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), "cartSamples_elementItemCheckbox_button");
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$2) {
                    objX2 = new yk0(24);
                    gapComposerH.q(objX2);
                }
                Modifier modifierB3 = SemanticsModifierKt.b(modifierE5, false, (Function1) objX2);
                if (perfumeSampleState != PerfumeSampleState.DISABLED) {
                    z = true;
                } else {
                    z = false;
                }
                if (perfumeSampleState == PerfumeSampleState.SELECTED) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                LVCheckboxKt.a(modifierB3, z, z2, null, false, function1, gapComposerH, ((i3 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | 24576, 8);
                gapComposerH.Z(true);
                if (str4 == null && (!StringsKt.w(str4))) {
                    Modifier modifierE6 = ModifierExtKt.e(PaddingKt.m(n00.i(gapComposerH, 38005323, "PerfumeSampleItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "cartSamples_elementItemDescription_text");
                    int i4 = AnnotatedString.f10418f;
                    TextKt.d(Html_androidKt.b(str4, null, 6), modifierE6, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 262136);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(38480615);
                    gapComposerH.Z(false);
                }
                pq0.x(gapComposerH, true, true, true);
            }
            objX6 = new ky(function1, zBooleanValue, 3);
            gapComposerH.q(objX6);
            Modifier modifierE7 = ModifierExtKt.e(ClickableKt.d(modifierA, zBooleanValue2, null, role, (Function0) objX6, 10), "cartSamples_elementItem_button");
            zB = gapComposerH.b(zBooleanValue);
            objX = gapComposerH.x();
            if (zB) {
                objX = new x4(zBooleanValue, 6);
                gapComposerH.q(objX);
            } else {
                objX = new x4(zBooleanValue, 6);
                gapComposerH.q(objX);
            }
            Modifier modifierB4 = SemanticsModifierKt.b(modifierE7, true, (Function1) objX);
            Alignment.f8582a.getClass();
            vertical = Alignment.Companion.l;
            arrangement$Start$1 = Arrangement.f4918a;
            rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierB4);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function4);
            function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            Modifier modifierE8 = ModifierExtKt.e(AspectRatioKt.a(SizeKt.f(new DTFunctionNameModifier("PerfumeSampleItem"), f3), 1.0f, true), "cartSamples_elementItem_image");
            str = perfumeSampleUiModel.f55216e;
            if (str == null) {
                str = "";
            }
            ContentScale.f9447a.getClass();
            composer$Companion$Empty$2 = composer$Companion$Empty$1;
            ImageLoaderKt.b(modifierE8, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            Modifier modifierC6 = SizeKt.c(new DTFunctionNameModifier("PerfumeSampleItem"), 1.0f);
            rowScopeInstance = RowScopeInstance.f5040a;
            Modifier modifierA3 = rowScopeInstance.a(modifierC6, 1.0f, true);
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA3);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                function7 = function0;
                gapComposerH.C(function7);
            } else {
                function7 = function0;
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            Modifier modifierG2 = BoxScopeInstance.f4938a.g(PaddingKt.j(tr.d("PerfumeSampleItem", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c), Alignment.Companion.f8587f);
            columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.n, gapComposerH, 6);
            iHashCode3 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU3 = gapComposerH.U();
            modifierC3 = ComposedModifierKt.c(gapComposerH, modifierG2);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function7);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function5);
            Modifier modifierE9 = n00.e(gapComposerH, modifierC3, function6, "PerfumeSampleItem", 1.0f);
            rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 48);
            iHashCode4 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU4 = gapComposerH.U();
            modifierC4 = ComposedModifierKt.c(gapComposerH, modifierE9);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function7);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function3);
            cj.t(iHashCode4, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC4, function6);
            str2 = perfumeSampleUiModel.f55215c;
            if (str2 == null) {
                str3 = "";
            } else {
                str3 = str2;
            }
            TextKt.c(str3, ModifierExtKt.e(PaddingKt.m(cj.b("PerfumeSampleItem", rowScopeInstance, 1.0f, true), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), "cartSamples_elementItemTitle_text"), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131068);
            gapComposerH = gapComposerH;
            Modifier modifierE10 = ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("PerfumeSampleItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), "cartSamples_elementItemCheckbox_button");
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$2) {
                objX2 = new yk0(24);
                gapComposerH.q(objX2);
            }
            Modifier modifierB5 = SemanticsModifierKt.b(modifierE10, false, (Function1) objX2);
            if (perfumeSampleState != PerfumeSampleState.DISABLED) {
                z = true;
            } else {
                z = false;
            }
            if (perfumeSampleState == PerfumeSampleState.SELECTED) {
                z2 = true;
            } else {
                z2 = false;
            }
            LVCheckboxKt.a(modifierB5, z, z2, null, false, function1, gapComposerH, ((i3 << 9) & ImageMetadata.JPEG_GPS_COORDINATES) | 24576, 8);
            gapComposerH.Z(true);
            if (str4 == null) {
                gapComposerH.L(38480615);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(38480615);
                gapComposerH.Z(false);
            }
            pq0.x(gapComposerH, true, true, true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gi0(i2, 13, modifier2, perfumeSampleUiModel, function1);
        }
    }

    public static final void b(Modifier modifier, List list, Function2 function2, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PerfumeSamplesScreen");
        }
        Modifier modifier2 = modifierE;
        list.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1914471967);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.y(list) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = BackgroundKt.b(modifier2.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
            boolean zY = gapComposerH.y(list);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new ud(list, 15);
                gapComposerH.q(objX);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierB, false, (Function1) objX);
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            boolean zY2 = gapComposerH.y(list) | ((i3 & 896) == 256);
            Object objX2 = gapComposerH.x();
            if (zY2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new xg0(list, function2, 20);
                gapComposerH.q(objX2);
            }
            LazyDslKt.a(modifierB2, null, null, spacedAlignedF, horizontal, null, false, null, (Function1) objX2, gapComposerH, ImageMetadata.EDGE_MODE, 462);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gi0(i2, 12, modifier2, list, function2);
        }
    }
}
