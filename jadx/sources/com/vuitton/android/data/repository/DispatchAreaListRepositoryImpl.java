package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.dispatch.DispatchMemCacheDataSource;
import com.vuitton.android.data.datasource.dispatch.DispatchRemoteDataSource;
import com.vuitton.android.domain.repository.DispatchAreaListRepository;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl;", "Lcom/vuitton/android/domain/repository/DispatchAreaListRepository;", "Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;", "memCacheDataSource", "Lcom/vuitton/android/data/datasource/dispatch/DispatchRemoteDataSource;", "remoteDataSource", "<init>", "(Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;Lcom/vuitton/android/data/datasource/dispatch/DispatchRemoteDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DispatchAreaListRepositoryImpl implements DispatchAreaListRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DispatchMemCacheDataSource f47647a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DispatchRemoteDataSource f47648b;

    @Inject
    public DispatchAreaListRepositoryImpl(DispatchMemCacheDataSource dispatchMemCacheDataSource, DispatchRemoteDataSource dispatchRemoteDataSource) {
        dispatchMemCacheDataSource.getClass();
        dispatchRemoteDataSource.getClass();
        this.f47647a = dispatchMemCacheDataSource;
        this.f47648b = dispatchRemoteDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:43:0x008d  */
    /* JADX WARN: Code duplicated, block: B:45:0x0091  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    @Override // com.vuitton.android.domain.repository.DispatchAreaListRepository
    public final Object a(ContinuationImpl continuationImpl) {
        DispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1 dispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1;
        Object failure;
        Throwable thA;
        List list;
        Object objA;
        DispatchMemCacheDataSource dispatchMemCacheDataSource = this.f47647a;
        if (continuationImpl instanceof DispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1) {
            dispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1 = (DispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1) continuationImpl;
            int i2 = dispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                dispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1 = new DispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1(this, continuationImpl);
            }
        } else {
            dispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1 = new DispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1(this, continuationImpl);
        }
        Object obj = dispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1.f47649b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                synchronized (dispatchMemCacheDataSource.f44097a) {
                    ArrayList arrayList = dispatchMemCacheDataSource.f44098b;
                    list = arrayList.isEmpty() ? null : arrayList;
                }
                if (list == null) {
                    DispatchRemoteDataSource dispatchRemoteDataSource = this.f47648b;
                    dispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1.d = 1;
                    objA = dispatchRemoteDataSource.a(dispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1);
                    if (objA == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                failure = new Result(list);
                thA = Result.a(failure);
                if (thA != null) {
                    if (!(thA instanceof CancellationException)) {
                        throw thA;
                    }
                    failure = new Result(new Result.Failure(thA));
                }
                return ((Result) failure).f71708b;
            }
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
            Result.Companion companion2 = Result.INSTANCE;
            if (!(objA instanceof Result.Failure)) {
                List list2 = (List) objA;
                if (list2.isEmpty()) {
                    throw new IllegalStateException("Dispatch area list must not be empty");
                }
                dispatchMemCacheDataSource.a(list2);
            }
            ResultKt.b(objA);
            list = (List) objA;
            failure = new Result(list);
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        thA = Result.a(failure);
        if (thA != null) {
            if (!(thA instanceof CancellationException)) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }
}
