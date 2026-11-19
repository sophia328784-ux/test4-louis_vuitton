package com.vuitton.android.domain.usecase.dynamicyield;

import com.vuitton.android.data.datasource.dynamicyield.DynamicYieldDataSource$special$$inlined$map$1;
import com.vuitton.android.domain.repository.DynamicYieldRepository;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/dynamicyield/IsDynamicYieldActivatedUseCase;", "", "Lcom/vuitton/android/domain/repository/DynamicYieldRepository;", "dynamicYieldRepository", "<init>", "(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class IsDynamicYieldActivatedUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DynamicYieldRepository f49951a;

    @Inject
    public IsDynamicYieldActivatedUseCase(DynamicYieldRepository dynamicYieldRepository) {
        dynamicYieldRepository.getClass();
        this.f49951a = dynamicYieldRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        IsDynamicYieldActivatedUseCase$run$1 isDynamicYieldActivatedUseCase$run$1;
        Object failure;
        if (continuationImpl instanceof IsDynamicYieldActivatedUseCase$run$1) {
            isDynamicYieldActivatedUseCase$run$1 = (IsDynamicYieldActivatedUseCase$run$1) continuationImpl;
            int i2 = isDynamicYieldActivatedUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                isDynamicYieldActivatedUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                isDynamicYieldActivatedUseCase$run$1 = new IsDynamicYieldActivatedUseCase$run$1(this, continuationImpl);
            }
        } else {
            isDynamicYieldActivatedUseCase$run$1 = new IsDynamicYieldActivatedUseCase$run$1(this, continuationImpl);
        }
        Object objP = isDynamicYieldActivatedUseCase$run$1.f49952b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = isDynamicYieldActivatedUseCase$run$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objP);
                Result.Companion companion = Result.INSTANCE;
                DynamicYieldDataSource$special$$inlined$map$1 dynamicYieldDataSource$special$$inlined$map$1D = this.f49951a.d();
                isDynamicYieldActivatedUseCase$run$1.d = 1;
                objP = FlowKt.p(dynamicYieldDataSource$special$$inlined$map$1D, isDynamicYieldActivatedUseCase$run$1);
                if (objP == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objP);
            }
            Boolean bool = (Boolean) objP;
            bool.getClass();
            failure = new Result(bool);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }
}
