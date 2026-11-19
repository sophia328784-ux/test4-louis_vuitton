package com.vuitton.android.domain.usecase.connectivity.watch;

import com.vuitton.android.domain.repository.WatchRepository;
import com.vuitton.android.domain.usecase.config.RequireCachedConnectedObjectsConfigUseCase;
import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchVideoUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;", "requireCachedConnectedObjectsConfigUseCase", "Lcom/vuitton/android/domain/repository/WatchRepository;", "watchRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/WatchRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetWatchVideoUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedConnectedObjectsConfigUseCase f49838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WatchRepository f49839b;

    @Inject
    public GetWatchVideoUseCase(RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase, WatchRepository watchRepository) {
        requireCachedConnectedObjectsConfigUseCase.getClass();
        watchRepository.getClass();
        this.f49838a = requireCachedConnectedObjectsConfigUseCase;
        this.f49839b = watchRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetWatchVideoUseCase$run$1 getWatchVideoUseCase$run$1;
        WatchRepository watchRepository;
        if (continuationImpl instanceof GetWatchVideoUseCase$run$1) {
            getWatchVideoUseCase$run$1 = (GetWatchVideoUseCase$run$1) continuationImpl;
            int i2 = getWatchVideoUseCase$run$1.f49842e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getWatchVideoUseCase$run$1.f49842e = i2 - Integer.MIN_VALUE;
            } else {
                getWatchVideoUseCase$run$1 = new GetWatchVideoUseCase$run$1(this, continuationImpl);
            }
        } else {
            getWatchVideoUseCase$run$1 = new GetWatchVideoUseCase$run$1(this, continuationImpl);
        }
        Object obj = getWatchVideoUseCase$run$1.f49841c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getWatchVideoUseCase$run$1.f49842e;
        if (i3 == 0) {
            ResultKt.b(obj);
            WatchRepository watchRepository2 = this.f49839b;
            getWatchVideoUseCase$run$1.f49840b = watchRepository2;
            getWatchVideoUseCase$run$1.f49842e = 1;
            Object objA = this.f49838a.a(getWatchVideoUseCase$run$1);
            if (objA != coroutineSingletons) {
                obj = objA;
                watchRepository = watchRepository2;
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        watchRepository = getWatchVideoUseCase$run$1.f49840b;
        ResultKt.b(obj);
        getWatchVideoUseCase$run$1.f49840b = null;
        getWatchVideoUseCase$run$1.f49842e = 2;
        Video videoA = watchRepository.a((ConnectedObjectsConfig) obj);
        return videoA == coroutineSingletons ? coroutineSingletons : videoA;
    }
}
