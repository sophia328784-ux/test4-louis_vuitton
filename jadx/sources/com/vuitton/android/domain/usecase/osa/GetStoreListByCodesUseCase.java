package com.vuitton.android.domain.usecase.osa;

import com.vuitton.android.domain.repository.StoreRepository;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/osa/GetStoreListByCodesUseCase;", "", "Lcom/vuitton/android/domain/repository/StoreRepository;", "storeRepository", "<init>", "(Lcom/vuitton/android/domain/repository/StoreRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetStoreListByCodesUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StoreRepository f50164a;

    @Inject
    public GetStoreListByCodesUseCase(StoreRepository storeRepository) {
        storeRepository.getClass();
        this.f50164a = storeRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(List list, ContinuationImpl continuationImpl) {
        GetStoreListByCodesUseCase$run$1 getStoreListByCodesUseCase$run$1;
        if (continuationImpl instanceof GetStoreListByCodesUseCase$run$1) {
            getStoreListByCodesUseCase$run$1 = (GetStoreListByCodesUseCase$run$1) continuationImpl;
            int i2 = getStoreListByCodesUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getStoreListByCodesUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getStoreListByCodesUseCase$run$1 = new GetStoreListByCodesUseCase$run$1(this, continuationImpl);
            }
        } else {
            getStoreListByCodesUseCase$run$1 = new GetStoreListByCodesUseCase$run$1(this, continuationImpl);
        }
        Object obj = getStoreListByCodesUseCase$run$1.f50165b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getStoreListByCodesUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            getStoreListByCodesUseCase$run$1.d = 1;
            Object objA = this.f50164a.a(list, getStoreListByCodesUseCase$run$1);
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
