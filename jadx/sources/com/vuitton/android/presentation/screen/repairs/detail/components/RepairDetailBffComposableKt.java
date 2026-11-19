package com.vuitton.android.presentation.screen.repairs.detail.components;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.repairs.RepairBffViewModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import defpackage.le;
import defpackage.n00;
import defpackage.pr0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\b²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\f\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;", "viewStateAssessment", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;", "calendarViewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairDetailBffComposableKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r6v7, types: [int] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    public static final void a(RepairBffViewModel repairBffViewModel, DistantRepairAssessmentBffViewModel distantRepairAssessmentBffViewModel, CareServiceShortUiModel careServiceShortUiModel, Function0 function0, Function0 function1, Function1 function2, Function1 function3, Function1 function4, Function0 function5, Function0 function6, Function1 function7, DatePickerViewModel datePickerViewModel, Composer composer, int i2) {
        GapComposer gapComposer;
        Object repairDetailBffComposableKt$RepairDetailBffComposable$3$1;
        boolean z;
        Object obj;
        int i3;
        SnackbarHostState snackbarHostState;
        int i4;
        int i5;
        GapComposer gapComposer2;
        ?? r6;
        RepairBffViewModel repairBffViewModel2 = repairBffViewModel;
        repairBffViewModel2.getClass();
        distantRepairAssessmentBffViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        GapComposer gapComposerH = composer.h(-637179450);
        int i6 = i2 | (gapComposerH.K(repairBffViewModel2) ? 4 : 2) | (gapComposerH.K(distantRepairAssessmentBffViewModel) ? 32 : 16) | (gapComposerH.K(careServiceShortUiModel) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288) | (gapComposerH.y(function4) ? 8388608 : 4194304) | (gapComposerH.y(function5) ? 67108864 : 33554432) | (gapComposerH.y(function6) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i7 = (gapComposerH.y(function7) ? 4 : 2) | (gapComposerH.K(datePickerViewModel) ? 32 : 16);
        if (gapComposerH.p(i6 & 1, ((306783379 & i6) == 306783378 && (i7 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            int i8 = i6 & 896;
            int i9 = i6 & 14;
            boolean z2 = (i8 == 256) | (i9 == 4);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$1) {
                objX = new RepairDetailBffComposableKt$RepairDetailBffComposable$1$1(careServiceShortUiModel, repairBffViewModel2, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            MutableState mutableStateB = SnapshotStateKt.b(repairBffViewModel2.getD(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(distantRepairAssessmentBffViewModel.getI(), gapComposerH);
            MutableState mutableStateA = SnapshotStateKt.a(repairBffViewModel2.i(), new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null), null, gapComposerH, 0, 2);
            MutableState mutableStateB3 = SnapshotStateKt.b(datePickerViewModel.getP(), gapComposerH);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            int i10 = i6 & 112;
            boolean z3 = (i8 == 256) | (i10 == 32) | (i9 == 4);
            Object objX2 = gapComposerH.x();
            if (z3 || objX2 == composer$Companion$Empty$1) {
                objX2 = new RepairDetailBffComposableKt$RepairDetailBffComposable$2$1(distantRepairAssessmentBffViewModel, careServiceShortUiModel, repairBffViewModel2, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX3;
            boolean zY = (i10 == 32) | gapComposerH.y(context) | (i9 == 4);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                z = false;
                obj = null;
                repairDetailBffComposableKt$RepairDetailBffComposable$3$1 = new RepairDetailBffComposableKt$RepairDetailBffComposable$3$1(distantRepairAssessmentBffViewModel, snackbarHostState2, context, repairBffViewModel2, null);
                i3 = i6;
                snackbarHostState = snackbarHostState2;
                gapComposerH.q(repairDetailBffComposableKt$RepairDetailBffComposable$3$1);
            } else {
                obj = null;
                repairDetailBffComposableKt$RepairDetailBffComposable$3$1 = objX4;
                snackbarHostState = snackbarHostState2;
                z = false;
                i3 = i6;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) repairDetailBffComposableKt$RepairDetailBffComposable$3$1);
            if (((RepairsBffViewState) mutableStateB.getF10755b()).f64085c) {
                gapComposerH.L(1545051916);
                RepairDetailErrorScreenKt.a(snackbarHostState, function0, gapComposerH, ((i3 >> 6) & 112) | 6);
                gapComposerH.Z(z);
                repairBffViewModel2 = repairBffViewModel;
                r6 = z;
                i5 = 7;
                i4 = 4;
                gapComposer2 = gapComposerH;
            } else {
                gapComposerH.L(1545238567);
                RepairsBffViewState repairsBffViewState = (RepairsBffViewState) mutableStateB.getF10755b();
                AssessmentBffViewState assessmentBffViewState = (AssessmentBffViewState) mutableStateB2.getF10755b();
                DistantRepairCalendarViewState distantRepairCalendarViewState = (DistantRepairCalendarViewState) mutableStateB3.getF10755b();
                int i11 = i7 & 112;
                boolean z4 = i11 != 32 ? z : true;
                Object objX5 = gapComposerH.x();
                if (z4 || objX5 == composer$Companion$Empty$1) {
                    objX5 = new RepairDetailBffComposableKt$RepairDetailBffComposable$4$1(3, datePickerViewModel, DatePickerViewModel.class, "getAvailableDates", "getAvailableDates(Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V", 0);
                    gapComposerH.q(objX5);
                }
                KFunction kFunction = (KFunction) objX5;
                boolean z5 = i11 != 32 ? z : true;
                Object objX6 = gapComposerH.x();
                if (z5 || objX6 == composer$Companion$Empty$1) {
                    objX6 = new RepairDetailBffComposableKt$RepairDetailBffComposable$5$1(3, datePickerViewModel, DatePickerViewModel.class, "getAvailableTimeSlots", "getAvailableTimeSlots(Ljava/time/LocalDate;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Ljava/util/List;)V", 0);
                    gapComposerH.q(objX6);
                }
                Function3 function8 = (Function3) objX6;
                boolean z6 = i9 != 4 ? z : true;
                Object objX7 = gapComposerH.x();
                if (z6 || objX7 == composer$Companion$Empty$1) {
                    objX7 = new RepairDetailBffComposableKt$RepairDetailBffComposable$6$1(1, repairBffViewModel, RepairBffViewModel.class, "rescheduleAppointment", "rescheduleAppointment(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;)V", 0);
                    gapComposerH.q(objX7);
                }
                KFunction kFunction2 = (KFunction) objX7;
                ContactUsUiModel contactUsUiModel = (ContactUsUiModel) mutableStateA.getF10755b();
                boolean z7 = i9 != 4 ? z : true;
                Object objX8 = gapComposerH.x();
                if (z7 || objX8 == composer$Companion$Empty$1) {
                    repairBffViewModel2 = repairBffViewModel;
                    RepairDetailBffComposableKt$RepairDetailBffComposable$7$1 repairDetailBffComposableKt$RepairDetailBffComposable$7$1 = new RepairDetailBffComposableKt$RepairDetailBffComposable$7$1(1, repairBffViewModel2, RepairBffViewModel.class, "sendTrackingHit", "sendTrackingHit(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V", 0);
                    gapComposerH.q(repairDetailBffComposableKt$RepairDetailBffComposable$7$1);
                    objX8 = repairDetailBffComposableKt$RepairDetailBffComposable$7$1;
                } else {
                    repairBffViewModel2 = repairBffViewModel;
                }
                int i12 = i3 << 9;
                boolean z8 = z;
                i4 = 4;
                i5 = 7;
                RepairDetailBffScreenKt.j(repairsBffViewState, assessmentBffViewState, snackbarHostState, distantRepairCalendarViewState, (Function3) kFunction, function8, function0, function1, function2, function6, (Function1) kFunction2, function3, function4, function5, contactUsUiModel, (Function1) ((KFunction) objX8), function7, lVModalBottomSheetStateF, gapComposerH, (i12 & 234881024) | (i12 & 3670016) | KyberEngine.KyberPolyBytes | (29360128 & i12) | (i3 & 1879048192), (3670016 & (i7 << 18)) | ((i3 >> 15) & 8176) | (LVModalBottomSheetState.f48797e << 21));
                GapComposer gapComposer3 = gapComposerH;
                gapComposer3.Z(z8);
                r6 = z8;
                gapComposer2 = gapComposer3;
            }
            ContactUsUiModel contactUsUiModel2 = (ContactUsUiModel) mutableStateA.getF10755b();
            LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(r6, i5, gapComposer2, obj);
            ?? r5 = i9 != i4 ? r6 : 1;
            Object objX9 = gapComposer2.x();
            if (r5 != 0 || objX9 == composer$Companion$Empty$1) {
                objX9 = new pr0(repairBffViewModel2, 1);
                gapComposer2.q(objX9);
            }
            Function0 function9 = (Function0) objX9;
            int i13 = LVModalBottomSheetState.f48797e;
            GapComposer gapComposer4 = gapComposer2;
            ContactUsBottomSheetKt.a(contactUsUiModel2, lVModalBottomSheetStateF, lVModalBottomSheetStateF2, function7, function9, gapComposer4, (i13 << 6) | (i13 << 3) | ((i7 << 9) & 7168));
            gapComposer = gapComposer4;
        } else {
            gapComposerH.D();
            gapComposer = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new le(repairBffViewModel2, distantRepairAssessmentBffViewModel, careServiceShortUiModel, function0, function1, function2, function3, function4, function5, function6, function7, datePickerViewModel, i2);
        }
    }
}
