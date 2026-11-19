package com.vuitton.android.presentation.screen.repairs;

import com.vuitton.android.R;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceByIdUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceDetail;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceTransactionId;
import defpackage.md;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$getRepairDetail$1", f = "RepairViewModelImpl.kt", l = {367, 378}, m = "invokeSuspend", v = 2)
final class RepairViewModelImpl$getRepairDetail$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f63523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f63524c;
    public RepairViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CareServiceDetail f63525e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f63526f;
    public final /* synthetic */ RepairViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f63527h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairViewModelImpl$getRepairDetail$1(RepairViewModelImpl repairViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.g = repairViewModelImpl;
        this.f63527h = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairViewModelImpl$getRepairDetail$1(this.g, this.f63527h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairViewModelImpl$getRepairDetail$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:29:0x00c0  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MonitorAction monitorActionA;
        Object value;
        Object objA;
        Object obj2;
        MonitorAction monitorAction;
        MonitorAction monitorAction2;
        CareServiceDetail careServiceDetail;
        RepairViewModelImpl repairViewModelImpl;
        Throwable thA;
        Object value2;
        MutableStateFlow mutableStateFlow;
        Object value3;
        String str;
        RepairViewModelImpl repairViewModelImpl2 = this.g;
        MutableStateFlow mutableStateFlow2 = repairViewModelImpl2.u;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63526f;
        StringResourceUiModel.ResId resId = null;
        String str2 = this.f63527h;
        if (i2 == 0) {
            ResultKt.b(obj);
            monitorActionA = repairViewModelImpl2.f63497b.a(repairViewModelImpl2.q, CareServicesMonitoring.Action.OpenRepairDetails.f48869a);
            do {
                value = mutableStateFlow2.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow2.i(value, Boolean.TRUE));
            GetCareServiceByIdUseCase getCareServiceByIdUseCase = repairViewModelImpl2.l;
            CareServiceIdUiModel.f64059c.getClass();
            CareServiceIdUiModel.Companion.a(str2);
            this.f63523b = monitorActionA;
            this.f63526f = 1;
            objA = getCareServiceByIdUseCase.a(str2, this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            MonitorAction monitorAction3 = this.f63523b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
            monitorActionA = monitorAction3;
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            careServiceDetail = this.f63525e;
            repairViewModelImpl = this.d;
            obj2 = this.f63524c;
            monitorAction2 = this.f63523b;
            ResultKt.b(obj);
        }
        ContactUsDelegate contactUsDelegate = repairViewModelImpl.d;
        str = careServiceDetail.L;
        if (str != null) {
            CareServiceTransactionId.Companion companion = CareServiceTransactionId.INSTANCE;
            resId = new StringResourceUiModel.ResId(R.string.dr_subject_contact_email, CollectionsKt.O(str));
        }
        contactUsDelegate.m4(resId);
        monitorAction = monitorAction2;
        thA = Result.a(obj2);
        if (thA != null) {
            mutableStateFlow = repairViewModelImpl2.v;
            do {
                value3 = mutableStateFlow.getValue();
                ((Boolean) value3).getClass();
            } while (!mutableStateFlow.i(value3, Boolean.TRUE));
            monitorAction.d(new CareServicesMonitoring.Error.OpenRepairDetailError(thA));
            repairViewModelImpl2.f63496a.c("RepairViewModelImpl", "Unable to get care detail", thA);
        }
        do {
            value2 = mutableStateFlow2.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow2.i(value2, Boolean.FALSE));
        monitorAction.b();
        return Unit.f71739a;
        Result.Companion companion2 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            CareServiceDetail careServiceDetail2 = (CareServiceDetail) objA;
            monitorActionA.c(careServiceDetail2.f66794a, "repairId");
            monitorActionA.c(careServiceDetail2.f66796c.name(), "repairStatus");
            CareServiceIdUiModel.f64059c.getClass();
            CareServiceIdUiModel.Companion.a(str2);
            this.f63523b = monitorActionA;
            this.f63524c = objA;
            this.d = repairViewModelImpl2;
            this.f63525e = careServiceDetail2;
            this.f63526f = 2;
            if (RepairViewModelImpl.yc(repairViewModelImpl2, str2, careServiceDetail2, this) != coroutineSingletons) {
                monitorAction2 = monitorActionA;
                obj2 = objA;
                careServiceDetail = careServiceDetail2;
                repairViewModelImpl = repairViewModelImpl2;
                ContactUsDelegate contactUsDelegate2 = repairViewModelImpl.d;
                str = careServiceDetail.L;
                if (str != null) {
                    CareServiceTransactionId.Companion companion3 = CareServiceTransactionId.INSTANCE;
                    resId = new StringResourceUiModel.ResId(R.string.dr_subject_contact_email, CollectionsKt.O(str));
                }
                contactUsDelegate2.m4(resId);
                monitorAction = monitorAction2;
            }
            return coroutineSingletons;
        }
        obj2 = objA;
        monitorAction = monitorActionA;
        thA = Result.a(obj2);
        if (thA != null) {
            mutableStateFlow = repairViewModelImpl2.v;
            do {
                value3 = mutableStateFlow.getValue();
                ((Boolean) value3).getClass();
            } while (!mutableStateFlow.i(value3, Boolean.TRUE));
            monitorAction.d(new CareServicesMonitoring.Error.OpenRepairDetailError(thA));
            repairViewModelImpl2.f63496a.c("RepairViewModelImpl", "Unable to get care detail", thA);
        }
        do {
            value2 = mutableStateFlow2.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow2.i(value2, Boolean.FALSE));
        monitorAction.b();
        return Unit.f71739a;
    }
}
