package com.vuitton.android.presentation.screen.repairs;

import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceListBffUseCase;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModelMapperKt;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAction;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceCategory;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceShort;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl$getRepairs$1", f = "RepairBffViewModelImpl.kt", l = {214}, m = "invokeSuspend", v = 2)
final class RepairBffViewModelImpl$getRepairs$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f63467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f63468c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RepairBffViewModelImpl f63469e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairBffViewModelImpl$getRepairs$1(boolean z, RepairBffViewModelImpl repairBffViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = z;
        this.f63469e = repairBffViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairBffViewModelImpl$getRepairs$1(this.d, this.f63469e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairBffViewModelImpl$getRepairs$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object failure;
        MonitorAction monitorAction;
        Object value2;
        Object value3;
        List list;
        ArrayList arrayList;
        Object value4;
        ArrayList arrayList2;
        RepairBffViewModelImpl repairBffViewModelImpl = this.f63469e;
        MutableStateFlow mutableStateFlow = repairBffViewModelImpl.v;
        MutableStateFlow mutableStateFlow2 = repairBffViewModelImpl.r;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63468c;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = this.d ? repairBffViewModelImpl.f63444b.a(repairBffViewModelImpl.p, CareServicesMonitoring.Action.OpenMyCareServices.f48868a) : null;
            do {
                value = mutableStateFlow2.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow2.i(value, Boolean.TRUE));
            GetCareServiceListBffUseCase getCareServiceListBffUseCase = repairBffViewModelImpl.f63451k;
            this.f63467b = dynatraceMonitorActionA;
            this.f63468c = 1;
            Object objA = getCareServiceListBffUseCase.a(this);
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
            MonitorAction monitorAction2 = this.f63467b;
            ResultKt.b(obj);
            failure = ((Result) obj).f71708b;
            monitorAction = monitorAction2;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(failure instanceof Result.Failure)) {
            try {
                List<CareServiceShort> list2 = (List) failure;
                ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list2, 10));
                for (CareServiceShort careServiceShort : list2) {
                    CareServiceShortUiModel careServiceShortUiModelA = CareServiceShortUiModelMapperKt.a(careServiceShort);
                    CareServiceAction careServiceAction = careServiceShort.g;
                    arrayList3.add(CareServiceShortUiModel.a(careServiceShortUiModelA, null, null, null, null, null, 0L, null, careServiceAction == CareServiceAction.AwaitingPayment, careServiceAction == CareServiceAction.TrackMyShipment, careServiceAction == CareServiceAction.ConfirmAddress, careServiceAction == CareServiceAction.ConfirmEstimate, careServiceAction == CareServiceAction.ContactAnExpert, 8191));
                }
                failure = arrayList3;
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                failure = new Result.Failure(th);
            }
        }
        if (!(failure instanceof Result.Failure)) {
            List list3 = (List) failure;
            MutableStateFlow mutableStateFlow3 = repairBffViewModelImpl.u;
            do {
                value3 = mutableStateFlow.getValue();
                list = list3;
                arrayList = new ArrayList();
                for (Object obj2 : list) {
                    if (((CareServiceShortUiModel) obj2).f64066f == CareServiceCategory.History) {
                        arrayList.add(obj2);
                    }
                }
            } while (!mutableStateFlow.i(value3, arrayList));
            do {
                value4 = mutableStateFlow3.getValue();
                arrayList2 = new ArrayList();
                for (Object obj3 : list) {
                    if (((CareServiceShortUiModel) obj3).f64066f == CareServiceCategory.OnGoing) {
                        arrayList2.add(obj3);
                    }
                }
            } while (!mutableStateFlow3.i(value4, arrayList2));
            if (monitorAction != null) {
                monitorAction.c(new Integer(((List) mutableStateFlow.getValue()).size()), "historyRepairNumber");
                Result.Companion companion3 = Result.INSTANCE;
            }
            if (monitorAction != null) {
                monitorAction.c(new Integer(((List) mutableStateFlow3.getValue()).size()), "ongoingRepairNumber");
                Result.Companion companion4 = Result.INSTANCE;
            }
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (monitorAction != null) {
                monitorAction.d(new CareServicesMonitoring.Error.OpenMyCareServicesError(thA));
            }
            repairBffViewModelImpl.f63443a.c("RepairBffViewModelImpl", "Unable to get care services", thA);
        }
        do {
            value2 = mutableStateFlow2.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow2.i(value2, Boolean.FALSE));
        if (monitorAction != null) {
            monitorAction.b();
            Result.Companion companion5 = Result.INSTANCE;
        }
        return Unit.f71739a;
    }
}
