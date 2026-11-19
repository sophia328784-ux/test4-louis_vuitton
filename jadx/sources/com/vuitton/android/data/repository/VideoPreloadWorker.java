package com.vuitton.android.data.repository;

import android.content.Context;
import android.net.Uri;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.datasource.cache.CacheWriter;
import androidx.work.CoroutineWorker;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import dagger.assisted.Assisted;
import dagger.assisted.AssistedInject;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB'\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/repository/VideoPreloadWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroidx/work/WorkerParameters;", "workerParameters", "Landroidx/media3/datasource/cache/CacheDataSource$Factory;", "cacheDataSourceFactory", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Landroidx/media3/datasource/cache/CacheDataSource$Factory;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class VideoPreloadWorker extends CoroutineWorker {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Companion f48167h = new Companion(null);
    public final CacheDataSource g;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/repository/VideoPreloadWorker$Companion;", "", "", "VIDEO_URL", "Ljava/lang/String;", "", "DOWNLOAD_COMPLETED", "I", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @AssistedInject
    public VideoPreloadWorker(@Assisted Context context, @Assisted WorkerParameters workerParameters, CacheDataSource.Factory factory) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
        this.g = factory != null ? factory.b() : null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.work.CoroutineWorker
    public final Object c(ContinuationImpl continuationImpl) {
        VideoPreloadWorker$doWork$1 videoPreloadWorker$doWork$1;
        Object failure;
        if (continuationImpl instanceof VideoPreloadWorker$doWork$1) {
            videoPreloadWorker$doWork$1 = (VideoPreloadWorker$doWork$1) continuationImpl;
            int i2 = videoPreloadWorker$doWork$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                videoPreloadWorker$doWork$1.d = i2 - Integer.MIN_VALUE;
            } else {
                videoPreloadWorker$doWork$1 = new VideoPreloadWorker$doWork$1(this, continuationImpl);
            }
        } else {
            videoPreloadWorker$doWork$1 = new VideoPreloadWorker$doWork$1(this, continuationImpl);
        }
        Object objD = videoPreloadWorker$doWork$1.f48168b;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = videoPreloadWorker$doWork$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objD);
                Result.Companion companion = Result.INSTANCE;
                Data data = this.f20257b.f20289b;
                data.getClass();
                Object obj2 = data.f20245a.get("video_url");
                String str = obj2 instanceof String ? (String) obj2 : null;
                videoPreloadWorker$doWork$1.d = 1;
                objD = d(str, videoPreloadWorker$doWork$1);
                if (objD == obj) {
                    return obj;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objD);
            }
            failure = (ListenableWorker.Result) objD;
            Result.Companion companion2 = Result.INSTANCE;
        } catch (Throwable th) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        return Result.a(failure) == null ? failure : new ListenableWorker.Result.Failure();
    }

    public final Object d(String str, Continuation continuation) {
        Object failure;
        if (str == null) {
            str = "";
        }
        DataSpec dataSpec = new DataSpec(Uri.parse(str));
        final SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.b(continuation));
        try {
            Result.Companion companion = Result.INSTANCE;
            CacheDataSource cacheDataSource = this.g;
            if (cacheDataSource == null) {
                safeContinuation.resumeWith(new ListenableWorker.Result.Failure());
            } else {
                new CacheWriter(cacheDataSource, dataSpec, null, new CacheWriter.ProgressListener() { // from class: com.vuitton.android.data.repository.VideoPreloadWorker$suspendCacheVideo$2$1$1
                    @Override // androidx.media3.datasource.cache.CacheWriter.ProgressListener
                    public final void a(long j2, long j3) {
                        if ((j3 * 100.0d) / j2 >= 100.0d) {
                            Result.Companion companion2 = Result.INSTANCE;
                            safeContinuation.resumeWith(new ListenableWorker.Result.Success());
                        }
                    }
                }).a();
                failure = Unit.f71739a;
                Throwable thA = Result.a(failure);
                if (thA != null) {
                    thA.printStackTrace();
                    safeContinuation.resumeWith(new ListenableWorker.Result.Failure());
                }
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Object objA = safeContinuation.a();
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        return objA;
    }
}
