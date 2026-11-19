package com.vuitton.android.presentation.screen.repairs.components;

import android.content.Context;
import androidx.activity.compose.BackHandlerKt;
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
import androidx.compose.material3.ScaffoldKt;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.networkbench.nbslens.nbsnativecrashlib.n;
import com.vuitton.android.R;
import com.vuitton.android.core.platform.serialization.JsonProviderKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailMapperKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceTransactionIdUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.repair.RepairType;
import defpackage.a;
import defpackage.cj;
import defpackage.gi0;
import defpackage.kj0;
import defpackage.kn0;
import defpackage.n00;
import defpackage.ni0;
import defpackage.o60;
import defpackage.og0;
import defpackage.q9;
import defpackage.qe;
import defpackage.sq0;
import defpackage.tr;
import java.time.format.FormatStyle;
import java.util.Locale;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairShippingConfirmationComposableKt {
    public static final void a(Modifier modifier, Composer composer, int i2) {
        if (modifier != null) {
            modifier = a.e(modifier, "AddressConfirmationDivider");
        }
        GapComposer gapComposerH = composer.h(689046967);
        int i3 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DividerKt.a(PaddingKt.k(modifier, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 1), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(modifier, i2, 20);
        }
    }

    /* JADX WARN: Code duplicated, block: B:47:0x0140  */
    /* JADX WARN: Code duplicated, block: B:51:0x014c  */
    /* JADX WARN: Code duplicated, block: B:55:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:57:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:59:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:62:0x0280  */
    /* JADX WARN: Code duplicated, block: B:63:0x0283  */
    /* JADX WARN: Code duplicated, block: B:66:0x0289  */
    /* JADX WARN: Code duplicated, block: B:67:0x0295  */
    /* JADX WARN: Code duplicated, block: B:70:0x0310  */
    /* JADX WARN: Code duplicated, block: B:72:0x0317  */
    /* JADX WARN: Code duplicated, block: B:73:0x031b  */
    /* JADX WARN: Code duplicated, block: B:76:0x03a7  */
    /* JADX WARN: Code duplicated, block: B:77:0x03aa  */
    /* JADX WARN: Code duplicated, block: B:80:0x03b6  */
    /* JADX WARN: Code duplicated, block: B:81:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:83:0x03f4  */
    /* JADX WARN: Code duplicated, block: B:85:0x03f8  */
    public static final void b(Modifier modifier, InAppDispatch inAppDispatch, CareServiceDetailUiModel careServiceDetailUiModel, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifier2;
        Function1 function1;
        Object careServiceTransactionIdUiModel;
        String string;
        String str;
        String str2;
        Function1 function2;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        RowScopeInstance rowScopeInstance;
        Function0 function3;
        RepairType repairType;
        String strF;
        RowMeasurePolicy rowMeasurePolicyA2;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        String str3;
        String strD;
        String str4;
        RepairStatusUiModel repairStatusUiModel;
        Modifier modifierE = modifier;
        InAppDispatch inAppDispatch2 = inAppDispatch;
        CareServiceDetailUiModel careServiceDetailUiModel2 = careServiceDetailUiModel;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "RepairHeader");
        }
        GapComposer gapComposerH = composer.h(506732429);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | 6 | (gapComposerH.y(inAppDispatch2) ? 32 : 16) | (gapComposerH.y(careServiceDetailUiModel2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("RepairHeader");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierB = BackgroundKt.b(dTFunctionNameModifier, j2, rectangleShapeKt$RectangleShape$1);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function6);
            Integer numValueOf = Integer.valueOf(iHashCode3);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            Modifier modifierB2 = BackgroundKt.b(n00.e(gapComposerH, modifierC3, function9, "RepairHeader", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, rectangleShapeKt$RectangleShape$1);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
            RowMeasurePolicy rowMeasurePolicyA3 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
            int iHashCode4 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposerH.U();
            Modifier modifierC4 = ComposedModifierKt.c(gapComposerH, modifierB2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA3, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU4, function6);
            cj.t(iHashCode4, gapComposerH, function7, gapComposerH, function8);
            Updater.c(gapComposerH, modifierC4, function9);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            if (careServiceDetailUiModel2 == null || (repairStatusUiModel = careServiceDetailUiModel2.d) == null) {
                function1 = function8;
            } else {
                function1 = function8;
                if (ArraysKt.f(repairStatusUiModel, new RepairStatusUiModel[]{RepairStatusUiModel.PRELIMINARY_ASSESSMENT, RepairStatusUiModel.REQUEST_SUBMITTED})) {
                    string = context.getString(R.string.dr_repair);
                }
                String str5 = string;
                str5.getClass();
                function2 = function1;
                TextKt.c(str5, PaddingKt.i(new DTFunctionNameModifier("RepairHeader"), LVAppDesignKitTheme.l(gapComposerH).f48416e), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
                Modifier modifierD = o60.d(gapComposerH, true, "RepairHeader", 1.0f);
                rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    function0 = function4;
                    gapComposerH.C(function0);
                } else {
                    function0 = function4;
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function5);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
                cj.t(iHashCode, gapComposerH, function7, gapComposerH, function2);
                DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC, function9, "RepairHeader");
                rowScopeInstance = RowScopeInstance.f5040a;
                function3 = function0;
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_repair_type_of_request), PaddingKt.m(rowScopeInstance.a(dTFunctionNameModifierE, 1.0f, true), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                if (careServiceDetailUiModel != null) {
                    repairType = careServiceDetailUiModel.f63980c;
                } else {
                    repairType = null;
                }
                if (repairType == RepairType.DISTANT_CARE_SERVICE) {
                    strF = cj.f(gapComposerH, -1351273647, R.string.dr_mylv_repair_requested_online, gapComposerH, false);
                } else {
                    strF = cj.f(gapComposerH, -1351121809, R.string.dr_mylv_repair_requested_in_store, gapComposerH, false);
                }
                TextKt.c(strF, PaddingKt.m(new DTFunctionNameModifier("RepairHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                Modifier modifierD2 = o60.d(gapComposerH, true, "RepairHeader", 1.0f);
                rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierD2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function3);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA2, function5);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
                cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function2);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_repair_date_of_initiation), PaddingKt.m(rowScopeInstance.a(tr.e(gapComposerH, modifierC2, function9, "RepairHeader"), 1.0f, true), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("RepairHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9);
                inAppDispatch2 = inAppDispatch;
                Locale locale = inAppDispatch2.m;
                careServiceDetailUiModel2 = careServiceDetailUiModel;
                if (careServiceDetailUiModel2 != null) {
                    str3 = careServiceDetailUiModel2.f63981e;
                } else {
                    str3 = null;
                }
                strD = DateTimeUtils.d(locale, str3, n.g, FormatStyle.LONG);
                if (strD == null) {
                    str4 = "";
                } else {
                    str4 = strD;
                }
                TextKt.c(str4, modifierM, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                gapComposer = gapComposerH;
                gapComposer.Z(true);
                gapComposer.Z(true);
                modifier2 = dTFunctionNameModifier;
            }
            if (careServiceDetailUiModel2 == null || (str2 = careServiceDetailUiModel2.E) == null) {
                if (careServiceDetailUiModel2 != null || (str = careServiceDetailUiModel2.E) == null) {
                    careServiceTransactionIdUiModel = "";
                } else {
                    careServiceTransactionIdUiModel = new CareServiceTransactionIdUiModel(str);
                }
                string = context.getString(R.string.dr_prass_repair, careServiceTransactionIdUiModel);
            } else {
                CareServiceTransactionIdUiModel.f64071c.getClass();
                if (str2.equals(CareServiceTransactionIdUiModel.d)) {
                    string = context.getString(R.string.dr_repair);
                } else {
                    if (careServiceDetailUiModel2 != null) {
                        careServiceTransactionIdUiModel = "";
                    } else {
                        careServiceTransactionIdUiModel = "";
                    }
                    string = context.getString(R.string.dr_prass_repair, careServiceTransactionIdUiModel);
                }
            }
            String str6 = string;
            str6.getClass();
            function2 = function1;
            TextKt.c(str6, PaddingKt.i(new DTFunctionNameModifier("RepairHeader"), LVAppDesignKitTheme.l(gapComposerH).f48416e), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
            Modifier modifierD3 = o60.d(gapComposerH, true, "RepairHeader", 1.0f);
            rowMeasurePolicyA = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierD3);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                function0 = function4;
                gapComposerH.C(function0);
            } else {
                function0 = function4;
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            cj.t(iHashCode, gapComposerH, function7, gapComposerH, function2);
            DTFunctionNameModifier dTFunctionNameModifierE2 = tr.e(gapComposerH, modifierC, function9, "RepairHeader");
            rowScopeInstance = RowScopeInstance.f5040a;
            function3 = function0;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_repair_type_of_request), PaddingKt.m(rowScopeInstance.a(dTFunctionNameModifierE2, 1.0f, true), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            if (careServiceDetailUiModel != null) {
                repairType = careServiceDetailUiModel.f63980c;
            } else {
                repairType = null;
            }
            if (repairType == RepairType.DISTANT_CARE_SERVICE) {
                strF = cj.f(gapComposerH, -1351273647, R.string.dr_mylv_repair_requested_online, gapComposerH, false);
            } else {
                strF = cj.f(gapComposerH, -1351121809, R.string.dr_mylv_repair_requested_in_store, gapComposerH, false);
            }
            TextKt.c(strF, PaddingKt.m(new DTFunctionNameModifier("RepairHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            Modifier modifierD4 = o60.d(gapComposerH, true, "RepairHeader", 1.0f);
            rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, vertical, gapComposerH, 0);
            iHashCode2 = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierD4);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA2, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function2);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_repair_date_of_initiation), PaddingKt.m(rowScopeInstance.a(tr.e(gapComposerH, modifierC2, function9, "RepairHeader"), 1.0f, true), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            Modifier modifierM2 = PaddingKt.m(new DTFunctionNameModifier("RepairHeader"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9);
            inAppDispatch2 = inAppDispatch;
            Locale locale2 = inAppDispatch2.m;
            careServiceDetailUiModel2 = careServiceDetailUiModel;
            if (careServiceDetailUiModel2 != null) {
                str3 = careServiceDetailUiModel2.f63981e;
            } else {
                str3 = null;
            }
            strD = DateTimeUtils.d(locale2, str3, n.g, FormatStyle.LONG);
            if (strD == null) {
                str4 = "";
            } else {
                str4 = strD;
            }
            TextKt.c(str4, modifierM2, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
            gapComposer.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gi0(i2, 22, modifier2, inAppDispatch2, careServiceDetailUiModel2);
        }
    }

    public static final void c(DistantRepairAssessmentViewModel distantRepairAssessmentViewModel, String str, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(892067171);
        int i3 = i2 | (gapComposerH.K(distantRepairAssessmentViewModel) ? 4 : 2) | (gapComposerH.K(str != null ? new CareServiceIdUiModel(str) : null) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = (57344 & i3) == 16384;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new sq0(function2, 10);
                gapComposerH.q(objX);
            }
            BackHandlerKt.a(false, (Function0) objX, gapComposerH, 0, 1);
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean z2 = ((i3 & 112) == 32) | (i4 == 4);
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new RepairShippingConfirmationComposableKt$RepairShippingConfirmationComposable$2$1(distantRepairAssessmentViewModel, str, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            boolean z3 = i4 == 4;
            Object objX3 = gapComposerH.x();
            if (z3 || objX3 == composer$Companion$Empty$1) {
                objX3 = new RepairShippingConfirmationComposableKt$RepairShippingConfirmationComposable$3$1(distantRepairAssessmentViewModel, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            e((AssessmentViewState) SnapshotStateKt.b(distantRepairAssessmentViewModel.getH(), gapComposerH).getF10755b(), function0, function1, gapComposerH, (i3 >> 3) & 1008);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0((Object) distantRepairAssessmentViewModel, (Object) str, function0, function1, (Function) function2, i2, 16);
        }
    }

    public static final void d(AssessmentViewState assessmentViewState, Function0 function0, Composer composer, int i2) {
        String str;
        GapComposer gapComposerH = composer.h(1354719631);
        int i3 = (gapComposerH.y(assessmentViewState) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = BackgroundKt.b(ClipKt.a(PaddingKt.k(new DTFunctionNameModifier("RepairsDetailsSection"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            String strA = null;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            b(null, assessmentViewState.f57356a, assessmentViewState.d, gapComposerH, 0);
            a(PaddingKt.k(new DTFunctionNameModifier("RepairsDetailsSection"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), gapComposerH, 0);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_confirmation_page_title_shipment_details), PaddingKt.k(new DTFunctionNameModifier("RepairsDetailsSection"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_confirmation_page_subtitle_shipment_details), PaddingKt.i(new DTFunctionNameModifier("RepairsDetailsSection"), LVAppDesignKitTheme.l(gapComposerH).f48416e), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
            String str2 = assessmentViewState.f57362i;
            if (str2.length() <= 0) {
                str2 = null;
            }
            if (str2 == null) {
                gapComposerH.L(-2020210208);
                CareServiceDetailUiModel careServiceDetailUiModel = assessmentViewState.f57359e;
                if (careServiceDetailUiModel == null) {
                    gapComposerH.L(-2020210209);
                } else {
                    gapComposerH.L(1320305250);
                    strA = CareServiceDetailMapperKt.a(careServiceDetailUiModel, (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b), JsonProviderKt.f43520a);
                }
                gapComposerH.Z(false);
                gapComposerH.Z(false);
                str = strA;
            } else {
                gapComposerH.L(1320302026);
                gapComposerH.Z(false);
                str = str2;
            }
            if (str == null) {
                gapComposerH.L(-2020144272);
                gapComposerH.Z(false);
            } else {
                TextKt.c(str, PaddingKt.k(n00.i(gapComposerH, -2020144271, "RepairsDetailsSection"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131064);
                gapComposerH.Z(false);
            }
            LVButtonKt.b(((i3 << 24) & 1879048192) | 12582912, 376, gapComposerH, SizeKt.d(PaddingKt.l(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).g, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e), 1.0f), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_cta_open_care_service), function0, false, true, false);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q9(assessmentViewState, function0, i2);
        }
    }

    public static final void e(AssessmentViewState assessmentViewState, Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-1241929161);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(assessmentViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, ComposableLambdaKt.b(1669155827, new kn0(function0, 17), gapComposerH), null, null, null, 0, 0L, 0L, null, ComposableLambdaKt.b(-1115574008, new ni0(assessmentViewState, function1, 20), gapComposerH), gapComposer, 805306416, 509);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og0(assessmentViewState, function0, function1, i2, 5);
        }
    }
}
