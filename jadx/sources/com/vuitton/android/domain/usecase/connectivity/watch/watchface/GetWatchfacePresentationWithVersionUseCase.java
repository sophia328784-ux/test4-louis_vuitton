package com.vuitton.android.domain.usecase.connectivity.watch.watchface;

import com.vuitton.android.domain.repository.WatchRepository;
import com.vuitton.android.domain.usecase.config.RequireCachedConnectedObjectsConfigUseCase;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import defpackage.md;
import java.util.ArrayList;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationWithVersionUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;", "requireCachedConnectedObjectsConfigUseCase", "Lcom/vuitton/android/domain/repository/WatchRepository;", "watchRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/WatchRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetWatchfacePresentationWithVersionUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedConnectedObjectsConfigUseCase f49862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WatchRepository f49863b;

    @Inject
    public GetWatchfacePresentationWithVersionUseCase(RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase, WatchRepository watchRepository) {
        requireCachedConnectedObjectsConfigUseCase.getClass();
        watchRepository.getClass();
        this.f49862a = requireCachedConnectedObjectsConfigUseCase;
        this.f49863b = watchRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(int i2, ContinuationImpl continuationImpl) {
        GetWatchfacePresentationWithVersionUseCase$run$1 getWatchfacePresentationWithVersionUseCase$run$1;
        WatchRepository watchRepository;
        if (continuationImpl instanceof GetWatchfacePresentationWithVersionUseCase$run$1) {
            getWatchfacePresentationWithVersionUseCase$run$1 = (GetWatchfacePresentationWithVersionUseCase$run$1) continuationImpl;
            int i3 = getWatchfacePresentationWithVersionUseCase$run$1.f49867f;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                getWatchfacePresentationWithVersionUseCase$run$1.f49867f = i3 - Integer.MIN_VALUE;
            } else {
                getWatchfacePresentationWithVersionUseCase$run$1 = new GetWatchfacePresentationWithVersionUseCase$run$1(this, continuationImpl);
            }
        } else {
            getWatchfacePresentationWithVersionUseCase$run$1 = new GetWatchfacePresentationWithVersionUseCase$run$1(this, continuationImpl);
        }
        Object obj = getWatchfacePresentationWithVersionUseCase$run$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = getWatchfacePresentationWithVersionUseCase$run$1.f49867f;
        if (i4 == 0) {
            ResultKt.b(obj);
            WatchRepository watchRepository2 = this.f49863b;
            getWatchfacePresentationWithVersionUseCase$run$1.f49865c = watchRepository2;
            getWatchfacePresentationWithVersionUseCase$run$1.f49864b = i2;
            getWatchfacePresentationWithVersionUseCase$run$1.f49867f = 1;
            Object objA = this.f49862a.a(getWatchfacePresentationWithVersionUseCase$run$1);
            if (objA != coroutineSingletons) {
                obj = objA;
                watchRepository = watchRepository2;
            }
        }
        if (i4 != 1) {
            if (i4 == 2) {
                ResultKt.b(obj);
                return obj;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        i2 = getWatchfacePresentationWithVersionUseCase$run$1.f49864b;
        watchRepository = getWatchfacePresentationWithVersionUseCase$run$1.f49865c;
        ResultKt.b(obj);
        ArrayList arrayListL = CollectionsKt.l(new Integer(i2));
        getWatchfacePresentationWithVersionUseCase$run$1.f49865c = null;
        getWatchfacePresentationWithVersionUseCase$run$1.f49864b = i2;
        getWatchfacePresentationWithVersionUseCase$run$1.f49867f = 2;
        Object objD = watchRepository.d((ConnectedObjectsConfig) obj, arrayListL, getWatchfacePresentationWithVersionUseCase$run$1);
        return objD == coroutineSingletons ? coroutineSingletons : objD;
    }
}
