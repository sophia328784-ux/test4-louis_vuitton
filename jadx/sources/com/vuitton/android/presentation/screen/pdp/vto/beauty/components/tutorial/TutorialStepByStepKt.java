package com.vuitton.android.presentation.screen.pdp.vto.beauty.components.tutorial;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
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
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialSectionDataUiModel;
import defpackage.a;
import defpackage.es0;
import defpackage.n00;
import defpackage.tr;
import defpackage.y41;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TutorialStepByStepKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(Modifier modifier, TutorialSectionDataUiModel.StepsSectionUiModel stepsSectionUiModel, Composer composer, int i2) {
        GapComposer gapComposer;
        Applier applier;
        int i3;
        GapComposer gapComposer2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "TutorialStepByStep");
        }
        stepsSectionUiModel.getClass();
        GapComposer gapComposerH = composer.h(1570539940);
        Applier applier2 = gapComposerH.f7976a;
        int i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2 | (gapComposerH.y(stepsSectionUiModel) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier2 == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            String str = stepsSectionUiModel.f62194a;
            if (str == null) {
                gapComposerH.L(-272342006);
                gapComposerH.Z(false);
                gapComposer2 = gapComposerH;
                applier = applier2;
                i3 = 0;
            } else {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -272342005, "TutorialStepByStep");
                Object objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new y41(5);
                    gapComposerH.q(objX);
                }
                Modifier modifierM = PaddingKt.m(SizeKt.d(SemanticsModifierKt.b(dTFunctionNameModifierI, false, (Function1) objX), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7);
                TextAlign.f10959b.getClass();
                int i5 = TextAlign.f10961e;
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
                applier = applier2;
                i3 = 0;
                TextKt.c(str, modifierM, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, new TextAlign(i5), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130040);
                GapComposer gapComposer3 = gapComposerH;
                gapComposer3.Z(false);
                gapComposer2 = gapComposer3;
            }
            gapComposer2.L(1099609369);
            GapComposer gapComposer4 = gapComposer2;
            for (String str2 : stepsSectionUiModel.f62195b) {
                Modifier modifierB = BackgroundKt.b(ClipKt.a(PaddingKt.k(tr.d("TutorialStepByStep", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer4).f48415c, 1), LVAppDesignKitTheme.j(gapComposer4).f48411c), LVAppDesignKitTheme.c(gapComposer4).f48361b.f48375b, RectangleShapeKt.f8913a);
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Alignment.f8582a.getClass();
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposer4, i3);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int iHashCode2 = Long.hashCode(gapComposer4.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer4.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposer4, modifierB);
                ComposeUiNode.b0.getClass();
                Function0 function1 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer4.B();
                if (gapComposer4.S) {
                    gapComposer4.C(function1);
                } else {
                    gapComposer4.o();
                }
                Updater.c(gapComposer4, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposer4, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposer4, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                Updater.b(gapComposer4, ComposeUiNode.Companion.f9645h);
                GapComposer gapComposer5 = gapComposer4;
                TextKt.c(str2, PaddingKt.j(tr.e(gapComposer4, modifierC2, ComposeUiNode.Companion.d, "TutorialStepByStep"), LVAppDesignKitTheme.l(gapComposer4).d, LVAppDesignKitTheme.l(gapComposer4).f48416e), LVAppDesignKitTheme.c(gapComposer4).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer4).l, gapComposer5, 0, 0, 131064);
                GapComposer gapComposer6 = gapComposer5;
                gapComposer6.Z(true);
                i3 = 0;
                gapComposer4 = gapComposer6;
            }
            gapComposer4.Z(i3);
            gapComposer4.Z(true);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            gapComposer = gapComposer4;
        } else {
            GapComposer gapComposer7 = gapComposerH;
            gapComposer7.D();
            gapComposer = gapComposer7;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new es0(modifierE, stepsSectionUiModel, i2, 22);
        }
    }
}
