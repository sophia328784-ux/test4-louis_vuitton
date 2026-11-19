package com.vuitton.android.presentation.screen.osa.list;

import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.osa.OSAMonitoring;
import com.vuitton.android.domain.usecase.osa.GetOnlineStoreAppointmentListUseCase;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaMapperKt;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import com.vuitton.foundation.logger.LegacyLogger;
import com.vuitton.foundation.model.domain.model.osa.OnlineStoreAppointments;
import com.vuitton.foundation.model.domain.model.osa.OsaItem;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.list.OsaListViewModelImpl$getOnlineStoreAppointmentList$1", f = "OsaListViewModelImpl.kt", l = {140}, m = "invokeSuspend", v = 2)
final class OsaListViewModelImpl$getOnlineStoreAppointmentList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f60861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f60862c;
    public final /* synthetic */ OsaListViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaListViewModelImpl$getOnlineStoreAppointmentList$1(Continuation continuation, OsaListViewModelImpl osaListViewModelImpl) {
        super(2, continuation);
        this.d = osaListViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaListViewModelImpl$getOnlineStoreAppointmentList$1(continuation, this.d);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaListViewModelImpl$getOnlineStoreAppointmentList$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        MonitorAction monitorAction;
        OsaListViewModelImpl osaListViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = osaListViewModelImpl.n;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60862c;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = osaListViewModelImpl.f60845a.a(osaListViewModelImpl.f60852j, OSAMonitoring.Action.OpenMyAppointments.f48962a);
            mutableStateFlow.setValue(Boolean.TRUE);
            GetOnlineStoreAppointmentListUseCase getOnlineStoreAppointmentListUseCase = osaListViewModelImpl.f60851i;
            this.f60861b = dynatraceMonitorActionA;
            this.f60862c = 1;
            Object objA = getOnlineStoreAppointmentListUseCase.a(this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            failure = objA;
            monitorAction = dynatraceMonitorActionA;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = this.f60861b;
            ResultKt.b(obj);
            failure = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(failure instanceof Result.Failure)) {
            try {
                OnlineStoreAppointments onlineStoreAppointments = (OnlineStoreAppointments) failure;
                List list = onlineStoreAppointments.f67770a;
                if (list == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                List list2 = onlineStoreAppointments.f67771b;
                if (list2 == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                failure = new Pair(list, list2);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
        }
        if (!(failure instanceof Result.Failure)) {
            Pair pair = (Pair) failure;
            List list3 = (List) pair.f71705b;
            List list4 = (List) pair.f71706c;
            MutableStateFlow mutableStateFlow2 = osaListViewModelImpl.q;
            ArrayList arrayList = new ArrayList();
            Iterator it = list3.iterator();
            while (it.hasNext()) {
                Object objC = OsaMapperKt.c((OsaItem) it.next());
                if (objC instanceof Result.Failure) {
                    objC = null;
                }
                OsaItemUiModel osaItemUiModel = (OsaItemUiModel) objC;
                if (osaItemUiModel != null) {
                    arrayList.add(osaItemUiModel);
                }
            }
            mutableStateFlow2.setValue(arrayList);
            MutableStateFlow mutableStateFlow3 = osaListViewModelImpl.p;
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = list4.iterator();
            while (it2.hasNext()) {
                Object objC2 = OsaMapperKt.c((OsaItem) it2.next());
                if (objC2 instanceof Result.Failure) {
                    objC2 = null;
                }
                OsaItemUiModel osaItemUiModel2 = (OsaItemUiModel) objC2;
                if (osaItemUiModel2 != null) {
                    arrayList2.add(osaItemUiModel2);
                }
            }
            mutableStateFlow3.setValue(arrayList2);
            if (osaListViewModelImpl.f60853k) {
                osaListViewModelImpl.o(new OsaTrackingUiModel.OsaListScreen(list4.size() + list3.size()));
                osaListViewModelImpl.f60853k = false;
            }
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            monitorAction.d(new OSAMonitoring.Error.OpenMyAppointmentsError(thA));
            osaListViewModelImpl.o.setValue(Boolean.TRUE);
            LegacyLogger.f66205a.c("OsaListViewModelImpl", "Unable to retrieve the appointments", null);
        }
        mutableStateFlow.setValue(Boolean.FALSE);
        monitorAction.b();
        return Unit.f71739a;
    }
}
