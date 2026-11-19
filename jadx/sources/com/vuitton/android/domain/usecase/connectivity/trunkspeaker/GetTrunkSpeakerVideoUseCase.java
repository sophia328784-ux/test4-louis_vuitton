package com.vuitton.android.domain.usecase.connectivity.trunkspeaker;

import com.vuitton.android.domain.repository.TrunkSpeakerRepository;
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
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerVideoUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;", "requireCachedConnectedObjectsConfigUseCase", "Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;", "trunkSpeakerRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetTrunkSpeakerVideoUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedConnectedObjectsConfigUseCase f49822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TrunkSpeakerRepository f49823b;

    @Inject
    public GetTrunkSpeakerVideoUseCase(RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase, TrunkSpeakerRepository trunkSpeakerRepository) {
        requireCachedConnectedObjectsConfigUseCase.getClass();
        trunkSpeakerRepository.getClass();
        this.f49822a = requireCachedConnectedObjectsConfigUseCase;
        this.f49823b = trunkSpeakerRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetTrunkSpeakerVideoUseCase$run$1 getTrunkSpeakerVideoUseCase$run$1;
        TrunkSpeakerRepository trunkSpeakerRepository;
        if (continuationImpl instanceof GetTrunkSpeakerVideoUseCase$run$1) {
            getTrunkSpeakerVideoUseCase$run$1 = (GetTrunkSpeakerVideoUseCase$run$1) continuationImpl;
            int i2 = getTrunkSpeakerVideoUseCase$run$1.f49826e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getTrunkSpeakerVideoUseCase$run$1.f49826e = i2 - Integer.MIN_VALUE;
            } else {
                getTrunkSpeakerVideoUseCase$run$1 = new GetTrunkSpeakerVideoUseCase$run$1(this, continuationImpl);
            }
        } else {
            getTrunkSpeakerVideoUseCase$run$1 = new GetTrunkSpeakerVideoUseCase$run$1(this, continuationImpl);
        }
        Object obj = getTrunkSpeakerVideoUseCase$run$1.f49825c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getTrunkSpeakerVideoUseCase$run$1.f49826e;
        if (i3 == 0) {
            ResultKt.b(obj);
            TrunkSpeakerRepository trunkSpeakerRepository2 = this.f49823b;
            getTrunkSpeakerVideoUseCase$run$1.f49824b = trunkSpeakerRepository2;
            getTrunkSpeakerVideoUseCase$run$1.f49826e = 1;
            Object objA = this.f49822a.a(getTrunkSpeakerVideoUseCase$run$1);
            if (objA != coroutineSingletons) {
                obj = objA;
                trunkSpeakerRepository = trunkSpeakerRepository2;
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
        trunkSpeakerRepository = getTrunkSpeakerVideoUseCase$run$1.f49824b;
        ResultKt.b(obj);
        getTrunkSpeakerVideoUseCase$run$1.f49824b = null;
        getTrunkSpeakerVideoUseCase$run$1.f49826e = 2;
        Video videoC = trunkSpeakerRepository.c((ConnectedObjectsConfig) obj);
        return videoC == coroutineSingletons ? coroutineSingletons : videoC;
    }
}
