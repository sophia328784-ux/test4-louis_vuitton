.class public final Lcom/sightcall/universal/internal/ui/CallViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001:\u0001[B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J \u0010:\u001a\u00020;2\u0008\u0010<\u001a\u0004\u0018\u00010\u001b2\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020;0>H\u0007J\u0006\u0010?\u001a\u00020;J\u000e\u0010@\u001a\u00020;2\u0006\u0010A\u001a\u00020BJ\u000e\u0010C\u001a\u00020;2\u0006\u0010D\u001a\u00020EJ\u0018\u0010F\u001a\u00020;2\u0006\u0010D\u001a\u00020G2\u0006\u0010H\u001a\u00020IH\u0002J\u0006\u0010J\u001a\u00020;J\u0006\u0010K\u001a\u00020\u0011J\u0006\u0010L\u001a\u00020\u0011J\"\u0010M\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020;0&2\u0006\u0010O\u001a\u00020PH\u0082@\u00a2\u0006\u0002\u0010QJ\"\u0010R\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020;0&2\u0006\u0010O\u001a\u00020PH\u0082@\u00a2\u0006\u0002\u0010QJ\u0012\u0010S\u001a\u00020;2\u0008\u0010T\u001a\u0004\u0018\u000106H\u0002J\u001c\u0010)\u001a\u00020;2\u0014\u0010U\u001a\u0010\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020(\u0018\u00010&J\u001c\u0010.\u001a\u00020;2\u0014\u0010U\u001a\u0010\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020(\u0018\u00010&J\u001c\u00101\u001a\u00020;2\u0014\u0010U\u001a\u0010\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020(\u0018\u00010&J\u0010\u0010V\u001a\u00020;2\u0008\u0010W\u001a\u0004\u0018\u00010\u001bJ\u001f\u0010X\u001a\u00020;2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0008\u0010 \u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0002\u0010YJ\u0010\u0010Z\u001a\u00020;2\u0006\u0010T\u001a\u000206H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR$\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u0015\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0016\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u001b@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR$\u0010 \u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u001f@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010#\u001a\u0004\u0008!\u0010\"R\"\u0010$\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020(\u0018\u00010&0%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R%\u0010)\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020(\u0018\u00010&0*8F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\"\u0010-\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020(\u0018\u00010&0%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R%\u0010.\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020(\u0018\u00010&0*8F\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010,R\"\u00100\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020(\u0018\u00010&0%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R%\u00101\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020(\u0018\u00010&0*8F\u00a2\u0006\u0006\u001a\u0004\u00082\u0010,R\u001a\u00103\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u0018\"\u0004\u00084\u0010\u001aR\u0010\u00105\u001a\u0004\u0018\u000106X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u000209X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\\"
    }
    d2 = {
        "Lcom/sightcall/universal/internal/ui/CallViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "sessionRepository",
        "Lcom/sightcall/session/SessionRepository;",
        "gpsRepository",
        "Lcom/sightcall/gpslocation/GpsRepository;",
        "<init>",
        "(Lcom/sightcall/session/SessionRepository;Lcom/sightcall/gpslocation/GpsRepository;)V",
        "session",
        "Lcom/sightcall/universal/model/Session;",
        "getSession",
        "()Lcom/sightcall/universal/model/Session;",
        "videoPlayerWrapper",
        "Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;",
        "getVideoPlayerWrapper",
        "()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;",
        "value",
        "",
        "shouldSendGuestGpsOnStartup",
        "getShouldSendGuestGpsOnStartup",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "shouldRestartCamera",
        "getShouldRestartCamera",
        "()Z",
        "setShouldRestartCamera",
        "(Z)V",
        "",
        "dataInBandRequestId",
        "getDataInBandRequestId",
        "()Ljava/lang/String;",
        "",
        "dataInBandRequestTimeout",
        "getDataInBandRequestTimeout",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "_mediaCaptureEventFromGallery",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/sightcall/pratik/Result;",
        "Lcom/sightcall/mediacapture/domain/entities/Media;",
        "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
        "mediaCaptureEventFromGallery",
        "Landroidx/lifecycle/LiveData;",
        "getMediaCaptureEventFromGallery",
        "()Landroidx/lifecycle/LiveData;",
        "_mediaCaptureEventFromCamera",
        "mediaCaptureEventFromCamera",
        "getMediaCaptureEventFromCamera",
        "_mediaCaptureEventVideoFromGallery",
        "mediaCaptureEventVideoFromGallery",
        "getMediaCaptureEventVideoFromGallery",
        "isSDFOpened",
        "setSDFOpened",
        "bestAccuracyLocation",
        "Landroid/location/Location;",
        "locationServiceDuration",
        "timer",
        "Ljava/util/Timer;",
        "onRoleSwitch",
        "",
        "extra",
        "onRoleSwitchCompleted",
        "Lkotlin/Function0;",
        "onGuestGpsOnStartupSent",
        "sendLocationStatus",
        "geolocationStatus",
        "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;",
        "startLocationService",
        "activity",
        "Landroid/app/Activity;",
        "handleResolvableApiException",
        "Lcom/sightcall/universal/internal/ui/CallActivity;",
        "exception",
        "Lcom/google/android/gms/common/api/ResolvableApiException;",
        "stopLocationService",
        "checkLocationPermission",
        "isGPSEnabled",
        "switchToGuest",
        "Lcom/sightcall/session/ReferenceUpdate;",
        "token",
        "Lcom/sightcall/httpclient/AuthorizationToken;",
        "(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "switchToAttendee",
        "sendLocationToRemote",
        "location",
        "result",
        "updateDataInBandFromGeoLocationRequest",
        "data",
        "updateDataInBandGeoLocationParameters",
        "(Ljava/lang/String;Ljava/lang/Long;)V",
        "keepBestAccuracyLocation",
        "Factory",
        "sdk_installedRelease"
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
.field private final _mediaCaptureEventFromCamera:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _mediaCaptureEventFromGallery:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _mediaCaptureEventVideoFromGallery:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
            ">;>;"
        }
    .end annotation
