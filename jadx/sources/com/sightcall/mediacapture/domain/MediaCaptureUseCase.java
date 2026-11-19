package com.sightcall.mediacapture.domain;

import android.content.Context;
import android.net.Uri;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Preview;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.camera.video.Recorder;
import androidx.camera.video.VideoCapture;
import com.sightcall.mediacapture.domain.entities.Media;
import com.sightcall.mediacapture.domain.entities.MediaSource;
import com.sightcall.mediacapture.domain.entities.MediaType;
import com.sightcall.mediacapture.domain.mappers.MappersKt;
import com.sightcall.mediacapture.repo.MediaCaptureError;
import com.sightcall.mediacapture.repo.MediaCaptureRepository;
import com.sightcall.mediacapture.repo.entities.MediaRepo;
import com.sightcall.pratik.Result;
import defpackage.SCCollimator;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J(\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010\rJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0015J\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017J4\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001f\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010!J\"\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001a2\u0006\u0010#\u001a\u00020$H\u0086@¢\u0006\u0002\u0010%J\u0006\u0010&\u001a\u00020\u0007J6\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001a2\u0006\u0010(\u001a\u00020\u001b2\b\u0010)\u001a\u0004\u0018\u00010\u000b2\b\u0010*\u001a\u0004\u0018\u00010\u000bH\u0086@¢\u0006\u0002\u0010+J\u000e\u0010,\u001a\u00020\u001b2\u0006\u0010-\u001a\u00020.R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;", "", "mediaCaptureRepository", "Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;", "<init>", "(Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;)V", "initCamera", "", "initPhotoCapture", "", "photoMaxSize", "", "initVideoCapture", "(ZLjava/lang/Integer;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getCameraProvider", "Landroidx/camera/lifecycle/ProcessCameraProvider;", "getCameraSelector", "Landroidx/camera/core/CameraSelector;", "getCameraPreview", "Landroidx/camera/core/Preview;", "getImageCapture", "Landroidx/camera/core/ImageCapture;", "getVideoCapture", "Landroidx/camera/video/VideoCapture;", "Landroidx/camera/video/Recorder;", "takePhoto", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/mediacapture/domain/entities/Media;", "Lcom/sightcall/mediacapture/repo/MediaCaptureError;", "collimator", "LSCCollimator;", "collimatorViewWitdh", "collimatorViewHeight", "(LSCCollimator;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "recordVideo", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "stopRecording", "resizeAndSave", "media", "maxSize", "targetWeight", "(Lcom/sightcall/mediacapture/domain/entities/Media;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "extractMedia", "uri", "Landroid/net/Uri;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MediaCaptureUseCase {
    private final MediaCaptureRepository mediaCaptureRepository;

    /* JADX INFO: renamed from: com.sightcall.mediacapture.domain.MediaCaptureUseCase$initCamera$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.mediacapture.domain.MediaCaptureUseCase", f = "MediaCaptureUseCase.kt", l = {31}, m = "initCamera", v = 2)
    public static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        boolean Z$0;
        boolean Z$1;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MediaCaptureUseCase.this.initCamera(false, null, false, this);
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.domain.MediaCaptureUseCase$recordVideo$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.mediacapture.domain.MediaCaptureUseCase", f = "MediaCaptureUseCase.kt", l = {EACTags.CURRENCY_EXPONENT}, m = "recordVideo", v = 2)
    public static final class C03931 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C03931(Continuation<? super C03931> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MediaCaptureUseCase.this.recordVideo(null, this);
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.domain.MediaCaptureUseCase$resizeAndSave$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.mediacapture.domain.MediaCaptureUseCase", f = "MediaCaptureUseCase.kt", l = {64}, m = "resizeAndSave", v = 2)
    public static final class C03941 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C03941(Continuation<? super C03941> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MediaCaptureUseCase.this.resizeAndSave(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.domain.MediaCaptureUseCase$takePhoto$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.mediacapture.domain.MediaCaptureUseCase", f = "MediaCaptureUseCase.kt", l = {50}, m = "takePhoto", v = 2)
    public static final class C03951 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C03951(Continuation<? super C03951> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MediaCaptureUseCase.this.takePhoto(null, 0, 0, this);
        }
    }

    @Inject
    public MediaCaptureUseCase(MediaCaptureRepository mediaCaptureRepository) {
        mediaCaptureRepository.getClass();
        this.mediaCaptureRepository = mediaCaptureRepository;
    }

    public final Media extractMedia(Uri uri) {
        uri.getClass();
        return MappersKt.toMedia$default(this.mediaCaptureRepository.extractMedia(uri), MediaSource.Gallery, null, 2, null);
    }

    public final Preview getCameraPreview() {
        return this.mediaCaptureRepository.getPreview();
    }

    public final ProcessCameraProvider getCameraProvider() {
        return this.mediaCaptureRepository.getCameraProvider();
    }

    public final CameraSelector getCameraSelector() {
        return this.mediaCaptureRepository.getCameraSelector();
    }

    public final ImageCapture getImageCapture() {
        ImageCapture imageCapture = this.mediaCaptureRepository.getImageCapture();
        if (imageCapture != null) {
            return imageCapture;
        }
        md.k("Image capture was not initialized");
        return null;
    }

    public final VideoCapture<Recorder> getVideoCapture() {
        VideoCapture<Recorder> videoCapture = this.mediaCaptureRepository.getVideoCapture();
        if (videoCapture != null) {
            return videoCapture;
        }
        md.k("Video capture was not initialized");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object initCamera(boolean z, Integer num, boolean z2, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        MediaCaptureRepository mediaCaptureRepository;
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
        Object obj = anonymousClass1.result;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = anonymousClass1.label;
        if (i3 == 0) {
            ResultKt.b(obj);
            mediaCaptureRepository = this.mediaCaptureRepository;
            anonymousClass1.L$0 = num;
            anonymousClass1.L$1 = mediaCaptureRepository;
            anonymousClass1.Z$0 = z;
            anonymousClass1.Z$1 = z2;
            anonymousClass1.I$0 = 0;
            anonymousClass1.label = 1;
            if (mediaCaptureRepository.initCameraProvider(anonymousClass1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z2 = anonymousClass1.Z$1;
            z = anonymousClass1.Z$0;
            mediaCaptureRepository = (MediaCaptureRepository) anonymousClass1.L$1;
            num = (Integer) anonymousClass1.L$0;
            ResultKt.b(obj);
        }
        if (z) {
            mediaCaptureRepository.initImageCapture(num);
        }
        if (z2) {
            mediaCaptureRepository.initVideoCapture();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object recordVideo(Context context, Continuation<? super Result<Media, MediaCaptureError>> continuation) {
        C03931 c03931;
        if (continuation instanceof C03931) {
            c03931 = (C03931) continuation;
            int i2 = c03931.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c03931.label = i2 - Integer.MIN_VALUE;
            } else {
                c03931 = new C03931(continuation);
            }
        } else {
            c03931 = new C03931(continuation);
        }
        Object objStartRecording = c03931.result;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = c03931.label;
        if (i3 == 0) {
            ResultKt.b(objStartRecording);
            MediaCaptureRepository mediaCaptureRepository = this.mediaCaptureRepository;
            c03931.L$0 = null;
            c03931.label = 1;
            objStartRecording = mediaCaptureRepository.startRecording(context, c03931);
            if (objStartRecording == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objStartRecording);
        }
        return MappersKt.toMedia((Result<MediaRepo, MediaCaptureError>) objStartRecording, MediaType.Video, MediaSource.Camera);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object resizeAndSave(Media media, Integer num, Integer num2, Continuation<? super Result<Media, MediaCaptureError>> continuation) {
        C03941 c03941;
        if (continuation instanceof C03941) {
            c03941 = (C03941) continuation;
            int i2 = c03941.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c03941.label = i2 - Integer.MIN_VALUE;
            } else {
                c03941 = new C03941(continuation);
            }
        } else {
            c03941 = new C03941(continuation);
        }
        Object objResizeAndStore = c03941.result;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = c03941.label;
        if (i3 == 0) {
            ResultKt.b(objResizeAndStore);
            MediaCaptureRepository mediaCaptureRepository = this.mediaCaptureRepository;
            MediaRepo mediaRepo = MappersKt.toMediaRepo(media);
            c03941.L$0 = media;
            c03941.L$1 = null;
            c03941.L$2 = null;
            c03941.label = 1;
            objResizeAndStore = mediaCaptureRepository.resizeAndStore(mediaRepo, num, num2, c03941);
            if (objResizeAndStore == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            media = (Media) c03941.L$0;
            ResultKt.b(objResizeAndStore);
        }
        return MappersKt.toMedia((Result<MediaRepo, MediaCaptureError>) objResizeAndStore, media.getType(), media.getSource());
    }

    public final void stopRecording() {
        this.mediaCaptureRepository.stopRecording();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object takePhoto(SCCollimator sCCollimator, int i2, int i3, Continuation<? super Result<Media, MediaCaptureError>> continuation) {
        C03951 c03951;
        if (continuation instanceof C03951) {
            c03951 = (C03951) continuation;
            int i4 = c03951.label;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                c03951.label = i4 - Integer.MIN_VALUE;
            } else {
                c03951 = new C03951(continuation);
            }
        } else {
            c03951 = new C03951(continuation);
        }
        Object objTakePhoto = c03951.result;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i5 = c03951.label;
        if (i5 == 0) {
            ResultKt.b(objTakePhoto);
            MediaCaptureRepository mediaCaptureRepository = this.mediaCaptureRepository;
            c03951.L$0 = null;
            c03951.I$0 = i2;
            c03951.I$1 = i3;
            c03951.label = 1;
            objTakePhoto = mediaCaptureRepository.takePhoto(sCCollimator, i2, i3, c03951);
            if (objTakePhoto == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i5 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objTakePhoto);
        }
        return MappersKt.toMedia((Result<MediaRepo, MediaCaptureError>) objTakePhoto, MediaType.Photo, MediaSource.Camera);
    }
}
