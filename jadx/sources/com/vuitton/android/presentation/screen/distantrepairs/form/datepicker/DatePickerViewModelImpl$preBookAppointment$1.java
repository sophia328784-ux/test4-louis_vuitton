package com.vuitton.android.presentation.screen.distantrepairs.form.datepicker;

import com.vuitton.android.R;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.usecase.appointment.PrebookAppointmentUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethodKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.CalendarAppointmentUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.foundation.model.domain.model.appointment.PrebookContext;
import com.vuitton.foundation.model.domain.model.osa.AppointmentType;
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
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModelImpl$preBookAppointment$1", f = "DatePickerViewModelImpl.kt", l = {223, 234, 237}, m = "invokeSuspend", v = 2)
final class DatePickerViewModelImpl$preBookAppointment$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f57311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f57312c;
    public DatePickerViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Throwable f57313e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f57314f;
    public final /* synthetic */ DatePickerViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ TimeSlotUiModel f57315h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ DistantRepairContactMethod f57316i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DatePickerViewModelImpl$preBookAppointment$1(DatePickerViewModelImpl datePickerViewModelImpl, TimeSlotUiModel timeSlotUiModel, DistantRepairContactMethod distantRepairContactMethod, Continuation continuation) {
        super(2, continuation);
        this.g = datePickerViewModelImpl;
        this.f57315h = timeSlotUiModel;
        this.f57316i = distantRepairContactMethod;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DatePickerViewModelImpl$preBookAppointment$1(this.g, this.f57315h, this.f57316i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DatePickerViewModelImpl$preBookAppointment$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:39:0x00e8 A[PHI: r0 r1
      0x00e8: PHI (r0v16 java.lang.Object) = (r0v13 java.lang.Object), (r0v13 java.lang.Object), (r0v29 java.lang.Object) binds: [B:32:0x00ac, B:37:0x00e5, B:10:0x0029] A[DONT_GENERATE, DONT_INLINE]
      0x00e8: PHI (r1v9 com.vuitton.android.domain.monitoring.MonitorAction) = 
      (r1v7 com.vuitton.android.domain.monitoring.MonitorAction)
      (r1v7 com.vuitton.android.domain.monitoring.MonitorAction)
      (r1v15 com.vuitton.android.domain.monitoring.MonitorAction)
     binds: [B:32:0x00ac, B:37:0x00e5, B:10:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:41:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:44:0x011e  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object value;
        Object objA;
        MonitorAction monitorAction;
        Object objA2;
        String str;
        MutableStateFlow mutableStateFlow;
        Object value2;
        BufferedChannel bufferedChannel;
        Result result;
        Throwable thA;
        BufferedChannel bufferedChannel2;
        NotificationUiModel notificationUiModelA;
        Throwable th;
        Object value3;
        DatePickerViewModelImpl datePickerViewModelImpl = this.g;
        MutableStateFlow mutableStateFlow2 = datePickerViewModelImpl.f57299j;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57314f;
        TimeSlotUiModel timeSlotUiModel = this.f57315h;
        if (i2 != 0) {
            if (i2 == 1) {
                monitorAction = this.f57311b;
                try {
                    ResultKt.b(obj);
                    objA2 = ((Result) obj).f71708b;
                } catch (Throwable th2) {
                    th = th2;
                    Result.Companion companion = Result.INSTANCE;
                    objA = new Result.Failure(th);
                }
            } else {
                if (i2 == 2) {
                    objA = this.f57312c;
                    monitorAction = this.f57311b;
                    ResultKt.b(obj);
                    thA = Result.a(objA);
                    if (thA != null) {
                        monitorAction.d(new CareServicesMonitoring.Error.PrebookRepairError(thA));
                        bufferedChannel2 = datePickerViewModelImpl.r;
                        notificationUiModelA = NotificationBuilder.a(datePickerViewModelImpl.f57296f, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60);
                        this.f57311b = monitorAction;
                        this.f57312c = objA;
                        this.d = datePickerViewModelImpl;
                        this.f57313e = thA;
                        this.f57314f = 3;
                        if (bufferedChannel2.u(notificationUiModelA, this) != coroutineSingletons) {
                            th = thA;
                        }
                        return coroutineSingletons;
                    }
                    MonitorAction monitorAction2 = monitorAction;
                    do {
                        value3 = mutableStateFlow2.getValue();
                        ((Boolean) value3).getClass();
                    } while (!mutableStateFlow2.i(value3, Boolean.FALSE));
                    monitorAction2.b();
                    return Unit.f71739a;
                }
                if (i2 != 3) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                th = this.f57313e;
                datePickerViewModelImpl = this.d;
                monitorAction = this.f57311b;
                ResultKt.b(obj);
            }
            datePickerViewModelImpl.f57292a.c("DatePickerViewModelImpl", "Unable to prebook appointment", th);
            MonitorAction monitorAction3 = monitorAction;
            do {
                value3 = mutableStateFlow2.getValue();
                ((Boolean) value3).getClass();
            } while (!mutableStateFlow2.i(value3, Boolean.FALSE));
            monitorAction3.b();
            return Unit.f71739a;
        }
        ResultKt.b(obj);
        DynatraceMonitorAction dynatraceMonitorActionA = datePickerViewModelImpl.f57293b.a(datePickerViewModelImpl.g, CareServicesMonitoring.Action.PrebookRepair.f48870a);
        dynatraceMonitorActionA.c(timeSlotUiModel.f57416b, "availabilityId");
        do {
            value = mutableStateFlow2.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow2.i(value, Boolean.TRUE));
        objA = DistantRepairContactMethodKt.a(this.f57316i);
        if (objA instanceof Result.Failure) {
            monitorAction = dynatraceMonitorActionA;
            Result.Companion companion2 = Result.INSTANCE;
            if (objA instanceof Result.Failure) {
                thA = Result.a(objA);
                if (thA != null) {
                    monitorAction.d(new CareServicesMonitoring.Error.PrebookRepairError(thA));
                    bufferedChannel2 = datePickerViewModelImpl.r;
                    notificationUiModelA = NotificationBuilder.a(datePickerViewModelImpl.f57296f, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60);
                    this.f57311b = monitorAction;
                    this.f57312c = objA;
                    this.d = datePickerViewModelImpl;
                    this.f57313e = thA;
                    this.f57314f = 3;
                    if (bufferedChannel2.u(notificationUiModelA, this) != coroutineSingletons) {
                        th = thA;
                        datePickerViewModelImpl.f57292a.c("DatePickerViewModelImpl", "Unable to prebook appointment", th);
                    }
                }
            } else {
                str = (String) objA;
                monitorAction.c(str, "appointmentId");
                timeSlotUiModel.getClass();
                timeSlotUiModel.f57418e = str;
                mutableStateFlow = datePickerViewModelImpl.m;
                do {
                    value2 = mutableStateFlow.getValue();
                    ((CalendarAppointmentUiModel) value2).getClass();
                } while (!mutableStateFlow.i(value2, new CalendarAppointmentUiModel(str, timeSlotUiModel)));
                bufferedChannel = datePickerViewModelImpl.q;
                result = new Result(timeSlotUiModel);
                this.f57311b = monitorAction;
                this.f57312c = objA;
                this.d = null;
                this.f57314f = 2;
                if (bufferedChannel.u(result, this) != coroutineSingletons) {
                    thA = Result.a(objA);
                    if (thA != null) {
                        monitorAction.d(new CareServicesMonitoring.Error.PrebookRepairError(thA));
                        bufferedChannel2 = datePickerViewModelImpl.r;
                        notificationUiModelA = NotificationBuilder.a(datePickerViewModelImpl.f57296f, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60);
                        this.f57311b = monitorAction;
                        this.f57312c = objA;
                        this.d = datePickerViewModelImpl;
                        this.f57313e = thA;
                        this.f57314f = 3;
                        if (bufferedChannel2.u(notificationUiModelA, this) != coroutineSingletons) {
                            th = thA;
                            datePickerViewModelImpl.f57292a.c("DatePickerViewModelImpl", "Unable to prebook appointment", th);
                        }
                    }
                }
            }
            MonitorAction monitorAction4 = monitorAction;
            do {
                value3 = mutableStateFlow2.getValue();
                ((Boolean) value3).getClass();
            } while (!mutableStateFlow2.i(value3, Boolean.FALSE));
            monitorAction4.b();
            return Unit.f71739a;
        }
        try {
            Result.Companion companion3 = Result.INSTANCE;
            AppointmentType appointmentType = (AppointmentType) objA;
            PrebookAppointmentUseCase prebookAppointmentUseCase = datePickerViewModelImpl.f57295e;
            String str2 = timeSlotUiModel.f57416b;
            PrebookContext prebookContext = PrebookContext.CARE_SERVICE;
            this.f57311b = dynatraceMonitorActionA;
            this.f57312c = null;
            this.f57314f = 1;
            objA2 = prebookAppointmentUseCase.a(str2, appointmentType, false, prebookContext, this);
            if (objA2 != coroutineSingletons) {
                monitorAction = dynatraceMonitorActionA;
            }
        } catch (Throwable th3) {
            th = th3;
            monitorAction = dynatraceMonitorActionA;
            Result.Companion companion4 = Result.INSTANCE;
            objA = new Result.Failure(th);
        }
        return coroutineSingletons;
        ResultKt.b(objA2);
        objA = (String) objA2;
        Result.Companion companion5 = Result.INSTANCE;
        Result.Companion companion6 = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            str = (String) objA;
            monitorAction.c(str, "appointmentId");
            timeSlotUiModel.getClass();
            timeSlotUiModel.f57418e = str;
            mutableStateFlow = datePickerViewModelImpl.m;
            do {
                value2 = mutableStateFlow.getValue();
                ((CalendarAppointmentUiModel) value2).getClass();
            } while (!mutableStateFlow.i(value2, new CalendarAppointmentUiModel(str, timeSlotUiModel)));
            bufferedChannel = datePickerViewModelImpl.q;
            result = new Result(timeSlotUiModel);
            this.f57311b = monitorAction;
            this.f57312c = objA;
            this.d = null;
            this.f57314f = 2;
            if (bufferedChannel.u(result, this) != coroutineSingletons) {
                thA = Result.a(objA);
                if (thA != null) {
                    monitorAction.d(new CareServicesMonitoring.Error.PrebookRepairError(thA));
                    bufferedChannel2 = datePickerViewModelImpl.r;
                    notificationUiModelA = NotificationBuilder.a(datePickerViewModelImpl.f57296f, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60);
                    this.f57311b = monitorAction;
                    this.f57312c = objA;
                    this.d = datePickerViewModelImpl;
                    this.f57313e = thA;
                    this.f57314f = 3;
                    if (bufferedChannel2.u(notificationUiModelA, this) != coroutineSingletons) {
                        th = thA;
                        datePickerViewModelImpl.f57292a.c("DatePickerViewModelImpl", "Unable to prebook appointment", th);
                    }
                }
            }
            return coroutineSingletons;
        }
        thA = Result.a(objA);
        if (thA != null) {
            monitorAction.d(new CareServicesMonitoring.Error.PrebookRepairError(thA));
            bufferedChannel2 = datePickerViewModelImpl.r;
            notificationUiModelA = NotificationBuilder.a(datePickerViewModelImpl.f57296f, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60);
            this.f57311b = monitorAction;
            this.f57312c = objA;
            this.d = datePickerViewModelImpl;
            this.f57313e = thA;
            this.f57314f = 3;
            if (bufferedChannel2.u(notificationUiModelA, this) != coroutineSingletons) {
                th = thA;
                datePickerViewModelImpl.f57292a.c("DatePickerViewModelImpl", "Unable to prebook appointment", th);
            }
            return coroutineSingletons;
        }
        MonitorAction monitorAction5 = monitorAction;
        do {
            value3 = mutableStateFlow2.getValue();
            ((Boolean) value3).getClass();
        } while (!mutableStateFlow2.i(value3, Boolean.FALSE));
        monitorAction5.b();
        return Unit.f71739a;
    }
}
