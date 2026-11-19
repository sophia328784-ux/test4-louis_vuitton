package com.vuitton.android.presentation.screen.repairs;

import com.vuitton.android.R;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.usecase.careservices.UpdateCareServiceAppointmentBffUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAppointment;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl$rescheduleAppointment$1", f = "RepairBffViewModelImpl.kt", l = {390, 402}, m = "invokeSuspend", v = 2)
final class RepairBffViewModelImpl$rescheduleAppointment$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CareServiceDetailUiModel f63479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MonitorAction f63480c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RepairBffViewModelImpl f63481e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f63482f;
    public final /* synthetic */ RepairBffViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ TimeSlotUiModel f63483h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairBffViewModelImpl$rescheduleAppointment$1(RepairBffViewModelImpl repairBffViewModelImpl, TimeSlotUiModel timeSlotUiModel, Continuation continuation) {
        super(2, continuation);
        this.g = repairBffViewModelImpl;
        this.f63483h = timeSlotUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairBffViewModelImpl$rescheduleAppointment$1(this.g, this.f63483h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairBffViewModelImpl$rescheduleAppointment$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00e7  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CareServiceDetailUiModel careServiceDetailUiModel;
        MonitorAction monitorActionA;
        Object value;
        Object objA;
        MonitorAction monitorAction;
        RepairBffViewModelImpl repairBffViewModelImpl;
        CareServiceDetailUiModel careServiceDetailUiModel2;
        Object obj2;
        MonitorAction monitorAction2;
        Throwable thA;
        Object value2;
        RepairBffViewModelImpl repairBffViewModelImpl2 = this.g;
        Logger logger = repairBffViewModelImpl2.f63443a;
        MutableStateFlow mutableStateFlow = repairBffViewModelImpl2.r;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63482f;
        if (i2 == 0) {
            ResultKt.b(obj);
            careServiceDetailUiModel = (CareServiceDetailUiModel) repairBffViewModelImpl2.y.getValue();
            if (careServiceDetailUiModel == null) {
                return Unit.f71739a;
            }
            String str = careServiceDetailUiModel.f64043j;
            if (str == null || StringsKt.w(str)) {
                logger.c("RepairBffViewModelImpl", "Unable to reschedule appointment, appointmentId is blank", null);
                RepairBffViewModelImpl.Ac(repairBffViewModelImpl2);
                return Unit.f71739a;
            }
            monitorActionA = repairBffViewModelImpl2.f63444b.a(repairBffViewModelImpl2.p, CareServicesMonitoring.Action.UpdateRepair.f48871a);
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.TRUE));
            UpdateCareServiceAppointmentBffUseCase updateCareServiceAppointmentBffUseCase = repairBffViewModelImpl2.n;
            CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
            String str2 = careServiceDetailUiModel.f64037b;
            companion.getClass();
            CareServiceId.Companion companion2 = CareServiceId.INSTANCE;
            TimeSlotUiModel timeSlotUiModel = this.f63483h;
            CareServiceAppointment careServiceAppointment = new CareServiceAppointment(str, timeSlotUiModel.f57416b, timeSlotUiModel.d);
            this.f63479b = careServiceDetailUiModel;
            this.f63480c = monitorActionA;
            this.f63482f = 1;
            objA = updateCareServiceAppointmentBffUseCase.a(str2, careServiceAppointment, this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            MonitorAction monitorAction3 = this.f63480c;
            CareServiceDetailUiModel careServiceDetailUiModel3 = this.f63479b;
            ResultKt.b(obj);
            monitorActionA = monitorAction3;
            careServiceDetailUiModel = careServiceDetailUiModel3;
            objA = ((Result) obj).f71708b;
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            repairBffViewModelImpl = this.f63481e;
            obj2 = this.d;
            monitorAction2 = this.f63480c;
            careServiceDetailUiModel2 = this.f63479b;
            ResultKt.b(obj);
        }
        repairBffViewModelImpl.Z0(careServiceDetailUiModel2.f64037b);
        repairBffViewModelImpl.C.b(NotificationBuilder.a(repairBffViewModelImpl.f63446e, new StringResourceUiModel.ResId(R.string.dr_toast_notification_appointment_modify_success, null, 2, null), true, null, null, 52));
        monitorAction = monitorAction2;
        objA = obj2;
        thA = Result.a(objA);
        if (thA != null) {
            monitorAction.d(new CareServicesMonitoring.Error.UpdateRepairError(thA));
            logger.c("RepairBffViewModelImpl", "Unable to reschedule appointment", thA);
            RepairBffViewModelImpl.Ac(repairBffViewModelImpl2);
        }
        do {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        monitorAction.b();
        return Unit.f71739a;
        Result.Companion companion3 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            monitorActionA.c(careServiceDetailUiModel.f64037b, "repairId");
            LVEventSender lVEventSender = repairBffViewModelImpl2.f63445c;
            this.f63479b = careServiceDetailUiModel;
            this.f63480c = monitorActionA;
            this.d = objA;
            this.f63481e = repairBffViewModelImpl2;
            this.f63482f = 2;
            if (lVEventSender.a(AppEvent.RefreshRepairsEvent.f43505a, this) != coroutineSingletons) {
                repairBffViewModelImpl = repairBffViewModelImpl2;
                careServiceDetailUiModel2 = careServiceDetailUiModel;
                obj2 = objA;
                monitorAction2 = monitorActionA;
                repairBffViewModelImpl.Z0(careServiceDetailUiModel2.f64037b);
                repairBffViewModelImpl.C.b(NotificationBuilder.a(repairBffViewModelImpl.f63446e, new StringResourceUiModel.ResId(R.string.dr_toast_notification_appointment_modify_success, null, 2, null), true, null, null, 52));
                monitorAction = monitorAction2;
                objA = obj2;
            }
            return coroutineSingletons;
        }
        monitorAction = monitorActionA;
        thA = Result.a(objA);
        if (thA != null) {
            monitorAction.d(new CareServicesMonitoring.Error.UpdateRepairError(thA));
            logger.c("RepairBffViewModelImpl", "Unable to reschedule appointment", thA);
            RepairBffViewModelImpl.Ac(repairBffViewModelImpl2);
        }
        do {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        monitorAction.b();
        return Unit.f71739a;
    }
}
