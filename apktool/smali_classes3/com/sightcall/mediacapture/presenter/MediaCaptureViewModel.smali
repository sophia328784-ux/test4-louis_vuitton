.class public final Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$Factory;,
        Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00de\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n*\u0002:=\u0008\u0000\u0018\u00002\u00020\u0001:\u0001|B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010O\u001a\u0002002\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0008\u0010P\u001a\u00020-H\u0002J\u0008\u0010Q\u001a\u00020-H\u0002J\u0006\u0010R\u001a\u00020SJ\u000e\u0010T\u001a\u0008\u0012\u0004\u0012\u00020V0UH\u0002J\u0014\u0010W\u001a\u00020S2\u000c\u0010X\u001a\u0008\u0012\u0004\u0012\u00020Z0YJ\u0006\u0010[\u001a\u00020SJ\u0006\u0010\\\u001a\u00020SJ\u0008\u0010]\u001a\u00020\u0014H\u0002J\u0008\u0010^\u001a\u00020SH\u0007J\u0016\u0010_\u001a\u00020S2\u0006\u0010`\u001a\u00020)2\u0006\u0010a\u001a\u00020)J\u0006\u0010b\u001a\u00020SJ\u0008\u0010c\u001a\u00020SH\u0002J\u0016\u0010d\u001a\u00020S2\u0006\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020hJ\u0018\u0010i\u001a\u00020S2\u0008\u0010e\u001a\u0004\u0018\u00010f2\u0006\u0010g\u001a\u00020hJ\u0008\u0010j\u001a\u00020SH\u0002J\u0010\u0010k\u001a\u00020S2\u0006\u0010g\u001a\u00020hH\u0002J\u0008\u0010l\u001a\u00020SH\u0002J\u0008\u0010m\u001a\u00020SH\u0002J\u000e\u0010n\u001a\u00020S2\u0006\u0010o\u001a\u00020pJ\u0016\u0010q\u001a\u00020-2\u0006\u0010r\u001a\u00020s2\u0006\u0010g\u001a\u00020hJ\u0016\u0010t\u001a\u00020S2\u0006\u0010r\u001a\u00020s2\u0006\u0010g\u001a\u00020hJ\u0006\u0010u\u001a\u00020SJ\u0006\u0010v\u001a\u00020SJ\u000e\u0010w\u001a\u00020S2\u0006\u0010x\u001a\u00020-J\u0006\u0010y\u001a\u00020SJ\u0006\u0010z\u001a\u00020SJ\u0018\u0010{\u001a\u00020S2\u0006\u0010r\u001a\u00020s2\u0006\u0010g\u001a\u00020hH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000eR\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u000eR\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u000eR\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u000eR\u0014\u0010 \u001a\u0008\u0012\u0004\u0012\u00020!0\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020!0\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u000eR\u0014\u0010$\u001a\u0008\u0012\u0004\u0012\u00020%0\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010&\u001a\u0008\u0012\u0004\u0012\u00020%0\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010\u000eR\u0014\u0010(\u001a\u0008\u0012\u0004\u0012\u00020)0\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010*\u001a\u0008\u0012\u0004\u0012\u00020)0\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010\u000eR\u0014\u0010,\u001a\u0008\u0012\u0004\u0012\u00020-0\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010.\u001a\u0008\u0012\u0004\u0012\u00020-0\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010\u000eR\u000e\u0010/\u001a\u000200X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020-X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020-X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00105\u001a\u000206X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u000208X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00109\u001a\u00020:X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010;R\u0010\u0010<\u001a\u00020=X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010>R\u001f\u0010?\u001a\u00070@\u00a2\u0006\u0002\u0008AX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\u0013\u0010F\u001a\u0004\u0018\u00010)8F\u00a2\u0006\u0006\u001a\u0004\u0008G\u0010HR\u0016\u0010I\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010J0\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010K\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010J0\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008L\u0010\u000eR\u000e\u0010M\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u00020)X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006}"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "useCase",
        "Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;",
        "mediaCaptureParameters",
        "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;",
        "<init>",
        "(Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;)V",
        "_event",
        "Lcom/sightcall/pratik/livedata/SingleLiveEvent;",
        "Lcom/sightcall/mediacapture/presenter/Event;",
        "event",
        "Landroidx/lifecycle/LiveData;",
        "getEvent",
        "()Landroidx/lifecycle/LiveData;",
        "_state",
        "Lcom/sightcall/mediacapture/presenter/MediaCaptureState;",
        "state",
        "getState",
        "_selectedCaptureState",
        "Lcom/sightcall/mediacapture/presenter/SelectedCaptureState;",
        "selectedCaptureState",
        "getSelectedCaptureState",
        "_cameraState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/sightcall/mediacapture/presenter/CameraState;",
        "cameraState",
        "getCameraState",
        "_cameraActionsState",
        "Lcom/sightcall/mediacapture/presenter/CameraActionsState;",
        "cameraActionsState",
        "getCameraActionsState",
        "_previewState",
        "Lcom/sightcall/mediacapture/presenter/PreviewState;",
        "previewState",
        "getPreviewState",
        "_timer",
        "",
        "timer",
        "getTimer",
        "_progressValue",
        "",
        "progressValue",
        "getProgressValue",
        "_isFlashlightOn",
        "",
        "isFlashlightOn",
        "source",
        "Lcom/sightcall/mediacapture/presenter/Source;",
        "isPhotoCaptureAllowed",
        "isVideoCaptureAllowed",
        "mediaCaptureState",
        "isRecording",
        "recordingStartingTime",
        "",
        "timerHandler",
        "Landroid/os/Handler;",
        "timerRunnable",
        "com/sightcall/mediacapture/presenter/MediaCaptureViewModel$timerRunnable$1",
        "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$timerRunnable$1;",
        "countDownTimer",
        "com/sightcall/mediacapture/presenter/MediaCaptureViewModel$countDownTimer$1",
        "Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$countDownTimer$1;",
        "cameraSelector",
        "Landroidx/camera/core/CameraSelector;",
        "Lorg/jspecify/annotations/NonNull;",
        "getCameraSelector",
        "()Landroidx/camera/core/CameraSelector;",
        "setCameraSelector",
        "(Landroidx/camera/core/CameraSelector;)V",
        "maxDuration",
        "getMaxDuration",
        "()Ljava/lang/Integer;",
        "_collimatorState",
        "LSCCollimator;",
        "collimatorState",
        "getCollimatorState",
        "_collimatorViewHeight",
        "_collimatorViewWidth",
        "initSource",
        "shouldShowVideoSourcePopup",
        "shouldShowImageSourcePopup",
        "requestCameraPermissions",
        "",
        "requiredPermissionsForCamera",
        "",
        "Lcom/sightcall/pratik/permission/Permission;",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "Lcom/sightcall/pratik/permission/PermissionResult;",
        "openPhotoGallery",
        "openVideoGallery",
        "initMediaCaptureState",
        "startCamera",
        "updateCollimatorView",
        "width",
        "height",
        "onStartCameraError",
        "updateCameraActionsState",
        "onCameraMainActionPressed",
        "cameraAction",
        "Lcom/sightcall/mediacapture/presenter/CameraAction;",
        "context",
        "Landroid/content/Context;",
        "onCameraSideActionPressed",
        "takePhoto",
        "recordVideo",
        "startTimer",
        "stopRecording",
        "onMediaSelected",
        "uri",
        "Landroid/net/Uri;",
        "validateMediaDuration",
        "media",
        "Lcom/sightcall/mediacapture/domain/entities/Media;",
        "send",
        "cancel",
        "onBackPressed",
        "switchCamera",
        "isFrontFacing",
        "resetFlashlight",
        "toggleFlashlight",
        "backupToGallery",
        "Factory",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _cameraActionsState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/sightcall/mediacapture/presenter/CameraActionsState;",
            ">;"
        }
    .end annotation
.end field

.field private final _cameraState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/sightcall/mediacapture/presenter/CameraState;",
            ">;"
        }
    .end annotation
.end field

.field private final _collimatorState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "LSCCollimator;",
            ">;"
        }
    .end annotation
.end field

.field private _collimatorViewHeight:I

.field private _collimatorViewWidth:I

.field private final _event:Lcom/sightcall/pratik/livedata/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/pratik/livedata/SingleLiveEvent<",
            "Lcom/sightcall/mediacapture/presenter/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final _isFlashlightOn:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _previewState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/sightcall/mediacapture/presenter/PreviewState;",
            ">;"
        }
    .end annotation
.end field

.field private final _progressValue:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _selectedCaptureState:Lcom/sightcall/pratik/livedata/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/pratik/livedata/SingleLiveEvent<",
            "Lcom/sightcall/mediacapture/presenter/SelectedCaptureState;",
            ">;"
        }
    .end annotation
.end field

.field private final _state:Lcom/sightcall/pratik/livedata/SingleLiveEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/pratik/livedata/SingleLiveEvent<",
            "Lcom/sightcall/mediacapture/presenter/MediaCaptureState;",
            ">;"
        }
    .end annotation
.end field

.field private final _timer:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cameraSelector:Landroidx/camera/core/CameraSelector;

.field private final countDownTimer:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$countDownTimer$1;

.field private final isPhotoCaptureAllowed:Z

.field private isRecording:Z

.field private final isVideoCaptureAllowed:Z

.field private final mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

.field private final mediaCaptureState:Lcom/sightcall/mediacapture/presenter/SelectedCaptureState;

.field private recordingStartingTime:J

.field private source:Lcom/sightcall/mediacapture/presenter/Source;

.field private final timerHandler:Landroid/os/Handler;

.field private final timerRunnable:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$timerRunnable$1;

.field private final useCase:Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;


# direct methods
.method public constructor <init>(Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->useCase:Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    iput-object p2, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    new-instance p1, Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    invoke-direct {p1}, Lcom/sightcall/pratik/livedata/SingleLiveEvent;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_event:Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    new-instance p1, Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    invoke-direct {p1}, Lcom/sightcall/pratik/livedata/SingleLiveEvent;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_state:Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    new-instance p1, Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    invoke-direct {p1}, Lcom/sightcall/pratik/livedata/SingleLiveEvent;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_selectedCaptureState:Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_cameraState:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_cameraActionsState:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/sightcall/mediacapture/presenter/PreviewState$Idle;->INSTANCE:Lcom/sightcall/mediacapture/presenter/PreviewState$Idle;

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_previewState:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_timer:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_progressValue:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_isFlashlightOn:Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p0, p2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->initSource(Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;)Lcom/sightcall/mediacapture/presenter/Source;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->source:Lcom/sightcall/mediacapture/presenter/Source;

    invoke-virtual {p2}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isCameraAllowed()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isPhotoAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->isPhotoCaptureAllowed:Z

    invoke-virtual {p2}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isCameraAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isVideoAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->isVideoCaptureAllowed:Z

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->initMediaCaptureState()Lcom/sightcall/mediacapture/presenter/SelectedCaptureState;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->mediaCaptureState:Lcom/sightcall/mediacapture/presenter/SelectedCaptureState;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->timerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$timerRunnable$1;

    invoke-direct {v2, p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$timerRunnable$1;-><init>(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)V

    iput-object v2, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->timerRunnable:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$timerRunnable$1;

    invoke-virtual {p2}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->getMaxDuration()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    :goto_1
    new-instance v4, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$countDownTimer$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$countDownTimer$1;-><init>(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;J)V

    iput-object v4, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->countDownTimer:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$countDownTimer$1;

    sget-object v2, Landroidx/camera/core/CameraSelector;->c:Landroidx/camera/core/CameraSelector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->cameraSelector:Landroidx/camera/core/CameraSelector;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_collimatorState:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v1}, Lcom/sightcall/pratik/livedata/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lcom/sightcall/mediacapture/presenter/CameraState$Pending;->INSTANCE:Lcom/sightcall/mediacapture/presenter/CameraState$Pending;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->getSafeArea()Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->getAspectRatio()Ljava/lang/Double;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p0, LSCCollimator;

    invoke-virtual {p2}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->getSafeArea()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-virtual {p2}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->getAspectRatio()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float p2, v0

    invoke-direct {p0, p1, p2}, LSCCollimator;-><init>(FF)V

    invoke-virtual {v2, p0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static final synthetic access$backupToGallery(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;Lcom/sightcall/mediacapture/domain/entities/Media;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->backupToGallery(Lcom/sightcall/mediacapture/domain/entities/Media;Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getMediaCaptureParameters$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    return-object p0
.end method

.method public static final synthetic access$getRecordingStartingTime$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)J
    .locals 2

    iget-wide v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->recordingStartingTime:J

    return-wide v0
.end method

.method public static final synthetic access$getTimerHandler$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->timerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getUseCase$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->useCase:Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    return-object p0
.end method

.method public static final synthetic access$get_cameraState$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_cameraState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_collimatorState$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_collimatorState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_collimatorViewHeight$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)I
    .locals 0

    iget p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_collimatorViewHeight:I

    return p0
.end method

.method public static final synthetic access$get_collimatorViewWidth$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)I
    .locals 0

    iget p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_collimatorViewWidth:I

    return p0
.end method

.method public static final synthetic access$get_event$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Lcom/sightcall/pratik/livedata/SingleLiveEvent;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_event:Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    return-object p0
.end method

.method public static final synthetic access$get_previewState$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_previewState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_progressValue$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_progressValue:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$get_timer$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_timer:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$isPhotoCaptureAllowed$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->isPhotoCaptureAllowed:Z

    return p0
.end method

.method public static final synthetic access$isVideoCaptureAllowed$p(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->isVideoCaptureAllowed:Z

    return p0
.end method

.method public static final synthetic access$stopRecording(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->stopRecording()V

    return-void
.end method

.method public static final synthetic access$updateCameraActionsState(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->updateCameraActionsState()V

    return-void
.end method

.method private final backupToGallery(Lcom/sightcall/mediacapture/domain/entities/Media;Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/domain/entities/Media;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_display_name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/domain/entities/Media;->getType()Lcom/sightcall/mediacapture/domain/entities/MediaType;

    move-result-object p1

    sget-object v0, Lcom/sightcall/mediacapture/domain/entities/MediaType;->Photo:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    const-string v2, "relative_path"

    if-ne p1, v0, :cond_0

    sget-object p1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p2, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0, p1}, Lkotlin/io/ByteStreamsKt;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    return-void

    :cond_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Invalid target path"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    new-instance p0, Ljava/io/FileNotFoundException;

    const-string p1, "Invalid media path"

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final backupToGallery$lambda$1(Landroid/net/Uri;)Lkotlin/Unit;
    .locals 1

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final initMediaCaptureState()Lcom/sightcall/mediacapture/presenter/SelectedCaptureState;
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->shouldShowImageSourcePopup()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->shouldShowVideoSourcePopup()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->source:Lcom/sightcall/mediacapture/presenter/Source;

    sget-object v0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/sightcall/mediacapture/presenter/SelectedCaptureState$GalleryVideoOnly;->INSTANCE:Lcom/sightcall/mediacapture/presenter/SelectedCaptureState$GalleryVideoOnly;

    return-object p0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    sget-object p0, Lcom/sightcall/mediacapture/presenter/SelectedCaptureState$GalleryPhotoOnly;->INSTANCE:Lcom/sightcall/mediacapture/presenter/SelectedCaptureState$GalleryPhotoOnly;

    return-object p0

    :cond_3
    sget-object p0, Lcom/sightcall/mediacapture/presenter/SelectedCaptureState$CameraOnly;->INSTANCE:Lcom/sightcall/mediacapture/presenter/SelectedCaptureState$CameraOnly;

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Lcom/sightcall/mediacapture/presenter/SelectedCaptureState$Selector;->INSTANCE:Lcom/sightcall/mediacapture/presenter/SelectedCaptureState$Selector;

    return-object p0
.end method

.method private final initSource(Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;)Lcom/sightcall/mediacapture/presenter/Source;
    .locals 0

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isCameraAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sightcall/mediacapture/presenter/Source;->Camera:Lcom/sightcall/mediacapture/presenter/Source;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryImageAllowed()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sightcall/mediacapture/presenter/Source;->GalleryPhoto:Lcom/sightcall/mediacapture/presenter/Source;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryVideoAllowed()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sightcall/mediacapture/presenter/Source;->GalleryVideo:Lcom/sightcall/mediacapture/presenter/Source;

    return-object p0

    :cond_2
    const-string p0, "Something\'s wrong with mediaConfig: "

    invoke-static {p1, p0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private final recordVideo(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->isRecording:Z

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$recordVideo$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$recordVideo$1;-><init>(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v0, v2, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->updateCameraActionsState()V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->startTimer()V

    iget-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->getMaxDuration()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->countDownTimer:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$countDownTimer$1;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private final requiredPermissionsForCamera()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/pratik/permission/Permission;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->isPhotoCaptureAllowed:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sightcall/pratik/permission/Permission;->Camera:Lcom/sightcall/pratik/permission/Permission;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->isVideoCaptureAllowed:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sightcall/pratik/permission/Permission;->Camera:Lcom/sightcall/pratik/permission/Permission;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/sightcall/pratik/permission/Permission;->RecordAudio:Lcom/sightcall/pratik/permission/Permission;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private final shouldShowImageSourcePopup()Z
    .locals 1

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isCameraAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryImageAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final shouldShowVideoSourcePopup()Z
    .locals 1

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isCameraAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->isGalleryVideoAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final startTimer()V
    .locals 5

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->getMaxDuration()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    iput-wide v1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->recordingStartingTime:J

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->timerHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->timerRunnable:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$timerRunnable$1;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final stopRecording()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->timerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->isRecording:Z

    iget-object v1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->useCase:Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    invoke-virtual {v1}, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->stopRecording()V

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->updateCameraActionsState()V

    iget-object v1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_progressValue:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->countDownTimer:Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$countDownTimer$1;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method private final takePhoto()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$takePhoto$1;-><init>(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final updateCameraActionsState()V
    .locals 5

    iget-boolean v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->isRecording:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sightcall/mediacapture/presenter/CameraAction;->STOP_RECORDING:Lcom/sightcall/mediacapture/presenter/CameraAction;

    iget-object v3, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    invoke-virtual {v3}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->getMaxDuration()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->isPhotoCaptureAllowed:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sightcall/mediacapture/presenter/CameraAction;->TAKE_PHOTO:Lcom/sightcall/mediacapture/presenter/CameraAction;

    iget-boolean v3, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->isVideoCaptureAllowed:Z

    if-eqz v3, :cond_2

    sget-object v1, Lcom/sightcall/mediacapture/presenter/CameraAction;->RECORD_VIDEO:Lcom/sightcall/mediacapture/presenter/CameraAction;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sightcall/mediacapture/presenter/CameraAction;->RECORD_VIDEO:Lcom/sightcall/mediacapture/presenter/CameraAction;

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_cameraActionsState:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/sightcall/mediacapture/presenter/CameraActionsState;

    iget-boolean p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->isRecording:Z

    invoke-direct {v4, v0, v1, p0, v2}, Lcom/sightcall/mediacapture/presenter/CameraActionsState;-><init>(Lcom/sightcall/mediacapture/presenter/CameraAction;Lcom/sightcall/mediacapture/presenter/CameraAction;ZZ)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_event:Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    sget-object v0, Lcom/sightcall/mediacapture/presenter/Event$OnCancel;->INSTANCE:Lcom/sightcall/mediacapture/presenter/Event$OnCancel;

    invoke-virtual {p0, v0}, Lcom/sightcall/pratik/livedata/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getCameraActionsState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/sightcall/mediacapture/presenter/CameraActionsState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_cameraActionsState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getCameraSelector()Landroidx/camera/core/CameraSelector;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->cameraSelector:Landroidx/camera/core/CameraSelector;

    return-object p0
.end method

.method public final getCameraState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/sightcall/mediacapture/presenter/CameraState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_cameraState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getCollimatorState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "LSCCollimator;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_collimatorState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getEvent()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/sightcall/mediacapture/presenter/Event;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_event:Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    return-object p0
.end method

.method public final getMaxDuration()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->getMaxDuration()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getPreviewState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/sightcall/mediacapture/presenter/PreviewState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_previewState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getProgressValue()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_progressValue:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getSelectedCaptureState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/sightcall/mediacapture/presenter/SelectedCaptureState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_selectedCaptureState:Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    return-object p0
.end method

.method public final getState()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/sightcall/mediacapture/presenter/MediaCaptureState;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_state:Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    return-object p0
.end method

.method public final getTimer()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_timer:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final isFlashlightOn()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_isFlashlightOn:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final onBackPressed()V
    .locals 3

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_event:Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    new-instance v0, Lcom/sightcall/mediacapture/presenter/Event$OnResult;

    new-instance v1, Lcom/sightcall/pratik/Result$Error;

    sget-object v2, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$BackPressed;->INSTANCE:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$BackPressed;

    invoke-direct {v1, v2}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/sightcall/mediacapture/presenter/Event$OnResult;-><init>(Lcom/sightcall/pratik/Result;)V

    invoke-virtual {p0, v0}, Lcom/sightcall/pratik/livedata/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onCameraMainActionPressed(Lcom/sightcall/mediacapture/presenter/CameraAction;Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->stopRecording()V

    return-void

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->recordVideo(Landroid/content/Context;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->takePhoto()V

    return-void
.end method

.method public final onCameraSideActionPressed(Lcom/sightcall/mediacapture/presenter/CameraAction;Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    :goto_0
    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    const-string p0, "Stop recording shouldn\'t be a side action"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0, p2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->recordVideo(Landroid/content/Context;)V

    return-void

    :cond_3
    const-string p0, "Take photo shouldn\'t be a side action"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-static {}, Lcom/sightcall/pratik/misc/DoNothingKt;->doNothing()V

    return-void
.end method

.method public final onMediaSelected(Landroid/net/Uri;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_event:Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    new-instance v1, Lcom/sightcall/mediacapture/presenter/Event$OnPreview;

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->useCase:Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    invoke-virtual {p0, p1}, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->extractMedia(Landroid/net/Uri;)Lcom/sightcall/mediacapture/domain/entities/Media;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2, p1}, Lcom/sightcall/mediacapture/presenter/Event$OnPreview;-><init>(Lcom/sightcall/mediacapture/domain/entities/Media;LSCCollimator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/livedata/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onRequestPermissionsResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/pratik/permission/PermissionResult;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->areAllPermissionsGranted(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-static {p1}, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->deniedPermissions(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_event:Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    new-instance p1, Lcom/sightcall/mediacapture/presenter/Event$OnResult;

    new-instance v0, Lcom/sightcall/pratik/Result$Error;

    sget-object v1, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$PermissionDenied;->INSTANCE:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$PermissionDenied;

    invoke-direct {v0, v1}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0}, Lcom/sightcall/mediacapture/presenter/Event$OnResult;-><init>(Lcom/sightcall/pratik/Result;)V

    invoke-virtual {p0, p1}, Lcom/sightcall/pratik/livedata/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->source:Lcom/sightcall/mediacapture/presenter/Source;

    sget-object v0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->openVideoGallery()V

    return-void

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->openPhotoGallery()V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_state:Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    sget-object p1, Lcom/sightcall/mediacapture/presenter/MediaCaptureState$CameraOnly;->INSTANCE:Lcom/sightcall/mediacapture/presenter/MediaCaptureState$CameraOnly;

    invoke-virtual {p0, p1}, Lcom/sightcall/pratik/livedata/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onStartCameraError()V
    .locals 3

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_event:Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    new-instance v0, Lcom/sightcall/mediacapture/presenter/Event$OnResult;

    new-instance v1, Lcom/sightcall/pratik/Result$Error;

    sget-object v2, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$Camera;->INSTANCE:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$Camera;

    invoke-direct {v1, v2}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/sightcall/mediacapture/presenter/Event$OnResult;-><init>(Lcom/sightcall/pratik/Result;)V

    invoke-virtual {p0, v0}, Lcom/sightcall/pratik/livedata/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final openPhotoGallery()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_state:Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    sget-object v0, Lcom/sightcall/mediacapture/presenter/MediaCaptureState$GalleryPhotoOnly;->INSTANCE:Lcom/sightcall/mediacapture/presenter/MediaCaptureState$GalleryPhotoOnly;

    invoke-virtual {p0, v0}, Lcom/sightcall/pratik/livedata/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final openVideoGallery()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_state:Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    sget-object v0, Lcom/sightcall/mediacapture/presenter/MediaCaptureState$GalleryVideoOnly;->INSTANCE:Lcom/sightcall/mediacapture/presenter/MediaCaptureState$GalleryVideoOnly;

    invoke-virtual {p0, v0}, Lcom/sightcall/pratik/livedata/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final requestCameraPermissions()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_event:Lcom/sightcall/pratik/livedata/SingleLiveEvent;

    new-instance v1, Lcom/sightcall/mediacapture/presenter/Event$OnRequestPermissions;

    invoke-direct {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->requiredPermissionsForCamera()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sightcall/mediacapture/presenter/Event$OnRequestPermissions;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/sightcall/pratik/livedata/SingleLiveEvent;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/sightcall/mediacapture/presenter/Source;->Camera:Lcom/sightcall/mediacapture/presenter/Source;

    iput-object v0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->source:Lcom/sightcall/mediacapture/presenter/Source;

    return-void
.end method

.method public final resetFlashlight()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_isFlashlightOn:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final send(Lcom/sightcall/mediacapture/domain/entities/Media;Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$send$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$send$1;-><init>(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;Lcom/sightcall/mediacapture/domain/entities/Media;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setCameraSelector(Landroidx/camera/core/CameraSelector;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->cameraSelector:Landroidx/camera/core/CameraSelector;

    return-void
.end method

.method public final startCamera()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel$startCamera$1;-><init>(Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final switchCamera(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->getCameraState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/mediacapture/presenter/CameraState;

    instance-of v1, v0, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/camera/core/CameraSelector$Builder;

    invoke-direct {p1}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/camera/core/CameraSelector$Builder;->a(I)V

    new-instance v1, Landroidx/camera/core/CameraSelector;

    iget-object p1, p1, Landroidx/camera/core/CameraSelector$Builder;->a:Ljava/util/LinkedHashSet;

    invoke-direct {v1, p1}, Landroidx/camera/core/CameraSelector;-><init>(Ljava/util/LinkedHashSet;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/camera/core/CameraSelector$Builder;

    invoke-direct {p1}, Landroidx/camera/core/CameraSelector$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/camera/core/CameraSelector$Builder;->a(I)V

    new-instance v1, Landroidx/camera/core/CameraSelector;

    iget-object p1, p1, Landroidx/camera/core/CameraSelector$Builder;->a:Ljava/util/LinkedHashSet;

    invoke-direct {v1, p1}, Landroidx/camera/core/CameraSelector;-><init>(Ljava/util/LinkedHashSet;)V

    :goto_0
    iput-object v1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->cameraSelector:Landroidx/camera/core/CameraSelector;

    iget-object p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_cameraState:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;

    iget-object v2, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->useCase:Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    invoke-virtual {v2}, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->getCameraProvider()Landroidx/camera/lifecycle/ProcessCameraProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->cameraSelector:Landroidx/camera/core/CameraSelector;

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->useCase:Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/domain/MediaCaptureUseCase;->getCameraPreview()Landroidx/camera/core/Preview;

    move-result-object p0

    check-cast v0, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;

    invoke-virtual {v0}, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;->getUseCaseGroup()Landroidx/camera/core/UseCaseGroup;

    move-result-object v0

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/sightcall/mediacapture/presenter/CameraState$Ready;-><init>(Landroidx/camera/lifecycle/ProcessCameraProvider;Landroidx/camera/core/CameraSelector;Landroidx/camera/core/Preview;Landroidx/camera/core/UseCaseGroup;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final toggleFlashlight()V
    .locals 2

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_isFlashlightOn:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateCollimatorView(II)V
    .locals 0

    iput p1, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_collimatorViewWidth:I

    iput p2, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->_collimatorViewHeight:I

    return-void
.end method

.method public final validateMediaDuration(Lcom/sightcall/mediacapture/domain/entities/Media;Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/domain/entities/Media;->getType()Lcom/sightcall/mediacapture/domain/entities/MediaType;

    move-result-object v0

    sget-object v1, Lcom/sightcall/mediacapture/domain/entities/MediaType;->Video:Lcom/sightcall/mediacapture/domain/entities/MediaType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/domain/entities/Media;->getSource()Lcom/sightcall/mediacapture/domain/entities/MediaSource;

    move-result-object v0

    sget-object v1, Lcom/sightcall/mediacapture/domain/entities/MediaSource;->Gallery:Lcom/sightcall/mediacapture/domain/entities/MediaSource;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/MediaCaptureViewModel;->mediaCaptureParameters:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;

    invoke-virtual {p0}, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureParameters;->getMaxDuration()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/domain/entities/Media;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p2, 0x9

    invoke-virtual {v0, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    if-nez p2, :cond_2

    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/domain/entities/Media;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    return v2

    :cond_2
    mul-int/lit16 p0, p0, 0x3e8

    int-to-long p0, p0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    return v2
.end method
