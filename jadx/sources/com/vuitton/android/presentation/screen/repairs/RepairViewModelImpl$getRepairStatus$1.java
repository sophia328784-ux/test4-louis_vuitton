package com.vuitton.android.presentation.screen.repairs;

import com.vuitton.android.domain.usecase.repairs.GetRepairStatusMapUseCase;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusTranslationUiModelKt;
import com.vuitton.android.presentation.screen.repairs.models.RepairFeatureFlags;
import defpackage.md;
import java.util.List;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$getRepairStatus$1", f = "RepairViewModelImpl.kt", l = {350}, m = "invokeSuspend", v = 2)
final class RepairViewModelImpl$getRepairStatus$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63532b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f63533c;
    public final /* synthetic */ RepairViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairViewModelImpl$getRepairStatus$1(Continuation continuation, RepairViewModelImpl repairViewModelImpl) {
        super(2, continuation);
        this.d = repairViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        RepairViewModelImpl$getRepairStatus$1 repairViewModelImpl$getRepairStatus$1 = new RepairViewModelImpl$getRepairStatus$1(continuation, this.d);
        repairViewModelImpl$getRepairStatus$1.f63533c = obj;
        return repairViewModelImpl$getRepairStatus$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairViewModelImpl$getRepairStatus$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63532b;
        RepairViewModelImpl repairViewModelImpl = this.d;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                GetRepairStatusMapUseCase getRepairStatusMapUseCase = repairViewModelImpl.m;
                this.f63533c = null;
                this.f63532b = 1;
                obj = getRepairStatusMapUseCase.f50357a.b(getRepairStatusMapUseCase.f50358b.f49912a.b(), this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = (List) obj;
            Result.Companion companion2 = Result.INSTANCE;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA == null) {
            repairViewModelImpl.z.setValue(RepairStatusTranslationUiModelKt.a((List) failure, ((RepairFeatureFlags) repairViewModelImpl.F.getValue()).d));
        } else {
            repairViewModelImpl.f63496a.c("RepairViewModelImpl", "Unable to get repair status", thA);
        }
        return Unit.f71739a;
    }
}
