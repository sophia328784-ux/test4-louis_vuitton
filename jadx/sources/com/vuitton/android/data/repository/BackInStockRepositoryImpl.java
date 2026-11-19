package com.vuitton.android.data.repository;

import com.batch.android.Batch;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.data.api.bff.user.BackInStockApi;
import com.vuitton.android.domain.repository.BackInStockRepository;
import com.vuitton.foundation.model.domain.error.batch.NoBatchInstallationIdFoundException;
import com.vuitton.foundation.model.domain.model.product.availability.BackInStockSubscribeBody;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;", "Lcom/vuitton/android/domain/repository/BackInStockRepository;", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "dispatcherProvider", "Lcom/vuitton/android/data/api/bff/user/BackInStockApi;", "backInStockApi", "<init>", "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/data/api/bff/user/BackInStockApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BackInStockRepositoryImpl implements BackInStockRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineDispatchers f47371a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BackInStockApi f47372b;

    @Inject
    public BackInStockRepositoryImpl(CoroutineDispatchers coroutineDispatchers, BackInStockApi backInStockApi) {
        coroutineDispatchers.getClass();
        backInStockApi.getClass();
        this.f47371a = coroutineDispatchers;
        this.f47372b = backInStockApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.BackInStockRepository
    public final Object a(String str, boolean z, ContinuationImpl continuationImpl) throws Throwable {
        BackInStockRepositoryImpl$subscribe$1 backInStockRepositoryImpl$subscribe$1;
        if (continuationImpl instanceof BackInStockRepositoryImpl$subscribe$1) {
            backInStockRepositoryImpl$subscribe$1 = (BackInStockRepositoryImpl$subscribe$1) continuationImpl;
            int i2 = backInStockRepositoryImpl$subscribe$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                backInStockRepositoryImpl$subscribe$1.d = i2 - Integer.MIN_VALUE;
            } else {
                backInStockRepositoryImpl$subscribe$1 = new BackInStockRepositoryImpl$subscribe$1(this, continuationImpl);
            }
        } else {
            backInStockRepositoryImpl$subscribe$1 = new BackInStockRepositoryImpl$subscribe$1(this, continuationImpl);
        }
        Object objF = backInStockRepositoryImpl$subscribe$1.f47373b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = backInStockRepositoryImpl$subscribe$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            String installationID = Batch.User.getInstallationID();
            if (installationID == null || installationID.length() == 0) {
                installationID = null;
            }
            if (installationID == null) {
                Result.Companion companion = Result.INSTANCE;
                return new Result.Failure(new NoBatchInstallationIdFoundException());
            }
            BackInStockSubscribeBody backInStockSubscribeBody = new BackInStockSubscribeBody(str, installationID, Boolean.valueOf(z), null);
            DefaultIoScheduler f43530b = this.f47371a.getF43530b();
            BackInStockRepositoryImpl$subscribe$2 backInStockRepositoryImpl$subscribe$2 = new BackInStockRepositoryImpl$subscribe$2(this, backInStockSubscribeBody, null);
            backInStockRepositoryImpl$subscribe$1.d = 1;
            objF = BuildersKt.f(f43530b, backInStockRepositoryImpl$subscribe$2, backInStockRepositoryImpl$subscribe$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.BackInStockRepository
    public final Object b(ContinuationImpl continuationImpl) throws Throwable {
        BackInStockRepositoryImpl$unsubscribe$1 backInStockRepositoryImpl$unsubscribe$1;
        if (continuationImpl instanceof BackInStockRepositoryImpl$unsubscribe$1) {
            backInStockRepositoryImpl$unsubscribe$1 = (BackInStockRepositoryImpl$unsubscribe$1) continuationImpl;
            int i2 = backInStockRepositoryImpl$unsubscribe$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                backInStockRepositoryImpl$unsubscribe$1.d = i2 - Integer.MIN_VALUE;
            } else {
                backInStockRepositoryImpl$unsubscribe$1 = new BackInStockRepositoryImpl$unsubscribe$1(this, continuationImpl);
            }
        } else {
            backInStockRepositoryImpl$unsubscribe$1 = new BackInStockRepositoryImpl$unsubscribe$1(this, continuationImpl);
        }
        Object objF = backInStockRepositoryImpl$unsubscribe$1.f47377b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = backInStockRepositoryImpl$unsubscribe$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            String installationID = Batch.User.getInstallationID();
            if (installationID == null || installationID.length() == 0) {
                installationID = null;
            }
            if (installationID == null) {
                Result.Companion companion = Result.INSTANCE;
                return new Result.Failure(new NoBatchInstallationIdFoundException());
            }
            DefaultIoScheduler f43530b = this.f47371a.getF43530b();
            BackInStockRepositoryImpl$unsubscribe$2 backInStockRepositoryImpl$unsubscribe$2 = new BackInStockRepositoryImpl$unsubscribe$2(this, installationID, null);
            backInStockRepositoryImpl$unsubscribe$1.d = 1;
            objF = BuildersKt.f(f43530b, backInStockRepositoryImpl$unsubscribe$2, backInStockRepositoryImpl$unsubscribe$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }
}
