package com.vuitton.android.presentation.screen.osa.form.storeselection.components;

import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVRadioButtonBlockKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import defpackage.cj;
import defpackage.fj0;
import defpackage.n00;
import defpackage.p1;
import defpackage.pq0;
import defpackage.tr;
import defpackage.xg0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaReasonItemComposableKt {
    public static final void a(Modifier modifier, OsaReasonsFormViewState osaReasonsFormViewState, Function1 function1, Function0 function0, boolean z, Function0 function2, Composer composer, int i2) {
        boolean z2;
        String str;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "OsaReasonItemComposable");
        }
        osaReasonsFormViewState.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-1176536591);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(osaReasonsFormViewState) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.b(z) ? 16384 : 8192);
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i3 |= gapComposerH.y(function2) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Boolean boolValueOf = Boolean.valueOf(z);
            OsaReasonUiModel osaReasonUiModel = osaReasonsFormViewState.d;
            boolean z3 = osaReasonsFormViewState.f60971e;
            Boolean boolValueOf2 = Boolean.valueOf(z3);
            boolean zY = ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i3 & 57344) == 16384) | gapComposerH.y(osaReasonsFormViewState);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$2) {
                objX = new OsaReasonItemComposableKt$OsaReasonItemComposable$2$1(z, osaReasonsFormViewState, function2, null);
                gapComposerH.q(objX);
            }
            EffectsKt.f(boolValueOf, osaReasonUiModel, boolValueOf2, (Function2) objX, gapComposerH);
            Modifier modifierB = AnimationModifierKt.b(SizeKt.d(modifierE, 1.0f), null, 3);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierA = ClipKt.a(BackgroundKt.b(modifierB, j2, rectangleShapeKt$RectangleShape$1), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Function2 function4 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function4);
            Function2 function5 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function6 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function6);
            Function1 function7 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function7);
            Function2 function8 = ComposeUiNode.Companion.d;
            int i4 = i3;
            Modifier modifierB2 = BackgroundKt.b(n00.e(gapComposerH, modifierC, function8, "OsaReasonItemComposable", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, rectangleShapeKt$RectangleShape$1);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function4);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
            cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
            Updater.c(gapComposerH, modifierC2, function8);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.osa_creation_reason_title);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
            Modifier modifierE2 = ModifierExtKt.e(PaddingKt.i(new DTFunctionNameModifier("OsaReasonItemComposable"), LVAppDesignKitTheme.l(gapComposerH).f48416e), "osa_reasonTitle_text");
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$2) {
                objX2 = new fj0(17);
                gapComposerH.q(objX2);
            }
            OsaReasonUiModel osaReasonUiModel2 = osaReasonUiModel;
            int i5 = i4;
            Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$2;
            boolean z4 = false;
            TextKt.c(strC, SemanticsModifierKt.b(modifierE2, false, (Function1) objX2), j3, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131064);
            gapComposerH.Z(true);
            if (z3) {
                Modifier modifierI = PaddingKt.i(n00.i(gapComposerH, -593780925, "OsaReasonItemComposable"), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                int iHashCode3 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierI);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function3);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA2, function4);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function5);
                cj.t(iHashCode3, gapComposerH, function6, gapComposerH, function7);
                Updater.c(gapComposerH, modifierC3, function8);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.osa_creation_reason_description), ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("OsaReasonItemComposable"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7), "osa_reasonDescription_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                gapComposerH.L(189700122);
                for (OsaReasonUiModel osaReasonUiModel3 : osaReasonsFormViewState.f60970c) {
                    String str2 = osaReasonUiModel3.f60967c;
                    String str3 = osaReasonUiModel3.d;
                    Modifier modifierD = tr.d("OsaReasonItemComposable", 1.0f);
                    if (str2 == null) {
                        str2 = "";
                    }
                    Modifier modifierE3 = ModifierExtKt.e(modifierD, str2);
                    String str4 = osaReasonUiModel3.f60966b;
                    OsaReasonUiModel osaReasonUiModel4 = osaReasonUiModel2;
                    boolean zC = Intrinsics.c(osaReasonUiModel4 != null ? osaReasonUiModel4.f60965a : null, osaReasonUiModel3.f60965a);
                    int i6 = i5;
                    boolean zK = ((i6 & 896) == 256 ? true : z4) | gapComposerH.K(osaReasonUiModel3);
                    Object objX3 = gapComposerH.x();
                    if (zK) {
                        composer$Companion$Empty$1 = composer$Companion$Empty$3;
                    } else {
                        composer$Companion$Empty$1 = composer$Companion$Empty$3;
                        if (objX3 == composer$Companion$Empty$1) {
                        }
                        osaReasonUiModel2 = osaReasonUiModel4;
                        GapComposer gapComposer = gapComposerH;
                        LVRadioButtonBlockKt.a(modifierE3, str4, null, false, zC, (Function1) objX3, null, str3, gapComposer, 0, 76);
                        gapComposerH = gapComposer;
                        composer$Companion$Empty$3 = composer$Companion$Empty$1;
                        i5 = i6;
                        z4 = false;
                    }
                    objX3 = new xg0(function1, osaReasonUiModel3, 8);
                    gapComposerH.q(objX3);
                    osaReasonUiModel2 = osaReasonUiModel4;
                    GapComposer gapComposer2 = gapComposerH;
                    LVRadioButtonBlockKt.a(modifierE3, str4, null, false, zC, (Function1) objX3, null, str3, gapComposer2, 0, 76);
                    gapComposerH = gapComposer2;
                    composer$Companion$Empty$3 = composer$Companion$Empty$1;
                    i5 = i6;
                    z4 = false;
                }
                boolean z5 = z4;
                pq0.x(gapComposerH, z5, true, z5);
            } else {
                Modifier modifierI2 = PaddingKt.i(n00.i(gapComposerH, -592447553, "OsaReasonItemComposable"), LVAppDesignKitTheme.l(gapComposerH).f48416e);
                ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                int iHashCode4 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierI2);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function3);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA3, function4);
                Updater.c(gapComposerH, persistentCompositionLocalMapU4, function5);
                cj.t(iHashCode4, gapComposerH, function6, gapComposerH, function7);
                Updater.c(gapComposerH, modifierC4, function8);
                String strF = osaReasonUiModel2 != null ? osaReasonUiModel2.f60966b : null;
                if (strF == null) {
                    strF = cj.f(gapComposerH, 1679549662, R.string.osa_creation_reason_default, gapComposerH, false);
                } else {
                    gapComposerH.L(1679548391);
                    gapComposerH.Z(false);
                }
                TextKt.c(strF, n00.g("OsaReasonItemComposable", "osa_reasonSelected_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                if (osaReasonUiModel2 == null || (str = osaReasonUiModel2.f60966b) == null || str.length() <= 0 || z) {
                    z2 = false;
                    gapComposerH.L(527249473);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(526870281);
                    LVLinkKt.a(ModifierExtKt.e(PaddingKt.m(new DTFunctionNameModifier("OsaReasonItemComposable"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), "osa_reasonModify_button"), StringResources_androidKt.c(gapComposerH, R.string.global_modify), false, null, false, function0, gapComposerH, (i5 << 6) & ImageMetadata.JPEG_GPS_COORDINATES, 28);
                    z2 = false;
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                gapComposerH.Z(z2);
            }
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(modifierE, osaReasonsFormViewState, function1, function0, z, function2, i2);
        }
    }
}
