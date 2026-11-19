package com.vuitton.android.domain.usecase.connectivity.lightup;

import com.vuitton.android.domain.repository.LightUpRepository;
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
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpVideoUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;", "requireCachedConnectedObjectsConfigUseCase", "Lcom/vuitton/android/domain/repository/LightUpRepository;", "lightUpRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/LightUpRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetLightUpVideoUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedConnectedObjectsConfigUseCase f49800a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LightUpRepository f49801b;

    @Inject
    public GetLightUpVideoUseCase(RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase, LightUpRepository lightUpRepository) {
        requireCachedConnectedObjectsConfigUseCase.getClass();
        lightUpRepository.getClass();
        this.f49800a = requireCachedConnectedObjectsConfigUseCase;
        this.f49801b = lightUpRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetLightUpVideoUseCase$run$1 getLightUpVideoUseCase$run$1;
        LightUpRepository lightUpRepository;
        if (continuationImpl instanceof GetLightUpVideoUseCase$run$1) {
            getLightUpVideoUseCase$run$1 = (GetLightUpVideoUseCase$run$1) continuationImpl;
            int i2 = getLightUpVideoUseCase$run$1.f49804e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getLightUpVideoUseCase$run$1.f49804e = i2 - Integer.MIN_VALUE;
            } else {
                getLightUpVideoUseCase$run$1 = new GetLightUpVideoUseCase$run$1(this, continuationImpl);
            }
        } else {
            getLightUpVideoUseCase$run$1 = new GetLightUpVideoUseCase$run$1(this, continuationImpl);
        }
        Object obj = getLightUpVideoUseCase$run$1.f49803c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getLightUpVideoUseCase$run$1.f49804e;
        if (i3 == 0) {
            ResultKt.b(obj);
            LightUpRepository lightUpRepository2 = this.f49801b;
            getLightUpVideoUseCase$run$1.f49802b = lightUpRepository2;
            getLightUpVideoUseCase$run$1.f49804e = 1;
            Object objA = this.f49800a.a(getLightUpVideoUseCase$run$1);
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
        lightUpRepository = getLightUpVideoUseCase$run$1.f49802b;
        ResultKt.b(obj);
        getLightUpVideoUseCase$run$1.f49802b = null;
        getLightUpVideoUseCase$run$1.f49804e = 2;
        Video videoD = lightUpRepository.d((ConnectedObjectsConfig) obj);
        return videoD == coroutineSingletons ? coroutineSingletons : videoD;
    }
}
