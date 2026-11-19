package com.vuitton.android.presentation.screen.repairs.detail.components;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
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
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.core.platform.serialization.JsonProviderKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModelKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailMapperKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.android.presentation.utils.PriceHelper;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceOrigin;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.repair.RepairType;
import defpackage.cj;
import defpackage.d21;
import defpackage.is0;
import defpackage.n00;
import defpackage.og0;
import defpackage.oi0;
import defpackage.om;
import defpackage.p1;
import defpackage.sq0;
import java.time.format.FormatStyle;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairDetailInformationKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63849a;

        static {
            int[] iArr = new int[CareServiceOrigin.values().length];
            try {
                iArr[CareServiceOrigin.AppForm.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CareServiceOrigin.CSC_APPFORM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CareServiceOrigin.Call.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CareServiceOrigin.CSC_CALL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CareServiceOrigin.VideoCall.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f63849a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:80:0x0275  */
    /* JADX WARN: Code duplicated, block: B:96:0x02fd  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r13v10, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v14 */
    /* JADX WARN: Type inference failed for: r13v15 */
    /* JADX WARN: Type inference failed for: r13v8, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r13v9, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r4v31, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r4v32 */
    /* JADX WARN: Type inference failed for: r4v49 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9, types: [boolean, int] */
    public static final void a(AssessmentViewState assessmentViewState, CareServiceDetailUiModel careServiceDetailUiModel, boolean z, Function1 function1, Function1 function2, Function0 function0, Composer composer, int i2) {
        int i3;
        ?? r13;
        int i4;
        ?? r6;
        ?? r4;
        ?? r14;
        Object obj;
        assessmentViewState.getClass();
        careServiceDetailUiModel.getClass();
        RepairType repairType = careServiceDetailUiModel.f63980c;
        function1.getClass();
        function2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1822366280);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(assessmentViewState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(careServiceDetailUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = BackgroundKt.b(ClipKt.a(PaddingKt.k(new DTFunctionNameModifier("RepairDetailInformation"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            float f2 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            Modifier.Companion companion = Modifier.Companion.f8607b;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.repair_informations), PaddingKt.m(companion, f3, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
            DividerKt.a(PaddingKt.m(companion, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.q, gapComposerH, 0, 2);
            String str = careServiceDetailUiModel.l;
            RepairStatusUiModel repairStatusUiModel = careServiceDetailUiModel.d;
            RepairType repairType2 = RepairType.STORE_CARE_SERVICE;
            if (repairType == repairType2) {
                gapComposerH.L(511258601);
                d(assessmentViewState.f57356a, careServiceDetailUiModel, function0, gapComposerH, (i3 & 112) | ((i3 >> 9) & 896));
                gapComposerH.Z(false);
            } else {
                repairStatusUiModel.getClass();
                if (ArraysKt.f(repairStatusUiModel, new RepairStatusUiModel[]{RepairStatusUiModel.REQUEST_SUBMITTED, RepairStatusUiModel.UNDER_ASSESSMENT})) {
                    gapComposerH.L(511573685);
                    c(careServiceDetailUiModel, gapComposerH, (i3 >> 3) & 14);
                    gapComposerH.Z(false);
                } else {
                    if (repairStatusUiModel == RepairStatusUiModel.PRELIMINARY_ASSESSMENT || repairStatusUiModel == RepairStatusUiModel.PRELIMINARY_ASSESSMENT_ACC || repairStatusUiModel == RepairStatusUiModel.DELIVERED_TO_CLIENT || RepairStatusUiModelKt.a(repairStatusUiModel)) {
                        gapComposerH.L(512016582);
                        int i5 = i3;
                        int i6 = ((i5 >> 3) & 7168) | ((i5 << 3) & 1008);
                        i4 = i5;
                        GapComposer gapComposer = gapComposerH;
                        r6 = 0;
                        b(assessmentViewState.f57356a, assessmentViewState, careServiceDetailUiModel, function2, gapComposer, i6);
                        gapComposer.Z(false);
                        r4 = gapComposer;
                    } else {
                        gapComposerH.L(512332100);
                        gapComposerH.Z(false);
                    }
                    if (z || StringsKt.w(str)) {
                        r4.L(512511652);
                        r4.Z(r6);
                    } else {
                        r4.L(512421318);
                        CareExpertNoteComposableKt.a(r6, r4, null, str);
                        r4.Z(r6);
                    }
                    if (repairType != repairType2 || repairStatusUiModel == RepairStatusUiModel.DELIVERED_TO_CLIENT || repairStatusUiModel == RepairStatusUiModel.HOME_DELIVERY) {
                        ?? r15 = r4;
                        r15.L(513361796);
                        r15.Z(r6);
                        r14 = r15;
                    } else {
                        r4.L(512788730);
                        ConfigurationButton configurationButton = LVAppDesignKitTheme.b(r4).f48449e;
                        Modifier modifierD = SizeKt.d(PaddingKt.m(companion, LVAppDesignKitTheme.l(r4).f48416e, LVAppDesignKitTheme.l(r4).f48416e, LVAppDesignKitTheme.l(r4).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), 1.0f);
                        String strC = StringResources_androidKt.c(r4, R.string.dr_prass_cta_contact);
                        int i7 = ((i4 & 7168) == 2048 ? 1 : r6) | (r4.y(careServiceDetailUiModel) ? 1 : 0);
                        Object objX = r4.x();
                        if (i7 != 0 || objX == Composer.Companion.f7939a) {
                            obj = objX;
                            is0 is0Var = new is0(function1, careServiceDetailUiModel, 1);
                            r4.q(is0Var);
                            obj = is0Var;
                        }
                        obj = objX;
                        ?? r16 = r4;
                        LVButtonKt.b(0, 504, r16, modifierD, configurationButton, null, null, strC, (Function0) obj, false, false, false);
                        r16.Z(r6);
                        r14 = r16;
                    }
                    cj.x(new DTFunctionNameModifier("RepairDetailInformation"), LVAppDesignKitTheme.l(r14).f48416e, r14, true);
                    r13 = r14;
                }
            }
            r6 = 0;
            r4 = gapComposerH;
            i4 = i3;
            if (z) {
                r4.L(512511652);
                r4.Z(r6);
            } else {
                r4.L(512511652);
                r4.Z(r6);
            }
            if (repairType != repairType2) {
                ?? r17 = r4;
                r17.L(513361796);
                r17.Z(r6);
                r14 = r17;
            } else {
                ?? r18 = r4;
                r18.L(513361796);
                r18.Z(r6);
                r14 = r18;
            }
            cj.x(new DTFunctionNameModifier("RepairDetailInformation"), LVAppDesignKitTheme.l(r14).f48416e, r14, true);
            r13 = r14;
        } else {
            gapComposerH.D();
            r13 = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = r13.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(assessmentViewState, careServiceDetailUiModel, z, function1, function2, function0, i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r25v2, types: [androidx.compose.runtime.Composer] */
    /* JADX WARN: Type inference failed for: r25v3, types: [androidx.compose.runtime.Composer] */
    /* JADX WARN: Type inference failed for: r29v0 */
    /* JADX WARN: Type inference failed for: r29v1 */
    /* JADX WARN: Type inference failed for: r29v2 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r8v1, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r8v13, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r8v18, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r8v19 */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v6, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r8v7, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    public static final void b(InAppDispatch inAppDispatch, AssessmentViewState assessmentViewState, CareServiceDetailUiModel careServiceDetailUiModel, Function1 function1, Composer composer, int i2) {
        int i3;
        CareServiceDetailUiModel careServiceDetailUiModel2;
        AssessmentViewState assessmentViewState2;
        ?? r8;
        RepairStatusUiModel repairStatusUiModel;
        Context context;
        ?? r2;
        String str;
        ?? r9;
        ?? r10;
        int i4;
        Object obj;
        GapComposer gapComposerH = composer.h(-919109222);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(inAppDispatch) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(assessmentViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(careServiceDetailUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        ?? r29 = 1;
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context2 = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            String str2 = new String();
            RepairStatusUiModel repairStatusUiModel2 = careServiceDetailUiModel.d;
            String str3 = careServiceDetailUiModel.f63982f;
            Double d = careServiceDetailUiModel.f63984i;
            double d2 = careServiceDetailUiModel.f63983h;
            repairStatusUiModel2.getClass();
            RepairStatusUiModel repairStatusUiModel3 = RepairStatusUiModel.AWAITING_PAYMENT;
            RepairStatusUiModel repairStatusUiModel4 = RepairStatusUiModel.CONFIRM_ADDRESS;
            RepairStatusUiModel repairStatusUiModel5 = RepairStatusUiModel.DELIVERED_TO_CLIENT;
            RepairStatusUiModel repairStatusUiModel6 = RepairStatusUiModel.PAYMENT_CONFIRMED;
            RepairStatusUiModel repairStatusUiModel7 = RepairStatusUiModel.PAYMENT_CONTACT;
            RepairStatusUiModel repairStatusUiModel8 = RepairStatusUiModel.PAYMENT_INITIATED;
            RepairStatusUiModel repairStatusUiModel9 = RepairStatusUiModel.REPAIR_IN_PROGRESS;
            if (ArraysKt.f(repairStatusUiModel2, new RepairStatusUiModel[]{repairStatusUiModel3, repairStatusUiModel4, repairStatusUiModel5, repairStatusUiModel6, repairStatusUiModel7, repairStatusUiModel8, repairStatusUiModel9, RepairStatusUiModel.SHIPPING, RepairStatusUiModel.SHIPPING_IN_PREPARATION})) {
                str2 = cj.f(gapComposerH, -765963604, R.string.dr_mylv_final_assessment_title, gapComposerH, false);
            } else {
                repairStatusUiModel2.getClass();
                if (ArraysKt.f(repairStatusUiModel2, new RepairStatusUiModel[]{RepairStatusUiModel.PRELIMINARY_ASSESSMENT, RepairStatusUiModel.PRELIMINARY_ASSESSMENT_ACC, RepairStatusUiModel.RECEIVED_AT_ATELIER, RepairStatusUiModel.SHIPPED_FROM_EHUB, RepairStatusUiModel.SHIPPING_TO_ATELIER, RepairStatusUiModel.UNDER_ASSESSMENT}) || RepairStatusUiModelKt.a(repairStatusUiModel2)) {
                    str2 = cj.f(gapComposerH, -765734762, R.string.dr_prass_card1_title, gapComposerH, false);
                } else {
                    gapComposerH.L(-765655960);
                    gapComposerH.Z(false);
                }
            }
            if (d == null || d2 != d.doubleValue()) {
                str2 = cj.f(gapComposerH, -765583017, R.string.dr_final_assessment, gapComposerH, false);
            } else {
                gapComposerH.L(-765505176);
                gapComposerH.Z(false);
            }
            if (d == null && d2 == 0.0d) {
                gapComposerH.L(-763906072);
                gapComposerH.Z(false);
                context = context2;
                str = "RepairInformationAssessment";
                r2 = 0;
                repairStatusUiModel = repairStatusUiModel2;
                r9 = gapComposerH;
            } else {
                repairStatusUiModel = repairStatusUiModel2;
                context = context2;
                r2 = 0;
                str = "RepairInformationAssessment";
                TextKt.c(str2, PaddingKt.m(n00.i(gapComposerH, -765313937, "RepairInformationAssessment"), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                String str4 = new String();
                if (RepairStatusUiModelKt.b(repairStatusUiModel)) {
                    str4 = PriceHelper.a(inAppDispatch, str3, d2);
                } else if (RepairStatusUiModelKt.c(repairStatusUiModel)) {
                    str4 = PriceHelper.a(inAppDispatch, str3, d != null ? d.doubleValue() : d2);
                }
                TextKt.c(str4, PaddingKt.m(new DTFunctionNameModifier(str), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                GapComposer gapComposer = gapComposerH;
                gapComposer.Z(false);
                r9 = gapComposer;
            }
            RepairStatusUiModel repairStatusUiModel10 = RepairStatusUiModel.PRELIMINARY_ASSESSMENT_ACC;
            RepairStatusUiModel repairStatusUiModel11 = repairStatusUiModel;
            if (repairStatusUiModel11 == repairStatusUiModel10) {
                ?? r25 = r9;
                TextKt.c(StringResources_androidKt.c(r9, R.string.dr_prass_card2_title), PaddingKt.m(n00.i(r9, -763791868, str), LVAppDesignKitTheme.l(r9).f48416e, LVAppDesignKitTheme.l(r9).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(r9).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(r9).m, r25, 0, 0, 131064);
                TextKt.c(StringResources_androidKt.c(r25, R.string.dr_prass_card2_text3), PaddingKt.m(new DTFunctionNameModifier(str), LVAppDesignKitTheme.l(r25).f48416e, LVAppDesignKitTheme.l(r25).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(r25).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(r25).m, r25, 0, 0, 131064);
                ?? r11 = r25;
                r11.Z(r2);
                r10 = r11;
            } else {
                r9.L(-762988472);
                r9.Z(r2);
                r10 = r9;
            }
            if (repairStatusUiModel11 != RepairStatusUiModel.PRELIMINARY_ASSESSMENT) {
                r10.L(-762851080);
                ?? r26 = r10;
                TextKt.c(StringResources_androidKt.c(r10, R.string.dr_prass_card3_title), PaddingKt.m(new DTFunctionNameModifier(str), LVAppDesignKitTheme.l(r10).f48416e, LVAppDesignKitTheme.l(r10).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(r10).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(r10).m, r26, 0, 0, 131064);
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier(str), LVAppDesignKitTheme.l(r26).f48416e, LVAppDesignKitTheme.l(r26).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12);
                assessmentViewState2 = assessmentViewState;
                String str5 = assessmentViewState2.f57362i;
                if (str5.length() <= 0) {
                    str5 = null;
                }
                if (str5 == null) {
                    str5 = careServiceDetailUiModel.K + " " + careServiceDetailUiModel.L + "\n" + CareServiceDetailMapperKt.a(careServiceDetailUiModel, context, JsonProviderKt.f43520a);
                }
                String str6 = str5;
                careServiceDetailUiModel2 = careServiceDetailUiModel;
                TextKt.c(str6, modifierM, LVAppDesignKitTheme.c(r26).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(r26).m, r26, 0, 0, 131064);
                ?? r12 = r26;
                repairStatusUiModel11.getClass();
                if (ArraysKt.f(repairStatusUiModel11, new RepairStatusUiModel[]{repairStatusUiModel3, repairStatusUiModel4, repairStatusUiModel7, repairStatusUiModel8, repairStatusUiModel10, RepairStatusUiModel.RECEIVED_AT_ATELIER, repairStatusUiModel9, RepairStatusUiModel.SHIPPING_TO_ATELIER})) {
                    r12.L(-761771412);
                    ConfigurationButton configurationButton = LVAppDesignKitTheme.b(r12).f48449e;
                    Modifier modifierD = SizeKt.d(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(r12).f48416e, LVAppDesignKitTheme.l(r12).f48415c, LVAppDesignKitTheme.l(r12).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), 1.0f);
                    String strC = StringResources_androidKt.c(r12, R.string.dr_modify_address_cta);
                    if ((i4 & 7168) != 2048) {
                        i4 = i3;
                        r29 = r2;
                    }
                    i4 = i3;
                    int i5 = r29 | (r12.y(careServiceDetailUiModel2) ? 1 : 0);
                    Object objX = r12.x();
                    if (i5 != 0 || objX == Composer.Companion.f7939a) {
                        is0 is0Var = new is0(function1, careServiceDetailUiModel2, r2);
                        r12.q(is0Var);
                        obj = is0Var;
                    } else {
                        obj = objX;
                    }
                    LVButtonKt.b(0, 504, r12, modifierD, configurationButton, null, null, strC, (Function0) obj, false, false, false);
                    r12.Z(r2);
                } else {
                    r12.L(-761211800);
                    r12.Z(r2);
                }
                r12.Z(r2);
                r8 = r12;
            } else {
                assessmentViewState2 = assessmentViewState;
                careServiceDetailUiModel2 = careServiceDetailUiModel;
                r10.L(-761205848);
                r10.Z(r2);
                r8 = r10;
            }
        } else {
            careServiceDetailUiModel2 = careServiceDetailUiModel;
            assessmentViewState2 = assessmentViewState;
            gapComposerH.D();
            r8 = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = r8.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oi0(inAppDispatch, assessmentViewState2, careServiceDetailUiModel2, function1, i2, 9);
        }
    }

    public static final void c(CareServiceDetailUiModel careServiceDetailUiModel, Composer composer, int i2) {
        int i3;
        GapComposer gapComposer;
        String str;
        GapComposer gapComposer2;
        String str2;
        boolean z;
        String strC;
        String strS;
        GapComposer gapComposerH = composer.h(-2014951330);
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.y(careServiceDetailUiModel) ? 4 : 2);
        } else {
            i3 = i2;
        }
        boolean z2 = true;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str3 = new String();
            String str4 = new String();
            CareServiceOrigin careServiceOrigin = careServiceDetailUiModel.y;
            String str5 = careServiceDetailUiModel.u;
            int i4 = WhenMappings.f63849a[careServiceOrigin.ordinal()];
            if (i4 == 1 || i4 == 2) {
                gapComposerH.L(662031478);
                gapComposerH.Z(false);
                str = str4;
            } else {
                DateTimeUtils dateTimeUtils = DateTimeUtils.f65832a;
                if (i4 == 3 || i4 == 4) {
                    gapComposerH.L(-951768218);
                    strC = StringResources_androidKt.c(gapComposerH, R.string.dr_card1_call_appointment);
                    strS = dateTimeUtils.s(str5);
                    gapComposerH.Z(false);
                } else {
                    if (i4 != 5) {
                        throw d21.u(gapComposerH, 662029031, false);
                    }
                    gapComposerH.L(-951507136);
                    strC = StringResources_androidKt.c(gapComposerH, R.string.dr_card1_video_call_appointment);
                    strS = dateTimeUtils.s(str5);
                    gapComposerH.Z(false);
                }
                str3 = strC;
                str = strS;
                z2 = false;
            }
            if (z2) {
                gapComposer2 = gapComposerH;
                str2 = "RepairInformationBeforeAssessment";
                z = false;
                gapComposer2.L(-950502364);
                gapComposer2.Z(false);
            } else {
                Modifier modifierM = PaddingKt.m(n00.i(gapComposerH, -951228880, "RepairInformationBeforeAssessment"), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).m;
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                z = false;
                str2 = "RepairInformationBeforeAssessment";
                TextKt.c(str3, modifierM, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131064);
                TextKt.c(str, PaddingKt.m(new DTFunctionNameModifier(str2), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                gapComposer2 = gapComposerH;
                gapComposer2.Z(false);
            }
            GapComposer gapComposer3 = gapComposer2;
            TextKt.c(StringResources_androidKt.c(gapComposer2, R.string.dr_contact_info), PaddingKt.m(new DTFunctionNameModifier(str2), LVAppDesignKitTheme.l(gapComposer2).f48416e, LVAppDesignKitTheme.l(gapComposer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposer2).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer2).m, gapComposer3, 0, 0, 131064);
            TextKt.c(careServiceDetailUiModel.z, PaddingKt.m(new DTFunctionNameModifier(str2), LVAppDesignKitTheme.l(gapComposer3).f48416e, LVAppDesignKitTheme.l(gapComposer3).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer3).m, gapComposer3, 0, 0, 131064);
            TextKt.c(careServiceDetailUiModel.A, PaddingKt.m(new DTFunctionNameModifier(str2), LVAppDesignKitTheme.l(gapComposer3).f48416e, LVAppDesignKitTheme.l(gapComposer3).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer3).m, gapComposer3, 0, 0, 131064);
            gapComposer = gapComposer3;
            if (StringsKt.w(careServiceDetailUiModel.B)) {
                gapComposer.L(-948578876);
                gapComposer.Z(z);
            } else {
                TextKt.c(StringResources_androidKt.c(gapComposer, R.string.dr_card3_sub_description), PaddingKt.m(n00.i(gapComposer, -949364013, str2), LVAppDesignKitTheme.l(gapComposer).f48416e, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).m, gapComposer, 0, 0, 131064);
                TextKt.c(careServiceDetailUiModel.B, PaddingKt.m(new DTFunctionNameModifier(str2), LVAppDesignKitTheme.l(gapComposer).f48416e, LVAppDesignKitTheme.l(gapComposer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).m, gapComposer, 0, 0, 131064);
                gapComposer = gapComposer;
                gapComposer.Z(z);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new om(careServiceDetailUiModel, i2, 10);
        }
    }

    public static final void d(InAppDispatch inAppDispatch, CareServiceDetailUiModel careServiceDetailUiModel, Function0 function0, Composer composer, int i2) {
        int i3;
        String str;
        double d;
        String str2;
        RepairStatusUiModel repairStatusUiModel;
        String str3;
        CareServiceDetailUiModel careServiceDetailUiModel2 = careServiceDetailUiModel;
        GapComposer gapComposerH = composer.h(625231486);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(inAppDispatch) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(careServiceDetailUiModel2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical = Alignment.Companion.l;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("RepairInformationStoreCareService");
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, vertical, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.care_services_restitution_date_updated), PaddingKt.m(cj.b("RepairInformationStoreCareService", RowScopeInstance.f5040a, 1.0f, true), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            GapComposer gapComposer = gapComposerH;
            Painter painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposer).N0, gapComposer, 0);
            String strC = StringResources_androidKt.c(gapComposer, R.string.alt_restitution_date_helper_button);
            Modifier modifierO = SizeKt.o(PaddingKt.m(Modifier.Companion.f8607b, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48416e, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), LVAppDesignKitTheme.d(gapComposer).n);
            boolean z = (i3 & 896) == 256;
            Object objX = gapComposer.x();
            if (z || objX == Composer.Companion.f7939a) {
                objX = new sq0(function0, 6);
                gapComposer.q(objX);
            }
            IconKt.a(painterA, strC, ModifierExtKt.c(modifierO, false, null, null, (Function0) objX, 31), 0L, gapComposer, 8, 8);
            gapComposer.Z(true);
            String str4 = careServiceDetailUiModel2.D;
            String str5 = careServiceDetailUiModel2.D;
            String str6 = careServiceDetailUiModel2.C;
            double d2 = careServiceDetailUiModel2.f63983h;
            String str7 = careServiceDetailUiModel2.f63982f;
            RepairStatusUiModel repairStatusUiModel2 = careServiceDetailUiModel2.d;
            if (str4.length() <= 0 || Intrinsics.c(str6, str5)) {
                str = str6;
                d = d2;
                str2 = str7;
                repairStatusUiModel = repairStatusUiModel2;
                str3 = "RepairInformationStoreCareService";
                gapComposer.L(-1000084476);
                gapComposer.Z(false);
            } else {
                d = d2;
                str = str6;
                str2 = str7;
                str3 = "RepairInformationStoreCareService";
                repairStatusUiModel = repairStatusUiModel2;
                TextKt.c(DateTimeUtils.t(inAppDispatch, str5, FormatStyle.FULL), PaddingKt.m(n00.i(gapComposer, -1000590148, "RepairInformationStoreCareService"), LVAppDesignKitTheme.l(gapComposer).f48416e, LVAppDesignKitTheme.l(gapComposer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).m, gapComposer, 0, 0, 131064);
                gapComposer = gapComposer;
                gapComposer.Z(false);
            }
            GapComposer gapComposer2 = gapComposer;
            TextKt.c(StringResources_androidKt.c(gapComposer, R.string.original_date), PaddingKt.m(new DTFunctionNameModifier(str3), LVAppDesignKitTheme.l(gapComposer).f48416e, LVAppDesignKitTheme.l(gapComposer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).m, gapComposer2, 0, 0, 131064);
            TextKt.c(DateTimeUtils.t(inAppDispatch, str, FormatStyle.FULL), PaddingKt.m(new DTFunctionNameModifier(str3), LVAppDesignKitTheme.l(gapComposer2).f48416e, LVAppDesignKitTheme.l(gapComposer2).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer2).m, gapComposer2, 0, 0, 131064);
            gapComposerH = gapComposer2;
            String str8 = new String();
            String str9 = new String();
            if (repairStatusUiModel == RepairStatusUiModel.HISTORY || repairStatusUiModel == RepairStatusUiModel.DROPPED_IN_STORE) {
                careServiceDetailUiModel2 = careServiceDetailUiModel;
                gapComposerH.L(-998093532);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-998995911);
                if (RepairStatusUiModelKt.b(repairStatusUiModel)) {
                    gapComposerH.L(-998930811);
                    str8 = PriceHelper.a(inAppDispatch, str2, d);
                    str9 = StringResources_androidKt.c(gapComposerH, R.string.dr_prass_card1_title);
                    gapComposerH.Z(false);
                    careServiceDetailUiModel2 = careServiceDetailUiModel;
                } else {
                    double d3 = d;
                    String str10 = str2;
                    if (RepairStatusUiModelKt.c(repairStatusUiModel)) {
                        gapComposerH.L(-998505336);
                        careServiceDetailUiModel2 = careServiceDetailUiModel;
                        Double d4 = careServiceDetailUiModel2.f63984i;
                        str8 = PriceHelper.a(inAppDispatch, str10, d4 != null ? d4.doubleValue() : d3);
                        str9 = StringResources_androidKt.c(gapComposerH, R.string.updated_cost);
                        gapComposerH.Z(false);
                    } else {
                        careServiceDetailUiModel2 = careServiceDetailUiModel;
                        gapComposerH.L(-998099484);
                        gapComposerH.Z(false);
                    }
                }
                gapComposerH.Z(false);
            }
            if (str8.length() > 0) {
                TextKt.c(str9, PaddingKt.m(n00.i(gapComposerH, -998034415, str3), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                TextKt.c(str8, PaddingKt.m(new DTFunctionNameModifier(str3), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-997308860);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og0(inAppDispatch, careServiceDetailUiModel2, function0, i2, 4);
        }
    }
}
