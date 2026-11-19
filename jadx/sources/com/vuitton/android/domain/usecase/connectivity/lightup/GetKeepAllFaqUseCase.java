package com.vuitton.android.domain.usecase.connectivity.lightup;

import com.vuitton.android.domain.repository.LightUpRepository;
import com.vuitton.android.domain.usecase.config.RequireCachedConnectedObjectsConfigUseCase;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import defpackage.md;
import java.util.Collection;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetKeepAllFaqUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;", "requireCachedConnectedObjectsConfigUseCase", "Lcom/vuitton/android/domain/repository/LightUpRepository;", "lightUpRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/LightUpRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetKeepAllFaqUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedConnectedObjectsConfigUseCase f49793a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LightUpRepository f49794b;

    @Inject
    public GetKeepAllFaqUseCase(RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase, LightUpRepository lightUpRepository) {
        requireCachedConnectedObjectsConfigUseCase.getClass();
        lightUpRepository.getClass();
        this.f49793a = requireCachedConnectedObjectsConfigUseCase;
        this.f49794b = lightUpRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetKeepAllFaqUseCase$run$1 getKeepAllFaqUseCase$run$1;
        LightUpRepository lightUpRepository;
        if (continuationImpl instanceof GetKeepAllFaqUseCase$run$1) {
            getKeepAllFaqUseCase$run$1 = (GetKeepAllFaqUseCase$run$1) continuationImpl;
            int i2 = getKeepAllFaqUseCase$run$1.f49797e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getKeepAllFaqUseCase$run$1.f49797e = i2 - Integer.MIN_VALUE;
            } else {
                getKeepAllFaqUseCase$run$1 = new GetKeepAllFaqUseCase$run$1(this, continuationImpl);
            }
        } else {
            getKeepAllFaqUseCase$run$1 = new GetKeepAllFaqUseCase$run$1(this, continuationImpl);
        }
        Object obj = getKeepAllFaqUseCase$run$1.f49796c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getKeepAllFaqUseCase$run$1.f49797e;
        if (i3 == 0) {
            ResultKt.b(obj);
            LightUpRepository lightUpRepository2 = this.f49794b;
            getKeepAllFaqUseCase$run$1.f49795b = lightUpRepository2;
            getKeepAllFaqUseCase$run$1.f49797e = 1;
            Object objA = this.f49793a.a(getKeepAllFaqUseCase$run$1);
            if (objA != coroutineSingletons) {
                obj = objA;
                lightUpRepository = lightUpRepository2;
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
        lightUpRepository = getKeepAllFaqUseCase$run$1.f49795b;
        ResultKt.b(obj);
        getKeepAllFaqUseCase$run$1.f49795b = null;
        getKeepAllFaqUseCase$run$1.f49797e = 2;
        Collection collectionE = lightUpRepository.e((ConnectedObjectsConfig) obj);
        return collectionE == coroutineSingletons ? coroutineSingletons : collectionE;
    }
}
