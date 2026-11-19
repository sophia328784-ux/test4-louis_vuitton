package com.vuitton.android.data.repository;

import androidx.work.Data;
import androidx.work.ExistingWorkPolicy;
import androidx.work.ListenableWorker;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.data.api.bff.publication.SpotlightApi;
import com.vuitton.android.data.dto.spotlight.SpotlightDto;
import com.vuitton.android.data.dto.spotlight.mapper.SpotlightMapperKt;
import com.vuitton.android.domain.repository.SpotlightRepository;
import defpackage.md;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.random.Random;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;", "Lcom/vuitton/android/domain/repository/SpotlightRepository;", "Lcom/vuitton/android/data/api/bff/publication/SpotlightApi;", "spotlightApi", "Landroidx/work/WorkManager;", "workManager", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutinesDispatchers", "<init>", "(Lcom/vuitton/android/data/api/bff/publication/SpotlightApi;Landroidx/work/WorkManager;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SpotlightRepositoryImpl implements SpotlightRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SpotlightApi f48026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WorkManager f48027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoroutineDispatchers f48028c;

    /* JADX INFO: loaded from: classes.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48029a;

        static {
            int[] iArr = new int[WorkInfo.State.values().length];
            try {
                iArr[WorkInfo.State.ENQUEUED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkInfo.State.RUNNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkInfo.State.SUCCEEDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkInfo.State.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkInfo.State.BLOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[WorkInfo.State.CANCELLED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f48029a = iArr;
        }
    }

    @Inject
    public SpotlightRepositoryImpl(SpotlightApi spotlightApi, WorkManager workManager, CoroutineDispatchers coroutineDispatchers) {
        spotlightApi.getClass();
        workManager.getClass();
        coroutineDispatchers.getClass();
        this.f48026a = spotlightApi;
        this.f48027b = workManager;
        this.f48028c = coroutineDispatchers;
    }

    @Override // com.vuitton.android.domain.repository.SpotlightRepository
    public final Flow a(UUID uuid) {
        return FlowKt.t(new SpotlightRepositoryImpl$listenPreCache$1(this, uuid, null));
    }

    @Override // com.vuitton.android.domain.repository.SpotlightRepository
    public final UUID b(String str) {
        VideoPreloadWorker.f48167h.getClass();
        str.getClass();
        Data.Builder builder = new Data.Builder();
        builder.f20246a.put("video_url", str);
        Data dataA = builder.a();
        OneTimeWorkRequest.Builder builder2 = new OneTimeWorkRequest.Builder((Class<? extends ListenableWorker>) VideoPreloadWorker.class);
        builder2.f20285b.f20513e = dataA;
        OneTimeWorkRequest oneTimeWorkRequest = (OneTimeWorkRequest) builder2.a();
        Random.INSTANCE.getClass();
        String str2 = "VideoPreloadWorker " + Random.f71941c.d() + " " + str;
        ExistingWorkPolicy existingWorkPolicy = ExistingWorkPolicy.KEEP;
        WorkManager workManager = this.f48027b;
        workManager.getClass();
        existingWorkPolicy.getClass();
        workManager.b(str2, existingWorkPolicy, CollectionsKt.O(oneTimeWorkRequest));
        Result.Companion companion = Result.INSTANCE;
        return oneTimeWorkRequest.f20281a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.SpotlightRepository
    public final Object c(String str, ContinuationImpl continuationImpl) {
        SpotlightRepositoryImpl$getSpotlight$1 spotlightRepositoryImpl$getSpotlight$1;
        Object failure;
        if (continuationImpl instanceof SpotlightRepositoryImpl$getSpotlight$1) {
            spotlightRepositoryImpl$getSpotlight$1 = (SpotlightRepositoryImpl$getSpotlight$1) continuationImpl;
            int i2 = spotlightRepositoryImpl$getSpotlight$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                spotlightRepositoryImpl$getSpotlight$1.d = i2 - Integer.MIN_VALUE;
            } else {
                spotlightRepositoryImpl$getSpotlight$1 = new SpotlightRepositoryImpl$getSpotlight$1(this, continuationImpl);
            }
        } else {
            spotlightRepositoryImpl$getSpotlight$1 = new SpotlightRepositoryImpl$getSpotlight$1(this, continuationImpl);
        }
        Object spotlight = spotlightRepositoryImpl$getSpotlight$1.f48030b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = spotlightRepositoryImpl$getSpotlight$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(spotlight);
                Result.Companion companion = Result.INSTANCE;
                SpotlightApi spotlightApi = this.f48026a;
                spotlightRepositoryImpl$getSpotlight$1.d = 1;
                spotlight = spotlightApi.getSpotlight(str, spotlightRepositoryImpl$getSpotlight$1);
                if (spotlight == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(spotlight);
            }
            failure = new Result(SpotlightMapperKt.a((SpotlightDto) spotlight));
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

    @Override // com.vuitton.android.domain.repository.SpotlightRepository
    public final Unit d(UUID uuid) {
        this.f48027b.a(uuid);
        Result.Companion companion = Result.INSTANCE;
        return Unit.f71739a;
    }
}
