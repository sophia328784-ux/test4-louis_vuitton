package com.vuitton.android.domain.usecase.dynamicyield;

import com.vuitton.android.domain.repository.DynamicYieldRepository;
import com.vuitton.android.domain.usecase.config.GetDynamicYieldCampaignUseCase;
import com.vuitton.foundation.model.domain.model.dynamicyield.DYPageType;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;", "", "Lcom/vuitton/android/domain/repository/DynamicYieldRepository;", "dynamicYieldRepository", "Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;", "getDynamicYieldCampaignUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetDYPlpChooseVariationUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DynamicYieldRepository f49925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetDynamicYieldCampaignUseCase f49926b;

    @Inject
    public GetDYPlpChooseVariationUseCase(DynamicYieldRepository dynamicYieldRepository, GetDynamicYieldCampaignUseCase getDynamicYieldCampaignUseCase) {
        dynamicYieldRepository.getClass();
        getDynamicYieldCampaignUseCase.getClass();
        this.f49925a = dynamicYieldRepository;
        this.f49926b = getDynamicYieldCampaignUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        GetDYPlpChooseVariationUseCase$run$1 getDYPlpChooseVariationUseCase$run$1;
        Object failure;
        Object objF;
        if (continuationImpl instanceof GetDYPlpChooseVariationUseCase$run$1) {
            getDYPlpChooseVariationUseCase$run$1 = (GetDYPlpChooseVariationUseCase$run$1) continuationImpl;
            int i2 = getDYPlpChooseVariationUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getDYPlpChooseVariationUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getDYPlpChooseVariationUseCase$run$1 = new GetDYPlpChooseVariationUseCase$run$1(this, continuationImpl);
            }
        } else {
            getDYPlpChooseVariationUseCase$run$1 = new GetDYPlpChooseVariationUseCase$run$1(this, continuationImpl);
        }
        Object obj = getDYPlpChooseVariationUseCase$run$1.f49927b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getDYPlpChooseVariationUseCase$run$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                String strA = this.f49926b.a();
                if (strA == null) {
                    throw new IllegalStateException("No DY campaign available");
                }
                DynamicYieldRepository dynamicYieldRepository = this.f49925a;
                DYPageType.CATEGORY category = new DYPageType.CATEGORY(str);
                getDYPlpChooseVariationUseCase$run$1.d = 1;
                objF = dynamicYieldRepository.f(strA, category, getDYPlpChooseVariationUseCase$run$1);
                if (objF == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objF = ((Result) obj).f71708b;
            }
            ResultKt.b(objF);
            failure = new Result(Unit.f71739a);
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
