package com.sightcall.mediacapture.repo.di;

import android.content.ContentResolver;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraX;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.PreviewConfig;
import androidx.camera.core.impl.utils.ContextUtil;
import androidx.camera.core.impl.utils.InterruptedRuntimeException;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.lifecycle.LifecycleCameraProviderImpl;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.core.content.ContextCompat;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import com.sightcall.getmedia.MediaRepository;
import com.sightcall.mediacapture.di.MediaCaptureScope;
import com.sightcall.mediacapture.repo.MediaCaptureRepository;
import com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl;
import com.sightcall.mediacapture.repo.converter.VideoConverter;
import com.sightcall.mediacapture.repo.converter.VideoConverterImpl;
import dagger.Module;
import dagger.Provides;
import defpackage.fw;
import defpackage.l00;
import defpackage.no0;
import defpackage.w21;
import defpackage.yn0;
import java.io.File;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import javax.inject.Named;
import kotlin.Metadata;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007JD\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\t2\b\b\u0001\u0010\u0015\u001a\u00020\u000b2\b\b\u0001\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u000eH\u0007¨\u0006\u0018"}, d2 = {"Lcom/sightcall/mediacapture/repo/di/RepositoryModule;", "", "<init>", "()V", "getContentResolver", "Landroid/content/ContentResolver;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "providesExecutor", "Ljava/util/concurrent/Executor;", "getCacheDir", "Ljava/io/File;", "getStorageDir", "getVideoConverter", "Lcom/sightcall/mediacapture/repo/converter/VideoConverter;", "getMediaCaptureRepository", "Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;", "mediaRepository", "Lcom/sightcall/getmedia/MediaRepository;", "contentResolver", "executor", "cacheDir", "storageDir", "videoConverter", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Module
public final class RepositoryModule {
    @Provides
    @MediaCaptureScope
    @Named
    public final File getCacheDir(Context context) {
        context.getClass();
        File cacheDir = context.getCacheDir();
        cacheDir.getClass();
        return cacheDir;
    }

    @Provides
    @MediaCaptureScope
    public final ContentResolver getContentResolver(Context context) {
        context.getClass();
        ContentResolver contentResolver = context.getContentResolver();
        contentResolver.getClass();
        return contentResolver;
    }

    @Provides
    @MediaCaptureScope
    public final MediaCaptureRepository getMediaCaptureRepository(MediaRepository mediaRepository, ContentResolver contentResolver, final Context context, Executor executor, @Named File cacheDir, @Named File storageDir, VideoConverter videoConverter) {
        ListenableFuture listenableFutureH;
        mediaRepository.getClass();
        contentResolver.getClass();
        context.getClass();
        executor.getClass();
        cacheDir.getClass();
        storageDir.getClass();
        videoConverter.getClass();
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
        ProcessCameraProvider.f2704b.getClass();
        final LifecycleCameraProviderImpl lifecycleCameraProviderImpl = ProcessCameraProvider.f2705c.f2706a;
        synchronized (lifecycleCameraProviderImpl.f2688a) {
            listenableFutureH = lifecycleCameraProviderImpl.f2689b;
            if (listenableFutureH == null) {
                final CameraX cameraX = new CameraX(context, null);
                FutureChain futureChainTransformAsync = FutureChain.from(lifecycleCameraProviderImpl.f2690c).transformAsync(new fw(new l00(cameraX, 24), 12), CameraXExecutors.a());
                futureChainTransformAsync.getClass();
                lifecycleCameraProviderImpl.f2689b = futureChainTransformAsync;
                Futures.a(futureChainTransformAsync, new FutureCallback<Void>() { // from class: androidx.camera.lifecycle.LifecycleCameraProviderImpl$initAsync$1$2
                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public final void onFailure(Throwable th) {
                        LifecycleCameraProviderImpl lifecycleCameraProviderImpl2 = lifecycleCameraProviderImpl;
                        a aVar = new a(lifecycleCameraProviderImpl2);
                        if (Threads.b()) {
                            aVar.run();
                        } else {
                            CountDownLatch countDownLatch = new CountDownLatch(1);
                            Preconditions.f("Unable to post to main thread", new Handler(Looper.getMainLooper()).post(new w21(aVar, countDownLatch, 6)));
                            try {
                                if (!countDownLatch.await(30000L, TimeUnit.MILLISECONDS)) {
                                    throw new IllegalStateException("Timeout to wait main thread execution");
                                }
                            } catch (InterruptedException e2) {
                                throw new InterruptedRuntimeException(e2);
                            }
                        }
                        CameraX cameraX2 = lifecycleCameraProviderImpl2.f2691e;
                        ListenableFuture listenableFutureB = cameraX2 != null ? cameraX2.b() : Futures.g(null);
                        listenableFutureB.getClass();
                        synchronized (lifecycleCameraProviderImpl2.f2688a) {
                            lifecycleCameraProviderImpl2.f2689b = null;
                            lifecycleCameraProviderImpl2.f2690c = listenableFutureB;
                            lifecycleCameraProviderImpl2.g.clear();
                            lifecycleCameraProviderImpl2.f2693h.clear();
                        }
                        lifecycleCameraProviderImpl2.f2691e = null;
                        lifecycleCameraProviderImpl2.f2692f = null;
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public final void onSuccess(Object obj) {
                        CameraX cameraX2 = cameraX;
                        LifecycleCameraProviderImpl lifecycleCameraProviderImpl2 = lifecycleCameraProviderImpl;
                        lifecycleCameraProviderImpl2.f2691e = cameraX2;
                        lifecycleCameraProviderImpl2.f2692f = ContextUtil.a(context);
                    }
                }, CameraXExecutors.a());
                listenableFutureH = Futures.h(futureChainTransformAsync);
            }
        }
        ListenableFuture listenableFutureL = Futures.l(listenableFutureH, new no0(new yn0(10), 5), CameraXExecutors.a());
        CameraSelector cameraSelector = CameraSelector.f1892c;
        cameraSelector.getClass();
        PreviewConfig previewConfig = new PreviewConfig(OptionsBundle.c0(new Preview.Builder().f1947a));
        ImageOutputConfig.u(previewConfig);
        Preview preview = new Preview(previewConfig);
        preview.r = Preview.y;
        return new MediaCaptureRepositoryImpl(context, mediaRepository, defaultIoScheduler, listenableFutureL, cameraSelector, preview, contentResolver, executor, cacheDir, storageDir, videoConverter);
    }

    @Provides
    @MediaCaptureScope
    @Named
    public final File getStorageDir(Context context) {
        context.getClass();
        File filesDir = context.getFilesDir();
        filesDir.getClass();
        return filesDir;
    }

    @Provides
    @MediaCaptureScope
    public final VideoConverter getVideoConverter(Context context) {
        context.getClass();
        return new VideoConverterImpl(context);
    }

    @Provides
    @MediaCaptureScope
    public final Executor providesExecutor(Context context) {
        context.getClass();
        Executor mainExecutor = ContextCompat.getMainExecutor(context);
        mainExecutor.getClass();
        return mainExecutor;
    }
}
