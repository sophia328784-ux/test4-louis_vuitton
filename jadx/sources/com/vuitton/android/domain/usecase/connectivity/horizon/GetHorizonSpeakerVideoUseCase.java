package com.vuitton.android.domain.usecase.connectivity.horizon;

import com.vuitton.android.domain.repository.HorizonSpeakerRepository;
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
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerVideoUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;", "requireCachedConnectedObjectsConfigUseCase", "Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;", "horizonSpeakerRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetHorizonSpeakerVideoUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedConnectedObjectsConfigUseCase f49787a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HorizonSpeakerRepository f49788b;

    @Inject
    public GetHorizonSpeakerVideoUseCase(RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase, HorizonSpeakerRepository horizonSpeakerRepository) {
        requireCachedConnectedObjectsConfigUseCase.getClass();
        horizonSpeakerRepository.getClass();
        this.f49787a = requireCachedConnectedObjectsConfigUseCase;
        this.f49788b = horizonSpeakerRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetHorizonSpeakerVideoUseCase$run$1 getHorizonSpeakerVideoUseCase$run$1;
        HorizonSpeakerRepository horizonSpeakerRepository;
        if (continuationImpl instanceof GetHorizonSpeakerVideoUseCase$run$1) {
            getHorizonSpeakerVideoUseCase$run$1 = (GetHorizonSpeakerVideoUseCase$run$1) continuationImpl;
            int i2 = getHorizonSpeakerVideoUseCase$run$1.f49791e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getHorizonSpeakerVideoUseCase$run$1.f49791e = i2 - Integer.MIN_VALUE;
            } else {
                getHorizonSpeakerVideoUseCase$run$1 = new GetHorizonSpeakerVideoUseCase$run$1(this, continuationImpl);
            }
        } else {
            getHorizonSpeakerVideoUseCase$run$1 = new GetHorizonSpeakerVideoUseCase$run$1(this, continuationImpl);
        }
        Object obj = getHorizonSpeakerVideoUseCase$run$1.f49790c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getHorizonSpeakerVideoUseCase$run$1.f49791e;
        if (i3 == 0) {
            ResultKt.b(obj);
            HorizonSpeakerRepository horizonSpeakerRepository2 = this.f49788b;
            getHorizonSpeakerVideoUseCase$run$1.f49789b = horizonSpeakerRepository2;
            getHorizonSpeakerVideoUseCase$run$1.f49791e = 1;
            Object objA = this.f49787a.a(getHorizonSpeakerVideoUseCase$run$1);
            if (objA != coroutineSingletons) {
                obj = objA;
                horizonSpeakerRepository = horizonSpeakerRepository2;
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
        horizonSpeakerRepository = getHorizonSpeakerVideoUseCase$run$1.f49789b;
        ResultKt.b(obj);
        getHorizonSpeakerVideoUseCase$run$1.f49789b = null;
        getHorizonSpeakerVideoUseCase$run$1.f49791e = 2;
        Video videoD = horizonSpeakerRepository.d((ConnectedObjectsConfig) obj);
        return videoD == coroutineSingletons ? coroutineSingletons : videoD;
    }
}
