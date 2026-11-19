package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.publication.PortalApi;
import com.vuitton.android.domain.repository.PortalRepository;
import com.vuitton.foundation.model.domain.model.portal.Portal;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/PortalRepositoryImpl;", "Lcom/vuitton/android/domain/repository/PortalRepository;", "Lcom/vuitton/android/data/api/bff/publication/PortalApi;", "portalApi", "<init>", "(Lcom/vuitton/android/data/api/bff/publication/PortalApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PortalRepositoryImpl implements PortalRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PortalApi f47899a;

    @Inject
    public PortalRepositoryImpl(PortalApi portalApi) {
        portalApi.getClass();
        this.f47899a = portalApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.PortalRepository
    public final Object a(String str, ContinuationImpl continuationImpl) {
        PortalRepositoryImpl$getPortalSliderFeed$1 portalRepositoryImpl$getPortalSliderFeed$1;
        Object failure;
        if (continuationImpl instanceof PortalRepositoryImpl$getPortalSliderFeed$1) {
            portalRepositoryImpl$getPortalSliderFeed$1 = (PortalRepositoryImpl$getPortalSliderFeed$1) continuationImpl;
            int i2 = portalRepositoryImpl$getPortalSliderFeed$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                portalRepositoryImpl$getPortalSliderFeed$1.d = i2 - Integer.MIN_VALUE;
            } else {
                portalRepositoryImpl$getPortalSliderFeed$1 = new PortalRepositoryImpl$getPortalSliderFeed$1(this, continuationImpl);
            }
        } else {
            portalRepositoryImpl$getPortalSliderFeed$1 = new PortalRepositoryImpl$getPortalSliderFeed$1(this, continuationImpl);
        }
        Object objF = portalRepositoryImpl$getPortalSliderFeed$1.f47900b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = portalRepositoryImpl$getPortalSliderFeed$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                Result.Companion companion = Result.INSTANCE;
                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
                PortalRepositoryImpl$getPortalSliderFeed$2$1 portalRepositoryImpl$getPortalSliderFeed$2$1 = new PortalRepositoryImpl$getPortalSliderFeed$2$1(this, str, null);
                portalRepositoryImpl$getPortalSliderFeed$1.d = 1;
                objF = BuildersKt.f(defaultIoScheduler, portalRepositoryImpl$getPortalSliderFeed$2$1, portalRepositoryImpl$getPortalSliderFeed$1);
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
            failure = new Result((Portal) objF);
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
