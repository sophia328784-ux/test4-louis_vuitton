package com.vuitton.android.domain.usecase.video;

import com.vuitton.android.domain.repository.VideoRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;", "", "Lcom/vuitton/android/domain/repository/VideoRepository;", "videoRepository", "<init>", "(Lcom/vuitton/android/domain/repository/VideoRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetLiveVideoUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final VideoRepository f50425a;

    @Inject
    public GetLiveVideoUseCase(VideoRepository videoRepository) {
        videoRepository.getClass();
        this.f50425a = videoRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        GetLiveVideoUseCase$run$1 getLiveVideoUseCase$run$1;
        if (continuationImpl instanceof GetLiveVideoUseCase$run$1) {
            getLiveVideoUseCase$run$1 = (GetLiveVideoUseCase$run$1) continuationImpl;
            int i2 = getLiveVideoUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getLiveVideoUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getLiveVideoUseCase$run$1 = new GetLiveVideoUseCase$run$1(this, continuationImpl);
            }
        } else {
            getLiveVideoUseCase$run$1 = new GetLiveVideoUseCase$run$1(this, continuationImpl);
        }
        Object obj = getLiveVideoUseCase$run$1.f50426b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getLiveVideoUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            getLiveVideoUseCase$run$1.d = 1;
            Object objA = this.f50425a.a(str, getLiveVideoUseCase$run$1);
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
