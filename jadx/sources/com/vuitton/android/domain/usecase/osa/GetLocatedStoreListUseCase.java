package com.vuitton.android.domain.usecase.osa;

import com.vuitton.android.domain.repository.StoreRepository;
import com.vuitton.foundation.model.domain.model.product.availability.PlaceGeocoding;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/osa/GetLocatedStoreListUseCase;", "", "Lcom/vuitton/android/domain/repository/StoreRepository;", "storeRepository", "<init>", "(Lcom/vuitton/android/domain/repository/StoreRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetLocatedStoreListUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StoreRepository f50157a;

    @Inject
    public GetLocatedStoreListUseCase(StoreRepository storeRepository) {
        storeRepository.getClass();
        this.f50157a = storeRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(PlaceGeocoding placeGeocoding, ContinuationImpl continuationImpl) {
        GetLocatedStoreListUseCase$run$1 getLocatedStoreListUseCase$run$1;
        if (continuationImpl instanceof GetLocatedStoreListUseCase$run$1) {
            getLocatedStoreListUseCase$run$1 = (GetLocatedStoreListUseCase$run$1) continuationImpl;
            int i2 = getLocatedStoreListUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getLocatedStoreListUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getLocatedStoreListUseCase$run$1 = new GetLocatedStoreListUseCase$run$1(this, continuationImpl);
            }
        } else {
            getLocatedStoreListUseCase$run$1 = new GetLocatedStoreListUseCase$run$1(this, continuationImpl);
        }
        Object obj = getLocatedStoreListUseCase$run$1.f50158b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getLocatedStoreListUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            getLocatedStoreListUseCase$run$1.d = 1;
            Object objB = this.f50157a.b(placeGeocoding, getLocatedStoreListUseCase$run$1);
            return objB == coroutineSingletons ? coroutineSingletons : objB;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
