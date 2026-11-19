package com.sightcall.mediacapture.repo;

import android.content.Context;
import android.net.Uri;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Preview;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.camera.video.Recorder;
import androidx.camera.video.VideoCapture;
import com.appsflyer.sdk_base.referrer.Payload;
import com.sightcall.mediacapture.repo.entities.MediaRepo;
import com.sightcall.pratik.Result;
import defpackage.SCCollimator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001J\u000e\u0010\u0017\u001a\u00020\u0018H¦@¢\u0006\u0002\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH&¢\u0006\u0002\u0010\u001dJ\b\u0010\u001e\u001a\u00020\u0018H&J4\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 2\b\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010%\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020\u001cH¦@¢\u0006\u0002\u0010'J\"\u0010(\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 2\u0006\u0010)\u001a\u00020*H¦@¢\u0006\u0002\u0010+J\b\u0010,\u001a\u00020\u0018H&J6\u0010-\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0 2\u0006\u0010.\u001a\u00020!2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\b\u0010/\u001a\u0004\u0018\u00010\u001cH¦@¢\u0006\u0002\u00100J\u0010\u00101\u001a\u00020!2\u0006\u00102\u001a\u000203H&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000fX¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u00064À\u0006\u0003"}, d2 = {"Lcom/sightcall/mediacapture/repo/MediaCaptureRepository;", "", "cameraProvider", "Landroidx/camera/lifecycle/ProcessCameraProvider;", "getCameraProvider", "()Landroidx/camera/lifecycle/ProcessCameraProvider;", "cameraSelector", "Landroidx/camera/core/CameraSelector;", "getCameraSelector", "()Landroidx/camera/core/CameraSelector;", "preview", "Landroidx/camera/core/Preview;", "getPreview", "()Landroidx/camera/core/Preview;", "imageCapture", "Landroidx/camera/core/ImageCapture;", "getImageCapture", "()Landroidx/camera/core/ImageCapture;", "videoCapture", "Landroidx/camera/video/VideoCapture;", "Landroidx/camera/video/Recorder;", "getVideoCapture", "()Landroidx/camera/video/VideoCapture;", "initCameraProvider", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "initImageCapture", "maxSize", "", "(Ljava/lang/Integer;)V", "initVideoCapture", "takePhoto", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;", "Lcom/sightcall/mediacapture/repo/MediaCaptureError;", "collimator", "LSCCollimator;", "collimatorViewWitdh", "collimatorViewHeight", "(LSCCollimator;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "startRecording", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "stopRecording", "resizeAndStore", Payload.SOURCE, "targetWeight", "(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "extractMedia", "uri", "Landroid/net/Uri;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface MediaCaptureRepository {
    MediaRepo extractMedia(Uri uri);

    ProcessCameraProvider getCameraProvider();

    CameraSelector getCameraSelector();

    ImageCapture getImageCapture();

    Preview getPreview();

    VideoCapture<Recorder> getVideoCapture();

    Object initCameraProvider(Continuation<? super Unit> continuation);

    void initImageCapture(Integer maxSize);

    void initVideoCapture();

    Object resizeAndStore(MediaRepo mediaRepo, Integer num, Integer num2, Continuation<? super Result<MediaRepo, MediaCaptureError>> continuation);

    Object startRecording(Context context, Continuation<? super Result<MediaRepo, MediaCaptureError>> continuation);

    void stopRecording();

    Object takePhoto(SCCollimator sCCollimator, int i2, int i3, Continuation<? super Result<MediaRepo, MediaCaptureError>> continuation);
}
