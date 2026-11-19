package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.publication.VideoApi;
import com.vuitton.android.data.dto.common.AssetVideoDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.domain.repository.VideoRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.video.VideoId;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/repository/VideoRepositoryImpl;", "Lcom/vuitton/android/domain/repository/VideoRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/data/api/bff/publication/VideoApi;", "videoApi", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/publication/VideoApi;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class VideoRepositoryImpl implements VideoRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f48171a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final VideoApi f48172b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/repository/VideoRepositoryImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public VideoRepositoryImpl(Logger logger, VideoApi videoApi) {
        logger.getClass();
        videoApi.getClass();
        this.f48171a = logger;
        this.f48172b = videoApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.VideoRepository
    public final Object a(String str, ContinuationImpl continuationImpl) {
        VideoRepositoryImpl$getLiveVideo$1 videoRepositoryImpl$getLiveVideo$1;
        Object failure;
        if (continuationImpl instanceof VideoRepositoryImpl$getLiveVideo$1) {
            videoRepositoryImpl$getLiveVideo$1 = (VideoRepositoryImpl$getLiveVideo$1) continuationImpl;
            int i2 = videoRepositoryImpl$getLiveVideo$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                videoRepositoryImpl$getLiveVideo$1.d = i2 - Integer.MIN_VALUE;
            } else {
                videoRepositoryImpl$getLiveVideo$1 = new VideoRepositoryImpl$getLiveVideo$1(this, continuationImpl);
            }
        } else {
            videoRepositoryImpl$getLiveVideo$1 = new VideoRepositoryImpl$getLiveVideo$1(this, continuationImpl);
        }
        Object video = videoRepositoryImpl$getLiveVideo$1.f48173b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = videoRepositoryImpl$getLiveVideo$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(video);
                Result.Companion companion = Result.INSTANCE;
                VideoApi videoApi = this.f48172b;
                VideoId.Companion companion2 = VideoId.f68280a;
                videoRepositoryImpl$getLiveVideo$1.d = 1;
                video = videoApi.getVideo(str, null, null, videoRepositoryImpl$getLiveVideo$1);
                if (video == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(video);
            }
            Object objC = AssetMapperKt.c((AssetVideoDto) video);
            ResultKt.b(objC);
            failure = new Result((AssetVideo) objC);
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        Object obj = ((Result) failure).f71708b;
        if (Result.a(obj) != null) {
            this.f48171a.d("VideoRepositoryImpl", "Unable to retrieve the live video", null);
        }
        return obj;
    }
}
