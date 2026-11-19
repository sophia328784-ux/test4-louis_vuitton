package com.vuitton.android.domain.usecase.connectivity.watch;

import com.vuitton.android.domain.repository.WatchRepository;
import com.vuitton.android.domain.usecase.config.RequireCachedConnectedObjectsConfigUseCase;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchTutorialCategoryListUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;", "requireCachedConnectedObjectsConfigUseCase", "Lcom/vuitton/android/domain/repository/WatchRepository;", "watchRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/WatchRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetWatchTutorialCategoryListUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedConnectedObjectsConfigUseCase f49827a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WatchRepository f49828b;

    @Inject
    public GetWatchTutorialCategoryListUseCase(RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase, WatchRepository watchRepository) {
        requireCachedConnectedObjectsConfigUseCase.getClass();
        watchRepository.getClass();
        this.f49827a = requireCachedConnectedObjectsConfigUseCase;
        this.f49828b = watchRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetWatchTutorialCategoryListUseCase$run$1 getWatchTutorialCategoryListUseCase$run$1;
        WatchRepository watchRepository;
        if (continuationImpl instanceof GetWatchTutorialCategoryListUseCase$run$1) {
            getWatchTutorialCategoryListUseCase$run$1 = (GetWatchTutorialCategoryListUseCase$run$1) continuationImpl;
            int i2 = getWatchTutorialCategoryListUseCase$run$1.f49831e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getWatchTutorialCategoryListUseCase$run$1.f49831e = i2 - Integer.MIN_VALUE;
            } else {
                getWatchTutorialCategoryListUseCase$run$1 = new GetWatchTutorialCategoryListUseCase$run$1(this, continuationImpl);
            }
        } else {
            getWatchTutorialCategoryListUseCase$run$1 = new GetWatchTutorialCategoryListUseCase$run$1(this, continuationImpl);
        }
        Object obj = getWatchTutorialCategoryListUseCase$run$1.f49830c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getWatchTutorialCategoryListUseCase$run$1.f49831e;
        if (i3 == 0) {
            ResultKt.b(obj);
            WatchRepository watchRepository2 = this.f49828b;
            getWatchTutorialCategoryListUseCase$run$1.f49829b = watchRepository2;
            getWatchTutorialCategoryListUseCase$run$1.f49831e = 1;
            Object objA = this.f49827a.a(getWatchTutorialCategoryListUseCase$run$1);
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
        watchRepository = getWatchTutorialCategoryListUseCase$run$1.f49829b;
        ResultKt.b(obj);
        getWatchTutorialCategoryListUseCase$run$1.f49829b = null;
        getWatchTutorialCategoryListUseCase$run$1.f49831e = 2;
        Object objC = watchRepository.c((ConnectedObjectsConfig) obj, getWatchTutorialCategoryListUseCase$run$1);
        return objC == coroutineSingletons ? coroutineSingletons : objC;
    }
}
