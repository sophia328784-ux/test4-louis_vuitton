package com.vuitton.android.presentation.screen.distantrepairs.assessment.components;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
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
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.networkbench.nbslens.nbsnativecrashlib.n;
import com.sightcall.universal.media.offline.FileUtils;
import com.vuitton.android.R;
import com.vuitton.android.core.platform.serialization.JsonProviderKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.presentation.screen.account.addressbook.AddressHelper;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PriceUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.c9;
import defpackage.cj;
import defpackage.o60;
import defpackage.tr;
import java.time.format.FormatStyle;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AssessmentConfirmationBffComponentKt {
    public static final void a(AssessmentBffViewState assessmentBffViewState, Function0 function0, Function0 function1, Composer composer, int i2) {
        String str;
        String str2;
        String str3;
        List list;
        CareServiceDetailUiModel.Assessment assessment;
        PriceUiModel priceUiModel;
        GapComposer gapComposerH = composer.h(-1775353079);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(assessmentBffViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierB = BackgroundKt.b(ClipKt.a(SizeKt.d(PaddingKt.i(new DTFunctionNameModifier("AssessmentConfirmationBffCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e), 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Modifier modifierI = PaddingKt.i(tr.e(gapComposerH, modifierC, function7, "AssessmentConfirmationBffCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierI);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Modifier modifierM = PaddingKt.m(tr.e(gapComposerH, modifierC2, function7, "AssessmentConfirmationBffCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7);
            CareServiceDetailUiModel careServiceDetailUiModel = assessmentBffViewState.d;
            if (careServiceDetailUiModel == null || (str = careServiceDetailUiModel.f64038c) == null) {
                str = null;
            }
            if (str == null) {
                str = "";
            }
            TextKt.c(StringResources_androidKt.b(R.string.dr_prass_repair, new Object[]{str}, gapComposerH), modifierM, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131064);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("AssessmentConfirmationBffCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 7);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.f8591k, gapComposerH, 6);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierM2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function4);
            cj.t(iHashCode3, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC3, function7);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_repair_date), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131066);
            SpacerKt.a(gapComposerH, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("AssessmentConfirmationBffCard"), 1.0f, true));
            String strD = DateTimeUtils.d(assessmentBffViewState.f57344a.m, careServiceDetailUiModel != null ? careServiceDetailUiModel.f64042i : null, n.g, FormatStyle.FULL);
            if (strD == null) {
                strD = "";
            }
            TextKt.c(strD, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131066);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_card1_title), PaddingKt.m(o60.f(gapComposerH, true, "AssessmentConfirmationBffCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
            Modifier modifierM3 = PaddingKt.m(new DTFunctionNameModifier("AssessmentConfirmationBffCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7);
            String str4 = (careServiceDetailUiModel == null || (assessment = careServiceDetailUiModel.l) == null || (priceUiModel = assessment.d) == null) ? null : priceUiModel.f61722b;
            if (str4 == null) {
                str4 = "";
            }
            TextKt.c(str4, modifierM3, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            if (careServiceDetailUiModel != null) {
                CareServiceDetailUiModel.Assessment assessment2 = careServiceDetailUiModel.l;
                if (assessment2 == null || (list = assessment2.g) == null) {
                    str3 = "";
                } else {
                    str3 = "";
                    int i4 = 0;
                    for (Object obj : list) {
                        int i5 = i4 + 1;
                        if (i4 < 0) {
                            CollectionsKt.t0();
                            throw null;
                        }
                        str3 = ((Object) str3) + ((CareServiceDetailUiModel.AssessmentItem) obj).f64049b + (i5 != list.size() ? ", " : FileUtils.HIDDEN_PREFIX);
                        i4 = i5;
                    }
                }
                str2 = str3;
            } else {
                str2 = "";
            }
            TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131066);
            DividerKt.a(PaddingKt.k(tr.d("AssessmentConfirmationBffCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_card2_title), PaddingKt.m(new DTFunctionNameModifier("AssessmentConfirmationBffCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_card2_text3), PaddingKt.m(new DTFunctionNameModifier("AssessmentConfirmationBffCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_card3_title), PaddingKt.m(new DTFunctionNameModifier("AssessmentConfirmationBffCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            AddressUiModel addressUiModel = assessmentBffViewState.f57348f;
            if (addressUiModel == null) {
                gapComposerH.L(1811277524);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1811277525);
                InAppDispatch inAppDispatch = assessmentBffViewState.f57344a;
                String str5 = addressUiModel.f52676f;
                String str6 = addressUiModel.g;
                String str7 = addressUiModel.f52679j;
                String str8 = str7 == null ? "" : str7;
                String str9 = addressUiModel.f52680k;
                String str10 = str9 == null ? "" : str9;
                String str11 = addressUiModel.l;
                String str12 = str11 == null ? "" : str11;
                String str13 = addressUiModel.p;
                String str14 = addressUiModel.t;
                String str15 = addressUiModel.r;
                String str16 = str15 == null ? "" : str15;
                String str17 = addressUiModel.q;
                String str18 = str17 == null ? "" : str17;
                String str19 = addressUiModel.o;
                String strC = AddressHelper.c(context, JsonProviderKt.f43520a, inAppDispatch, str5, str6, str8, str10, str12, str13, str14, str16, str18, str19 == null ? "" : str19, "");
                String str20 = addressUiModel.d;
                TextKt.c(str20 != null ? str20 : "", null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131066);
                TextKt.c(strC, PaddingKt.m(new DTFunctionNameModifier("AssessmentConfirmationBffCard"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("AssessmentConfirmationBffCard"), LVAppDesignKitTheme.l(gapComposerH).g));
            LVButtonKt.b((i3 << 24) & 1879048192, 504, gapComposerH, PaddingKt.m(tr.d("AssessmentConfirmationBffCard", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7), LVAppDesignKitTheme.b(gapComposerH).f48449e, null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_card1_modify), function0, false, false, false);
            LVButtonKt.b(6 | ((i3 << 21) & 1879048192), 504, gapComposerH, tr.d("AssessmentConfirmationBffCard", 1.0f), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_cta_open_care_service), function1, false, false, false);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c9(assessmentBffViewState, function0, function1, i2, 0);
        }
    }

    public static final void b(AssessmentBffViewState assessmentBffViewState, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        assessmentBffViewState.getClass();
        function0.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(504486684);
        int i3 = i2 | (gapComposerH.y(assessmentBffViewState) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = ScrollKt.d(new DTFunctionNameModifier("AssessmentConfirmationBffComponent"), ScrollKt.b(gapComposerH), false, 14);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_confimation_title), PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131064);
            gapComposer = gapComposerH;
            a(assessmentBffViewState, function0, function1, gapComposer, i3 & 1022);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c9(assessmentBffViewState, function0, function1, i2, 1);
        }
    }
}
