package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.publication.AudioGuideApi;
import com.vuitton.android.data.datasource.audioguide.AudioGuideLocalDataSource;
import com.vuitton.android.data.dto.audioguide.AudioGuideDto;
import com.vuitton.android.data.dto.audioguide.TrackDetailDto;
import com.vuitton.android.data.dto.audioguide.mapper.AudioGuideMapperKt;
import com.vuitton.android.data.dto.audioguide.mapper.TrackDetailMapperKt;
import com.vuitton.android.domain.repository.AudioGuideRepository;
import com.vuitton.foundation.model.domain.model.audioguide.AudioGuideAccessData;
import com.vuitton.foundation.model.domain.model.audioguide.TrackDetail;
import com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy;
import defpackage.md;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/repository/AudioGuideRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AudioGuideRepository;", "Lcom/vuitton/android/data/api/bff/publication/AudioGuideApi;", "audioGuideApi", "Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;", "audioGuideLocalDataSource", "<init>", "(Lcom/vuitton/android/data/api/bff/publication/AudioGuideApi;Lcom/vuitton/android/data/datasource/audioguide/AudioGuideLocalDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AudioGuideRepositoryImpl implements AudioGuideRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AudioGuideApi f47307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AudioGuideLocalDataSource f47308b;

    @Inject
    public AudioGuideRepositoryImpl(AudioGuideApi audioGuideApi, AudioGuideLocalDataSource audioGuideLocalDataSource) {
        audioGuideApi.getClass();
        audioGuideLocalDataSource.getClass();
        this.f47307a = audioGuideApi;
        this.f47308b = audioGuideLocalDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object i(AudioGuideRepositoryImpl audioGuideRepositoryImpl, String str, String str2, String str3, ContinuationImpl continuationImpl) {
        AudioGuideRepositoryImpl$getAndCacheTrackDetail$1 audioGuideRepositoryImpl$getAndCacheTrackDetail$1;
        Object failure;
        if (continuationImpl instanceof AudioGuideRepositoryImpl$getAndCacheTrackDetail$1) {
            audioGuideRepositoryImpl$getAndCacheTrackDetail$1 = (AudioGuideRepositoryImpl$getAndCacheTrackDetail$1) continuationImpl;
            int i2 = audioGuideRepositoryImpl$getAndCacheTrackDetail$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                audioGuideRepositoryImpl$getAndCacheTrackDetail$1.d = i2 - Integer.MIN_VALUE;
            } else {
                audioGuideRepositoryImpl$getAndCacheTrackDetail$1 = new AudioGuideRepositoryImpl$getAndCacheTrackDetail$1(audioGuideRepositoryImpl, continuationImpl);
            }
        } else {
            audioGuideRepositoryImpl$getAndCacheTrackDetail$1 = new AudioGuideRepositoryImpl$getAndCacheTrackDetail$1(audioGuideRepositoryImpl, continuationImpl);
        }
        Object trackDetail = audioGuideRepositoryImpl$getAndCacheTrackDetail$1.f47313b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = audioGuideRepositoryImpl$getAndCacheTrackDetail$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(trackDetail);
                Result.Companion companion = Result.INSTANCE;
                AudioGuideApi audioGuideApi = audioGuideRepositoryImpl.f47307a;
                audioGuideRepositoryImpl$getAndCacheTrackDetail$1.d = 1;
                trackDetail = audioGuideApi.getTrackDetail(str, str2, str3, audioGuideRepositoryImpl$getAndCacheTrackDetail$1);
                if (trackDetail == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(trackDetail);
            }
            TrackDetail trackDetailA = TrackDetailMapperKt.a((TrackDetailDto) trackDetail);
            AudioGuideLocalDataSource audioGuideLocalDataSource = audioGuideRepositoryImpl.f47308b;
            audioGuideLocalDataSource.getClass();
            audioGuideLocalDataSource.f43770e.add(trackDetailA);
            failure = new Result(trackDetailA);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AudioGuideRepository
    public final Object a(String str, String str2, ContinuationImpl continuationImpl) {
        AudioGuideRepositoryImpl$getAudioGuide$1 audioGuideRepositoryImpl$getAudioGuide$1;
        Object failure;
        if (continuationImpl instanceof AudioGuideRepositoryImpl$getAudioGuide$1) {
            audioGuideRepositoryImpl$getAudioGuide$1 = (AudioGuideRepositoryImpl$getAudioGuide$1) continuationImpl;
            int i2 = audioGuideRepositoryImpl$getAudioGuide$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                audioGuideRepositoryImpl$getAudioGuide$1.d = i2 - Integer.MIN_VALUE;
            } else {
                audioGuideRepositoryImpl$getAudioGuide$1 = new AudioGuideRepositoryImpl$getAudioGuide$1(this, continuationImpl);
            }
        } else {
            audioGuideRepositoryImpl$getAudioGuide$1 = new AudioGuideRepositoryImpl$getAudioGuide$1(this, continuationImpl);
        }
        Object audioGuide = audioGuideRepositoryImpl$getAudioGuide$1.f47315b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = audioGuideRepositoryImpl$getAudioGuide$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(audioGuide);
                Result.Companion companion = Result.INSTANCE;
                AudioGuideApi audioGuideApi = this.f47307a;
                audioGuideRepositoryImpl$getAudioGuide$1.d = 1;
                audioGuide = audioGuideApi.getAudioGuide(str, str2, audioGuideRepositoryImpl$getAudioGuide$1);
                if (audioGuide == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(audioGuide);
            }
            failure = new Result(AudioGuideMapperKt.a((AudioGuideDto) audioGuide));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AudioGuideRepository
    public final Object b(ContinuationImpl continuationImpl) {
        AudioGuideRepositoryImpl$getAccessData$1 audioGuideRepositoryImpl$getAccessData$1;
        if (continuationImpl instanceof AudioGuideRepositoryImpl$getAccessData$1) {
            audioGuideRepositoryImpl$getAccessData$1 = (AudioGuideRepositoryImpl$getAccessData$1) continuationImpl;
            int i2 = audioGuideRepositoryImpl$getAccessData$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                audioGuideRepositoryImpl$getAccessData$1.d = i2 - Integer.MIN_VALUE;
            } else {
                audioGuideRepositoryImpl$getAccessData$1 = new AudioGuideRepositoryImpl$getAccessData$1(this, continuationImpl);
            }
        } else {
            audioGuideRepositoryImpl$getAccessData$1 = new AudioGuideRepositoryImpl$getAccessData$1(this, continuationImpl);
        }
        Object obj = audioGuideRepositoryImpl$getAccessData$1.f47311b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = audioGuideRepositoryImpl$getAccessData$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            audioGuideRepositoryImpl$getAccessData$1.d = 1;
            Object objB = this.f47308b.b(audioGuideRepositoryImpl$getAccessData$1);
            return objB == coroutineSingletons ? coroutineSingletons : objB;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    @Override // com.vuitton.android.domain.repository.AudioGuideRepository
    public final ResultStrategyLazy c(String str, String str2, String str3) {
        return new ResultStrategyLazy(new AudioGuideRepositoryImpl$getTrackDetail$2(this, str, str2, str3, null), new AudioGuideRepositoryImpl$getTrackDetail$3(this, str2, null));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AudioGuideRepository
    public final Object d(AudioGuideAccessData audioGuideAccessData, ContinuationImpl continuationImpl) {
        AudioGuideRepositoryImpl$saveAccessData$1 audioGuideRepositoryImpl$saveAccessData$1;
        if (continuationImpl instanceof AudioGuideRepositoryImpl$saveAccessData$1) {
            audioGuideRepositoryImpl$saveAccessData$1 = (AudioGuideRepositoryImpl$saveAccessData$1) continuationImpl;
            int i2 = audioGuideRepositoryImpl$saveAccessData$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                audioGuideRepositoryImpl$saveAccessData$1.d = i2 - Integer.MIN_VALUE;
            } else {
                audioGuideRepositoryImpl$saveAccessData$1 = new AudioGuideRepositoryImpl$saveAccessData$1(this, continuationImpl);
            }
        } else {
            audioGuideRepositoryImpl$saveAccessData$1 = new AudioGuideRepositoryImpl$saveAccessData$1(this, continuationImpl);
        }
        Object obj = audioGuideRepositoryImpl$saveAccessData$1.f47325b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = audioGuideRepositoryImpl$saveAccessData$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            audioGuideRepositoryImpl$saveAccessData$1.d = 1;
            Object objD = this.f47308b.d(audioGuideAccessData, audioGuideRepositoryImpl$saveAccessData$1);
            return objD == coroutineSingletons ? coroutineSingletons : objD;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AudioGuideRepository
    public final Object e(String str, ContinuationImpl continuationImpl) {
        AudioGuideRepositoryImpl$saveCompletedTrack$1 audioGuideRepositoryImpl$saveCompletedTrack$1;
        if (continuationImpl instanceof AudioGuideRepositoryImpl$saveCompletedTrack$1) {
            audioGuideRepositoryImpl$saveCompletedTrack$1 = (AudioGuideRepositoryImpl$saveCompletedTrack$1) continuationImpl;
            int i2 = audioGuideRepositoryImpl$saveCompletedTrack$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                audioGuideRepositoryImpl$saveCompletedTrack$1.d = i2 - Integer.MIN_VALUE;
            } else {
                audioGuideRepositoryImpl$saveCompletedTrack$1 = new AudioGuideRepositoryImpl$saveCompletedTrack$1(this, continuationImpl);
            }
        } else {
            audioGuideRepositoryImpl$saveCompletedTrack$1 = new AudioGuideRepositoryImpl$saveCompletedTrack$1(this, continuationImpl);
        }
        Object obj = audioGuideRepositoryImpl$saveCompletedTrack$1.f47327b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = audioGuideRepositoryImpl$saveCompletedTrack$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            audioGuideRepositoryImpl$saveCompletedTrack$1.d = 1;
            Object objE = this.f47308b.e(str, audioGuideRepositoryImpl$saveCompletedTrack$1);
            return objE == coroutineSingletons ? coroutineSingletons : objE;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    @Override // com.vuitton.android.domain.repository.AudioGuideRepository
    public final Object f() throws Throwable {
        Object failure;
        try {
            Result.Companion companion = Result.INSTANCE;
            AudioGuideLocalDataSource audioGuideLocalDataSource = this.f47308b;
            audioGuideLocalDataSource.getClass();
            audioGuideLocalDataSource.f43770e = new ArrayList();
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AudioGuideRepository
    public final Object g(ContinuationImpl continuationImpl) {
        AudioGuideRepositoryImpl$getCompletedTracks$1 audioGuideRepositoryImpl$getCompletedTracks$1;
        if (continuationImpl instanceof AudioGuideRepositoryImpl$getCompletedTracks$1) {
            audioGuideRepositoryImpl$getCompletedTracks$1 = (AudioGuideRepositoryImpl$getCompletedTracks$1) continuationImpl;
            int i2 = audioGuideRepositoryImpl$getCompletedTracks$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                audioGuideRepositoryImpl$getCompletedTracks$1.d = i2 - Integer.MIN_VALUE;
            } else {
                audioGuideRepositoryImpl$getCompletedTracks$1 = new AudioGuideRepositoryImpl$getCompletedTracks$1(this, continuationImpl);
            }
        } else {
            audioGuideRepositoryImpl$getCompletedTracks$1 = new AudioGuideRepositoryImpl$getCompletedTracks$1(this, continuationImpl);
        }
        Object obj = audioGuideRepositoryImpl$getCompletedTracks$1.f47317b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = audioGuideRepositoryImpl$getCompletedTracks$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            audioGuideRepositoryImpl$getCompletedTracks$1.d = 1;
            Object objC = this.f47308b.c(audioGuideRepositoryImpl$getCompletedTracks$1);
            return objC == coroutineSingletons ? coroutineSingletons : objC;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AudioGuideRepository
    public final Object h(ContinuationImpl continuationImpl) {
        AudioGuideRepositoryImpl$clearAccessData$1 audioGuideRepositoryImpl$clearAccessData$1;
        if (continuationImpl instanceof AudioGuideRepositoryImpl$clearAccessData$1) {
            audioGuideRepositoryImpl$clearAccessData$1 = (AudioGuideRepositoryImpl$clearAccessData$1) continuationImpl;
            int i2 = audioGuideRepositoryImpl$clearAccessData$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                audioGuideRepositoryImpl$clearAccessData$1.d = i2 - Integer.MIN_VALUE;
            } else {
                audioGuideRepositoryImpl$clearAccessData$1 = new AudioGuideRepositoryImpl$clearAccessData$1(this, continuationImpl);
            }
        } else {
            audioGuideRepositoryImpl$clearAccessData$1 = new AudioGuideRepositoryImpl$clearAccessData$1(this, continuationImpl);
        }
        Object obj = audioGuideRepositoryImpl$clearAccessData$1.f47309b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = audioGuideRepositoryImpl$clearAccessData$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            audioGuideRepositoryImpl$clearAccessData$1.d = 1;
            Object objA = this.f47308b.a(audioGuideRepositoryImpl$clearAccessData$1);
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
