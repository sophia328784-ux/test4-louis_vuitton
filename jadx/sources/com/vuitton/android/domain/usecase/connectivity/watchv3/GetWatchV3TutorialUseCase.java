package com.vuitton.android.domain.usecase.connectivity.watchv3;

import com.vuitton.android.domain.repository.WatchV3Repository;
import com.vuitton.android.domain.usecase.config.RequireCachedConnectedObjectsConfigUseCase;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;", "requireCachedConnectedObjectsConfigUseCase", "Lcom/vuitton/android/domain/repository/WatchV3Repository;", "watchRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/WatchV3Repository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetWatchV3TutorialUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedConnectedObjectsConfigUseCase f49873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WatchV3Repository f49874b;

    @Inject
    public GetWatchV3TutorialUseCase(RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase, WatchV3Repository watchV3Repository) {
        requireCachedConnectedObjectsConfigUseCase.getClass();
        watchV3Repository.getClass();
        this.f49873a = requireCachedConnectedObjectsConfigUseCase;
        this.f49874b = watchV3Repository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetWatchV3TutorialUseCase$run$1 getWatchV3TutorialUseCase$run$1;
        WatchV3Repository watchV3Repository;
        if (continuationImpl instanceof GetWatchV3TutorialUseCase$run$1) {
            getWatchV3TutorialUseCase$run$1 = (GetWatchV3TutorialUseCase$run$1) continuationImpl;
            int i2 = getWatchV3TutorialUseCase$run$1.f49877e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getWatchV3TutorialUseCase$run$1.f49877e = i2 - Integer.MIN_VALUE;
            } else {
                getWatchV3TutorialUseCase$run$1 = new GetWatchV3TutorialUseCase$run$1(this, continuationImpl);
            }
        } else {
            getWatchV3TutorialUseCase$run$1 = new GetWatchV3TutorialUseCase$run$1(this, continuationImpl);
        }
        Object obj = getWatchV3TutorialUseCase$run$1.f49876c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getWatchV3TutorialUseCase$run$1.f49877e;
        if (i3 == 0) {
            ResultKt.b(obj);
            WatchV3Repository watchV3Repository2 = this.f49874b;
            getWatchV3TutorialUseCase$run$1.f49875b = watchV3Repository2;
            getWatchV3TutorialUseCase$run$1.f49877e = 1;
            Object objA = this.f49873a.a(getWatchV3TutorialUseCase$run$1);
            if (objA != coroutineSingletons) {
                obj = objA;
                watchV3Repository = watchV3Repository2;
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
        watchV3Repository = getWatchV3TutorialUseCase$run$1.f49875b;
        ResultKt.b(obj);
        getWatchV3TutorialUseCase$run$1.f49875b = null;
        getWatchV3TutorialUseCase$run$1.f49877e = 2;
        List listB = watchV3Repository.b((ConnectedObjectsConfig) obj);
        return listB == coroutineSingletons ? coroutineSingletons : listB;
    }
}
