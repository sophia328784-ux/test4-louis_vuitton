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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.repairs.RepairViewModel;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailComposableKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import defpackage.n00;
import defpackage.wq0;
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
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\b²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\f\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;", "viewStateAssessment", "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;", "contactUsUiModel", "Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;", "calendarViewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairDetailComposableKt {
    /* JADX WARN: Code duplicated, block: B:111:0x0213  */
    /* JADX WARN: Code duplicated, block: B:114:0x021d  */
    /* JADX WARN: Code duplicated, block: B:115:0x021f  */
    /* JADX WARN: Code duplicated, block: B:118:0x022c  */
    /* JADX WARN: Code duplicated, block: B:119:0x022f  */
    /* JADX WARN: Code duplicated, block: B:123:0x023b  */
    /* JADX WARN: Code duplicated, block: B:128:0x026a  */
    /* JADX WARN: Code duplicated, block: B:129:0x0283  */
    /* JADX WARN: Code duplicated, block: B:131:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:132:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:136:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:141:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:142:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:146:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:149:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:150:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:156:0x0311  */
    /* JADX WARN: Code duplicated, block: B:159:0x0338  */
    /* JADX WARN: Code duplicated, block: B:160:0x033a  */
    /* JADX WARN: Code duplicated, block: B:164:0x0344  */
    /* JADX WARN: Code duplicated, block: B:169:0x0372  */
    /* JADX WARN: Code duplicated, block: B:170:0x0374  */
    /* JADX WARN: Code duplicated, block: B:174:0x037e  */
    /* JADX WARN: Code duplicated, block: B:178:0x03ff  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v37 */
    /* JADX WARN: Type inference failed for: r3v38, types: [int] */
    /* JADX WARN: Type inference failed for: r3v39 */
    public static final void a(final RepairViewModel repairViewModel, final DistantRepairAssessmentViewModel distantRepairAssessmentViewModel, final DatePickerViewModel datePickerViewModel, final CareServiceUiModel careServiceUiModel, final String str, final Function0 function0, final Function0 function1, final Function1 function2, final Function1 function3, final Function1 function4, final Function0 function5, final Function0 function6, final Function1 function7, Composer composer, final int i2) {
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Context context;
        Object objX;
        SnackbarHostState snackbarHostState;
        boolean z;
        boolean z2;
        boolean z3;
        Object repairDetailComposableKt$RepairDetailComposable$5$1;
        int i3;
        int i4;
        boolean z4;
        SnackbarHostState snackbarHostState2;
        int i5;
        boolean z5;
        int i6;
        Object repairDetailComposableKt$RepairDetailComposable$6$1;
        int i7;
        boolean z6;
        Object objX2;
        boolean z7;
        Object objX3;
        int i8;
        SnackbarHostState snackbarHostState3;
        int i9;
        Function1 function8;
        int i10;
        boolean z8;
        Object objX4;
        int i11;
        boolean z9;
        Object objX5;
        ?? r3;
        int i12;
        Object objX6;
        repairViewModel.getClass();
        distantRepairAssessmentViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        GapComposer gapComposerH = composer.h(-1600271394);
        int i13 = i2 | (gapComposerH.K(repairViewModel) ? 4 : 2) | (gapComposerH.K(distantRepairAssessmentViewModel) ? 32 : 16) | (gapComposerH.K(datePickerViewModel) ? 256 : 128) | (gapComposerH.y(careServiceUiModel) ? 2048 : 1024) | (gapComposerH.K(str != null ? new CareServiceIdUiModel(str) : null) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536) | (gapComposerH.y(function1) ? 1048576 : 524288) | (gapComposerH.y(function2) ? 8388608 : 4194304) | (gapComposerH.y(function3) ? 67108864 : 33554432) | (gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i14 = (gapComposerH.y(function5) ? 4 : 2) | (gapComposerH.y(function6) ? 32 : 16) | (gapComposerH.y(function7) ? 256 : 128);
        if (gapComposerH.p(i13 & 1, ((i13 & 306783379) == 306783378 && (i14 & 147) == 146) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            int i15 = i13 & 14;
            boolean zY = gapComposerH.y(careServiceUiModel) | (i15 == 4);
            Object objX7 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (zY || objX7 == composer$Companion$Empty$2) {
                objX7 = new RepairDetailComposableKt$RepairDetailComposable$1$1(careServiceUiModel, repairViewModel, null);
                gapComposerH.q(objX7);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX7);
            boolean zY2 = gapComposerH.y(careServiceUiModel) | (i15 == 4);
            Object objX8 = gapComposerH.x();
            if (zY2 || objX8 == composer$Companion$Empty$2) {
                objX8 = new RepairDetailComposableKt$RepairDetailComposable$2$1(careServiceUiModel, repairViewModel, null);
                gapComposerH.q(objX8);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX8);
            boolean z10 = ((i13 & 57344) == 16384) | (i15 == 4);
            Object objX9 = gapComposerH.x();
            if (z10 || objX9 == composer$Companion$Empty$2) {
                objX9 = new RepairDetailComposableKt$RepairDetailComposable$3$1(str, repairViewModel, null);
                gapComposerH.q(objX9);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX9);
            MutableState mutableStateB = SnapshotStateKt.b(repairViewModel.getI(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(distantRepairAssessmentViewModel.getH(), gapComposerH);
            MutableState mutableStateA = SnapshotStateKt.a(repairViewModel.i(), new ContactUsUiModel(false, null, null, null, null, null, null, null, false, false, false, null, 4095, null), null, gapComposerH, 0, 2);
            MutableState mutableStateB3 = SnapshotStateKt.b(datePickerViewModel.getP(), gapComposerH);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            int i16 = i13 & 112;
            boolean zY3 = (i15 == 4) | (i16 == 32) | gapComposerH.y(careServiceUiModel);
            Object objX10 = gapComposerH.x();
            if (zY3) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (objX10 == composer$Companion$Empty$1) {
                }
                EffectsKt.e(gapComposerH, unit, (Function2) objX10);
                context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = n00.b(gapComposerH);
                }
                snackbarHostState = (SnackbarHostState) objX;
                if (i16 != 32) {
                    z = false;
                } else {
                    z = true;
                }
                boolean zY4 = z | gapComposerH.y(context);
                if (i15 != 4) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                z3 = zY4 | z2;
                Object objX11 = gapComposerH.x();
                if (!z3 || objX11 == composer$Companion$Empty$1) {
                    i3 = i13;
                    i4 = i15;
                    z4 = false;
                    repairDetailComposableKt$RepairDetailComposable$5$1 = new RepairDetailComposableKt$RepairDetailComposable$5$1(distantRepairAssessmentViewModel, snackbarHostState, context, repairViewModel, null);
                    snackbarHostState2 = snackbarHostState;
                    gapComposerH.q(repairDetailComposableKt$RepairDetailComposable$5$1);
                } else {
                    i4 = i15;
                    snackbarHostState2 = snackbarHostState;
                    z4 = false;
                    i3 = i13;
                    repairDetailComposableKt$RepairDetailComposable$5$1 = objX11;
                }
                EffectsKt.e(gapComposerH, unit, (Function2) repairDetailComposableKt$RepairDetailComposable$5$1);
                if (((RepairsViewState) mutableStateB.getF10755b()).f64015c) {
                    gapComposerH.L(454732500);
                    RepairDetailErrorScreenKt.a(snackbarHostState2, function0, gapComposerH, ((i3 >> 12) & 112) | 6);
                    gapComposerH.Z(z4);
                    r3 = z4;
                    i12 = 7;
                    function8 = null;
                } else {
                    gapComposerH.L(454912052);
                    RepairsViewState repairsViewState = (RepairsViewState) mutableStateB.getF10755b();
                    AssessmentViewState assessmentViewState = (AssessmentViewState) mutableStateB2.getF10755b();
                    DistantRepairCalendarViewState distantRepairCalendarViewState = (DistantRepairCalendarViewState) mutableStateB3.getF10755b();
                    i5 = i3 & 896;
                    if (i5 != 256) {
                        z5 = z4;
                    } else {
                        z5 = true;
                    }
                    Object objX12 = gapComposerH.x();
                    if (!z5 || objX12 == composer$Companion$Empty$1) {
                        i6 = i16;
                        i7 = 4;
                        repairDetailComposableKt$RepairDetailComposable$6$1 = new RepairDetailComposableKt$RepairDetailComposable$6$1(3, datePickerViewModel, DatePickerViewModel.class, "getAvailableDates", "getAvailableDates(Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V", 0);
                        gapComposerH.q(repairDetailComposableKt$RepairDetailComposable$6$1);
                    } else {
                        repairDetailComposableKt$RepairDetailComposable$6$1 = objX12;
                        i6 = i16;
                        i7 = 4;
                    }
                    Function3 function9 = (Function3) ((KFunction) repairDetailComposableKt$RepairDetailComposable$6$1);
                    if (i5 != 256) {
                        z6 = z4;
                    } else {
                        z6 = true;
                    }
                    objX2 = gapComposerH.x();
                    if (z6 || objX2 == composer$Companion$Empty$1) {
                        RepairDetailComposableKt$RepairDetailComposable$7$1 repairDetailComposableKt$RepairDetailComposable$7$1 = new RepairDetailComposableKt$RepairDetailComposable$7$1(3, datePickerViewModel, DatePickerViewModel.class, "getAvailableTimeSlots", "getAvailableTimeSlots(Ljava/time/LocalDate;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Ljava/util/List;)V", 0);
                        gapComposerH.q(repairDetailComposableKt$RepairDetailComposable$7$1);
                        objX2 = repairDetailComposableKt$RepairDetailComposable$7$1;
                    }
                    Function3 function10 = (Function3) objX2;
                    if (i6 != 32) {
                        z7 = z4;
                    } else {
                        z7 = true;
                    }
                    objX3 = gapComposerH.x();
                    if (!z7 || objX3 == composer$Companion$Empty$1) {
                        i8 = i3;
                        snackbarHostState3 = snackbarHostState2;
                        i9 = i7;
                        function8 = null;
                        RepairDetailComposableKt$RepairDetailComposable$8$1 repairDetailComposableKt$RepairDetailComposable$8$1 = new RepairDetailComposableKt$RepairDetailComposable$8$1(2, distantRepairAssessmentViewModel, DistantRepairAssessmentViewModel.class, "fetchSelectedAddress", "fetchSelectedAddress(Ljava/lang/String;Ljava/lang/String;)V", 0);
                        gapComposerH.q(repairDetailComposableKt$RepairDetailComposable$8$1);
                        objX3 = repairDetailComposableKt$RepairDetailComposable$8$1;
                    } else {
                        snackbarHostState3 = snackbarHostState2;
                        i9 = i7;
                        i8 = i3;
                        function8 = null;
                    }
                    Function2 function11 = (Function2) ((KFunction) objX3);
                    i10 = i4;
                    if (i10 != i9) {
                        z8 = false;
                    } else {
                        z8 = true;
                    }
                    objX4 = gapComposerH.x();
                    if (!z8 || objX4 == composer$Companion$Empty$1) {
                        i11 = i10;
                        RepairDetailComposableKt$RepairDetailComposable$9$1 repairDetailComposableKt$RepairDetailComposable$9$1 = new RepairDetailComposableKt$RepairDetailComposable$9$1(1, repairViewModel, RepairViewModel.class, "rescheduleAppointment", "rescheduleAppointment(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;)V", 0);
                        gapComposerH.q(repairDetailComposableKt$RepairDetailComposable$9$1);
                        objX4 = repairDetailComposableKt$RepairDetailComposable$9$1;
                    } else {
                        i11 = i10;
                    }
                    Function1 function12 = (Function1) ((KFunction) objX4);
                    ContactUsUiModel contactUsUiModel = (ContactUsUiModel) mutableStateA.getF10755b();
                    if (i11 != i9) {
                        z9 = false;
                    } else {
                        z9 = true;
                    }
                    objX5 = gapComposerH.x();
                    if (z9 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new RepairDetailComposableKt$RepairDetailComposable$10$1(1, repairViewModel, RepairViewModel.class, "sendTrackingHit", "sendTrackingHit(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V", 0);
                        gapComposerH.q(objX5);
                    }
                    int i17 = i8 << 6;
                    int i18 = (i17 & 1879048192) | (29360128 & i17) | KyberEngine.KyberPolyBytes | (234881024 & i17);
                    int i19 = i8 >> 18;
                    int i20 = ((i14 >> 3) & 14) | (i19 & 896) | (i19 & 7168);
                    int i21 = i14 << 12;
                    int i22 = i20 | (i21 & 57344) | (i21 & 3670016) | (LVModalBottomSheetState.f48797e << 21);
                    r3 = 0;
                    i12 = 7;
                    RepairDetailScreenKt.d(repairsViewState, assessmentViewState, snackbarHostState3, distantRepairCalendarViewState, function9, function10, function11, function0, function1, function2, function6, function12, function3, function4, function5, contactUsUiModel, function7, lVModalBottomSheetStateF, (Function1) ((KFunction) objX5), gapComposerH, i18, i22);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                }
                ContactUsUiModel contactUsUiModel2 = (ContactUsUiModel) mutableStateA.getF10755b();
                LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(r3, i12, gapComposerH, function8);
                objX6 = gapComposerH.x();
                if (objX6 == composer$Companion$Empty$1) {
                    objX6 = new wq0(21);
                    gapComposerH.q(objX6);
                }
                int i23 = LVModalBottomSheetState.f48797e;
                GapComposer gapComposer = gapComposerH;
                ContactUsBottomSheetKt.a(contactUsUiModel2, lVModalBottomSheetStateF, lVModalBottomSheetStateF2, function7, (Function0) objX6, gapComposer, (i23 << 6) | (i23 << 3) | 24576 | ((i14 << 3) & 7168));
                gapComposerH = gapComposer;
            }
            objX10 = new RepairDetailComposableKt$RepairDetailComposable$4$1(distantRepairAssessmentViewModel, careServiceUiModel, repairViewModel, null);
            gapComposerH.q(objX10);
            EffectsKt.e(gapComposerH, unit, (Function2) objX10);
            context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            objX = gapComposerH.x();
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposerH);
            }
            snackbarHostState = (SnackbarHostState) objX;
            if (i16 != 32) {
                z = false;
            } else {
                z = true;
            }
            boolean zY5 = z | gapComposerH.y(context);
            if (i15 != 4) {
                z2 = false;
            } else {
                z2 = true;
            }
            z3 = zY5 | z2;
            Object objX13 = gapComposerH.x();
            if (z3) {
                i3 = i13;
                i4 = i15;
                z4 = false;
                repairDetailComposableKt$RepairDetailComposable$5$1 = new RepairDetailComposableKt$RepairDetailComposable$5$1(distantRepairAssessmentViewModel, snackbarHostState, context, repairViewModel, null);
                snackbarHostState2 = snackbarHostState;
                gapComposerH.q(repairDetailComposableKt$RepairDetailComposable$5$1);
            } else {
                i3 = i13;
                i4 = i15;
                z4 = false;
                repairDetailComposableKt$RepairDetailComposable$5$1 = new RepairDetailComposableKt$RepairDetailComposable$5$1(distantRepairAssessmentViewModel, snackbarHostState, context, repairViewModel, null);
                snackbarHostState2 = snackbarHostState;
                gapComposerH.q(repairDetailComposableKt$RepairDetailComposable$5$1);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) repairDetailComposableKt$RepairDetailComposable$5$1);
            if (((RepairsViewState) mutableStateB.getF10755b()).f64015c) {
                gapComposerH.L(454732500);
                RepairDetailErrorScreenKt.a(snackbarHostState2, function0, gapComposerH, ((i3 >> 12) & 112) | 6);
                gapComposerH.Z(z4);
                r3 = z4;
                i12 = 7;
                function8 = null;
            } else {
                gapComposerH.L(454912052);
                RepairsViewState repairsViewState2 = (RepairsViewState) mutableStateB.getF10755b();
                AssessmentViewState assessmentViewState2 = (AssessmentViewState) mutableStateB2.getF10755b();
                DistantRepairCalendarViewState distantRepairCalendarViewState2 = (DistantRepairCalendarViewState) mutableStateB3.getF10755b();
                i5 = i3 & 896;
                if (i5 != 256) {
                    z5 = z4;
                } else {
                    z5 = true;
                }
                Object objX14 = gapComposerH.x();
                if (z5) {
                    i6 = i16;
                    i7 = 4;
                    repairDetailComposableKt$RepairDetailComposable$6$1 = new RepairDetailComposableKt$RepairDetailComposable$6$1(3, datePickerViewModel, DatePickerViewModel.class, "getAvailableDates", "getAvailableDates(Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V", 0);
                    gapComposerH.q(repairDetailComposableKt$RepairDetailComposable$6$1);
                } else {
                    i6 = i16;
                    i7 = 4;
                    repairDetailComposableKt$RepairDetailComposable$6$1 = new RepairDetailComposableKt$RepairDetailComposable$6$1(3, datePickerViewModel, DatePickerViewModel.class, "getAvailableDates", "getAvailableDates(Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;)V", 0);
                    gapComposerH.q(repairDetailComposableKt$RepairDetailComposable$6$1);
                }
                Function3 function13 = (Function3) ((KFunction) repairDetailComposableKt$RepairDetailComposable$6$1);
                if (i5 != 256) {
                    z6 = z4;
                } else {
                    z6 = true;
                }
                objX2 = gapComposerH.x();
                if (z6) {
                    RepairDetailComposableKt$RepairDetailComposable$7$1 repairDetailComposableKt$RepairDetailComposable$7$2 = new RepairDetailComposableKt$RepairDetailComposable$7$1(3, datePickerViewModel, DatePickerViewModel.class, "getAvailableTimeSlots", "getAvailableTimeSlots(Ljava/time/LocalDate;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Ljava/util/List;)V", 0);
                    gapComposerH.q(repairDetailComposableKt$RepairDetailComposable$7$2);
                    objX2 = repairDetailComposableKt$RepairDetailComposable$7$2;
                } else {
                    RepairDetailComposableKt$RepairDetailComposable$7$1 repairDetailComposableKt$RepairDetailComposable$7$3 = new RepairDetailComposableKt$RepairDetailComposable$7$1(3, datePickerViewModel, DatePickerViewModel.class, "getAvailableTimeSlots", "getAvailableTimeSlots(Ljava/time/LocalDate;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Ljava/util/List;)V", 0);
                    gapComposerH.q(repairDetailComposableKt$RepairDetailComposable$7$3);
                    objX2 = repairDetailComposableKt$RepairDetailComposable$7$3;
                }
                Function3 function14 = (Function3) objX2;
                if (i6 != 32) {
                    z7 = z4;
                } else {
                    z7 = true;
                }
                objX3 = gapComposerH.x();
                if (z7) {
                    i8 = i3;
                    snackbarHostState3 = snackbarHostState2;
                    i9 = i7;
                    function8 = null;
                    RepairDetailComposableKt$RepairDetailComposable$8$1 repairDetailComposableKt$RepairDetailComposable$8$2 = new RepairDetailComposableKt$RepairDetailComposable$8$1(2, distantRepairAssessmentViewModel, DistantRepairAssessmentViewModel.class, "fetchSelectedAddress", "fetchSelectedAddress(Ljava/lang/String;Ljava/lang/String;)V", 0);
                    gapComposerH.q(repairDetailComposableKt$RepairDetailComposable$8$2);
                    objX3 = repairDetailComposableKt$RepairDetailComposable$8$2;
                } else {
                    i8 = i3;
                    snackbarHostState3 = snackbarHostState2;
                    i9 = i7;
                    function8 = null;
                    RepairDetailComposableKt$RepairDetailComposable$8$1 repairDetailComposableKt$RepairDetailComposable$8$3 = new RepairDetailComposableKt$RepairDetailComposable$8$1(2, distantRepairAssessmentViewModel, DistantRepairAssessmentViewModel.class, "fetchSelectedAddress", "fetchSelectedAddress(Ljava/lang/String;Ljava/lang/String;)V", 0);
                    gapComposerH.q(repairDetailComposableKt$RepairDetailComposable$8$3);
                    objX3 = repairDetailComposableKt$RepairDetailComposable$8$3;
                }
                Function2 function15 = (Function2) ((KFunction) objX3);
                i10 = i4;
                if (i10 != i9) {
                    z8 = false;
                } else {
                    z8 = true;
                }
                objX4 = gapComposerH.x();
                if (z8) {
                    i11 = i10;
                    RepairDetailComposableKt$RepairDetailComposable$9$1 repairDetailComposableKt$RepairDetailComposable$9$2 = new RepairDetailComposableKt$RepairDetailComposable$9$1(1, repairViewModel, RepairViewModel.class, "rescheduleAppointment", "rescheduleAppointment(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;)V", 0);
                    gapComposerH.q(repairDetailComposableKt$RepairDetailComposable$9$2);
                    objX4 = repairDetailComposableKt$RepairDetailComposable$9$2;
                } else {
                    i11 = i10;
                    RepairDetailComposableKt$RepairDetailComposable$9$1 repairDetailComposableKt$RepairDetailComposable$9$3 = new RepairDetailComposableKt$RepairDetailComposable$9$1(1, repairViewModel, RepairViewModel.class, "rescheduleAppointment", "rescheduleAppointment(Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;)V", 0);
                    gapComposerH.q(repairDetailComposableKt$RepairDetailComposable$9$3);
                    objX4 = repairDetailComposableKt$RepairDetailComposable$9$3;
                }
                Function1 function16 = (Function1) ((KFunction) objX4);
                ContactUsUiModel contactUsUiModel3 = (ContactUsUiModel) mutableStateA.getF10755b();
                if (i11 != i9) {
                    z9 = false;
                } else {
                    z9 = true;
                }
                objX5 = gapComposerH.x();
                if (z9) {
                    objX5 = new RepairDetailComposableKt$RepairDetailComposable$10$1(1, repairViewModel, RepairViewModel.class, "sendTrackingHit", "sendTrackingHit(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V", 0);
                    gapComposerH.q(objX5);
                } else {
                    objX5 = new RepairDetailComposableKt$RepairDetailComposable$10$1(1, repairViewModel, RepairViewModel.class, "sendTrackingHit", "sendTrackingHit(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V", 0);
                    gapComposerH.q(objX5);
                }
                int i110 = i8 << 6;
                int i111 = (i110 & 1879048192) | (29360128 & i110) | KyberEngine.KyberPolyBytes | (234881024 & i110);
                int i112 = i8 >> 18;
                int i24 = ((i14 >> 3) & 14) | (i112 & 896) | (i112 & 7168);
                int i25 = i14 << 12;
                int i26 = i24 | (i25 & 57344) | (i25 & 3670016) | (LVModalBottomSheetState.f48797e << 21);
                r3 = 0;
                i12 = 7;
                RepairDetailScreenKt.d(repairsViewState2, assessmentViewState2, snackbarHostState3, distantRepairCalendarViewState2, function13, function14, function15, function0, function1, function2, function6, function16, function3, function4, function5, contactUsUiModel3, function7, lVModalBottomSheetStateF, (Function1) ((KFunction) objX5), gapComposerH, i111, i26);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
            ContactUsUiModel contactUsUiModel4 = (ContactUsUiModel) mutableStateA.getF10755b();
            LVModalBottomSheetState lVModalBottomSheetStateF3 = LVModalBottomSheetKt.f(r3, i12, gapComposerH, function8);
            objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = new wq0(21);
                gapComposerH.q(objX6);
            }
            int i27 = LVModalBottomSheetState.f48797e;
            GapComposer gapComposer2 = gapComposerH;
            ContactUsBottomSheetKt.a(contactUsUiModel4, lVModalBottomSheetStateF, lVModalBottomSheetStateF3, function7, (Function0) objX6, gapComposer2, (i27 << 6) | (i27 << 3) | 24576 | ((i14 << 3) & 7168));
            gapComposerH = gapComposer2;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(distantRepairAssessmentViewModel, datePickerViewModel, careServiceUiModel, str, function0, function1, function2, function3, function4, function5, function6, function7, i2) { // from class: gs0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ DistantRepairAssessmentViewModel f69480c;
                public final /* synthetic */ DatePickerViewModel d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ CareServiceUiModel f69481e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ String f69482f;
                public final /* synthetic */ Function0 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f69483h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function1 f69484i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function1 f69485j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function1 f69486k;
                public final /* synthetic */ Function0 l;
                public final /* synthetic */ Function0 m;
                public final /* synthetic */ Function1 n;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    RepairDetailComposableKt.a(this.f69479b, this.f69480c, this.d, this.f69481e, this.f69482f, this.g, this.f69483h, this.f69484i, this.f69485j, this.f69486k, this.l, this.m, this.n, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