.end field

.field private bestAccuracyLocation:Landroid/location/Location;

.field private dataInBandRequestId:Ljava/lang/String;

.field private dataInBandRequestTimeout:Ljava/lang/Long;

.field private final gpsRepository:Lcom/sightcall/gpslocation/GpsRepository;

.field private isSDFOpened:Z

.field private final locationServiceDuration:J

.field private final session:Lcom/sightcall/universal/model/Session;

.field private final sessionRepository:Lcom/sightcall/session/SessionRepository;

.field private shouldRestartCamera:Z

.field private shouldSendGuestGpsOnStartup:Ljava/lang/Boolean;

.field private final timer:Ljava/util/Timer;

.field private final videoPlayerWrapper:Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;


# direct methods
.method public constructor <init>(Lcom/sightcall/session/SessionRepository;Lcom/sightcall/gpslocation/GpsRepository;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->sessionRepository:Lcom/sightcall/session/SessionRepository;

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->gpsRepository:Lcom/sightcall/gpslocation/GpsRepository;

    invoke-static {}, Lcom/sightcall/universal/extensions/UniversalExtensionKt;->getSession()Lcom/sightcall/universal/model/Session;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->session:Lcom/sightcall/universal/model/Session;

    new-instance p2, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapperImpl;

    invoke-direct {p2}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapperImpl;-><init>()V

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->videoPlayerWrapper:Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Usecase;->guestGpsOnStartup()Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->shouldSendGuestGpsOnStartup:Ljava/lang/Boolean;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Lcom/sightcall/universal/agent/Usecase;->user(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/agent/Usecase$User;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/sightcall/universal/agent/Usecase$User;->camera:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->shouldRestartCamera:Z

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->_mediaCaptureEventFromGallery:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->_mediaCaptureEventFromCamera:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->_mediaCaptureEventVideoFromGallery:Landroidx/lifecycle/MutableLiveData;

    const-wide/32 p1, 0xea60

    iput-wide p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->locationServiceDuration:J

    new-instance p1, Ljava/util/Timer;

    const-string p2, "LocationService"

    invoke-direct {p1, p2, v0}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->timer:Ljava/util/Timer;

    return-void
.end method

.method public static final synthetic access$getGpsRepository$p(Lcom/sightcall/universal/internal/ui/CallViewModel;)Lcom/sightcall/gpslocation/GpsRepository;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->gpsRepository:Lcom/sightcall/gpslocation/GpsRepository;

    return-object p0
.end method

.method public static final synthetic access$getLocationServiceDuration$p(Lcom/sightcall/universal/internal/ui/CallViewModel;)J
    .locals 2

    iget-wide v0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->locationServiceDuration:J

    return-wide v0
.end method

.method public static final synthetic access$getTimer$p(Lcom/sightcall/universal/internal/ui/CallViewModel;)Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method public static final synthetic access$handleResolvableApiException(Lcom/sightcall/universal/internal/ui/CallViewModel;Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/google/android/gms/common/api/ResolvableApiException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/ui/CallViewModel;->handleResolvableApiException(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/google/android/gms/common/api/ResolvableApiException;)V

    return-void
.end method

.method public static final synthetic access$keepBestAccuracyLocation(Lcom/sightcall/universal/internal/ui/CallViewModel;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->keepBestAccuracyLocation(Landroid/location/Location;)V

    return-void
.end method

.method public static final synthetic access$sendLocationToRemote(Lcom/sightcall/universal/internal/ui/CallViewModel;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/ui/CallViewModel;->sendLocationToRemote(Landroid/location/Location;)V

    return-void
.end method

.method public static final synthetic access$switchToAttendee(Lcom/sightcall/universal/internal/ui/CallViewModel;Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/ui/CallViewModel;->switchToAttendee(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$switchToGuest(Lcom/sightcall/universal/internal/ui/CallViewModel;Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/ui/CallViewModel;->switchToGuest(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final handleResolvableApiException(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/google/android/gms/common/api/ResolvableApiException;)V
    .locals 3

    :try_start_0
    new-instance p0, Landroidx/activity/result/IntentSenderRequest$Builder;

    iget-object p2, p2, Lcom/google/android/gms/common/api/ApiException;->b:Lcom/google/android/gms/common/api/Status;

    iget-object p2, p2, Lcom/google/android/gms/common/api/Status;->d:Landroid/app/PendingIntent;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Landroidx/activity/result/IntentSenderRequest$Builder;-><init>(Landroid/app/PendingIntent;)V

    new-instance p2, Landroidx/activity/result/IntentSenderRequest;

    iget-object v0, p0, Landroidx/activity/result/IntentSenderRequest$Builder;->a:Landroid/content/IntentSender;

    iget-object v1, p0, Landroidx/activity/result/IntentSenderRequest$Builder;->b:Landroid/content/Intent;

    iget v2, p0, Landroidx/activity/result/IntentSenderRequest$Builder;->c:I

    iget p0, p0, Landroidx/activity/result/IntentSenderRequest$Builder;->d:I

    invoke-direct {p2, v0, v1, v2, p0}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/content/IntentSender;Landroid/content/Intent;II)V

    iget-object p0, p1, Lcom/sightcall/universal/internal/ui/CallActivity;->resolutionForResultLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p0, p2}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private final keepBestAccuracyLocation(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->bestAccuracyLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->bestAccuracyLocation:Landroid/location/Location;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->bestAccuracyLocation:Landroid/location/Location;

    return-void
.end method

.method private final sendLocationToRemote(Landroid/location/Location;)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sget-object v2, Lcom/sightcall/common/DataChannelAction;->GEOLOCATION_RESPONSE:Lcom/sightcall/common/DataChannelAction;

    sget-object v3, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Success;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Success;

    iget-object v4, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->dataInBandRequestId:Ljava/lang/String;

    invoke-static {p1, v3, v0, v1, v4}, Lcom/sightcall/gpslocation/rtcc/GeolocationResponseMapperKt;->toGeolocationResponse(Landroid/location/Location;Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sightcall/common/DataChannelAction;->send([Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->session:Lcom/sightcall/universal/model/Session;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-object p1, p0, Lcom/sightcall/universal/model/CallParameters;->lastLocation:Landroid/location/Location;

    :cond_1
    :goto_0
    return-void
.end method

.method private final switchToAttendee(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/httpclient/AuthorizationToken;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/session/ReferenceUpdate;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lcom/sightcall/capabilities/SwitchRequest;->getInstance()Lcom/sightcall/capabilities/SwitchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/capabilities/SwitchRequest;->clear()V

    sget-object v0, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;->INSTANCE:Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;->setValue(Z)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->session:Lcom/sightcall/universal/model/Session;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->ATTENDEE:Lcom/sightcall/universal/model/Session$Role;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/model/Config;->role(Lcom/sightcall/universal/model/Session$Role;)Lcom/sightcall/universal/model/Config;

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->sessionRepository:Lcom/sightcall/session/SessionRepository;

    invoke-interface {p0, p1, p2}, Lcom/sightcall/session/SessionRepository;->switchToAttendee(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final switchToGuest(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/httpclient/AuthorizationToken;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/session/ReferenceUpdate;",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;->INSTANCE:Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;->setValue(Z)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->session:Lcom/sightcall/universal/model/Session;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->GUEST:Lcom/sightcall/universal/model/Session$Role;

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/model/Config;->role(Lcom/sightcall/universal/model/Session$Role;)Lcom/sightcall/universal/model/Config;

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->sessionRepository:Lcom/sightcall/session/SessionRepository;

    invoke-interface {p0, p1, p2}, Lcom/sightcall/session/SessionRepository;->switchToGuest(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkLocationPermission()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->gpsRepository:Lcom/sightcall/gpslocation/GpsRepository;

    invoke-interface {p0}, Lcom/sightcall/gpslocation/GpsRepository;->getHasPermissions()Z

    move-result p0

    return p0
.end method

.method public final getDataInBandRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->dataInBandRequestId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDataInBandRequestTimeout()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->dataInBandRequestTimeout:Ljava/lang/Long;

    return-object p0
.end method

.method public final getMediaCaptureEventFromCamera()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->_mediaCaptureEventFromCamera:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getMediaCaptureEventFromGallery()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->_mediaCaptureEventFromGallery:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getMediaCaptureEventVideoFromGallery()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->_mediaCaptureEventVideoFromGallery:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getSession()Lcom/sightcall/universal/model/Session;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->session:Lcom/sightcall/universal/model/Session;

    return-object p0
.end method

.method public final getShouldRestartCamera()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->shouldRestartCamera:Z

    return p0
.end method

.method public final getShouldSendGuestGpsOnStartup()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->shouldSendGuestGpsOnStartup:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getVideoPlayerWrapper()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->videoPlayerWrapper:Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    return-object p0
.end method

.method public final isGPSEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->gpsRepository:Lcom/sightcall/gpslocation/GpsRepository;

    invoke-interface {p0}, Lcom/sightcall/gpslocation/GpsRepository;->isGpsEnabled()Z

    move-result p0

    return p0
.end method

.method public final isSDFOpened()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->isSDFOpened:Z

    return p0
.end method

.method public final mediaCaptureEventFromCamera(Lcom/sightcall/pratik/Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->_mediaCaptureEventFromCamera:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final mediaCaptureEventFromGallery(Lcom/sightcall/pratik/Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->_mediaCaptureEventFromGallery:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final mediaCaptureEventVideoFromGallery(Lcom/sightcall/pratik/Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/domain/entities/Media;",
            "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->_mediaCaptureEventVideoFromGallery:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onGuestGpsOnStartupSent()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->shouldSendGuestGpsOnStartup:Ljava/lang/Boolean;

    return-void
.end method

.method public final onRoleSwitch(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sightcall/universal/internal/ui/CallViewModel$onRoleSwitch$1;-><init>(Lcom/sightcall/universal/internal/ui/CallViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final sendLocationStatus(Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->GEOLOCATION_RESPONSE:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->dataInBandRequestId:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sightcall/gpslocation/rtcc/GeolocationResponseMapperKt;->locationResponseStatus(Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sightcall/common/DataChannelAction;->send([Ljava/lang/Object;)Z

    return-void
.end method

.method public final setSDFOpened(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->isSDFOpened:Z

    return-void
.end method

.method public final setShouldRestartCamera(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->shouldRestartCamera:Z

    return-void
.end method

.method public final startLocationService(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->gpsRepository:Lcom/sightcall/gpslocation/GpsRepository;

    invoke-interface {v0}, Lcom/sightcall/gpslocation/GpsRepository;->getHasGpsFeature()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/sightcall/common/DataChannelAction;->GEOLOCATION_RESPONSE:Lcom/sightcall/common/DataChannelAction;

    sget-object v0, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDeclined;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDeclined;

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->dataInBandRequestId:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sightcall/gpslocation/rtcc/GeolocationResponseMapperKt;->locationResponseStatus(Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sightcall/common/DataChannelAction;->send([Ljava/lang/Object;)Z

    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->gpsRepository:Lcom/sightcall/gpslocation/GpsRepository;

    invoke-interface {v0}, Lcom/sightcall/gpslocation/GpsRepository;->getHasPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->GEOLOCATION_RESPONSE:Lcom/sightcall/common/DataChannelAction;

    sget-object v1, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDisplayed;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDisplayed;

    iget-object v2, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->dataInBandRequestId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sightcall/gpslocation/rtcc/GeolocationResponseMapperKt;->locationResponseStatus(Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/common/DataChannelAction;->send([Ljava/lang/Object;)Z

    move-object v0, p1

    check-cast v0, Lcom/sightcall/universal/internal/ui/CallActivity;

    iget-object v0, v0, Lcom/sightcall/universal/internal/ui/CallActivity;->requestPermissionsLauncher:Landroidx/activity/result/ActivityResultLauncher;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1;-><init>(Lcom/sightcall/universal/internal/ui/CallViewModel;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final stopLocationService()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->gpsRepository:Lcom/sightcall/gpslocation/GpsRepository;

    invoke-interface {p0}, Lcom/sightcall/gpslocation/GpsRepository;->stopGPS()V

    return-void
.end method

.method public final updateDataInBandFromGeoLocationRequest(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    check-cast p1, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/sightcall/pratik/extensions/JsonException;

    const-string v1, "Unable to deserialize: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/sightcall/pratik/extensions/JsonException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->getExpirationTimeout()Ljava/lang/Long;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->updateDataInBandGeoLocationParameters(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public final updateDataInBandGeoLocationParameters(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->dataInBandRequestId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/CallViewModel;->dataInBandRequestTimeout:Ljava/lang/Long;

    return-void
.end method
