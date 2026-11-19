package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.deeplink.DeepLinkCacheDataSource;
import com.vuitton.android.domain.repository.DeepLinkCacheRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/DeepLinkCacheRepositoryImpl;", "Lcom/vuitton/android/domain/repository/DeepLinkCacheRepository;", "Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;", "deepLinkCacheDataSource", "<init>", "(Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DeepLinkCacheRepositoryImpl implements DeepLinkCacheRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeepLinkCacheDataSource f47641a;

    @Inject
    public DeepLinkCacheRepositoryImpl(DeepLinkCacheDataSource deepLinkCacheDataSource) {
        deepLinkCacheDataSource.getClass();
        this.f47641a = deepLinkCacheDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.DeepLinkCacheRepository
    public final Object a(ContinuationImpl continuationImpl) {
        DeepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1 deepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1;
        if (continuationImpl instanceof DeepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1) {
            deepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1 = (DeepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1) continuationImpl;
            int i2 = deepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                deepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1.d = i2 - Integer.MIN_VALUE;
            } else {
                deepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1 = new DeepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1(this, continuationImpl);
            }
        } else {
            deepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1 = new DeepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1(this, continuationImpl);
        }
        Object obj = deepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1.f47642b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = deepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            deepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1.d = 1;
            Object objA = this.f47641a.a(deepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1);
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.DeepLinkCacheRepository
    public final Object b(String str, ContinuationImpl continuationImpl) {
        DeepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1 deepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1;
        if (continuationImpl instanceof DeepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1) {
            deepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1 = (DeepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1) continuationImpl;
            int i2 = deepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                deepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1.d = i2 - Integer.MIN_VALUE;
            } else {
                deepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1 = new DeepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1(this, continuationImpl);
            }
        } else {
            deepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1 = new DeepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1(this, continuationImpl);
        }
        Object obj = deepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1.f47644b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = deepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            deepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1.d = 1;
            Object objB = this.f47641a.b(str, deepLinkCacheRepositoryImpl$saveDeepLinkForRedirection$1);
            return objB == coroutineSingletons ? coroutineSingletons : objB;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    @Override // com.vuitton.android.domain.repository.DeepLinkCacheRepository
    public final Object c(Continuation continuation) {
        return this.f47641a.c((ContinuationImpl) continuation);
    }
}
