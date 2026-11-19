package com.vuitton.android.presentation.screen.repairs;

import com.vuitton.android.domain.usecase.careservices.GetCareServiceDetailBffUseCase;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.foundation.model.domain.model.account.address.AddressId;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAddress;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceDetail;
import defpackage.md;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl$getRepairDetailConfirmAddress$1", f = "RepairBffViewModelImpl.kt", l = {309}, m = "invokeSuspend", v = 2)
final class RepairBffViewModelImpl$getRepairDetailConfirmAddress$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RepairBffViewModelImpl f63464c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairBffViewModelImpl$getRepairDetailConfirmAddress$1(RepairBffViewModelImpl repairBffViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f63464c = repairBffViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairBffViewModelImpl$getRepairDetailConfirmAddress$1(this.f63464c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairBffViewModelImpl$getRepairDetailConfirmAddress$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object objA;
        Object value2;
        CareServiceAddress careServiceAddress;
        String str;
        RepairBffViewModelImpl repairBffViewModelImpl = this.f63464c;
        MutableStateFlow mutableStateFlow = repairBffViewModelImpl.r;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63463b;
        if (i2 == 0) {
            ResultKt.b(obj);
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.TRUE));
            GetCareServiceDetailBffUseCase getCareServiceDetailBffUseCase = repairBffViewModelImpl.m;
            CareServiceIdUiModel.f64059c.getClass();
            String str2 = this.d;
            CareServiceIdUiModel.Companion.a(str2);
            this.f63463b = 1;
            objA = getCareServiceDetailBffUseCase.a(str2, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            CareServiceDetail careServiceDetail = (CareServiceDetail) objA;
            RepairBffViewModelImpl.yc(repairBffViewModelImpl, careServiceDetail);
            CareServiceDetail.Assessment assessment = careServiceDetail.n;
            if (assessment != null && (careServiceAddress = assessment.d) != null && (str = careServiceAddress.f66825a) != null) {
                repairBffViewModelImpl.q.b(new Pair(new AddressId(str), careServiceAddress.f66827c));
            }
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            repairBffViewModelImpl.f63443a.c("RepairBffViewModelImpl", "Unable to get care detail", thA);
        }
        do {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        return Unit.f71739a;
    }
}
