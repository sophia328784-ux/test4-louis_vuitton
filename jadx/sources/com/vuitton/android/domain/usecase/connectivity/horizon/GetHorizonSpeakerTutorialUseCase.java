package com.vuitton.android.domain.usecase.connectivity.horizon;

import com.vuitton.android.domain.repository.HorizonSpeakerRepository;
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
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerTutorialUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;", "requireCachedConnectedObjectsConfigUseCase", "Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;", "horizonSpeakerRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetHorizonSpeakerTutorialUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedConnectedObjectsConfigUseCase f49782a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HorizonSpeakerRepository f49783b;

    @Inject
    public GetHorizonSpeakerTutorialUseCase(RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase, HorizonSpeakerRepository horizonSpeakerRepository) {
        requireCachedConnectedObjectsConfigUseCase.getClass();
        horizonSpeakerRepository.getClass();
        this.f49782a = requireCachedConnectedObjectsConfigUseCase;
        this.f49783b = horizonSpeakerRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetHorizonSpeakerTutorialUseCase$run$1 getHorizonSpeakerTutorialUseCase$run$1;
        HorizonSpeakerRepository horizonSpeakerRepository;
        if (continuationImpl instanceof GetHorizonSpeakerTutorialUseCase$run$1) {
            getHorizonSpeakerTutorialUseCase$run$1 = (GetHorizonSpeakerTutorialUseCase$run$1) continuationImpl;
            int i2 = getHorizonSpeakerTutorialUseCase$run$1.f49786e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getHorizonSpeakerTutorialUseCase$run$1.f49786e = i2 - Integer.MIN_VALUE;
            } else {
                getHorizonSpeakerTutorialUseCase$run$1 = new GetHorizonSpeakerTutorialUseCase$run$1(this, continuationImpl);
            }
        } else {
            getHorizonSpeakerTutorialUseCase$run$1 = new GetHorizonSpeakerTutorialUseCase$run$1(this, continuationImpl);
        }
        Object obj = getHorizonSpeakerTutorialUseCase$run$1.f49785c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getHorizonSpeakerTutorialUseCase$run$1.f49786e;
        if (i3 == 0) {
            ResultKt.b(obj);
            HorizonSpeakerRepository horizonSpeakerRepository2 = this.f49783b;
            getHorizonSpeakerTutorialUseCase$run$1.f49784b = horizonSpeakerRepository2;
            getHorizonSpeakerTutorialUseCase$run$1.f49786e = 1;
            Object objA = this.f49782a.a(getHorizonSpeakerTutorialUseCase$run$1);
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
        horizonSpeakerRepository = getHorizonSpeakerTutorialUseCase$run$1.f49784b;
        ResultKt.b(obj);
        getHorizonSpeakerTutorialUseCase$run$1.f49784b = null;
        getHorizonSpeakerTutorialUseCase$run$1.f49786e = 2;
        List listF = horizonSpeakerRepository.f((ConnectedObjectsConfig) obj);
        return listF == coroutineSingletons ? coroutineSingletons : listF;
    }
}
