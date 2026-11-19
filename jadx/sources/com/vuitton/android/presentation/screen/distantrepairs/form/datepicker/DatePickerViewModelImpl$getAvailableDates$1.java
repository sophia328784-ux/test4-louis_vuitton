package com.vuitton.android.presentation.screen.distantrepairs.form.datepicker;

import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.usecase.appointment.GetStoreAvailabilityListUseCase;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller;
import defpackage.md;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModelImpl$getAvailableDates$1", f = "DatePickerViewModelImpl.kt", l = {103}, m = "invokeSuspend", v = 2)
final class DatePickerViewModelImpl$getAvailableDates$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f57301b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f57302c;
    public final /* synthetic */ DatePickerViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f57303e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AvailabilitiesCaller f57304f;
    public final /* synthetic */ DistantRepairContactMethod g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DatePickerViewModelImpl$getAvailableDates$1(DatePickerViewModelImpl datePickerViewModelImpl, String str, AvailabilitiesCaller availabilitiesCaller, DistantRepairContactMethod distantRepairContactMethod, Continuation continuation) {
        super(2, continuation);
        this.d = datePickerViewModelImpl;
        this.f57303e = str;
        this.f57304f = availabilitiesCaller;
        this.g = distantRepairContactMethod;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DatePickerViewModelImpl$getAvailableDates$1(this.d, this.f57303e, this.f57304f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DatePickerViewModelImpl$getAvailableDates$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        MonitorAction monitorAction;
        Object obj2;
        Object value2;
        Object value3;
        DatePickerViewModelImpl datePickerViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = datePickerViewModelImpl.f57297h;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57302c;
        String str = this.f57303e;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = datePickerViewModelImpl.f57293b.a(datePickerViewModelImpl.g, CareServicesMonitoring.Action.DisplayRepairSlots.f48866a);
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.TRUE));
            List listO = CollectionsKt.O(str);
            GetStoreAvailabilityListUseCase getStoreAvailabilityListUseCase = datePickerViewModelImpl.f57294c;
            this.f57301b = dynatraceMonitorActionA;
            this.f57302c = 1;
            Object objA = getStoreAvailabilityListUseCase.a(this.f57304f, listO, false, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            monitorAction = dynatraceMonitorActionA;
            obj2 = objA;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = this.f57301b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            List list = (List) obj2;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(LocalDate.parse((String) it.next()));
            }
            List listO0 = CollectionsKt.o0(arrayList, new Comparator() { // from class: com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModelImpl$getAvailableDates$1$invokeSuspend$lambda$1$$inlined$sortedBy$1
                @Override // java.util.Comparator
                public final int compare(Object obj3, Object obj4) {
                    return ComparisonsKt.a((LocalDate) obj3, (LocalDate) obj4);
                }
            });
            if (!listO0.isEmpty()) {
                Object objB = CollectionsKt.B(listO0);
                objB.getClass();
                datePickerViewModelImpl.Tb((LocalDate) objB, str, this.g, listO0);
            }
            do {
                value3 = mutableStateFlow.getValue();
                ((Boolean) value3).getClass();
            } while (!mutableStateFlow.i(value3, Boolean.FALSE));
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            datePickerViewModelImpl.n = false;
            monitorAction.d(new CareServicesMonitoring.Error.DisplayRepairSlotsError(thA));
            datePickerViewModelImpl.f57292a.c("DatePickerViewModelImpl", "Unable to retrieve dates list", thA);
            do {
                value2 = mutableStateFlow.getValue();
                ((Boolean) value2).getClass();
            } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}
