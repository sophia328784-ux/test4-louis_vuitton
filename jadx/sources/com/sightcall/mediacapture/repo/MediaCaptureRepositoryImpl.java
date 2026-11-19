package com.sightcall.mediacapture.repo;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.Rect;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.util.Size;
import android.view.OrientationEventListener;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.ImageCaptureConfig;
import androidx.camera.core.impl.ImageOutputConfig;
import androidx.camera.core.impl.MutableOptionsBundle;
import androidx.camera.core.impl.OptionsBundle;
import androidx.camera.core.impl.utils.CameraOrientationUtil;
import androidx.camera.core.internal.utils.ImageUtil;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.camera.video.FallbackStrategy;
import androidx.camera.video.FileOutputOptions;
import androidx.camera.video.PendingRecording;
import androidx.camera.video.Quality;
import androidx.camera.video.QualitySelector;
import androidx.camera.video.Recorder;
import androidx.camera.video.Recording;
import androidx.camera.video.VideoCapture;
import androidx.camera.video.VideoRecordEvent;
import androidx.camera.video.impl.VideoCaptureConfig;
import androidx.core.content.ContextCompat;
import androidx.core.content.PermissionChecker;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import androidx.exifinterface.media.ExifInterface;
import com.appsflyer.sdk_base.referrer.Payload;
import com.google.common.util.concurrent.ListenableFuture;
import com.sightcall.core.InitSightcallKt;
import com.sightcall.getmedia.MediaRepository;
import com.sightcall.mediacapture.repo.converter.VideoConverter;
import com.sightcall.mediacapture.repo.entities.MediaRepo;
import com.sightcall.mediacapture.repo.entities.ResizeResult;
import com.sightcall.mediacapture.repo.mappers.MediaCaptureMappersKt;
import com.sightcall.pratik.camera.CameraUtilsKt;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.pratik.utils.BitmapUtilsKt;
import com.sightcall.pratik.utils.UtilsKt;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.SCCollimator;
import defpackage.b21;
import defpackage.md;
import defpackage.pq0;
import defpackage.tr;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.Executor;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.internal.ProgressionUtilKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Ã\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u00010\b\u0000\u0018\u00002\u00020\u0001Bg\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0016\u001a\u00020\u0017¢\u0006\u0004\b\u0018\u0010\u0019J\u000e\u00102\u001a\u000203H\u0096@¢\u0006\u0002\u00104J\u0017\u00105\u001a\u0002032\b\u00106\u001a\u0004\u0018\u000107H\u0017¢\u0006\u0002\u00108J\b\u00109\u001a\u000203H\u0017J4\u0010:\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;2\b\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010@\u001a\u0002072\u0006\u0010A\u001a\u000207H\u0097@¢\u0006\u0002\u0010BJ\"\u0010C\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;2\u0006\u0010\u0002\u001a\u00020\u0003H\u0097@¢\u0006\u0002\u0010DJ\b\u0010E\u001a\u000203H\u0017J6\u0010F\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;2\u0006\u0010G\u001a\u00020<2\b\u00106\u001a\u0004\u0018\u0001072\b\u0010H\u001a\u0004\u0018\u000107H\u0096@¢\u0006\u0002\u0010IJ\u0010\u0010J\u001a\u00020<2\u0006\u0010K\u001a\u00020LH\u0016J\u0010\u0010M\u001a\u00020<2\u0006\u0010K\u001a\u00020LH\u0002J\u0010\u0010N\u001a\u00020<2\u0006\u0010K\u001a\u00020LH\u0002J\"\u0010O\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;2\u0006\u0010G\u001a\u00020<H\u0082@¢\u0006\u0002\u0010PJ6\u0010Q\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;2\u0006\u0010G\u001a\u00020<2\b\u00106\u001a\u0004\u0018\u0001072\b\u0010H\u001a\u0004\u0018\u000107H\u0082@¢\u0006\u0002\u0010IJ*\u0010R\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;2\u0006\u0010G\u001a\u00020<2\u0006\u0010S\u001a\u00020TH\u0082@¢\u0006\u0002\u0010UJ\u0010\u0010V\u001a\u00020\u00142\u0006\u0010W\u001a\u00020XH\u0002J(\u0010Y\u001a\u00020T2\u0006\u0010G\u001a\u00020<2\u0006\u0010Z\u001a\u00020[2\b\u0010H\u001a\u0004\u0018\u000107H\u0082@¢\u0006\u0002\u0010\\J,\u0010]\u001a\u000e\u0012\u0004\u0012\u00020<\u0012\u0004\u0012\u00020=0;2\u0006\u0010G\u001a\u00020<2\b\u00106\u001a\u0004\u0018\u000107H\u0082@¢\u0006\u0002\u0010^J\u001e\u0010_\u001a\u0002032\u0006\u0010G\u001a\u00020`2\u0006\u0010a\u001a\u00020bH\u0082@¢\u0006\u0002\u0010cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u000e\u0010\"\u001a\u00020#X\u0082.¢\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u00020#8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&R\u0014\u0010'\u001a\b\u0012\u0004\u0012\u00020)0(X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00020)0(8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,R\u0010\u0010-\u001a\u0004\u0018\u00010.X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010/\u001a\u000200X\u0082\u0004¢\u0006\u0004\n\u0002\u00101¨\u0006d"}, d2 = {"Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl;", "Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "mediaRepository", "Lcom/sightcall/getmedia/MediaRepository;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "listenableFutureProcessCameraProvider", "Lcom/google/common/util/concurrent/ListenableFuture;", "Landroidx/camera/lifecycle/ProcessCameraProvider;", "cameraSelector", "Landroidx/camera/core/CameraSelector;", "preview", "Landroidx/camera/core/Preview;", "contentResolver", "Landroid/content/ContentResolver;", "executor", "Ljava/util/concurrent/Executor;", "cacheDir", "Ljava/io/File;", "storageDir", "videoConverter", "Lcom/sightcall/mediacapture/repo/converter/VideoConverter;", "<init>", "(Landroid/content/Context;Lcom/sightcall/getmedia/MediaRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/Preview;Landroid/content/ContentResolver;Ljava/util/concurrent/Executor;Ljava/io/File;Ljava/io/File;Lcom/sightcall/mediacapture/repo/converter/VideoConverter;)V", "getCameraSelector", "()Landroidx/camera/core/CameraSelector;", "getPreview", "()Landroidx/camera/core/Preview;", "_cameraProvider", "cameraProvider", "getCameraProvider", "()Landroidx/camera/lifecycle/ProcessCameraProvider;", "_imageCapture", "Landroidx/camera/core/ImageCapture;", "imageCapture", "getImageCapture", "()Landroidx/camera/core/ImageCapture;", "_videoCapture", "Landroidx/camera/video/VideoCapture;", "Landroidx/camera/video/Recorder;", "videoCapture", "getVideoCapture", "()Landroidx/camera/video/VideoCapture;", "recording", "Landroidx/camera/video/Recording;", "orientationListener", "com/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$orientationListener$1", "Lcom/sightcall/mediacapture/repo/MediaCaptureRepositoryImpl$orientationListener$1;", "initCameraProvider", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "initImageCapture", "maxSize", "", "(Ljava/lang/Integer;)V", "initVideoCapture", "takePhoto", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;", "Lcom/sightcall/mediacapture/repo/MediaCaptureError;", "collimator", "LSCCollimator;", "collimatorViewWitdh", "collimatorViewHeight", "(LSCCollimator;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "startRecording", "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "stopRecording", "resizeAndStore", Payload.SOURCE, "targetWeight", "(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "extractMedia", "uri", "Landroid/net/Uri;", "extractVideos", "extractPhotos", "noResizeAndStore", "(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resizeAndStorePhoto", Payload.TYPE_STORE, "resizeResult", "Lcom/sightcall/mediacapture/repo/entities/ResizeResult;", "(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Lcom/sightcall/mediacapture/repo/entities/ResizeResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "newUuidStorageFile", "mimeType", "", "resizePhoto", "scaleFactor", "", "(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;FLjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resizeAndStoreVideo", "(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "copy", "Ljava/io/InputStream;", "target", "Ljava/io/OutputStream;", "(Ljava/io/InputStream;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MediaCaptureRepositoryImpl implements MediaCaptureRepository {
    private ProcessCameraProvider _cameraProvider;
    private ImageCapture _imageCapture;
    private VideoCapture<Recorder> _videoCapture;
    private final File cacheDir;
    private final CameraSelector cameraSelector;
    private final ContentResolver contentResolver;
    private final Context context;
    private final CoroutineDispatcher dispatcher;
    private final Executor executor;
    private final ListenableFuture<ProcessCameraProvider> listenableFutureProcessCameraProvider;
    private final MediaRepository mediaRepository;
    private final MediaCaptureRepositoryImpl$orientationListener$1 orientationListener;
    private final Preview preview;
    private Recording recording;
    private final File storageDir;
    private final VideoConverter videoConverter;

    /* JADX INFO: renamed from: com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$initCameraProvider$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$initCameraProvider$2", f = "MediaCaptureRepositoryImpl.kt", l = {118}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        Object L$0;
        Object L$1;
        int label;

        public AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MediaCaptureRepositoryImpl.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            MediaCaptureRepositoryImpl mediaCaptureRepositoryImpl;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.label;
            if (i2 == 0) {
                ResultKt.b(obj);
                MediaCaptureRepositoryImpl mediaCaptureRepositoryImpl2 = MediaCaptureRepositoryImpl.this;
                this.L$0 = mediaCaptureRepositoryImpl2;
                this.L$1 = mediaCaptureRepositoryImpl2;
                this.label = 1;
                final SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.b(this));
                final ListenableFuture listenableFuture = mediaCaptureRepositoryImpl2.listenableFutureProcessCameraProvider;
                listenableFuture.addListener(new Runnable() { // from class: com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$initCameraProvider$2$1$1$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        Continuation<ProcessCameraProvider> continuation = safeContinuation;
                        Result.Companion companion = Result.INSTANCE;
                        continuation.resumeWith(listenableFuture.get());
                    }
                }, mediaCaptureRepositoryImpl2.executor);
                Object objA = safeContinuation.a();
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
                mediaCaptureRepositoryImpl = mediaCaptureRepositoryImpl2;
                obj = objA;
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mediaCaptureRepositoryImpl = (MediaCaptureRepositoryImpl) this.L$1;
                ResultKt.b(obj);
            }
            mediaCaptureRepositoryImpl._cameraProvider = (ProcessCameraProvider) obj;
            return Unit.f71739a;
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$resizeAndStore$2, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;", "Lcom/sightcall/mediacapture/repo/MediaCaptureError;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$resizeAndStore$2", f = "MediaCaptureRepositoryImpl.kt", l = {279, 280}, m = "invokeSuspend", v = 2)
    public static final class C03992 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super com.sightcall.pratik.Result<MediaRepo, MediaCaptureError>>, Object> {
        final /* synthetic */ Integer $maxSize;
        final /* synthetic */ MediaRepo $source;
        final /* synthetic */ Integer $targetWeight;
        int label;
        final /* synthetic */ MediaCaptureRepositoryImpl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C03992(MediaRepo mediaRepo, MediaCaptureRepositoryImpl mediaCaptureRepositoryImpl, Integer num, Integer num2, Continuation<? super C03992> continuation) {
            super(2, continuation);
            this.$source = mediaRepo;
            this.this$0 = mediaCaptureRepositoryImpl;
            this.$maxSize = num;
            this.$targetWeight = num2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C03992(this.$source, this.this$0, this.$maxSize, this.$targetWeight, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super com.sightcall.pratik.Result<MediaRepo, MediaCaptureError>> continuation) {
            return ((C03992) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0042, code lost:
        
            if (r6 == r0) goto L21;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0060, code lost:
        
            if (r6 == r0) goto L21;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) throws java.io.IOException {
            /*
                r5 = this;
                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r5.label
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1b
                if (r1 == r3) goto L17
                if (r1 != r2) goto L10
                kotlin.ResultKt.b(r6)
                goto L63
            L10:
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r5)
                r5 = 0
                return r5
            L17:
                kotlin.ResultKt.b(r6)
                goto L45
            L1b:
                kotlin.ResultKt.b(r6)
                com.sightcall.pratik.logs.Logger r6 = com.sightcall.pratik.logs.Logger.INSTANCE
                com.sightcall.mediacapture.repo.entities.MediaRepo r1 = r5.$source
                java.util.Objects.toString(r1)
                r6.getTag()
                com.sightcall.mediacapture.repo.entities.MediaRepo r1 = r5.$source
                java.lang.String r1 = r1.getMimeType()
                boolean r1 = com.sightcall.mediacapture.repo.mappers.MediaCaptureMappersKt.isImageMimeType(r1)
                if (r1 == 0) goto L48
                com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl r6 = r5.this$0
                com.sightcall.mediacapture.repo.entities.MediaRepo r1 = r5.$source
                java.lang.Integer r2 = r5.$maxSize
                java.lang.Integer r4 = r5.$targetWeight
                r5.label = r3
                java.lang.Object r6 = com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl.access$resizeAndStorePhoto(r6, r1, r2, r4, r5)
                if (r6 != r0) goto L45
                goto L62
            L45:
                com.sightcall.pratik.Result r6 = (com.sightcall.pratik.Result) r6
                return r6
            L48:
                com.sightcall.mediacapture.repo.entities.MediaRepo r1 = r5.$source
                java.lang.String r1 = r1.getMimeType()
                boolean r1 = com.sightcall.mediacapture.repo.mappers.MediaCaptureMappersKt.isVideoMimeType(r1)
                if (r1 == 0) goto L66
                com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl r6 = r5.this$0
                com.sightcall.mediacapture.repo.entities.MediaRepo r1 = r5.$source
                java.lang.Integer r3 = r5.$maxSize
                r5.label = r2
                java.lang.Object r6 = com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl.access$resizeAndStoreVideo(r6, r1, r3, r5)
                if (r6 != r0) goto L63
            L62:
                return r0
            L63:
                com.sightcall.pratik.Result r6 = (com.sightcall.pratik.Result) r6
                return r6
            L66:
                com.sightcall.mediacapture.repo.entities.MediaRepo r0 = r5.$source
                r0.getMimeType()
                r6.getTag()
                com.sightcall.pratik.Result$Error r6 = new com.sightcall.pratik.Result$Error
                com.sightcall.mediacapture.repo.MediaCaptureError$MediaCaptureException r0 = new com.sightcall.mediacapture.repo.MediaCaptureError$MediaCaptureException
                java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
                com.sightcall.mediacapture.repo.entities.MediaRepo r5 = r5.$source
                java.lang.String r5 = r5.getMimeType()
                java.lang.String r2 = "Wrong mimeType="
                java.lang.String r5 = defpackage.tr.g(r2, r5)
                r1.<init>(r5)
                r0.<init>(r1)
                r6.<init>(r0)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl.C03992.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$resizeAndStorePhoto$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl", f = "MediaCaptureRepositoryImpl.kt", l = {347, 349, 349}, m = "resizeAndStorePhoto", v = 2)
    public static final class AnonymousClass1 extends ContinuationImpl {
        float F$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MediaCaptureRepositoryImpl.this.resizeAndStorePhoto(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$resizePhoto$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl", f = "MediaCaptureRepositoryImpl.kt", l = {381}, m = "resizePhoto", v = 2)
    public static final class C04001 extends ContinuationImpl {
        float F$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        /* synthetic */ Object result;

        public C04001(Continuation<? super C04001> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MediaCaptureRepositoryImpl.this.resizePhoto(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, this);
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$startRecording$2, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;", "Lcom/sightcall/mediacapture/repo/MediaCaptureError;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$startRecording$2", f = "MediaCaptureRepositoryImpl.kt", l = {223}, m = "invokeSuspend", v = 2)
    public static final class C04012 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super com.sightcall.pratik.Result<MediaRepo, MediaCaptureError>>, Object> {
        final /* synthetic */ Context $context;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04012(Context context, Continuation<? super C04012> continuation) {
            super(2, continuation);
            this.$context = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MediaCaptureRepositoryImpl.this.new C04012(this.$context, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super com.sightcall.pratik.Result<MediaRepo, MediaCaptureError>> continuation) {
            return ((C04012) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws IOException {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.label;
            if (i2 != 0) {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                return obj;
            }
            ResultKt.b(obj);
            final MediaCaptureRepositoryImpl mediaCaptureRepositoryImpl = MediaCaptureRepositoryImpl.this;
            Context context = this.$context;
            this.L$0 = mediaCaptureRepositoryImpl;
            this.L$1 = context;
            this.label = 1;
            final SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.b(this));
            File fileCreateTempFile = File.createTempFile("sightcall", tr.g(FileUtils.HIDDEN_PREFIX, MediaCaptureMappersKt.toExtension("video/mp4")), mediaCaptureRepositoryImpl.cacheDir);
            FileOutputOptions fileOutputOptionsA = new FileOutputOptions.Builder(fileCreateTempFile).a();
            final Uri uriFromFile = Uri.fromFile(fileCreateTempFile);
            PendingRecording pendingRecording = new PendingRecording(context, (Recorder) mediaCaptureRepositoryImpl.getVideoCapture().K(), fileOutputOptionsA);
            if (PermissionChecker.b(pendingRecording.f2763c, "android.permission.RECORD_AUDIO") == -1) {
                throw new SecurityException("Attempted to enable audio for recording but application does not have RECORD_AUDIO permission granted.");
            }
            Preconditions.f("The Recorder this recording is associated to doesn't support audio.", pendingRecording.f2761a.o());
            pendingRecording.f2765f = true;
            Executor mainExecutor = ContextCompat.getMainExecutor(context);
            mainExecutor.getClass();
            mediaCaptureRepositoryImpl.recording = pendingRecording.a(mainExecutor, new Consumer() { // from class: com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$startRecording$2$1$1
                @Override // androidx.core.util.Consumer
                public final void accept(VideoRecordEvent videoRecordEvent) {
                    videoRecordEvent.getClass();
                    if ((videoRecordEvent instanceof VideoRecordEvent.Start) || !(videoRecordEvent instanceof VideoRecordEvent.Finalize)) {
                        return;
                    }
                    int i3 = ((VideoRecordEvent.Finalize) videoRecordEvent).f2854b;
                    Continuation<com.sightcall.pratik.Result<MediaRepo, MediaCaptureError>> continuation = safeContinuation;
                    if (i3 != 0) {
                        Result.Companion companion = Result.INSTANCE;
                        continuation.resumeWith(new com.sightcall.pratik.Result.Error(new MediaCaptureError.MediaCaptureException(new RuntimeException(pq0.k(i3, "Failed to write video du to error: ")))));
                        return;
                    }
                    Uri uri = uriFromFile;
                    uri.getClass();
                    MediaRepository mediaRepository = mediaCaptureRepositoryImpl.mediaRepository;
                    Uri uri2 = uriFromFile;
                    uri2.getClass();
                    com.sightcall.pratik.Result.Success success = new com.sightcall.pratik.Result.Success(new MediaRepo(uri, "video/mp4", mediaRepository.getVideoSize(uri2)));
                    Result.Companion companion2 = Result.INSTANCE;
                    continuation.resumeWith(success);
                }
            });
            Object objA = safeContinuation.a();
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$store$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl", f = "MediaCaptureRepositoryImpl.kt", l = {361}, m = Payload.TYPE_STORE, v = 2)
    public static final class C04021 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        int label;
        /* synthetic */ Object result;

        public C04021(Continuation<? super C04021> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MediaCaptureRepositoryImpl.this.store(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$takePhoto$2, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001*\u00020\u0004H\n"}, d2 = {"<anonymous>", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;", "Lcom/sightcall/mediacapture/repo/MediaCaptureError;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$takePhoto$2", f = "MediaCaptureRepositoryImpl.kt", l = {157}, m = "invokeSuspend", v = 2)
    public static final class C04032 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super com.sightcall.pratik.Result<MediaRepo, MediaCaptureError>>, Object> {
        final /* synthetic */ SCCollimator $collimator;
        final /* synthetic */ int $collimatorViewHeight;
        final /* synthetic */ int $collimatorViewWitdh;
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04032(SCCollimator sCCollimator, int i2, int i3, Continuation<? super C04032> continuation) {
            super(2, continuation);
            this.$collimator = sCCollimator;
            this.$collimatorViewWitdh = i2;
            this.$collimatorViewHeight = i3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MediaCaptureRepositoryImpl.this.new C04032(this.$collimator, this.$collimatorViewWitdh, this.$collimatorViewHeight, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super com.sightcall.pratik.Result<MediaRepo, MediaCaptureError>> continuation) {
            return ((C04032) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v2, types: [com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$takePhoto$2$1$1] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws IOException {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.label;
            if (i2 != 0) {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                return obj;
            }
            ResultKt.b(obj);
            final MediaCaptureRepositoryImpl mediaCaptureRepositoryImpl = MediaCaptureRepositoryImpl.this;
            final SCCollimator sCCollimator = this.$collimator;
            final int i3 = this.$collimatorViewWitdh;
            final int i4 = this.$collimatorViewHeight;
            this.L$0 = mediaCaptureRepositoryImpl;
            this.L$1 = sCCollimator;
            this.I$0 = i3;
            this.I$1 = i4;
            this.label = 1;
            final SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.b(this));
            final File fileCreateTempFile = File.createTempFile("sightcall", tr.g(FileUtils.HIDDEN_PREFIX, MediaCaptureMappersKt.toExtension("image/jpeg")), mediaCaptureRepositoryImpl.cacheDir);
            ImageCapture.OutputFileOptions.Builder builder = new ImageCapture.OutputFileOptions.Builder(fileCreateTempFile);
            mediaCaptureRepositoryImpl.getImageCapture().J(new ImageCapture.OutputFileOptions(builder.f1930a, builder.f1931b, builder.f1932c, builder.d, builder.f1933e), mediaCaptureRepositoryImpl.executor, new ImageCapture.OnImageSavedCallback() { // from class: com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$takePhoto$2$1$1
                @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
                public /* bridge */ /* synthetic */ void onCaptureProcessProgressed(int i5) {
                }

                @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
                public /* bridge */ /* synthetic */ void onCaptureStarted() {
                }

                @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
                public void onError(ImageCaptureException exception) {
                    exception.getClass();
                    Continuation<com.sightcall.pratik.Result<MediaRepo, MediaCaptureError>> continuation = safeContinuation;
                    Result.Companion companion = Result.INSTANCE;
                    continuation.resumeWith(new com.sightcall.pratik.Result.Error(new MediaCaptureError.MediaCaptureException(exception)));
                }

                @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
                public void onImageSaved(ImageCapture.OutputFileResults outputFileResults) throws IOException {
                    outputFileResults.getClass();
                    Uri uriFromFile = Uri.fromFile(fileCreateTempFile);
                    SCCollimator sCCollimator2 = sCCollimator;
                    if (sCCollimator2 != null) {
                        MediaCaptureRepositoryImpl mediaCaptureRepositoryImpl2 = mediaCaptureRepositoryImpl;
                        int i5 = i3;
                        int i6 = i4;
                        File file = fileCreateTempFile;
                        Bitmap bitmapDecodeBitmap = ImageDecoder.decodeBitmap(ImageDecoder.createSource(mediaCaptureRepositoryImpl2.context.getContentResolver(), uriFromFile));
                        Rect rectRectThatFits = UtilsKt.rectThatFits(new Rect(0, 0, i5, i6), bitmapDecodeBitmap.getWidth(), bitmapDecodeBitmap.getHeight());
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeBitmap, rectRectThatFits.left, rectRectThatFits.top, rectRectThatFits.width(), rectRectThatFits.height());
                        bitmapCreateBitmap.getClass();
                        SCCollimator.Rect rectA = sCCollimator2.a(bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmapCreateBitmap, (int) rectA.f54b, (int) rectA.f53a, (int) rectA.f55c, (int) rectA.d);
                        bitmapCreateBitmap2.getClass();
                        FileOutputStream fileOutputStream = new FileOutputStream(file, false);
                        try {
                            bitmapCreateBitmap2.compress(Bitmap.CompressFormat.JPEG, 95, fileOutputStream);
                            fileOutputStream.close();
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.a(fileOutputStream, th);
                                throw th2;
                            }
                        }
                    }
                    Continuation<com.sightcall.pratik.Result<MediaRepo, MediaCaptureError>> continuation = safeContinuation;
                    Result.Companion companion = Result.INSTANCE;
                    uriFromFile.getClass();
                    continuation.resumeWith(new com.sightcall.pratik.Result.Success(new MediaRepo(uriFromFile, "image/jpeg", mediaCaptureRepositoryImpl.mediaRepository.getPhotoSize(uriFromFile))));
                }

                @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
                public /* bridge */ /* synthetic */ void onPostviewBitmapAvailable(Bitmap bitmap) {
                }
            });
            Object objA = safeContinuation.a();
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$orientationListener$1] */
    @Inject
    public MediaCaptureRepositoryImpl(final Context context, MediaRepository mediaRepository, CoroutineDispatcher coroutineDispatcher, ListenableFuture<ProcessCameraProvider> listenableFuture, CameraSelector cameraSelector, Preview preview, ContentResolver contentResolver, Executor executor, File file, File file2, VideoConverter videoConverter) {
        context.getClass();
        mediaRepository.getClass();
        coroutineDispatcher.getClass();
        listenableFuture.getClass();
        cameraSelector.getClass();
        preview.getClass();
        contentResolver.getClass();
        executor.getClass();
        file.getClass();
        file2.getClass();
        videoConverter.getClass();
        this.context = context;
        this.mediaRepository = mediaRepository;
        this.dispatcher = coroutineDispatcher;
        this.listenableFutureProcessCameraProvider = listenableFuture;
        this.cameraSelector = cameraSelector;
        this.preview = preview;
        this.contentResolver = contentResolver;
        this.executor = executor;
        this.cacheDir = file;
        this.storageDir = file2;
        this.videoConverter = videoConverter;
        this.orientationListener = new OrientationEventListener(context) { // from class: com.sightcall.mediacapture.repo.MediaCaptureRepositoryImpl$orientationListener$1
            @Override // android.view.OrientationEventListener
            public void onOrientationChanged(int orientation) {
                int i2;
                if (45 <= orientation && orientation < 135) {
                    i2 = 3;
                } else if (135 > orientation || orientation >= 225) {
                    i2 = (225 > orientation || orientation >= 315) ? 0 : 1;
                } else {
                    i2 = 2;
                }
                if (this.this$0._videoCapture != null) {
                    VideoCapture videoCapture = this.this$0._videoCapture;
                    if (videoCapture == null) {
                        Intrinsics.h("_videoCapture");
                        throw null;
                    }
                    if (videoCapture.A(i2)) {
                        videoCapture.O();
                    }
                }
                if (this.this$0._imageCapture != null) {
                    ImageCapture imageCapture = this.this$0._imageCapture;
                    if (imageCapture == null) {
                        Intrinsics.h("_imageCapture");
                        throw null;
                    }
                    int iL = imageCapture.l();
                    if (!imageCapture.A(i2) || imageCapture.u == null) {
                        return;
                    }
                    imageCapture.u = ImageUtil.b(imageCapture.u, Math.abs(CameraOrientationUtil.b(i2) - CameraOrientationUtil.b(iL)));
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object copy(InputStream inputStream, OutputStream outputStream, Continuation<? super Unit> continuation) throws IOException {
        byte[] bArr = new byte[1024];
        int i2 = inputStream.read(bArr);
        while (i2 > 0) {
            outputStream.write(bArr, 0, i2);
            i2 = inputStream.read(bArr);
        }
        return Unit.f71739a;
    }

    private final MediaRepo extractPhotos(Uri uri) throws FileNotFoundException {
        InputStream inputStreamOpenInputStream = this.contentResolver.openInputStream(uri);
        inputStreamOpenInputStream.getClass();
        ExifInterface exifInterface = new ExifInterface(inputStreamOpenInputStream);
        String type = this.contentResolver.getType(uri);
        type.getClass();
        return new MediaRepo(uri, type, BitmapUtilsKt.getSizeFromOrientation(exifInterface.e(0, "ImageWidth"), exifInterface.e(0, "ImageLength"), exifInterface.e(0, "Orientation")));
    }

    private final MediaRepo extractVideos(Uri uri) throws IOException {
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(InitSightcallKt.getSightCallComponent().context(), uri);
        String strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
        strExtractMetadata.getClass();
        int i2 = Integer.parseInt(strExtractMetadata);
        String strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
        strExtractMetadata2.getClass();
        Size size = new Size(i2, Integer.parseInt(strExtractMetadata2));
        mediaMetadataRetriever.release();
        String type = this.contentResolver.getType(uri);
        type.getClass();
        return new MediaRepo(uri, type, size);
    }

    private final File newUuidStorageFile(String mimeType) {
        return new File(this.storageDir + "/" + UUID.randomUUID() + FileUtils.HIDDEN_PREFIX + MediaCaptureMappersKt.toExtension(mimeType));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object noResizeAndStore(MediaRepo mediaRepo, Continuation<? super com.sightcall.pratik.Result<MediaRepo, MediaCaptureError>> continuation) {
        return store(mediaRepo, new ResizeResult(this.contentResolver.openInputStream(mediaRepo.getUri()), mediaRepo.getMimeType(), mediaRepo.getSize()), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object resizeAndStorePhoto(MediaRepo mediaRepo, Integer num, Integer num2, Continuation<? super com.sightcall.pratik.Result<MediaRepo, MediaCaptureError>> continuation) throws IOException {
        AnonymousClass1 anonymousClass1;
        float fCalculateScaleFactor;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            int i2 = anonymousClass1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i2 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object objResizePhoto = anonymousClass1.result;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = anonymousClass1.label;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 == 2) {
                    float f2 = anonymousClass1.F$0;
                    mediaRepo = (MediaRepo) anonymousClass1.L$4;
                    MediaCaptureRepositoryImpl mediaCaptureRepositoryImpl = (MediaCaptureRepositoryImpl) anonymousClass1.L$3;
                    ResultKt.b(objResizePhoto);
                    fCalculateScaleFactor = f2;
                    this = mediaCaptureRepositoryImpl;
                } else if (i3 != 3) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            }
            ResultKt.b(objResizePhoto);
            return objResizePhoto;
        }
        ResultKt.b(objResizePhoto);
        if (num != null) {
            fCalculateScaleFactor = BitmapUtilsKt.calculateScaleFactor(mediaRepo.getSize(), num.intValue());
        } else {
            fCalculateScaleFactor = 1.0f;
        }
        if (num2 == null && fCalculateScaleFactor == 1.0f) {
            anonymousClass1.L$0 = null;
            anonymousClass1.L$1 = null;
            anonymousClass1.L$2 = null;
            anonymousClass1.F$0 = fCalculateScaleFactor;
            anonymousClass1.label = 1;
            Object objNoResizeAndStore = noResizeAndStore(mediaRepo, anonymousClass1);
            if (objNoResizeAndStore != coroutineSingletons) {
                return objNoResizeAndStore;
            }
        } else {
            anonymousClass1.L$0 = null;
            anonymousClass1.L$1 = null;
            anonymousClass1.L$2 = null;
            anonymousClass1.L$3 = this;
            anonymousClass1.L$4 = mediaRepo;
            anonymousClass1.F$0 = fCalculateScaleFactor;
            anonymousClass1.label = 2;
            objResizePhoto = resizePhoto(mediaRepo, fCalculateScaleFactor, num2, anonymousClass1);
            if (objResizePhoto != coroutineSingletons) {
            }
        }
        anonymousClass1.L$0 = null;
        anonymousClass1.L$1 = null;
        anonymousClass1.L$2 = null;
        anonymousClass1.L$3 = null;
        anonymousClass1.L$4 = null;
        anonymousClass1.F$0 = fCalculateScaleFactor;
        anonymousClass1.label = 3;
        Object objStore = this.store(mediaRepo, (ResizeResult) objResizePhoto, anonymousClass1);
        return objStore == coroutineSingletons ? coroutineSingletons : objStore;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object resizeAndStoreVideo(MediaRepo mediaRepo, Integer num, Continuation<? super com.sightcall.pratik.Result<MediaRepo, MediaCaptureError>> continuation) {
        float fCalculateScaleFactor;
        if (num != null) {
            fCalculateScaleFactor = BitmapUtilsKt.calculateScaleFactor(mediaRepo.getSize(), num.intValue());
        } else {
            fCalculateScaleFactor = 1.0f;
        }
        if (fCalculateScaleFactor == 1.0f) {
            return noResizeAndStore(mediaRepo, continuation);
        }
        File fileNewUuidStorageFile = newUuidStorageFile("video/mp4");
        VideoConverter videoConverter = this.videoConverter;
        num.getClass();
        int iIntValue = num.intValue();
        String path = fileNewUuidStorageFile.getPath();
        path.getClass();
        return videoConverter.process(mediaRepo, iIntValue, path, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object resizePhoto(MediaRepo mediaRepo, float f2, Integer num, Continuation<? super ResizeResult> continuation) {
        C04001 c04001;
        Integer num2;
        Size size;
        ByteArrayOutputStream byteArrayOutputStream;
        Ref$ObjectRef ref$ObjectRef;
        Ref$ObjectRef ref$ObjectRef2;
        int size2;
        int size3;
        if (continuation instanceof C04001) {
            c04001 = (C04001) continuation;
            int i2 = c04001.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c04001.label = i2 - Integer.MIN_VALUE;
            } else {
                c04001 = new C04001(continuation);
            }
        } else {
            c04001 = new C04001(continuation);
        }
        Object obj = c04001.result;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = c04001.label;
        if (i3 == 0) {
            ResultKt.b(obj);
            Size sizeCalculateScaledSize = BitmapUtilsKt.calculateScaledSize(mediaRepo.getSize(), f2);
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
            MediaRepository mediaRepository = this.mediaRepository;
            Uri uri = mediaRepo.getUri();
            c04001.L$0 = null;
            c04001.L$1 = num;
            c04001.L$2 = sizeCalculateScaledSize;
            c04001.L$3 = byteArrayOutputStream2;
            c04001.L$4 = ref$ObjectRef3;
            c04001.L$5 = ref$ObjectRef3;
            c04001.F$0 = f2;
            c04001.label = 1;
            Object bitmap = mediaRepository.getBitmap(uri, c04001);
            if (bitmap == coroutineSingletons) {
                return coroutineSingletons;
            }
            num2 = num;
            size = sizeCalculateScaledSize;
            byteArrayOutputStream = byteArrayOutputStream2;
            ref$ObjectRef = ref$ObjectRef3;
            obj = bitmap;
            ref$ObjectRef2 = ref$ObjectRef;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$ObjectRef2 = (Ref$ObjectRef) c04001.L$5;
            ref$ObjectRef = (Ref$ObjectRef) c04001.L$4;
            byteArrayOutputStream = (ByteArrayOutputStream) c04001.L$3;
            size = (Size) c04001.L$2;
            num2 = (Integer) c04001.L$1;
            ResultKt.b(obj);
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap((Bitmap) obj, size.getWidth(), size.getHeight(), true);
        bitmapCreateScaledBitmap.getClass();
        ref$ObjectRef2.f71921b = bitmapCreateScaledBitmap;
        ((Bitmap) ref$ObjectRef.f71921b).compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
        if (num2 != null && (size2 = byteArrayOutputStream.size()) > num2.intValue()) {
            int i4 = 95;
            int iA = ProgressionUtilKt.a(95, 75, -5);
            int i5 = 0;
            if (iA <= 95) {
                int i6 = Integer.MAX_VALUE;
                while (true) {
                    byteArrayOutputStream.reset();
                    ((Bitmap) ref$ObjectRef.f71921b).compress(Bitmap.CompressFormat.JPEG, i4, byteArrayOutputStream);
                    size3 = byteArrayOutputStream.size();
                    if (size3 > num2.intValue()) {
                        if (size3 < i6) {
                            i5 = i4;
                            i6 = size3;
                        }
                        if (i4 == iA) {
                            break;
                        }
                        i4 -= 5;
                    } else {
                        break;
                    }
                }
                size2 = size3;
            }
            if (size2 > num2.intValue()) {
                byteArrayOutputStream.reset();
                ((Bitmap) ref$ObjectRef.f71921b).compress(Bitmap.CompressFormat.JPEG, i5, byteArrayOutputStream);
            }
        }
        ((Bitmap) ref$ObjectRef.f71921b).recycle();
        return new ResizeResult(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()), "image/jpeg", size);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object store(MediaRepo mediaRepo, ResizeResult resizeResult, Continuation<? super com.sightcall.pratik.Result<MediaRepo, MediaCaptureError>> continuation) throws IOException {
        C04021 c04021;
        Size size;
        MediaRepo mediaRepo2;
        InputStream inputStream;
        File file;
        FileOutputStream fileOutputStream;
        if (continuation instanceof C04021) {
            c04021 = (C04021) continuation;
            int i2 = c04021.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c04021.label = i2 - Integer.MIN_VALUE;
            } else {
                c04021 = new C04021(continuation);
            }
        } else {
            c04021 = new C04021(continuation);
        }
        Object obj = c04021.result;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = c04021.label;
        if (i3 == 0) {
            ResultKt.b(obj);
            InputStream stream = resizeResult.getStream();
            String mimeType = resizeResult.getMimeType();
            size = resizeResult.getSize();
            if (stream == null) {
                b21.n(pq0.l(mediaRepo.getUri(), "No InputSteam found for media="));
                return null;
            }
            File fileNewUuidStorageFile = newUuidStorageFile(mimeType);
            FileOutputStream fileOutputStream2 = new FileOutputStream(fileNewUuidStorageFile);
            c04021.L$0 = mediaRepo;
            c04021.L$1 = null;
            c04021.L$2 = stream;
            c04021.L$3 = null;
            c04021.L$4 = size;
            c04021.L$5 = fileNewUuidStorageFile;
            c04021.L$6 = fileOutputStream2;
            c04021.label = 1;
            if (copy(stream, fileOutputStream2, c04021) == obj2) {
                return obj2;
            }
            mediaRepo2 = mediaRepo;
            inputStream = stream;
            file = fileNewUuidStorageFile;
            fileOutputStream = fileOutputStream2;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            fileOutputStream = (FileOutputStream) c04021.L$6;
            file = (File) c04021.L$5;
            size = (Size) c04021.L$4;
            inputStream = (InputStream) c04021.L$2;
            mediaRepo2 = (MediaRepo) c04021.L$0;
            ResultKt.b(obj);
        }
        Size size2 = size;
        inputStream.close();
        fileOutputStream.close();
        Logger logger = Logger.INSTANCE;
        Objects.toString(Uri.fromFile(file));
        logger.getTag();
        Uri uriFromFile = Uri.fromFile(file);
        uriFromFile.getClass();
        return new com.sightcall.pratik.Result.Success(MediaRepo.copy$default(mediaRepo2, uriFromFile, null, size2, 2, null));
    }

    @Override // com.sightcall.mediacapture.repo.MediaCaptureRepository
    public MediaRepo extractMedia(Uri uri) {
        uri.getClass();
        String type = this.contentResolver.getType(uri);
        return (type == null || !StringsKt.P(type, "video", false)) ? extractPhotos(uri) : extractVideos(uri);
    }

    @Override // com.sightcall.mediacapture.repo.MediaCaptureRepository
    public ProcessCameraProvider getCameraProvider() {
        ProcessCameraProvider processCameraProvider = this._cameraProvider;
        if (processCameraProvider != null) {
            return processCameraProvider;
        }
        Intrinsics.h("_cameraProvider");
        throw null;
    }

    @Override // com.sightcall.mediacapture.repo.MediaCaptureRepository
    public CameraSelector getCameraSelector() {
        return this.cameraSelector;
    }

    @Override // com.sightcall.mediacapture.repo.MediaCaptureRepository
    public ImageCapture getImageCapture() {
        ImageCapture imageCapture = this._imageCapture;
        if (imageCapture != null) {
            return imageCapture;
        }
        Intrinsics.h("_imageCapture");
        throw null;
    }

    @Override // com.sightcall.mediacapture.repo.MediaCaptureRepository
    public Preview getPreview() {
        return this.preview;
    }

    @Override // com.sightcall.mediacapture.repo.MediaCaptureRepository
    public VideoCapture<Recorder> getVideoCapture() {
        VideoCapture<Recorder> videoCapture = this._videoCapture;
        if (videoCapture != null) {
            return videoCapture;
        }
        Intrinsics.h("_videoCapture");
        throw null;
    }

    @Override // com.sightcall.mediacapture.repo.MediaCaptureRepository
    public Object initCameraProvider(Continuation<? super Unit> continuation) throws Throwable {
        Object objF = BuildersKt.f(this.dispatcher, new AnonymousClass2(null), continuation);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
    }

    @Override // com.sightcall.mediacapture.repo.MediaCaptureRepository
    public void initImageCapture(Integer maxSize) {
        enable();
        ImageCapture.Builder builder = new ImageCapture.Builder();
        Config.Option option = ImageCaptureConfig.O;
        MutableOptionsBundle mutableOptionsBundle = builder.f1923a;
        mutableOptionsBundle.o(option, 0);
        if (maxSize != null) {
            Size closestSize$default = CameraUtilsKt.getClosestSize$default(null, maxSize.intValue(), 1, null);
            if (closestSize$default == null) {
                closestSize$default = new Size(maxSize.intValue(), maxSize.intValue());
            }
            mutableOptionsBundle.o(ImageOutputConfig.q, closestSize$default);
        }
        this._imageCapture = builder.e();
    }

    @Override // com.sightcall.mediacapture.repo.MediaCaptureRepository
    public void initVideoCapture() {
        enable();
        Quality quality = Quality.f2768c;
        Quality quality2 = Quality.f2767b;
        Quality quality3 = Quality.f2766a;
        QualitySelector qualitySelectorA = QualitySelector.a(CollectionsKt.P(quality, quality2, quality3), FallbackStrategy.a(quality3));
        Recorder.Builder builder = new Recorder.Builder();
        Executor executor = this.executor;
        Preconditions.e(executor, "The specified executor can't be null.");
        builder.f2800b = executor;
        builder.a(qualitySelectorA);
        Recorder recorder = new Recorder(builder.f2800b, builder.f2799a.a(), builder.f2801c, builder.d, builder.f2802e, builder.f2803f);
        VideoCapture.Defaults defaults = VideoCapture.F;
        this._videoCapture = new VideoCapture<>(new VideoCaptureConfig(OptionsBundle.c0(new VideoCapture.Builder(recorder).f2837a)));
    }

    @Override // com.sightcall.mediacapture.repo.MediaCaptureRepository
    public Object resizeAndStore(MediaRepo mediaRepo, Integer num, Integer num2, Continuation<? super com.sightcall.pratik.Result<MediaRepo, MediaCaptureError>> continuation) {
        return BuildersKt.f(this.dispatcher, new C03992(mediaRepo, this, num, num2, null), continuation);
    }

    @Override // com.sightcall.mediacapture.repo.MediaCaptureRepository
    public Object startRecording(Context context, Continuation<? super com.sightcall.pratik.Result<MediaRepo, MediaCaptureError>> continuation) {
        return BuildersKt.f(this.dispatcher, new C04012(context, null), continuation);
    }

    @Override // com.sightcall.mediacapture.repo.MediaCaptureRepository
    public void stopRecording() {
        Recording recording = this.recording;
        if (recording != null) {
            recording.close();
        }
    }

    @Override // com.sightcall.mediacapture.repo.MediaCaptureRepository
    public Object takePhoto(SCCollimator sCCollimator, int i2, int i3, Continuation<? super com.sightcall.pratik.Result<MediaRepo, MediaCaptureError>> continuation) {
        return BuildersKt.f(this.dispatcher, new C04032(sCCollimator, i2, i3, null), continuation);
    }
}
