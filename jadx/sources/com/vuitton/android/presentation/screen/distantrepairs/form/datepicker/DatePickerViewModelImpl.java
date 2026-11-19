package com.vuitton.android.presentation.screen.distantrepairs.form.datepicker;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.usecase.appointment.GetStoreAvailabilityListUseCase;
import com.vuitton.android.domain.usecase.appointment.GetStoreTimeSlotListUseCase;
import com.vuitton.android.domain.usecase.appointment.PrebookAppointmentUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.models.CalendarAppointmentUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.CalendarAvailabilitiesUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller;
import defpackage.md;
import java.time.LocalDate;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002BA\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModel;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/appointment/GetStoreAvailabilityListUseCase;", "getStoreAvailabilityListUseCase", "Lcom/vuitton/android/domain/usecase/appointment/GetStoreTimeSlotListUseCase;", "getStoreTimeSlotListUseCase", "Lcom/vuitton/android/domain/usecase/appointment/PrebookAppointmentUseCase;", "prebookAppointmentUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/appointment/GetStoreAvailabilityListUseCase;Lcom/vuitton/android/domain/usecase/appointment/GetStoreTimeSlotListUseCase;Lcom/vuitton/android/domain/usecase/appointment/PrebookAppointmentUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DatePickerViewModelImpl extends ViewModel implements DatePickerViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f57292a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Monitor f57293b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetStoreAvailabilityListUseCase f57294c;
    public final GetStoreTimeSlotListUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PrebookAppointmentUseCase f57295e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NotificationBuilder f57296f;
    public final InAppDispatch g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f57297h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableStateFlow f57298i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f57299j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f57300k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public boolean n;
    public boolean o;
    public final StateFlow p;
    public final BufferedChannel q;
    public final BufferedChannel r;

    @Inject
    public DatePickerViewModelImpl(Logger logger, Monitor monitor, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, GetStoreAvailabilityListUseCase getStoreAvailabilityListUseCase, GetStoreTimeSlotListUseCase getStoreTimeSlotListUseCase, PrebookAppointmentUseCase prebookAppointmentUseCase, NotificationBuilder notificationBuilder) {
        logger.getClass();
        monitor.getClass();
        requireUserInAppDispatchUseCase.getClass();
        getStoreAvailabilityListUseCase.getClass();
        getStoreTimeSlotListUseCase.getClass();
        prebookAppointmentUseCase.getClass();
        notificationBuilder.getClass();
        this.f57292a = logger;
        this.f57293b = monitor;
        this.f57294c = getStoreAvailabilityListUseCase;
        this.d = getStoreTimeSlotListUseCase;
        this.f57295e = prebookAppointmentUseCase;
        this.f57296f = notificationBuilder;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.g = inAppDispatchB;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.f57297h = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.f57298i = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.f57299j = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(new CalendarAvailabilitiesUiModel(null, null, null, 7, null));
        this.f57300k = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(null);
        this.l = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(new CalendarAppointmentUiModel(null, null, 3, null));
        this.m = mutableStateFlowA6;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6};
        Flow<DistantRepairCalendarViewState> flow = new Flow<DistantRepairCalendarViewState>() { // from class: com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModelImpl$special$$inlined$combine$1$3", f = "DatePickerViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super DistantRepairCalendarViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f57320b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f57321c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ DatePickerViewModelImpl f57322e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, DatePickerViewModelImpl datePickerViewModelImpl) {
                    super(3, continuation);
                    this.f57322e = datePickerViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f57322e);
                    anonymousClass3.f57321c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f57321c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f57320b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        InAppDispatch inAppDispatch = this.f57322e.g;
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        CalendarAvailabilitiesUiModel calendarAvailabilitiesUiModel = (CalendarAvailabilitiesUiModel) obj5;
                        LocalDate localDate = (LocalDate) objArr[4];
                        Object obj6 = objArr[5];
                        obj6.getClass();
                        DistantRepairCalendarViewState distantRepairCalendarViewState = new DistantRepairCalendarViewState(inAppDispatch, calendarAvailabilitiesUiModel, zBooleanValue, zBooleanValue2, localDate, (CalendarAppointmentUiModel) obj6, zBooleanValue3);
                        this.f57321c = null;
                        this.d = null;
                        this.f57320b = 1;
                        if (flowCollector.emit(distantRepairCalendarViewState, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i2 != 1) {
                            md.k("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f71739a;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                final Flow[] flowArr2 = flowArr;
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null, this), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.p = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new DistantRepairCalendarViewState(inAppDispatchB, null, false, false, null, null, false, 126, null));
        this.q = ChannelKt.a(0, 7, null);
        this.r = ChannelKt.a(0, 7, null);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel
    public final void I7(TimeSlotUiModel timeSlotUiModel, DistantRepairContactMethod distantRepairContactMethod) {
        timeSlotUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new DatePickerViewModelImpl$preBookAppointment$1(this, timeSlotUiModel, distantRepairContactMethod, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel
    public final Flow N6() {
        return FlowKt.y(this.q);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel
    public final void Tb(LocalDate localDate, String str, DistantRepairContactMethod distantRepairContactMethod, List list) {
        localDate.getClass();
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new DatePickerViewModelImpl$getAvailableTimeSlots$1(this, list, str, localDate, distantRepairContactMethod, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel
    public final void a5(AvailabilitiesCaller availabilitiesCaller, String str, DistantRepairContactMethod distantRepairContactMethod) {
        availabilitiesCaller.getClass();
        str.getClass();
        if (this.n) {
            return;
        }
        this.n = true;
        BuildersKt.c(ViewModelKt.a(this), null, null, new DatePickerViewModelImpl$getAvailableDates$1(this, str, availabilitiesCaller, distantRepairContactMethod, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel
    public final Flow b() {
        return FlowKt.y(this.r);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModel
    /* JADX INFO: renamed from: w3, reason: from getter */
    public final StateFlow getP() {
        return this.p;
    }
}
