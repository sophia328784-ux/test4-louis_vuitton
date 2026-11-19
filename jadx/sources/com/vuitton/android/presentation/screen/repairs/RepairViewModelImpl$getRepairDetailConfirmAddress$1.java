package com.vuitton.android.presentation.screen.repairs;

import com.vuitton.android.domain.usecase.careservices.GetCareServiceByIdUseCase;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceDetail;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$getRepairDetailConfirmAddress$1", f = "RepairViewModelImpl.kt", l = {403, 405}, m = "invokeSuspend", v = 2)
final class RepairViewModelImpl$getRepairDetailConfirmAddress$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f63528b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RepairViewModelImpl f63529c;
    public CareServiceDetail d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f63530e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ RepairViewModelImpl f63531f;
    public final /* synthetic */ String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairViewModelImpl$getRepairDetailConfirmAddress$1(RepairViewModelImpl repairViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f63531f = repairViewModelImpl;
        this.g = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairViewModelImpl$getRepairDetailConfirmAddress$1(this.f63531f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairViewModelImpl$getRepairDetailConfirmAddress$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x008b  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object objA;
        Object obj2;
        CareServiceDetail careServiceDetail;
        RepairViewModelImpl repairViewModelImpl;
        Throwable thA;
        Object value2;
        RepairViewModelImpl repairViewModelImpl2 = this.f63531f;
        MutableStateFlow mutableStateFlow = repairViewModelImpl2.u;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63530e;
        String str = this.g;
        if (i2 == 0) {
            ResultKt.b(obj);
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow.i(value, Boolean.TRUE));
            GetCareServiceByIdUseCase getCareServiceByIdUseCase = repairViewModelImpl2.l;
            CareServiceIdUiModel.f64059c.getClass();
            CareServiceIdUiModel.Companion.a(str);
            this.f63530e = 1;
            objA = getCareServiceByIdUseCase.a(str, this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            careServiceDetail = this.d;
            repairViewModelImpl = this.f63529c;
            obj2 = this.f63528b;
            ResultKt.b(obj);
        }
        repairViewModelImpl.t.b(new Pair(careServiceDetail.l, careServiceDetail.m));
        objA = obj2;
        thA = Result.a(objA);
        if (thA != null) {
            repairViewModelImpl2.f63496a.c("RepairViewModelImpl", "Unable to get care detail", thA);
        }
        do {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        return Unit.f71739a;
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            CareServiceDetail careServiceDetail2 = (CareServiceDetail) objA;
            CareServiceIdUiModel.f64059c.getClass();
            CareServiceIdUiModel.Companion.a(str);
            this.f63528b = objA;
            this.f63529c = repairViewModelImpl2;
            this.d = careServiceDetail2;
            this.f63530e = 2;
            if (RepairViewModelImpl.yc(repairViewModelImpl2, str, careServiceDetail2, this) != coroutineSingletons) {
                obj2 = objA;
                careServiceDetail = careServiceDetail2;
                repairViewModelImpl = repairViewModelImpl2;
                repairViewModelImpl.t.b(new Pair(careServiceDetail.l, careServiceDetail.m));
                objA = obj2;
            }
            return coroutineSingletons;
        }
        thA = Result.a(objA);
        if (thA != null) {
            repairViewModelImpl2.f63496a.c("RepairViewModelImpl", "Unable to get care detail", thA);
        }
        do {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        return Unit.f71739a;
    }
}
