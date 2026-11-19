package com.vuitton.android.presentation.screen.repairs;

import com.vuitton.android.R;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceDetailBffUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceDetail;
import defpackage.md;
import java.util.Iterator;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl$getRepairDetail$1", f = "RepairBffViewModelImpl.kt", l = {275}, m = "invokeSuspend", v = 2)
final class RepairBffViewModelImpl$getRepairDetail$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f63460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f63461c;
    public final /* synthetic */ RepairBffViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f63462e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairBffViewModelImpl$getRepairDetail$1(RepairBffViewModelImpl repairBffViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.d = repairBffViewModelImpl;
        this.f63462e = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairBffViewModelImpl$getRepairDetail$1(this.d, this.f63462e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairBffViewModelImpl$getRepairDetail$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        MonitorAction monitorAction;
        Object obj2;
        Object value2;
        Object value3;
        Object next;
        RepairBffViewModelImpl repairBffViewModelImpl = this.d;
        MutableStateFlow mutableStateFlow = repairBffViewModelImpl.r;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63461c;
        if (i2 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = repairBffViewModelImpl.f63444b.a(repairBffViewModelImpl.p, CareServicesMonitoring.Action.OpenRepairDetails.f48869a);
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.TRUE));
            GetCareServiceDetailBffUseCase getCareServiceDetailBffUseCase = repairBffViewModelImpl.m;
            CareServiceIdUiModel.f64059c.getClass();
            String str = this.f63462e;
            CareServiceIdUiModel.Companion.a(str);
            this.f63460b = dynatraceMonitorActionA;
            this.f63461c = 1;
            Object objA = getCareServiceDetailBffUseCase.a(str, this);
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
            MonitorAction monitorAction2 = this.f63460b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
            monitorAction = monitorAction2;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            CareServiceDetail careServiceDetail = (CareServiceDetail) obj2;
            monitorAction.c(careServiceDetail.f66842a, "repairId");
            Iterator it = careServiceDetail.f66846f.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((CareServiceDetail.Step) next).f66871c != CareServiceDetail.StepStatus.CURRENT);
            CareServiceDetail.Step step = (CareServiceDetail.Step) next;
            String str2 = step != null ? step.f66869a : null;
            if (str2 == null) {
                str2 = "";
            }
            monitorAction.c(str2, "repairStatus");
            RepairBffViewModelImpl.yc(repairBffViewModelImpl, careServiceDetail);
            ContactUsDelegate contactUsDelegate = repairBffViewModelImpl.d;
            String str3 = careServiceDetail.f66843b;
            contactUsDelegate.m4(str3 != null ? new StringResourceUiModel.ResId(R.string.dr_subject_contact_email, CollectionsKt.O(str3)) : null);
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            MutableStateFlow mutableStateFlow2 = repairBffViewModelImpl.s;
            do {
                value3 = mutableStateFlow2.getValue();
                ((Boolean) value3).getClass();
            } while (!mutableStateFlow2.i(value3, Boolean.TRUE));
            monitorAction.d(new CareServicesMonitoring.Error.OpenRepairDetailError(thA));
            repairBffViewModelImpl.f63443a.c("RepairBffViewModelImpl", "Unable to get care detail", thA);
        }
        do {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        monitorAction.b();
        return Unit.f71739a;
    }
}
