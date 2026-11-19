package com.sightcall.mediacapture.presenter;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.CountDownTimer;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCaseGroup;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.core.util.Preconditions;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.appsflyer.sdk_base.referrer.Payload;
import com.sightcall.mediacapture.domain.MediaCaptureUseCase;
import com.sightcall.mediacapture.domain.entities.Media;
import com.sightcall.mediacapture.domain.entities.MediaSource;
import com.sightcall.mediacapture.domain.entities.MediaType;
import com.sightcall.mediacapture.presenter.item.MediaCaptureParameters;
import com.sightcall.mediacapture.presenter.mappers.MappersKt;
import com.sightcall.mediacapture.repo.MediaCaptureError;
import com.sightcall.pratik.Result;
import com.sightcall.pratik.livedata.SingleLiveEvent;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.pratik.misc.DoNothingKt;
import com.sightcall.pratik.permission.Permission;
import com.sightcall.pratik.permission.PermissionExtensionsKt;
import com.sightcall.pratik.permission.PermissionResult;
import com.sightcall.universal.permission.PermissionsActivity;
import defpackage.SCCollimator;
import defpackage.az;
import defpackage.md;
import defpackage.r81;
import defpackage.v40;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.ByteStreamsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Þ\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n*\u0002:=\b\u0000\u0018\u00002\u00020\u0001:\u0001|B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010O\u001a\u0002002\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\b\u0010P\u001a\u00020-H\u0002J\b\u0010Q\u001a\u00020-H\u0002J\u0006\u0010R\u001a\u00020SJ\u000e\u0010T\u001a\b\u0012\u0004\u0012\u00020V0UH\u0002J\u0014\u0010W\u001a\u00020S2\f\u0010X\u001a\b\u0012\u0004\u0012\u00020Z0YJ\u0006\u0010[\u001a\u00020SJ\u0006\u0010\\\u001a\u00020SJ\b\u0010]\u001a\u00020\u0014H\u0002J\b\u0010^\u001a\u00020SH\u0007J\u0016\u0010_\u001a\u00020S2\u0006\u0010`\u001a\u00020)2\u0006\u0010a\u001a\u00020)J\u0006\u0010b\u001a\u00020SJ\b\u0010c\u001a\u00020SH\u0002J\u0016\u0010d\u001a\u00020S2\u0006\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020hJ\u0018\u0010i\u001a\u00020S2\b\u0010e\u001a\u0004\u0018\u00010f2\u0006\u0010g\u001a\u00020hJ\b\u0010j\u001a\u00020SH\u0002J\u0010\u0010k\u001a\u00020S2\u0006\u0010g\u001a\u00020hH\u0002J\b\u0010l\u001a\u00020SH\u0002J\b\u0010m\u001a\u00020SH\u0002J\u000e\u0010n\u001a\u00020S2\u0006\u0010o\u001a\u00020pJ\u0016\u0010q\u001a\u00020-2\u0006\u0010r\u001a\u00020s2\u0006\u0010g\u001a\u00020hJ\u0016\u0010t\u001a\u00020S2\u0006\u0010r\u001a\u00020s2\u0006\u0010g\u001a\u00020hJ\u0006\u0010u\u001a\u00020SJ\u0006\u0010v\u001a\u00020SJ\u000e\u0010w\u001a\u00020S2\u0006\u0010x\u001a\u00020-J\u0006\u0010y\u001a\u00020SJ\u0006\u0010z\u001a\u00020SJ\u0018\u0010{\u001a\u00020S2\u0006\u0010r\u001a\u00020s2\u0006\u0010g\u001a\u00020hH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\f8F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u000eR\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\f8F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u000eR\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\f8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u000eR\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\f8F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u000eR\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00020!0\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\"\u001a\b\u0012\u0004\u0012\u00020!0\f8F¢\u0006\u0006\u001a\u0004\b#\u0010\u000eR\u0014\u0010$\u001a\b\u0012\u0004\u0012\u00020%0\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010&\u001a\b\u0012\u0004\u0012\u00020%0\f8F¢\u0006\u0006\u001a\u0004\b'\u0010\u000eR\u0014\u0010(\u001a\b\u0012\u0004\u0012\u00020)0\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010*\u001a\b\u0012\u0004\u0012\u00020)0\f8F¢\u0006\u0006\u001a\u0004\b+\u0010\u000eR\u0014\u0010,\u001a\b\u0012\u0004\u0012\u00020-0\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010.\u001a\b\u0012\u0004\u0012\u00020-0\f8F¢\u0006\u0006\u001a\u0004\b.\u0010\u000eR\u000e\u0010/\u001a\u000200X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020-X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020-X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020-X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u000206X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u000208X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u00109\u001a\u00020:X\u0082\u0004¢\u0006\u0004\n\u0002\u0010;R\u0010\u0010<\u001a\u00020=X\u0082\u0004¢\u0006\u0004\n\u0002\u0010>R\u001f\u0010?\u001a\u00070@¢\u0006\u0002\bAX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\u0013\u0010F\u001a\u0004\u0018\u00010)8F¢\u0006\u0006\u001a\u0004\bG\u0010HR\u0016\u0010I\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010J0\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010K\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010J0\f8F¢\u0006\u0006\u001a\u0004\bL\u0010\u000eR\u000e\u0010M\u001a\u00020)X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u00020)X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006}"}, d2 = {"Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;", "Landroidx/lifecycle/ViewModel;", "useCase", "Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;", "mediaCaptureParameters", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;", "<init>", "(Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;)V", "_event", "Lcom/sightcall/pratik/livedata/SingleLiveEvent;", "Lcom/sightcall/mediacapture/presenter/Event;", MvelScriptManager.VAR_EVENT, "Landroidx/lifecycle/LiveData;", "getEvent", "()Landroidx/lifecycle/LiveData;", "_state", "Lcom/sightcall/mediacapture/presenter/MediaCaptureState;", "state", "getState", "_selectedCaptureState", "Lcom/sightcall/mediacapture/presenter/SelectedCaptureState;", "selectedCaptureState", "getSelectedCaptureState", "_cameraState", "Landroidx/lifecycle/MutableLiveData;", "Lcom/sightcall/mediacapture/presenter/CameraState;", "cameraState", "getCameraState", "_cameraActionsState", "Lcom/sightcall/mediacapture/presenter/CameraActionsState;", "cameraActionsState", "getCameraActionsState", "_previewState", "Lcom/sightcall/mediacapture/presenter/PreviewState;", "previewState", "getPreviewState", "_timer", "", "timer", "getTimer", "_progressValue", "", "progressValue", "getProgressValue", "_isFlashlightOn", "", "isFlashlightOn", Payload.SOURCE, "Lcom/sightcall/mediacapture/presenter/Source;", "isPhotoCaptureAllowed", "isVideoCaptureAllowed", "mediaCaptureState", "isRecording", "recordingStartingTime", "", "timerHandler", "Landroid/os/Handler;", "timerRunnable", "com/sightcall/mediacapture/presenter/MediaCaptureViewModel$timerRunnable$1", "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$timerRunnable$1;", "countDownTimer", "com/sightcall/mediacapture/presenter/MediaCaptureViewModel$countDownTimer$1", "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$countDownTimer$1;", "cameraSelector", "Landroidx/camera/core/CameraSelector;", "Lorg/jspecify/annotations/NonNull;", "getCameraSelector", "()Landroidx/camera/core/CameraSelector;", "setCameraSelector", "(Landroidx/camera/core/CameraSelector;)V", "maxDuration", "getMaxDuration", "()Ljava/lang/Integer;", "_collimatorState", "LSCCollimator;", "collimatorState", "getCollimatorState", "_collimatorViewHeight", "_collimatorViewWidth", "initSource", "shouldShowVideoSourcePopup", "shouldShowImageSourcePopup", "requestCameraPermissions", "", "requiredPermissionsForCamera", "", "Lcom/sightcall/pratik/permission/Permission;", "onRequestPermissionsResult", PermissionsActivity.EXTRA_PERMISSIONS, "", "Lcom/sightcall/pratik/permission/PermissionResult;", "openPhotoGallery", "openVideoGallery", "initMediaCaptureState", "startCamera", "updateCollimatorView", "width", "height", "onStartCameraError", "updateCameraActionsState", "onCameraMainActionPressed", "cameraAction", "Lcom/sightcall/mediacapture/presenter/CameraAction;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "onCameraSideActionPressed", "takePhoto", "recordVideo", "startTimer", "stopRecording", "onMediaSelected", "uri", "Landroid/net/Uri;", "validateMediaDuration", "media", "Lcom/sightcall/mediacapture/domain/entities/Media;", "send", "cancel", "onBackPressed", "switchCamera", "isFrontFacing", "resetFlashlight", "toggleFlashlight", "backupToGallery", "Factory", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MediaCaptureViewModel extends ViewModel {
    private final MutableLiveData<CameraActionsState> _cameraActionsState;
    private final MutableLiveData<CameraState> _cameraState;
    private final MutableLiveData<SCCollimator> _collimatorState;
    private int _collimatorViewHeight;
    private int _collimatorViewWidth;
    private final SingleLiveEvent<Event> _event;
    private final MutableLiveData<Boolean> _isFlashlightOn;
    private final MutableLiveData<PreviewState> _previewState;
    private final MutableLiveData<Integer> _progressValue;
    private final SingleLiveEvent<SelectedCaptureState> _selectedCaptureState;
    private final SingleLiveEvent<MediaCaptureState> _state;
    private final MutableLiveData<String> _timer;
    private CameraSelector cameraSelector;
    private final MediaCaptureViewModel$countDownTimer$1 countDownTimer;
    private final boolean isPhotoCaptureAllowed;
    private boolean isRecording;
    private final boolean isVideoCaptureAllowed;
    private final MediaCaptureParameters mediaCaptureParameters;
    private final SelectedCaptureState mediaCaptureState;
    private long recordingStartingTime;
    private Source source;
    private final Handler timerHandler;
    private final MediaCaptureViewModel$timerRunnable$1 timerRunnable;
    private final MediaCaptureUseCase useCase;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[Source.values().length];
            try {
                iArr[Source.Camera.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Source.GalleryPhoto.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Source.GalleryVideo.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[CameraAction.values().length];
            try {
                iArr2[CameraAction.TAKE_PHOTO.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[CameraAction.RECORD_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[CameraAction.STOP_RECORDING.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.presenter.MediaCaptureViewModel$recordVideo$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.mediacapture.presenter.MediaCaptureViewModel$recordVideo$1", f = "MediaCaptureViewModel.kt", l = {298}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $context;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Context context, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$context = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MediaCaptureViewModel.this.new AnonymousClass1(this.$context, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.label;
            if (i2 == 0) {
                ResultKt.b(obj);
                MediaCaptureUseCase mediaCaptureUseCase = MediaCaptureViewModel.this.useCase;
                Context context = this.$context;
                this.label = 1;
                obj = mediaCaptureUseCase.recordVideo(context, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            MediaCaptureViewModel mediaCaptureViewModel = MediaCaptureViewModel.this;
            Result result = (Result) obj;
            if (result instanceof Result.Error) {
                mediaCaptureViewModel._event.setValue(new Event.OnResult(new Result.Error(MappersKt.toMediaCaptureError((MediaCaptureError) ((Result.Error) result).getError()))));
            } else {
                if (!(result instanceof Result.Success)) {
                    v40.g();
                    return null;
                }
                mediaCaptureViewModel._event.setValue(new Event.OnPreview((Media) ((Result.Success) result).getSuccess(), null, 2, null));
            }
            return Unit.f71739a;
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.presenter.MediaCaptureViewModel$send$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.mediacapture.presenter.MediaCaptureViewModel$send$1", f = "MediaCaptureViewModel.kt", l = {360}, m = "invokeSuspend", v = 2)
    public static final class C03961 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Context $context;
        final /* synthetic */ Media $media;
        int label;

        /* JADX INFO: renamed from: com.sightcall.mediacapture.presenter.MediaCaptureViewModel$send$1$WhenMappings */
        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[MediaType.values().length];
                try {
                    iArr[MediaType.Photo.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[MediaType.Video.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C03961(Media media, Context context, Continuation<? super C03961> continuation) {
            super(2, continuation);
            this.$media = media;
            this.$context = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MediaCaptureViewModel.this.new C03961(this.$media, this.$context, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03961) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Integer photoMaxSize;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.label;
            if (i2 == 0) {
                ResultKt.b(obj);
                MediaCaptureViewModel.this._previewState.postValue(PreviewState.Loading.INSTANCE);
                MediaCaptureUseCase mediaCaptureUseCase = MediaCaptureViewModel.this.useCase;
                Media media = this.$media;
                int i3 = WhenMappings.$EnumSwitchMapping$0[media.getType().ordinal()];
                if (i3 == 1) {
                    photoMaxSize = MediaCaptureViewModel.this.mediaCaptureParameters.getPhotoMaxSize();
                } else {
                    if (i3 != 2) {
                        v40.g();
                        return null;
                    }
                    photoMaxSize = MediaCaptureViewModel.this.mediaCaptureParameters.getVideoMaxSize();
                }
                Integer photoTargetWeight = MediaCaptureViewModel.this.mediaCaptureParameters.getPhotoTargetWeight();
                this.label = 1;
                obj = mediaCaptureUseCase.resizeAndSave(media, photoMaxSize, photoTargetWeight, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            Result result = (Result) obj;
            if (result instanceof Result.Error) {
                MediaCaptureViewModel.this._event.setValue(new Event.OnResult(new Result.Error(MappersKt.toMediaCaptureError((MediaCaptureError) ((Result.Error) result).getError()))));
            } else {
                if (!(result instanceof Result.Success)) {
                    v40.g();
                    return null;
                }
                try {
                    Boolean backupLibrary = MediaCaptureViewModel.this.mediaCaptureParameters.getBackupLibrary();
                    if ((backupLibrary != null ? backupLibrary.booleanValue() : false) && ((Media) ((Result.Success) result).getSuccess()).getSource() == MediaSource.Camera) {
                        MediaCaptureViewModel.this.backupToGallery((Media) ((Result.Success) result).getSuccess(), this.$context);
                    }
                    MediaCaptureViewModel.this._event.setValue(new Event.OnResult(new Result.Success(((Result.Success) result).getSuccess())));
                } catch (Exception e2) {
                    MediaCaptureViewModel.this._event.setValue(new Event.OnBackupFailed(new Result.Success(((Result.Success) result).getSuccess()), e2));
                }
            }
            MediaCaptureViewModel.this._previewState.postValue(PreviewState.Finished.INSTANCE);
            return Unit.f71739a;
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.presenter.MediaCaptureViewModel$startCamera$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.mediacapture.presenter.MediaCaptureViewModel$startCamera$1", f = "MediaCaptureViewModel.kt", l = {207}, m = "invokeSuspend", v = 2)
    public static final class C03971 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public C03971(Continuation<? super C03971> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MediaCaptureViewModel.this.new C03971(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03971) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.label;
            if (i2 == 0) {
                ResultKt.b(obj);
                MediaCaptureViewModel.this.resetFlashlight();
                MediaCaptureUseCase mediaCaptureUseCase = MediaCaptureViewModel.this.useCase;
                boolean z = MediaCaptureViewModel.this.isPhotoCaptureAllowed;
                Integer photoMaxSize = MediaCaptureViewModel.this.mediaCaptureParameters.getPhotoMaxSize();
                boolean z2 = MediaCaptureViewModel.this.isVideoCaptureAllowed;
                this.label = 1;
                if (mediaCaptureUseCase.initCamera(z, photoMaxSize, z2, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            UseCaseGroup.Builder builder = new UseCaseGroup.Builder();
            MediaCaptureViewModel mediaCaptureViewModel = MediaCaptureViewModel.this;
            Preview cameraPreview = mediaCaptureViewModel.useCase.getCameraPreview();
            ArrayList arrayList = builder.f2003a;
            arrayList.add(cameraPreview);
            if (mediaCaptureViewModel.isPhotoCaptureAllowed) {
                arrayList.add(mediaCaptureViewModel.useCase.getImageCapture());
            }
            if (mediaCaptureViewModel.isVideoCaptureAllowed) {
                arrayList.add(mediaCaptureViewModel.useCase.getVideoCapture());
            }
            MutableLiveData mutableLiveData = MediaCaptureViewModel.this._cameraState;
            ProcessCameraProvider cameraProvider = MediaCaptureViewModel.this.useCase.getCameraProvider();
            CameraSelector cameraSelector = MediaCaptureViewModel.this.getCameraSelector();
            Preview cameraPreview2 = MediaCaptureViewModel.this.useCase.getCameraPreview();
            Preconditions.b(true ^ arrayList.isEmpty(), "UseCase must not be empty.");
            ArrayList arrayList2 = builder.f2004b;
            Iterator it = arrayList2.iterator();
            if (it.hasNext()) {
                it.next().getClass();
                r81.h();
                return null;
            }
            mutableLiveData.setValue(new CameraState.Ready(cameraProvider, cameraSelector, cameraPreview2, new UseCaseGroup(arrayList, arrayList2)));
            MediaCaptureViewModel.this.updateCameraActionsState();
            return Unit.f71739a;
        }
    }

    /* JADX INFO: renamed from: com.sightcall.mediacapture.presenter.MediaCaptureViewModel$takePhoto$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.mediacapture.presenter.MediaCaptureViewModel$takePhoto$1", f = "MediaCaptureViewModel.kt", l = {286}, m = "invokeSuspend", v = 2)
    public static final class C03981 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public C03981(Continuation<? super C03981> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MediaCaptureViewModel.this.new C03981(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03981) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.label;
            if (i2 == 0) {
                ResultKt.b(obj);
                MediaCaptureUseCase mediaCaptureUseCase = MediaCaptureViewModel.this.useCase;
                SCCollimator sCCollimator = (SCCollimator) MediaCaptureViewModel.this._collimatorState.getValue();
                int i3 = MediaCaptureViewModel.this._collimatorViewWidth;
                int i4 = MediaCaptureViewModel.this._collimatorViewHeight;
                this.label = 1;
                obj = mediaCaptureUseCase.takePhoto(sCCollimator, i3, i4, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            MediaCaptureViewModel mediaCaptureViewModel = MediaCaptureViewModel.this;
            Result result = (Result) obj;
            if (result instanceof Result.Error) {
                mediaCaptureViewModel._event.setValue(new Event.OnResult(new Result.Error(MappersKt.toMediaCaptureError((MediaCaptureError) ((Result.Error) result).getError()))));
            } else {
                if (!(result instanceof Result.Success)) {
                    v40.g();
                    return null;
                }
                mediaCaptureViewModel._event.setValue(new Event.OnPreview((Media) ((Result.Success) result).getSuccess(), (SCCollimator) mediaCaptureViewModel._collimatorState.getValue()));
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [com.sightcall.mediacapture.presenter.MediaCaptureViewModel$timerRunnable$1] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.sightcall.mediacapture.presenter.MediaCaptureViewModel$countDownTimer$1] */
    public MediaCaptureViewModel(MediaCaptureUseCase mediaCaptureUseCase, MediaCaptureParameters mediaCaptureParameters) {
        mediaCaptureUseCase.getClass();
        mediaCaptureParameters.getClass();
        this.useCase = mediaCaptureUseCase;
        this.mediaCaptureParameters = mediaCaptureParameters;
        this._event = new SingleLiveEvent<>();
        this._state = new SingleLiveEvent<>();
        SingleLiveEvent<SelectedCaptureState> singleLiveEvent = new SingleLiveEvent<>();
        this._selectedCaptureState = singleLiveEvent;
        MutableLiveData<CameraState> mutableLiveData = new MutableLiveData<>();
        this._cameraState = mutableLiveData;
        this._cameraActionsState = new MutableLiveData<>();
        this._previewState = new MutableLiveData<>(PreviewState.Idle.INSTANCE);
        this._timer = new MutableLiveData<>();
        this._progressValue = new MutableLiveData<>();
        this._isFlashlightOn = new MutableLiveData<>(Boolean.FALSE);
        this.source = initSource(mediaCaptureParameters);
        boolean z = false;
        this.isPhotoCaptureAllowed = mediaCaptureParameters.isCameraAllowed() && mediaCaptureParameters.isPhotoAllowed();
        if (mediaCaptureParameters.isCameraAllowed() && mediaCaptureParameters.isVideoAllowed()) {
            z = true;
        }
        this.isVideoCaptureAllowed = z;
        SelectedCaptureState selectedCaptureStateInitMediaCaptureState = initMediaCaptureState();
        this.mediaCaptureState = selectedCaptureStateInitMediaCaptureState;
        this.timerHandler = new Handler(Looper.getMainLooper());
        this.timerRunnable = new Runnable() { // from class: com.sightcall.mediacapture.presenter.MediaCaptureViewModel$timerRunnable$1
            @Override // java.lang.Runnable
            public void run() {
                long jCurrentTimeMillis = System.currentTimeMillis() - this.this$0.recordingStartingTime;
                this.this$0.mediaCaptureParameters.getMaxDuration();
                this.this$0._timer.setValue(MappersKt.toTime(Math.abs(jCurrentTimeMillis)));
                this.this$0.timerHandler.postDelayed(this, 1000L);
            }
        };
        Integer maxDuration = mediaCaptureParameters.getMaxDuration();
        final long jIntValue = maxDuration != null ? ((long) maxDuration.intValue()) * 1000 : 0L;
        this.countDownTimer = new CountDownTimer(jIntValue) { // from class: com.sightcall.mediacapture.presenter.MediaCaptureViewModel$countDownTimer$1
            @Override // android.os.CountDownTimer
            public void onFinish() {
                if (this.this$0.mediaCaptureParameters.getMaxDuration() != null) {
                    this.this$0.stopRecording();
                }
            }

            @Override // android.os.CountDownTimer
            public void onTick(long millisUntilFinished) {
                long jAbs = Math.abs(millisUntilFinished) * 100;
                Integer maxDuration2 = this.this$0.mediaCaptureParameters.getMaxDuration();
                this.this$0._progressValue.postValue(Integer.valueOf(100 - ((int) (jAbs / ((long) ((maxDuration2 != null ? maxDuration2.intValue() : 0) * 1000))))));
            }
        };
        CameraSelector cameraSelector = CameraSelector.f1892c;
        cameraSelector.getClass();
        this.cameraSelector = cameraSelector;
        MutableLiveData<SCCollimator> mutableLiveData2 = new MutableLiveData<>(null);
        this._collimatorState = mutableLiveData2;
        singleLiveEvent.setValue(selectedCaptureStateInitMediaCaptureState);
        mutableLiveData.setValue(CameraState.Pending.INSTANCE);
        if (mediaCaptureParameters.getSafeArea() == null || mediaCaptureParameters.getAspectRatio() == null) {
            return;
        }
        mutableLiveData2.setValue(new SCCollimator(((float) mediaCaptureParameters.getSafeArea().doubleValue()) / 100.0f, (float) mediaCaptureParameters.getAspectRatio().doubleValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void backupToGallery(Media media, Context context) throws IOException {
        Uri uriInsert;
        String path = media.getUri().getPath();
        if (path == null) {
            Logger.INSTANCE.getTag();
            throw new FileNotFoundException("Invalid media path");
        }
        File file = new File(path);
        FileInputStream fileInputStream = new FileInputStream(file);
        ContentResolver contentResolver = context.getContentResolver();
        ContentValues contentValues = new ContentValues();
        contentValues.put("_display_name", file.getName());
        if (media.getType() == MediaType.Photo) {
            contentValues.put("relative_path", Environment.DIRECTORY_PICTURES);
            uriInsert = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
        } else {
            contentValues.put("relative_path", Environment.DIRECTORY_MOVIES);
            uriInsert = contentResolver.insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues);
        }
        if (uriInsert == null) {
            fileInputStream.close();
            Logger logger = Logger.INSTANCE;
            Objects.toString(uriInsert);
            logger.getTag();
            throw new FileNotFoundException("Invalid target path");
        }
        OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(uriInsert);
        if (outputStreamOpenOutputStream != null) {
            ByteStreamsKt.a(fileInputStream, outputStreamOpenOutputStream);
            outputStreamOpenOutputStream.close();
        }
        fileInputStream.close();
    }

    private static final Unit backupToGallery$lambda$1(Uri uri) {
        Logger logger = Logger.INSTANCE;
        Objects.toString(uri);
        logger.getTag();
        return Unit.f71739a;
    }

    private final SelectedCaptureState initMediaCaptureState() {
        if (shouldShowImageSourcePopup() || shouldShowVideoSourcePopup()) {
            return SelectedCaptureState.Selector.INSTANCE;
        }
        int i2 = WhenMappings.$EnumSwitchMapping$0[this.source.ordinal()];
        if (i2 == 1) {
            return SelectedCaptureState.CameraOnly.INSTANCE;
        }
        if (i2 == 2) {
            return SelectedCaptureState.GalleryPhotoOnly.INSTANCE;
        }
        if (i2 == 3) {
            return SelectedCaptureState.GalleryVideoOnly.INSTANCE;
        }
        v40.g();
        return null;
    }

    private final Source initSource(MediaCaptureParameters mediaCaptureParameters) {
        if (mediaCaptureParameters.isCameraAllowed()) {
            return Source.Camera;
        }
        if (mediaCaptureParameters.isGalleryImageAllowed()) {
            return Source.GalleryPhoto;
        }
        if (mediaCaptureParameters.isGalleryVideoAllowed()) {
            return Source.GalleryVideo;
        }
        az.m(mediaCaptureParameters, "Something's wrong with mediaConfig: ");
        return null;
    }

    private final void recordVideo(Context context) {
        this.isRecording = true;
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(context, null), 3);
        updateCameraActionsState();
        startTimer();
        if (this.mediaCaptureParameters.getMaxDuration() != null) {
            start();
        }
    }

    private final List<Permission> requiredPermissionsForCamera() {
        ArrayList arrayList = new ArrayList();
        if (this.isPhotoCaptureAllowed) {
            arrayList.add(Permission.Camera);
        }
        if (this.isVideoCaptureAllowed) {
            arrayList.add(Permission.Camera);
            arrayList.add(Permission.RecordAudio);
        }
        return arrayList;
    }

    private final boolean shouldShowImageSourcePopup() {
        return this.mediaCaptureParameters.isCameraAllowed() && this.mediaCaptureParameters.isGalleryImageAllowed();
    }

    private final boolean shouldShowVideoSourcePopup() {
        return this.mediaCaptureParameters.isCameraAllowed() && this.mediaCaptureParameters.isGalleryVideoAllowed();
    }

    private final void startTimer() {
        long jCurrentTimeMillis;
        Integer maxDuration = this.mediaCaptureParameters.getMaxDuration();
        if (maxDuration != null) {
            jCurrentTimeMillis = System.currentTimeMillis() + ((long) (maxDuration.intValue() * 1000));
        } else {
            jCurrentTimeMillis = System.currentTimeMillis();
        }
        this.recordingStartingTime = jCurrentTimeMillis;
        this.timerHandler.post(this.timerRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void stopRecording() {
        this.timerHandler.removeCallbacksAndMessages(null);
        this.isRecording = false;
        this.useCase.stopRecording();
        updateCameraActionsState();
        this._progressValue.postValue(0);
        cancel();
    }

    private final void takePhoto() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new C03981(null), 3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateCameraActionsState() {
        CameraAction cameraAction;
        CameraAction cameraAction2 = null;
        boolean z = false;
        if (this.isRecording) {
            cameraAction = CameraAction.STOP_RECORDING;
            if (this.mediaCaptureParameters.getMaxDuration() != null) {
                z = true;
            }
        } else if (this.isPhotoCaptureAllowed) {
            cameraAction = CameraAction.TAKE_PHOTO;
            if (this.isVideoCaptureAllowed) {
                cameraAction2 = CameraAction.RECORD_VIDEO;
            }
        } else {
            cameraAction = CameraAction.RECORD_VIDEO;
        }
        this._cameraActionsState.setValue(new CameraActionsState(cameraAction, cameraAction2, this.isRecording, z));
    }

    public final void cancel() {
        this._event.setValue(Event.OnCancel.INSTANCE);
    }

    public final LiveData<CameraActionsState> getCameraActionsState() {
        return this._cameraActionsState;
    }

    public final CameraSelector getCameraSelector() {
        return this.cameraSelector;
    }

    public final LiveData<CameraState> getCameraState() {
        return this._cameraState;
    }

    public final LiveData<SCCollimator> getCollimatorState() {
        return this._collimatorState;
    }

    public final LiveData<Event> getEvent() {
        return this._event;
    }

    public final Integer getMaxDuration() {
        return this.mediaCaptureParameters.getMaxDuration();
    }

    public final LiveData<PreviewState> getPreviewState() {
        return this._previewState;
    }

    public final LiveData<Integer> getProgressValue() {
        return this._progressValue;
    }

    public final LiveData<SelectedCaptureState> getSelectedCaptureState() {
        return this._selectedCaptureState;
    }

    public final LiveData<MediaCaptureState> getState() {
        return this._state;
    }

    public final LiveData<String> getTimer() {
        return this._timer;
    }

    public final LiveData<Boolean> isFlashlightOn() {
        return this._isFlashlightOn;
    }

    public final void onBackPressed() {
        this._event.setValue(new Event.OnResult(new Result.Error(com.sightcall.mediacapture.presenter.item.MediaCaptureError.BackPressed.INSTANCE)));
    }

    public final void onCameraMainActionPressed(CameraAction cameraAction, Context context) {
        cameraAction.getClass();
        context.getClass();
        int i2 = WhenMappings.$EnumSwitchMapping$1[cameraAction.ordinal()];
        if (i2 == 1) {
            takePhoto();
            return;
        }
        if (i2 == 2) {
            recordVideo(context);
        } else if (i2 == 3) {
            stopRecording();
        } else {
            v40.g();
        }
    }

    public final void onCameraSideActionPressed(CameraAction cameraAction, Context context) {
        context.getClass();
        int i2 = cameraAction == null ? -1 : WhenMappings.$EnumSwitchMapping$1[cameraAction.ordinal()];
        if (i2 == -1) {
            DoNothingKt.doNothing();
            return;
        }
        if (i2 == 1) {
            md.k("Take photo shouldn't be a side action");
            return;
        }
        if (i2 == 2) {
            recordVideo(context);
        } else if (i2 != 3) {
            v40.g();
        } else {
            md.k("Stop recording shouldn't be a side action");
        }
    }

    public final void onMediaSelected(Uri uri) {
        uri.getClass();
        this._event.setValue(new Event.OnPreview(this.useCase.extractMedia(uri), null, 2, null));
    }

    public final void onRequestPermissionsResult(List<PermissionResult> permissions) {
        permissions.getClass();
        if (!PermissionExtensionsKt.areAllPermissionsGranted(permissions)) {
            Logger logger = Logger.INSTANCE;
            Objects.toString(PermissionExtensionsKt.deniedPermissions(permissions));
            logger.getTag();
            this._event.setValue(new Event.OnResult(new Result.Error(com.sightcall.mediacapture.presenter.item.MediaCaptureError.PermissionDenied.INSTANCE)));
            return;
        }
        int i2 = WhenMappings.$EnumSwitchMapping$0[this.source.ordinal()];
        if (i2 == 1) {
            this._state.setValue(MediaCaptureState.CameraOnly.INSTANCE);
            return;
        }
        if (i2 == 2) {
            openPhotoGallery();
        } else if (i2 == 3) {
            openVideoGallery();
        } else {
            v40.g();
        }
    }

    public final void onStartCameraError() {
        this._event.setValue(new Event.OnResult(new Result.Error(com.sightcall.mediacapture.presenter.item.MediaCaptureError.Camera.INSTANCE)));
    }

    public final void openPhotoGallery() {
        this._state.setValue(MediaCaptureState.GalleryPhotoOnly.INSTANCE);
    }

    public final void openVideoGallery() {
        this._state.setValue(MediaCaptureState.GalleryVideoOnly.INSTANCE);
    }

    public final void requestCameraPermissions() {
        this._event.setValue(new Event.OnRequestPermissions(requiredPermissionsForCamera()));
        this.source = Source.Camera;
    }

    public final void resetFlashlight() {
        this._isFlashlightOn.postValue(Boolean.FALSE);
    }

    public final void send(Media media, Context context) {
        media.getClass();
        context.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new C03961(media, context, null), 3);
    }

    public final void setCameraSelector(CameraSelector cameraSelector) {
        cameraSelector.getClass();
        this.cameraSelector = cameraSelector;
    }

    public final void startCamera() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new C03971(null), 3);
    }

    public final void switchCamera(boolean isFrontFacing) {
        CameraSelector cameraSelector;
        CameraState value = getCameraState().getValue();
        if (value instanceof CameraState.Ready) {
            if (isFrontFacing) {
                CameraSelector.Builder builder = new CameraSelector.Builder();
                builder.a(1);
                cameraSelector = new CameraSelector(builder.f1894a);
            } else {
                CameraSelector.Builder builder2 = new CameraSelector.Builder();
                builder2.a(0);
                cameraSelector = new CameraSelector(builder2.f1894a);
            }
            this.cameraSelector = cameraSelector;
            this._cameraState.setValue(new CameraState.Ready(this.useCase.getCameraProvider(), this.cameraSelector, this.useCase.getCameraPreview(), ((CameraState.Ready) value).getUseCaseGroup()));
        }
    }

    public final void toggleFlashlight() {
        MutableLiveData<Boolean> mutableLiveData = this._isFlashlightOn;
        mutableLiveData.postValue(Boolean.valueOf(!Intrinsics.c(mutableLiveData.getValue(), Boolean.TRUE)));
    }

    public final void updateCollimatorView(int width, int height) {
        this._collimatorViewWidth = width;
        this._collimatorViewHeight = height;
    }

    public final boolean validateMediaDuration(Media media, Context context) throws IOException {
        Integer maxDuration;
        media.getClass();
        context.getClass();
        if (media.getType() != MediaType.Video || media.getSource() != MediaSource.Gallery || (maxDuration = this.mediaCaptureParameters.getMaxDuration()) == null) {
            return true;
        }
        int iIntValue = maxDuration.intValue();
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(context, media.getUri());
        String strExtractMetadata = mediaMetadataRetriever.extractMetadata(9);
        Long lValueOf = strExtractMetadata != null ? Long.valueOf(Long.parseLong(strExtractMetadata)) : null;
        mediaMetadataRetriever.release();
        if (lValueOf != null) {
            return ((long) (iIntValue * 1000)) >= lValueOf.longValue();
        }
        Logger logger = Logger.INSTANCE;
        Objects.toString(media.getUri());
        logger.getTag();
        return true;
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010\f\u001a\u0002H\r\"\b\b\u0000\u0010\r*\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\r0\u0010H\u0016¢\u0006\u0002\u0010\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0012"}, d2 = {"Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "useCase", "Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;", "<init>", "(Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;)V", "mediaCaptureParameters", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;", "getMediaCaptureParameters", "()Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;", "setMediaCaptureParameters", "(Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;)V", "create", "T", "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Factory implements ViewModelProvider.Factory {
        public MediaCaptureParameters mediaCaptureParameters;
        private final MediaCaptureUseCase useCase;

        @Inject
        public Factory(MediaCaptureUseCase mediaCaptureUseCase) {
            mediaCaptureUseCase.getClass();
            this.useCase = mediaCaptureUseCase;
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public <T extends ViewModel> T create(Class<T> modelClass) {
            modelClass.getClass();
            return new MediaCaptureViewModel(this.useCase, getMediaCaptureParameters());
        }

        public final MediaCaptureParameters getMediaCaptureParameters() {
            MediaCaptureParameters mediaCaptureParameters = this.mediaCaptureParameters;
            if (mediaCaptureParameters != null) {
                return mediaCaptureParameters;
            }
            Intrinsics.h("mediaCaptureParameters");
            throw null;
        }

        public final void setMediaCaptureParameters(MediaCaptureParameters mediaCaptureParameters) {
            mediaCaptureParameters.getClass();
            this.mediaCaptureParameters = mediaCaptureParameters;
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public /* bridge */ <T extends ViewModel> T create(KClass<T> kClass, CreationExtras creationExtras) {
            return (T) super.create(kClass, creationExtras);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public /* bridge */ <T extends ViewModel> T create(Class<T> cls, CreationExtras creationExtras) {
            return (T) super.create(cls, creationExtras);
        }
    }
}
