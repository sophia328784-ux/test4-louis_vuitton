package com.vuitton.android.domain.usecase.connectivity.earphone;

import com.vuitton.android.domain.repository.EarphoneRepository;
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
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneVideoUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;", "requireCachedConnectedObjectsConfigUseCase", "Lcom/vuitton/android/domain/repository/EarphoneRepository;", "earphoneRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/EarphoneRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetEarphoneVideoUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireCachedConnectedObjectsConfigUseCase f49772a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EarphoneRepository f49773b;

    @Inject
    public GetEarphoneVideoUseCase(RequireCachedConnectedObjectsConfigUseCase requireCachedConnectedObjectsConfigUseCase, EarphoneRepository earphoneRepository) {
        requireCachedConnectedObjectsConfigUseCase.getClass();
        earphoneRepository.getClass();
        this.f49772a = requireCachedConnectedObjectsConfigUseCase;
        this.f49773b = earphoneRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        GetEarphoneVideoUseCase$run$1 getEarphoneVideoUseCase$run$1;
        EarphoneRepository earphoneRepository;
        if (continuationImpl instanceof GetEarphoneVideoUseCase$run$1) {
            getEarphoneVideoUseCase$run$1 = (GetEarphoneVideoUseCase$run$1) continuationImpl;
            int i2 = getEarphoneVideoUseCase$run$1.f49776e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getEarphoneVideoUseCase$run$1.f49776e = i2 - Integer.MIN_VALUE;
            } else {
                getEarphoneVideoUseCase$run$1 = new GetEarphoneVideoUseCase$run$1(this, continuationImpl);
            }
        } else {
            getEarphoneVideoUseCase$run$1 = new GetEarphoneVideoUseCase$run$1(this, continuationImpl);
        }
        Object obj = getEarphoneVideoUseCase$run$1.f49775c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getEarphoneVideoUseCase$run$1.f49776e;
        if (i3 == 0) {
            ResultKt.b(obj);
            EarphoneRepository earphoneRepository2 = this.f49773b;
            getEarphoneVideoUseCase$run$1.f49774b = earphoneRepository2;
            getEarphoneVideoUseCase$run$1.f49776e = 1;
            Object objA = this.f49772a.a(getEarphoneVideoUseCase$run$1);
            if (objA != coroutineSingletons) {
                obj = objA;
                earphoneRepository = earphoneRepository2;
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
        earphoneRepository = getEarphoneVideoUseCase$run$1.f49774b;
        ResultKt.b(obj);
        getEarphoneVideoUseCase$run$1.f49774b = null;
        getEarphoneVideoUseCase$run$1.f49776e = 2;
        Video videoA = earphoneRepository.a((ConnectedObjectsConfig) obj);
        return videoA == coroutineSingletons ? coroutineSingletons : videoA;
    }
}
