package com.vuitton.android.presentation.screen.repairs.detail.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.DividerKt;
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
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModelKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceItemUiModel;
import com.vuitton.android.presentation.utils.PriceHelper;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.repair.RepairType;
import defpackage.cj;
import defpackage.i4;
import defpackage.k9;
import defpackage.n00;
import defpackage.pq0;
import defpackage.t;
import defpackage.tr;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AssessmentInformationKt {
    public static final void a(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(2047533241);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DividerKt.a(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).g, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new t(i2, 10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:64:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:66:0x03c0  */
    /* JADX WARN: Code duplicated, block: B:68:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:70:0x047a  */
    public static final void b(InAppDispatch inAppDispatch, CareServiceDetailUiModel careServiceDetailUiModel, Composer composer, int i2) {
        int i3;
        double dDoubleValue;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        CareServiceDetailUiModel careServiceDetailUiModel2 = careServiceDetailUiModel;
        inAppDispatch.getClass();
        careServiceDetailUiModel2.getClass();
        GapComposer gapComposerH = composer.h(630682518);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | (gapComposerH.y(inAppDispatch) ? 4 : 2) | (gapComposerH.y(careServiceDetailUiModel2) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            RepairType repairType = careServiceDetailUiModel2.f63980c;
            double d = careServiceDetailUiModel2.f63983h;
            List<CareServiceItemUiModel> list = careServiceDetailUiModel2.w;
            String str = careServiceDetailUiModel2.f63982f;
            RepairStatusUiModel repairStatusUiModel = careServiceDetailUiModel2.d;
            if (repairType == RepairType.STORE_CARE_SERVICE || repairStatusUiModel == RepairStatusUiModel.REQUEST_SUBMITTED) {
                gapComposerH.L(-1813484948);
                i3 = 0;
                gapComposerH.Z(false);
            } else {
                Modifier modifierA = ClipKt.a(PaddingKt.i(n00.i(gapComposerH, -1818603234, "AssessmentInformation"), LVAppDesignKitTheme.l(gapComposerH).f48416e), LVAppDesignKitTheme.j(gapComposerH).f48410b);
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
                Modifier modifierB = BackgroundKt.b(modifierA, j2, rectangleShapeKt$RectangleShape$1);
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
                ComposeUiNode.b0.getClass();
                Function0 function0 = ComposeUiNode.Companion.f9641b;
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
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                String str2 = new String();
                repairStatusUiModel.getClass();
                if (ArraysKt.f(repairStatusUiModel, new RepairStatusUiModel[]{RepairStatusUiModel.AWAITING_PAYMENT, RepairStatusUiModel.CONFIRM_ADDRESS, RepairStatusUiModel.DELIVERED_TO_CLIENT, RepairStatusUiModel.PAYMENT_CONFIRMED, RepairStatusUiModel.PAYMENT_CONTACT, RepairStatusUiModel.PAYMENT_INITIATED, RepairStatusUiModel.REPAIR_IN_PROGRESS, RepairStatusUiModel.SHIPPING, RepairStatusUiModel.SHIPPING_IN_PREPARATION})) {
                    str2 = cj.f(gapComposerH, -1851835656, R.string.dr_mylv_final_assessment_title, gapComposerH, false);
                } else if (ArraysKt.f(repairStatusUiModel, new RepairStatusUiModel[]{RepairStatusUiModel.PRELIMINARY_ASSESSMENT, RepairStatusUiModel.PRELIMINARY_ASSESSMENT_ACC, RepairStatusUiModel.RECEIVED_AT_ATELIER, RepairStatusUiModel.SHIPPED_FROM_EHUB, RepairStatusUiModel.SHIPPING_TO_ATELIER, RepairStatusUiModel.UNDER_ASSESSMENT})) {
                    str2 = cj.f(gapComposerH, -1851678238, R.string.dr_prass_card1_title, gapComposerH, false);
                } else {
                    gapComposerH.L(-1851592709);
                    gapComposerH.Z(false);
                }
                String str3 = str2;
                float f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                float f3 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
                Modifier.Companion companion = Modifier.Companion.f8607b;
                TextKt.c(str3, PaddingKt.m(companion, f3, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
                a(gapComposerH, 0);
                if (list.isEmpty()) {
                    gapComposerH.L(-1850349733);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1851075288);
                    gapComposerH.L(78835733);
                    for (CareServiceItemUiModel careServiceItemUiModel : list) {
                        String str4 = careServiceItemUiModel.f63989e;
                        Integer numValueOf = Integer.valueOf(careServiceItemUiModel.f63991h);
                        Double d2 = careServiceItemUiModel.g;
                        c(str4, numValueOf, PriceHelper.a(inAppDispatch, str, d2 != null ? d2.doubleValue() : careServiceItemUiModel.f63990f), ArraysKt.f(repairStatusUiModel, new RepairStatusUiModel[]{RepairStatusUiModel.AWAITING_PAYMENT, RepairStatusUiModel.CONFIRM_ADDRESS, RepairStatusUiModel.DELIVERED_TO_CLIENT, RepairStatusUiModel.PAYMENT_CONFIRMED, RepairStatusUiModel.PAYMENT_CONTACT, RepairStatusUiModel.PAYMENT_INITIATED, RepairStatusUiModel.REPAIR_IN_PROGRESS, RepairStatusUiModel.SHIPPING, RepairStatusUiModel.SHIPPING_IN_PREPARATION}), gapComposerH, 0);
                    }
                    gapComposerH.Z(false);
                    a(gapComposerH, 0);
                    gapComposerH.Z(false);
                }
                Modifier modifierD = SizeKt.d(PaddingKt.m(companion, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).g, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), 1.0f);
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Alignment.f8582a.getClass();
                BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
                RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int iHashCode3 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierD);
                ComposeUiNode.b0.getClass();
                Function0 function1 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Function2 function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, rowMeasurePolicyA2, function2);
                Function2 function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
                Integer numValueOf2 = Integer.valueOf(iHashCode3);
                Function2 function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf2, function4);
                Function1 function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                Function2 function6 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC3, function6);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_total), cj.b("AssessmentInformation", RowScopeInstance.f5040a, 1.0f, true), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                String str5 = new String();
                if (RepairStatusUiModelKt.b(repairStatusUiModel)) {
                    str5 = PriceHelper.a(inAppDispatch, str, d);
                } else {
                    if (RepairStatusUiModelKt.c(repairStatusUiModel)) {
                        Double d3 = careServiceDetailUiModel.f63984i;
                        if (d3 != null) {
                            dDoubleValue = d;
                            dDoubleValue = d3.doubleValue();
                        }
                        dDoubleValue = d;
                        str5 = PriceHelper.a(inAppDispatch, str, dDoubleValue);
                    }
                    careServiceDetailUiModel2 = careServiceDetailUiModel;
                    TextKt.c(str5, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131066);
                    gapComposerH.Z(true);
                    a(gapComposerH, 0);
                    Modifier modifierB2 = BackgroundKt.b(PaddingKt.l(SizeKt.d(new DTFunctionNameModifier("AssessmentInformation"), 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).g, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, rectangleShapeKt$RectangleShape$1);
                    rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function1);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                    cj.t(iHashCode, gapComposerH, function4, gapComposerH, function5);
                    Updater.c(gapComposerH, modifierC, function6);
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, SizeKt.o(PaddingKt.m(companion, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.d(gapComposerH).l), 0L, gapComposerH, 56, 8);
                    TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_com), PaddingKt.l(companion, LVAppDesignKitTheme.l(gapComposerH).d, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                    gapComposerH = gapComposerH;
                    i3 = 0;
                    pq0.x(gapComposerH, true, true, false);
                }
                dDoubleValue = d;
                careServiceDetailUiModel2 = careServiceDetailUiModel;
                TextKt.c(str5, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131066);
                gapComposerH.Z(true);
                a(gapComposerH, 0);
                Modifier modifierB3 = BackgroundKt.b(PaddingKt.l(SizeKt.d(new DTFunctionNameModifier("AssessmentInformation"), 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).g, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, rectangleShapeKt$RectangleShape$1);
                rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB3);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                cj.t(iHashCode, gapComposerH, function4, gapComposerH, function5);
                Updater.c(gapComposerH, modifierC, function6);
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, SizeKt.o(PaddingKt.m(companion, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.d(gapComposerH).l), 0L, gapComposerH, 56, 8);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_com), PaddingKt.l(companion, LVAppDesignKitTheme.l(gapComposerH).d, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                i3 = 0;
                pq0.x(gapComposerH, true, true, false);
            }
        } else {
            i3 = 0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new k9(inAppDispatch, careServiceDetailUiModel2, i2, i3);
        }
    }

    public static final void c(String str, Integer num, String str2, boolean z, Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-146221704);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(num) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(tr.d("AssessmentItem", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            String str3 = str == null ? "" : str;
            Integer num2 = num.intValue() > 1 ? num : null;
            if (num2 == null) {
                gapComposerH.L(674074833);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(674074834);
                str3 = str + " " + String.format(StringResources_androidKt.c(gapComposerH, R.string.dr_preliminary_assessment_item_number), Arrays.copyOf(new Object[]{Integer.valueOf(num2.intValue())}, 1));
                gapComposerH.Z(false);
            }
            TextKt.c(str3, cj.b("AssessmentItem", RowScopeInstance.f5040a, 1.0f, true), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            gapComposer = gapComposerH;
            if (z) {
                gapComposer.L(674794406);
                gapComposer.Z(false);
            } else {
                gapComposer.L(674591325);
                TextKt.c(str2 != null ? str2 : "", null, LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).m, gapComposer, 0, 0, 131066);
                gapComposer = gapComposer;
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i4(str, num, str2, z, i2, 3);
        }
    }
}
