package com.vuitton.android.presentation.screen.osa.form.storeselection;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.osa.OSAMonitoring;
import com.vuitton.android.domain.usecase.appointment.GetStoreAvailabilityListUseCase;
import com.vuitton.android.presentation.model.storelocator.StoreUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.mappers.AvailabilitiesCallerMapperKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AvailabilitiesCallerUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import com.vuitton.foundation.logger.LegacyLogger;
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
import kotlin.collections.EmptyList;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$getAvailabilities$1", f = "OsaLocationFormViewModelImpl.kt", l = {441}, m = "invokeSuspend", v = 2)
final class OsaLocationFormViewModelImpl$getAvailabilities$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f60765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f60766c;
    public final /* synthetic */ OsaLocationFormViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ OsaItemUiModel f60767e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaLocationFormViewModelImpl$getAvailabilities$1(OsaLocationFormViewModelImpl osaLocationFormViewModelImpl, OsaItemUiModel osaItemUiModel, Continuation continuation) {
        super(2, continuation);
        this.d = osaLocationFormViewModelImpl;
        this.f60767e = osaItemUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaLocationFormViewModelImpl$getAvailabilities$1(this.d, this.f60767e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaLocationFormViewModelImpl$getAvailabilities$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MonitorAction monitorAction;
        Object failure;
        Object value;
        OsaLocationFormViewModelImpl osaLocationFormViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = osaLocationFormViewModelImpl.A;
        MutableStateFlow mutableStateFlow2 = osaLocationFormViewModelImpl.y;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60766c;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = osaLocationFormViewModelImpl.f60746a.a(osaLocationFormViewModelImpl.p, OSAMonitoring.Action.DisplayAppointmentSlots.f48961a);
            mutableStateFlow2.setValue(Boolean.TRUE);
            Iterable iterable = (Iterable) osaLocationFormViewModelImpl.C.getValue();
            ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(((StoreUiModel) it.next()).f51817a);
            }
            GetStoreAvailabilityListUseCase getStoreAvailabilityListUseCase = osaLocationFormViewModelImpl.o;
            AvailabilitiesCaller availabilitiesCallerA = AvailabilitiesCallerMapperKt.a(AvailabilitiesCallerUiModel.APPOINTMENT);
            boolean zBooleanValue = ((Boolean) osaLocationFormViewModelImpl.M.getValue()).booleanValue();
            this.f60765b = dynatraceMonitorActionA;
            this.f60766c = 1;
            Object objA = getStoreAvailabilityListUseCase.a(availabilitiesCallerA, arrayList, zBooleanValue, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            monitorAction = dynatraceMonitorActionA;
            failure = objA;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = this.f60765b;
            ResultKt.b(obj);
            failure = ((Result) obj).f71708b;
        }
        do {
            value = mutableStateFlow2.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow2.i(value, Boolean.FALSE));
        Result.Companion companion = Result.INSTANCE;
        if (!(failure instanceof Result.Failure)) {
            try {
                List list = (List) failure;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list, 10));
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(LocalDate.parse((String) it2.next()));
                }
                failure = CollectionsKt.o0(arrayList2, new Comparator() { // from class: com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$getAvailabilities$1$invokeSuspend$lambda$1$$inlined$sortedBy$1
                    @Override // java.util.Comparator
                    public final int compare(Object obj2, Object obj3) {
                        return ComparisonsKt.a((LocalDate) obj2, (LocalDate) obj3);
                    }
                });
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
        }
        if (!(failure instanceof Result.Failure)) {
            List list2 = (List) failure;
            if (list2.isEmpty()) {
                mutableStateFlow.setValue(EmptyList.f71768b);
                osaLocationFormViewModelImpl.o(new OsaTrackingUiModel.BookAppointmentDateSelectionNoDateEvent(((Boolean) osaLocationFormViewModelImpl.O.getValue()).booleanValue()));
            } else {
                OsaItemUiModel osaItemUiModel = this.f60767e;
                if (osaItemUiModel != null) {
                    BuildersKt.c(ViewModelKt.a(osaLocationFormViewModelImpl), null, null, new OsaLocationFormViewModelImpl$getStoreSlotModify$1(osaLocationFormViewModelImpl, osaItemUiModel, list2, null), 3);
                } else {
                    mutableStateFlow.setValue(list2);
                }
            }
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            monitorAction.d(new OSAMonitoring.Error.DisplayAppointmentSlotsError(thA));
            OsaLocationFormViewModelImpl.yc(osaLocationFormViewModelImpl, null);
            LegacyLogger.f66205a.c("OsaLocationFormViewModelImpl", "Unable to retrieve the available dates", thA);
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}
