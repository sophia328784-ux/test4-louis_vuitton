package com.vuitton.android.domain.usecase.connectivity.horizon;

import com.vuitton.android.domain.repository.HorizonSpeakerRepository;
import com.vuitton.android.domain.usecase.config.RequireCachedConnectedObjectsConfigUseCase;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerSkuListUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;", "requireCachedConnectedObjectsConfigUseCase", "Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;", "horizonSpeakerRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetHorizonSpeakerSkuListUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedConnectedObjectsConfigUseCase f49777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HorizonSpeakerRepository f49778b;

    @Inject
    public GetHorizonSpeakerSkuListUseCase(RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase, HorizonSpeakerRepository horizonSpeakerRepository) {
        requireCachedConnectedObjectsConfigUseCase.getClass();
        horizonSpeakerRepository.getClass();
        this.f49777a = requireCachedConnectedObjectsConfigUseCase;
        this.f49778b = horizonSpeakerRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetHorizonSpeakerSkuListUseCase$run$1 getHorizonSpeakerSkuListUseCase$run$1;
        HorizonSpeakerRepository horizonSpeakerRepository;
        if (continuationImpl instanceof GetHorizonSpeakerSkuListUseCase$run$1) {
            getHorizonSpeakerSkuListUseCase$run$1 = (GetHorizonSpeakerSkuListUseCase$run$1) continuationImpl;
            int i2 = getHorizonSpeakerSkuListUseCase$run$1.f49781e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getHorizonSpeakerSkuListUseCase$run$1.f49781e = i2 - Integer.MIN_VALUE;
            } else {
                getHorizonSpeakerSkuListUseCase$run$1 = new GetHorizonSpeakerSkuListUseCase$run$1(this, continuationImpl);
            }
        } else {
            getHorizonSpeakerSkuListUseCase$run$1 = new GetHorizonSpeakerSkuListUseCase$run$1(this, continuationImpl);
        }
        Object obj = getHorizonSpeakerSkuListUseCase$run$1.f49780c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getHorizonSpeakerSkuListUseCase$run$1.f49781e;
        if (i3 == 0) {
            ResultKt.b(obj);
            HorizonSpeakerRepository horizonSpeakerRepository2 = this.f49778b;
            getHorizonSpeakerSkuListUseCase$run$1.f49779b = horizonSpeakerRepository2;
            getHorizonSpeakerSkuListUseCase$run$1.f49781e = 1;
            Object objA = this.f49777a.a(getHorizonSpeakerSkuListUseCase$run$1);
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
        horizonSpeakerRepository = getHorizonSpeakerSkuListUseCase$run$1.f49779b;
        ResultKt.b(obj);
        getHorizonSpeakerSkuListUseCase$run$1.f49779b = null;
        getHorizonSpeakerSkuListUseCase$run$1.f49781e = 2;
        Object objC = horizonSpeakerRepository.c((ConnectedObjectsConfig) obj);
        return objC == coroutineSingletons ? coroutineSingletons : objC;
    }
}
