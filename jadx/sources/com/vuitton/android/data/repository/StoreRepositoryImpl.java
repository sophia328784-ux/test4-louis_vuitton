package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.catalog.StoreApi;
import com.vuitton.android.data.dto.storelocator.StoreDto;
import com.vuitton.android.data.dto.storelocator.StoreListDto;
import com.vuitton.android.data.dto.storelocator.mapper.StoreMapperKt;
import com.vuitton.android.domain.repository.StoreRepository;
import com.vuitton.foundation.model.domain.model.product.availability.PlaceGeocoding;
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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/StoreRepositoryImpl;", "Lcom/vuitton/android/domain/repository/StoreRepository;", "Lcom/vuitton/android/data/api/bff/catalog/StoreApi;", "storeApi", "<init>", "(Lcom/vuitton/android/data/api/bff/catalog/StoreApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StoreRepositoryImpl implements StoreRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StoreApi f48045a;

    @Inject
    public StoreRepositoryImpl(StoreApi storeApi) {
        storeApi.getClass();
        this.f48045a = storeApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.StoreRepository
    public final Object a(List list, ContinuationImpl continuationImpl) {
        StoreRepositoryImpl$getStoreListByCodes$1 storeRepositoryImpl$getStoreListByCodes$1;
        Object failure;
        if (continuationImpl instanceof StoreRepositoryImpl$getStoreListByCodes$1) {
            storeRepositoryImpl$getStoreListByCodes$1 = (StoreRepositoryImpl$getStoreListByCodes$1) continuationImpl;
            int i2 = storeRepositoryImpl$getStoreListByCodes$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                storeRepositoryImpl$getStoreListByCodes$1.d = i2 - Integer.MIN_VALUE;
            } else {
                storeRepositoryImpl$getStoreListByCodes$1 = new StoreRepositoryImpl$getStoreListByCodes$1(this, continuationImpl);
            }
        } else {
            storeRepositoryImpl$getStoreListByCodes$1 = new StoreRepositoryImpl$getStoreListByCodes$1(this, continuationImpl);
        }
        Object storeListByCodes = storeRepositoryImpl$getStoreListByCodes$1.f48048b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = storeRepositoryImpl$getStoreListByCodes$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(storeListByCodes);
                Result.Companion companion = Result.INSTANCE;
                StoreApi storeApi = this.f48045a;
                String strK = CollectionsKt.K(list, ",", null, null, null, 62);
                storeRepositoryImpl$getStoreListByCodes$1.d = 1;
                storeListByCodes = storeApi.getStoreListByCodes(strK, storeRepositoryImpl$getStoreListByCodes$1);
                if (storeListByCodes == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(storeListByCodes);
            }
            Iterable iterable = (Iterable) storeListByCodes;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
            Iterator it = iterable.iterator();
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

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    @Override // com.vuitton.android.domain.repository.StoreRepository
    public final Object b(PlaceGeocoding placeGeocoding, ContinuationImpl continuationImpl) {
        StoreRepositoryImpl$getLocatedStoreList$1 storeRepositoryImpl$getLocatedStoreList$1;
        Object failure;
        if (continuationImpl instanceof StoreRepositoryImpl$getLocatedStoreList$1) {
            storeRepositoryImpl$getLocatedStoreList$1 = (StoreRepositoryImpl$getLocatedStoreList$1) continuationImpl;
            int i2 = storeRepositoryImpl$getLocatedStoreList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                storeRepositoryImpl$getLocatedStoreList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                storeRepositoryImpl$getLocatedStoreList$1 = new StoreRepositoryImpl$getLocatedStoreList$1(this, continuationImpl);
            }
        } else {
            storeRepositoryImpl$getLocatedStoreList$1 = new StoreRepositoryImpl$getLocatedStoreList$1(this, continuationImpl);
        }
        Object objSearchStoresForAppointment = storeRepositoryImpl$getLocatedStoreList$1.f48046b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = storeRepositoryImpl$getLocatedStoreList$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objSearchStoresForAppointment);
                Result.Companion companion = Result.INSTANCE;
                StoreApi storeApi = this.f48045a;
                double d = placeGeocoding.f67942b;
                double d2 = placeGeocoding.f67943c;
                double d3 = placeGeocoding.d;
                double d4 = placeGeocoding.f67944e;
                double d5 = placeGeocoding.f67945f;
                double d6 = placeGeocoding.g;
                storeRepositoryImpl$getLocatedStoreList$1.d = 1;
                objSearchStoresForAppointment = storeApi.searchStoresForAppointment(null, d, d2, d3, d4, d5, d6, storeRepositoryImpl$getLocatedStoreList$1);
                if (objSearchStoresForAppointment == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objSearchStoresForAppointment);
            }
            List list = ((StoreListDto) objSearchStoresForAppointment).f46846a;
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
