package com.vuitton.android.data.datasource.dispatch;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.publication.DispatchApi;
import com.vuitton.android.data.dto.dispatch.DispatchContinentDto;
import com.vuitton.android.data.dto.dispatch.mapper.DispatchContinentMapperKt;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/datasource/dispatch/DispatchRemoteDataSource;", "", "Lcom/vuitton/android/data/api/bff/publication/DispatchApi;", "dispatchApi", "<init>", "(Lcom/vuitton/android/data/api/bff/publication/DispatchApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DispatchRemoteDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DispatchApi f44100a;

    @Inject
    public DispatchRemoteDataSource(DispatchApi dispatchApi) {
        dispatchApi.getClass();
        this.f44100a = dispatchApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) throws Throwable {
        DispatchRemoteDataSource$getSupportedDispatchAreaList$1 dispatchRemoteDataSource$getSupportedDispatchAreaList$1;
        Object failure;
        if (continuationImpl instanceof DispatchRemoteDataSource$getSupportedDispatchAreaList$1) {
            dispatchRemoteDataSource$getSupportedDispatchAreaList$1 = (DispatchRemoteDataSource$getSupportedDispatchAreaList$1) continuationImpl;
            int i2 = dispatchRemoteDataSource$getSupportedDispatchAreaList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dispatchRemoteDataSource$getSupportedDispatchAreaList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                dispatchRemoteDataSource$getSupportedDispatchAreaList$1 = new DispatchRemoteDataSource$getSupportedDispatchAreaList$1(this, continuationImpl);
            }
        } else {
            dispatchRemoteDataSource$getSupportedDispatchAreaList$1 = new DispatchRemoteDataSource$getSupportedDispatchAreaList$1(this, continuationImpl);
        }
        Object dispatchCountryList = dispatchRemoteDataSource$getSupportedDispatchAreaList$1.f44101b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dispatchRemoteDataSource$getSupportedDispatchAreaList$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(dispatchCountryList);
                Result.Companion companion = Result.INSTANCE;
                DispatchApi dispatchApi = this.f44100a;
                dispatchRemoteDataSource$getSupportedDispatchAreaList$1.d = 1;
                dispatchCountryList = dispatchApi.getDispatchCountryList(dispatchRemoteDataSource$getSupportedDispatchAreaList$1);
                if (dispatchCountryList == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(dispatchCountryList);
            }
            Iterable iterable = (Iterable) dispatchCountryList;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(DispatchContinentMapperKt.a((DispatchContinentDto) it.next()));
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
