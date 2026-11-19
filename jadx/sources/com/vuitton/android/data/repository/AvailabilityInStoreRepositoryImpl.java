package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.catalog.StoreApi;
import com.vuitton.android.data.dto.storelocator.StoreDto;
import com.vuitton.android.data.dto.storelocator.StoreListDto;
import com.vuitton.android.data.dto.storelocator.mapper.StoreMapperKt;
import com.vuitton.android.domain.repository.AvailabilityInStoreRepository;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AvailabilityInStoreRepository;", "Lcom/vuitton/android/data/api/bff/catalog/StoreApi;", "storeApi", "<init>", "(Lcom/vuitton/android/data/api/bff/catalog/StoreApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AvailabilityInStoreRepositoryImpl implements AvailabilityInStoreRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StoreApi f47341a;

    @Inject
    public AvailabilityInStoreRepositoryImpl(StoreApi storeApi) {
        storeApi.getClass();
        this.f47341a = storeApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // com.vuitton.android.domain.repository.AvailabilityInStoreRepository
    public final Object a(String str, double d, double d2, double d3, double d4, double d5, double d6, ContinuationImpl continuationImpl) {
        AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1 availabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1;
        Object failure;
        if (continuationImpl instanceof AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1) {
            availabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1 = (AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1) continuationImpl;
            int i2 = availabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                availabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1.d = i2 - Integer.MIN_VALUE;
            } else {
                availabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1 = new AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1(this, continuationImpl);
            }
        } else {
            availabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1 = new AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1(this, continuationImpl);
        }
        Object objSearchStoresForProduct = availabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1.f47342b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = availabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objSearchStoresForProduct);
                Result.Companion companion = Result.INSTANCE;
                StoreApi storeApi = this.f47341a;
                availabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1.d = 1;
                objSearchStoresForProduct = storeApi.searchStoresForProduct(str, d, d2, d3, d4, d5, d6, availabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1);
                if (objSearchStoresForProduct == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objSearchStoresForProduct);
            }
            List list = ((StoreListDto) objSearchStoresForProduct).f46846a;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(StoreMapperKt.a((StoreDto) it.next()));
            }
            failure = new Result(arrayList);
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
