.class public final Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/internal/report/CaseReportRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0018\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J \u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u0018\u0010 \u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u0018\u0010!\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J \u0010\"\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u0018\u0010#\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u0018\u0010$\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0010\u0010%\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010&\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\'\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010(\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J2\u0010)\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010,\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.H\u0016J\u0018\u0010/\u001a\u0002002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u0018\u00101\u001a\u0002002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\tH\u0002J0\u00102\u001a\u0002002\u0006\u0010,\u001a\u00020\u000c2\u0006\u0010-\u001a\u00020.2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u001a\u00103\u001a\u0004\u0018\u0001002\u0006\u0010,\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u001a\u00104\u001a\u0004\u0018\u0001002\u0006\u0010,\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u001a\u00105\u001a\u0004\u0018\u0001002\u0006\u0010,\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u001a\u00106\u001a\u0004\u0018\u0001002\u0006\u0010,\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\tH\u0002J \u00107\u001a\u0002002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\u000c2\u0006\u0010\u0018\u001a\u00020\tH\u0002J:\u00108\u001a\u0002002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\u000c2\u0006\u00109\u001a\u00020:2\u0008\u0010;\u001a\u0004\u0018\u00010<2\u0006\u0010-\u001a\u00020.2\u0006\u0010\u0018\u001a\u00020\tH\u0002J:\u0010=\u001a\u0002002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0010;\u001a\u0004\u0018\u00010<2\u0006\u0010-\u001a\u00020.2\u0006\u0010\u0018\u001a\u00020\tH\u0002J:\u0010>\u001a\u0002002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\u000c2\u0006\u00109\u001a\u00020:2\u0008\u0010;\u001a\u0004\u0018\u00010<2\u0006\u0010-\u001a\u00020.2\u0006\u0010\u0018\u001a\u00020\tH\u0002J4\u0010?\u001a\u0004\u0018\u0001002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\u000c2\u0008\u0010;\u001a\u0004\u0018\u00010<2\u0006\u0010-\u001a\u00020.2\u0006\u0010\u0018\u001a\u00020\tH\u0002J2\u0010@\u001a\u0004\u0018\u0001002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\u000c2\u0006\u00109\u001a\u00020:2\u0006\u0010-\u001a\u00020.2\u0006\u0010\u0018\u001a\u00020\tH\u0002J2\u0010A\u001a\u0004\u0018\u0001002\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010,\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020.2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u0018\u0010)\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010B\u001a\u000200H\u0002J\u0010\u0010C\u001a\u00020\u00072\u0006\u0010B\u001a\u000200H\u0002J\u0018\u0010D\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010B\u001a\u000200H\u0002J\u0018\u0010E\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010F\u001a\u00020GH\u0016J\u0018\u0010H\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010I\u001a\u00020JH\u0016J\u0010\u0010K\u001a\u00020\u00072\u0006\u0010L\u001a\u00020MH\u0016J\u0018\u0010N\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010O\u001a\u00020\u000cH\u0016J\u0010\u0010P\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010Q\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010R\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010S\u001a\u00020\u000cH\u0016J\u0010\u0010T\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010U\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010V\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010W\u001a\u00020\u000cH\u0016J\u0010\u0010X\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010Y\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010Z\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010[\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\\\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010]\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010F\u001a\u00020^H\u0016JO\u0010_\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010`\u001a\u0004\u0018\u00010a2\u0008\u0010b\u001a\u0004\u0018\u00010a2\u0008\u0010c\u001a\u0004\u0018\u00010a2\u0008\u0010d\u001a\u0004\u0018\u00010a2\u0008\u0010e\u001a\u0004\u0018\u00010\t2\u0006\u0010f\u001a\u00020\tH\u0016\u00a2\u0006\u0002\u0010gJ\u0010\u0010h\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006i"
    }
    d2 = {
        "Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;",
        "Lcom/sightcall/universal/internal/report/CaseReportRepository;",
        "caseReportDataSource",
        "Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;",
        "<init>",
        "(Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;)V",
        "onRecordingStart",
        "",
        "caseReportId",
        "",
        "onRecordingPauseResume",
        "isRecording",
        "",
        "onRecordingEnd",
        "onGuestReadyAccepted",
        "guest",
        "Lcom/sightcall/universal/fcm/messages/GuestReady;",
        "onGuestReadyDenied",
        "onConnected",
        "session",
        "Lcom/sightcall/universal/model/Session;",
        "user",
        "Lnet/rtccloud/sdk/User;",
        "onConnectedAsHost",
        "caseId",
        "onConnectedAsGuest",
        "onCallStatusEvent",
        "event",
        "Lnet/rtccloud/sdk/event/call/StatusEvent;",
        "onCallStatusActive",
        "call",
        "Lnet/rtccloud/sdk/Call;",
        "onCallStatusActiveAsHost",
        "onCallStatusActiveAsGuest",
        "onCallStatusEnded",
        "onCallStatusEndedAsHost",
        "onCallStatusEndedAsGuest",
        "onDisplayNameSet",
        "onDisplayNameSkipped",
        "onLiveTranslationStart",
        "onLiveTranslationStopped",
        "onUserAction",
        "button",
        "Lcom/sightcall/universal/internal/view/CallButton;",
        "remote",
        "remoteState",
        "Lcom/sightcall/universal/internal/model/RemoteState;",
        "onHangup",
        "Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;",
        "onAnnotationErased",
        "onScreencast",
        "onSnapshot",
        "onSaveMedia",
        "onStartGeolocation",
        "onShareStart",
        "onStopShare",
        "onFlash",
        "video",
        "Lnet/rtccloud/sdk/VideoModule;",
        "videoProducer",
        "Lnet/rtccloud/sdk/VideoProducer;",
        "onShareMedia",
        "onVideoPauseResume",
        "onVideoSource",
        "onVideoCaseReport",
        "onMicroCaseReport",
        "caseReportV3Request",
        "onUserActionAsHost",
        "onUserActionAsGuest",
        "onMessageSent",
        "message",
        "Lcom/sightcall/universal/internal/messaging/Message$Outgoing;",
        "onConsentAction",
        "consent",
        "Lcom/sightcall/session/Reference$UseCase$Consent;",
        "onAnnotationsModeChanged",
        "config",
        "Lcom/sightcall/universal/model/Config;",
        "onMicro",
        "isMuted",
        "onCameraStarted",
        "onCameraStopped",
        "onCameraSwitch",
        "isFront",
        "onCameraPaused",
        "onCameraResumed",
        "onTorch",
        "enableFlash",
        "onScreencastStarted",
        "onScreencastStopped",
        "onShareStarted",
        "onGpsAccepted",
        "onGpsDeclined",
        "onMessageReceived",
        "Lcom/sightcall/universal/internal/messaging/Message$Incoming;",
        "onGeoLocationReceived",
        "gpsLatitude",
        "",
        "gpsLongitude",
        "gpsAccuracy",
        "gpsAltitude",
        "gpsAltitudeAccuracy",
        "gpsPerformedAt",
        "(Lcom/sightcall/universal/model/Session;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V",
        "onRemotePickerRequested",
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
.field private final caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    return-void
.end method

.method private final onAnnotationErased(Lcom/sightcall/universal/model/Session;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 1

    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    sget-object v0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createAnnotationsErased(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAnnotationsErasedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method private final onCallStatusActive(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p3, 0x2

    if-eq v0, p3, :cond_1

    const/4 p3, 0x3

    if-ne v0, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onCallStatusActiveAsGuest(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)V

    return-void

    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onCallStatusActiveAsHost(Lnet/rtccloud/sdk/Call;Ljava/lang/String;)V

    return-void
.end method

.method private final onCallStatusActiveAsGuest(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnet/rtccloud/sdk/Call;->id()I

    move-result p2

    invoke-static {v0, p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createUserJoined(Ljava/lang/String;I)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method private final onCallStatusActiveAsHost(Lnet/rtccloud/sdk/Call;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->id()I

    move-result p1

    invoke-static {p2, p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createUserJoinedAsHost(Ljava/lang/String;I)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method private final onCallStatusEnded(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p3, 0x2

    if-eq v0, p3, :cond_1

    const/4 p3, 0x3

    if-ne v0, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onCallStatusEndedAsGuest(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)V

    return-void

    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onCallStatusEndedAsHost(Lnet/rtccloud/sdk/Call;Ljava/lang/String;)V

    return-void
.end method

.method private final onCallStatusEndedAsGuest(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)V
    .locals 3

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnet/rtccloud/sdk/Call;->endReason()Lnet/rtccloud/sdk/Call$EndReason;

    move-result-object p2

    const/4 v1, -0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    :goto_0
    if-eq p2, v1, :cond_5

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_2
    sget-object p2, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft$UserLeftReason$RemoteHangup;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft$UserLeftReason$RemoteHangup;

    invoke-static {v0, p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createUserLeft(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft$UserLeftReason;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed$CallFailedReason$DeadParty;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed$CallFailedReason$DeadParty;

    invoke-virtual {p2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed$CallFailedReason;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createCallFailed(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    goto :goto_2

    :cond_4
    sget-object p2, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft$UserLeftReason$LocalHangup;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft$UserLeftReason$LocalHangup;

    invoke-static {v0, p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createUserLeft(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$UserLeft$UserLeftReason;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    goto :goto_2

    :cond_5
    :goto_1
    sget-object p2, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed$CallFailedReason$Unexpected;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed$CallFailedReason$Unexpected;

    invoke-virtual {p2}, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallFailed$CallFailedReason;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createCallFailed(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    :goto_2
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-interface {p0, p1, p2}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method private final onCallStatusEndedAsHost(Lnet/rtccloud/sdk/Call;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->endReason()Lnet/rtccloud/sdk/Call$EndReason;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lnet/rtccloud/sdk/Call$EndReason;->UNEXPECTED:Lnet/rtccloud/sdk/Call$EndReason;

    :cond_1
    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_3
    :goto_0
    sget-object p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason$RemoteHangup;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason$RemoteHangup;

    invoke-static {p2, p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCallEndedAsHost(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason$NetworkError;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason$NetworkError;

    invoke-static {p2, p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCallEndedAsHost(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason$LocalHangup;->INSTANCE:Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason$LocalHangup;

    invoke-static {p2, p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCallEndedAsHost(Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request$Data$Attributes$CallEnded$CallEndReason;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    :goto_1
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method private final onConnectedAsGuest(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/User;)V
    .locals 3

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnet/rtccloud/sdk/User;->sid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lnet/rtccloud/sdk/User;->uidLocal()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v0, v1, p2, v2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createItemUserConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method private final onConnectedAsHost(Ljava/lang/String;Lnet/rtccloud/sdk/User;)V
    .locals 1

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lnet/rtccloud/sdk/User;->sid()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-static {p1, p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createItemUserConnectedAsHost(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final onFlash(Lcom/sightcall/universal/model/Session;ZLnet/rtccloud/sdk/VideoModule;Lnet/rtccloud/sdk/VideoProducer;Lcom/sightcall/universal/internal/model/RemoteState;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 2

    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    sget-object v0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p3}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result p0

    if-eqz p0, :cond_2

    instance-of p0, p4, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz p0, :cond_2

    check-cast p4, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {p4}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isFlashEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createTorchStoppedRequest(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createTorchStartedRequest(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_3
    if-ne p2, v1, :cond_5

    invoke-virtual {p5}, Lcom/sightcall/universal/internal/model/RemoteState;->isFlashEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p6}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRemoteTorchStopRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p6}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRemoteTorchStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez p2, :cond_7

    invoke-virtual {p3}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result p0

    if-eqz p0, :cond_6

    instance-of p0, p4, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz p0, :cond_6

    check-cast p4, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {p4}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isFlashEnabled()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {p6}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createTorchStoppedRequestAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {p6}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createTorchStartRequestAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-object v0
.end method

.method private final onHangup(Lcom/sightcall/universal/model/Session;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 1

    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    sget-object v0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createCallHangup(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCallHangupAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method private final onMicroCaseReport(Lcom/sightcall/universal/model/Session;ZLnet/rtccloud/sdk/Call;Lcom/sightcall/universal/internal/model/RemoteState;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 2

    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    sget-object v0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p3}, Lnet/rtccloud/sdk/Call;->audio()Lnet/rtccloud/sdk/AudioModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted()Z

    move-result p0

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createMicroStoppedRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createMicroStartedRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_3
    if-ne p2, v1, :cond_5

    invoke-virtual {p4}, Lcom/sightcall/universal/internal/model/RemoteState;->isMuted()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p5}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRemoteMicroStopRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p5}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRemoteMicroStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez p2, :cond_7

    invoke-virtual {p3}, Lnet/rtccloud/sdk/Call;->audio()Lnet/rtccloud/sdk/AudioModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {p5}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createMicroStoppedRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {p5}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createMicroStartedRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-object v0
.end method

.method private final onSaveMedia(ZLjava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createVideoSaveRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final onScreencast(ZLcom/sightcall/universal/internal/model/RemoteState;Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 2

    iget-object p0, p3, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    sget-object v0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p4}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->producer()Lnet/rtccloud/sdk/ScreenshareProducer;

    move-result-object p0

    instance-of p0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    iget-object p1, p3, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createScreencastStopRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createScreencastStartRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_3
    if-ne p1, v1, :cond_5

    invoke-virtual {p4}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p2}, Lcom/sightcall/universal/internal/model/RemoteState;->isSharingScreen()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p5}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRemoteScreencastStopRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p5}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRemoteScreencastStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez p1, :cond_7

    invoke-virtual {p4}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->producer()Lnet/rtccloud/sdk/ScreenshareProducer;

    move-result-object p0

    instance-of p0, p0, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    if-eqz p0, :cond_6

    invoke-static {p5}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createScreencastStopRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {p5}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createScreencastStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-object v0
.end method

.method private final onShareMedia(Lcom/sightcall/universal/model/Session;ZLnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/VideoProducer;Lcom/sightcall/universal/internal/model/RemoteState;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 2

    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    sget-object v0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p3}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p4}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoProducerExtensionsKt;->isMyVideoProducerPlayerView(Lnet/rtccloud/sdk/VideoProducer;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createShareStartRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createShareStopped(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_4
    if-ne p2, v1, :cond_7

    invoke-virtual {p3}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->isReceiving()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p5}, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerEnabled()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {p6}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createShareStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    invoke-static {p6}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createShareStopRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_7
    if-nez p2, :cond_a

    invoke-virtual {p3}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ScreenshareModule;->isSending()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-static {p4}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoProducerExtensionsKt;->isMyVideoProducerPlayerView(Lnet/rtccloud/sdk/VideoProducer;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {p6}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createShareStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_3
    invoke-static {p6}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createShareStoppedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-static {}, Lv40;->g()V

    return-object v0
.end method

.method private final onShareStart(ZLjava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRemoteGalleryStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final onSnapshot(ZLjava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRemoteSnapshotRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final onStartGeolocation(ZLjava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createGpsRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final onStopShare(Lcom/sightcall/universal/model/Session;ZLjava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 1

    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    sget-object v0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createShareStopped(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p3}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createShareStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p3}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createShareStoppedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0
.end method

.method private final onUserAction(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V
    .locals 2

    .line 178
    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    .line 179
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onUserActionAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    .line 180
    :cond_2
    invoke-direct {p0, p2}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onUserActionAsHost(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method private final onUserActionAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-interface {p0, p1, p2}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method private final onUserActionAsHost(Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V
    .locals 1

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method private final onVideoCaseReport(Lcom/sightcall/universal/model/Session;ZLnet/rtccloud/sdk/VideoModule;Lcom/sightcall/universal/internal/model/RemoteState;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 2

    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    sget-object v0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v0

    :cond_1
    :goto_0
    invoke-virtual {p3}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result p0

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createCameraStopRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createCameraStartRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_3
    if-ne p2, v1, :cond_5

    invoke-virtual {p4}, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p5}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRemoteCameraStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p5}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRemoteCameraStopRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez p2, :cond_7

    invoke-virtual {p3}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {p5}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCameraStopRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {p5}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCameraStartRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-object v0
.end method

.method private final onVideoPauseResume(Lcom/sightcall/universal/model/Session;ZLnet/rtccloud/sdk/VideoModule;Lnet/rtccloud/sdk/VideoProducer;Lcom/sightcall/universal/internal/model/RemoteState;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 2

    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    sget-object v0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v0

    :cond_1
    :goto_0
    instance-of p0, p4, Lcom/sightcall/common/MyVideoProducer;

    if-eqz p0, :cond_3

    invoke-virtual {p3}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result p0

    if-eqz p0, :cond_2

    check-cast p4, Lcom/sightcall/common/MyVideoProducer;

    invoke-interface {p4}, Lcom/sightcall/common/MyVideoProducer;->isPaused()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createCameraResumeRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createCameraPauseRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createCameraPauseRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_4
    if-ne p2, v1, :cond_6

    invoke-virtual {p5}, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraPaused()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {p6}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRemoteCameraResumeRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRemoteCameraPauseRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_6
    if-nez p2, :cond_9

    instance-of p0, p4, Lcom/sightcall/common/MyVideoProducer;

    if-eqz p0, :cond_8

    invoke-virtual {p3}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result p0

    if-eqz p0, :cond_7

    check-cast p4, Lcom/sightcall/common/MyVideoProducer;

    invoke-interface {p4}, Lcom/sightcall/common/MyVideoProducer;->isPaused()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {p6}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCameraResumeRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {p6}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCameraPauseRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-static {p6}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCameraPauseRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-static {}, Lv40;->g()V

    return-object v0
.end method

.method private final onVideoSource(Lcom/sightcall/universal/model/Session;ZLnet/rtccloud/sdk/VideoProducer;Lcom/sightcall/universal/internal/model/RemoteState;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;
    .locals 2

    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    sget-object v0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 p2, 0x2

    if-eq p0, p2, :cond_1

    const/4 p2, 0x3

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v0

    :cond_1
    :goto_0
    instance-of p0, p3, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz p0, :cond_3

    check-cast p3, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {p3}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->getSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object p0

    sget-object p2, Lnet/rtccloud/sdk/VideoModule$CameraSource;->FRONT:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    if-ne p0, p2, :cond_2

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createCameraRearRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createCameraFrontRequested(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0

    :cond_4
    if-ne p2, v1, :cond_6

    invoke-virtual {p4}, Lcom/sightcall/universal/internal/model/RemoteState;->cameraSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object p0

    sget-object p2, Lnet/rtccloud/sdk/VideoModule$CameraSource;->FRONT:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    if-ne p0, p2, :cond_5

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRemoteCameraRearRequestedAsHost(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p5, p0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRemoteCameraFrontRequestedAsHost(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_6
    if-nez p2, :cond_9

    instance-of p0, p3, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz p0, :cond_8

    check-cast p3, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {p3}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->getSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object p0

    sget-object p1, Lnet/rtccloud/sdk/VideoModule$CameraSource;->FRONT:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    if-ne p0, p1, :cond_7

    invoke-static {p5}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCameraRearRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {p5}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCameraFrontRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p0

    return-object p0

    :cond_8
    return-object v0

    :cond_9
    invoke-static {}, Lv40;->g()V

    return-object v0
.end method


# virtual methods
.method public onAnnotationsModeChanged(Lcom/sightcall/universal/model/Config;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->caseReportId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createAnnotationsChangedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/sightcall/universal/model/Config;->authorizationToken:Lcom/sightcall/httpclient/AuthorizationToken;

    invoke-virtual {v1}, Lcom/sightcall/httpclient/AuthorizationToken;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createAnnotationsChanged(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/api/Environment;Ljava/lang/String;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;Lcom/sightcall/universal/model/Session;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/StatusEvent;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v1

    sget-object v2, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, p1, v0}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onCallStatusEnded(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_2
    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, p1, v0}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onCallStatusActive(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCameraPaused(Lcom/sightcall/universal/model/Session;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createCameraPaused(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_1
    return-void

    :cond_4
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCameraPausedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onCameraResumed(Lcom/sightcall/universal/model/Session;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createCameraResumed(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_1
    return-void

    :cond_4
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCameraResumedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onCameraStarted(Lcom/sightcall/universal/model/Session;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createCameraStarted(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_1
    return-void

    :cond_4
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCameraStartedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onCameraStopped(Lcom/sightcall/universal/model/Session;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createCameraStopped(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_1
    return-void

    :cond_4
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCameraStoppedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onCameraSwitch(Lcom/sightcall/universal/model/Session;Z)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createCameraSetToFront(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createCameraSetToRear(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    :goto_1
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-interface {p0, p1, p2}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_5

    :goto_2
    return-void

    :cond_5
    if-eqz p2, :cond_6

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCameraSetToFrontAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    goto :goto_3

    :cond_6
    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCameraSetToRearAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    :goto_3
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onConnected(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/User;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v1

    sget-object v2, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onConnectedAsGuest(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/User;)V

    return-void

    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onConnectedAsHost(Ljava/lang/String;Lnet/rtccloud/sdk/User;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onConsentAction(Lcom/sightcall/universal/model/Session;Lcom/sightcall/session/Reference$UseCase$Consent;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/sightcall/session/Reference$UseCase$Consent;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lcom/sightcall/session/Reference$UseCase$Consent;->consentId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-virtual {p2}, Lcom/sightcall/session/Reference$UseCase$Consent;->isAccepted()Z

    move-result p2

    iget-object v1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createConsent(ZLjava/lang/String;I)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    :cond_1
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    return-void
.end method

.method public onDisplayNameSet(Lcom/sightcall/universal/model/Session;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createDisplayNameSet(Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onDisplayNameSkipped(Lcom/sightcall/universal/model/Session;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createDisplayNameSkipped(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onGeoLocationReceived(Lcom/sightcall/universal/model/Session;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_5

    const/4 p0, 0x3

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-static/range {p1 .. p7}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createGeoLocationReceivedAsHost(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onGpsAccepted(Lcom/sightcall/universal/model/Session;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGpsAccepted(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    :cond_2
    return-void
.end method

.method public onGpsDeclined(Lcom/sightcall/universal/model/Session;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createGpsDeclined(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    :cond_2
    return-void
.end method

.method public onGuestReadyAccepted(Lcom/sightcall/universal/fcm/messages/GuestReady;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-virtual {p1}, Lcom/sightcall/universal/fcm/messages/GuestReady;->caseReportId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCallRequestAcceptedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onGuestReadyDenied(Lcom/sightcall/universal/fcm/messages/GuestReady;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-virtual {p1}, Lcom/sightcall/universal/fcm/messages/GuestReady;->caseReportId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createCallRequestDeclinedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onLiveTranslationStart(Lcom/sightcall/universal/model/Session;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createLiveTranslationStartedAsGuest(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_1
    return-void

    :cond_4
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createLiveTranslationStartedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onLiveTranslationStopped(Lcom/sightcall/universal/model/Session;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createLiveTranslationStoppedAsGuest(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_1
    return-void

    :cond_4
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createLiveTranslationStoppedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onMessageReceived(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/messaging/Message$Incoming;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-virtual {p2}, Lcom/sightcall/universal/internal/messaging/Message;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/sightcall/universal/internal/messaging/Message;->content()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createChatMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_1
    return-void

    :cond_4
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-virtual {p2}, Lcom/sightcall/universal/internal/messaging/Message;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/sightcall/universal/internal/messaging/Message;->content()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1, p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createChatMessageReceivedAsHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onMessageSent(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/messaging/Message$Outgoing;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-virtual {p2}, Lcom/sightcall/universal/internal/messaging/Message;->uid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sightcall/universal/internal/messaging/Message;->content()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createChatMessageSent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-virtual {p2}, Lcom/sightcall/universal/internal/messaging/Message;->uid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sightcall/universal/internal/messaging/Message;->content()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createChatMessageSent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onMicro(Lcom/sightcall/universal/model/Session;Z)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p2}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createMicroStarted(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    :cond_2
    iget-object p2, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p2}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createMicroStopped(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_5

    :goto_1
    return-void

    :cond_5
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    if-eqz p2, :cond_6

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createMicroStartedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    :cond_6
    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createMicroStoppedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onRecordingEnd(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRecordingEndAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onRecordingPauseResume(ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRecordingPausedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRecordingResumedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onRecordingStart(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRecordingStartAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onRemotePickerRequested(Lcom/sightcall/universal/model/Session;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_3

    const/4 p0, 0x3

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createRemotePickerRequestedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onScreencastStarted(Lcom/sightcall/universal/model/Session;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createScreencastStarted(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_1
    return-void

    :cond_4
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createScreencastStartedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onScreencastStopped(Lcom/sightcall/universal/model/Session;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createScreencastStopped(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_1
    return-void

    :cond_4
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createScreencastStoppedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onShareStarted(Lcom/sightcall/universal/model/Session;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createShareStarted(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_4

    :goto_1
    return-void

    :cond_4
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createShareStartedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onTorch(Lcom/sightcall/universal/model/Session;Z)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createTorchStarted(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperGuestKt;->createTorchStopped(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    :goto_1
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-interface {p0, p1, p2}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsGuest(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_5

    :goto_2
    return-void

    :cond_5
    if-eqz p2, :cond_6

    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createTorchStartedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    goto :goto_3

    :cond_6
    invoke-static {p1}, Lcom/sightcall/universal/internal/report/data/mappers/CaseReportMapperAgentKt;->createTorchStoppedAsHost(Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p1

    :goto_3
    iget-object p0, p0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->caseReportDataSource:Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;

    invoke-interface {p0, v0, p1}, Lcom/sightcall/universal/internal/report/data/CaseReportDataSource;->sendCaseReportAsHost(Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    return-void
.end method

.method public onUserAction(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/view/CallButton;ZLnet/rtccloud/sdk/Call;Lcom/sightcall/universal/internal/model/RemoteState;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p4}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v4

    if-nez p2, :cond_1

    const/4 p2, -0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-direct {p0, p1, v6}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onHangup(Lcom/sightcall/universal/model/Session;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_1
    move p2, p3

    move-object p3, p1

    move p1, p2

    move-object p2, p5

    move-object p5, v6

    invoke-direct/range {p0 .. p5}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onScreencast(ZLcom/sightcall/universal/internal/model/RemoteState;Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    move-object p1, p3

    goto/16 :goto_1

    :pswitch_2
    move p2, p3

    move-object p5, v6

    invoke-direct {p0, p2, p5}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onSnapshot(ZLjava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_3
    move p2, p3

    move-object p5, v6

    invoke-direct {p0, p2, p5}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onSaveMedia(ZLjava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_4
    move p2, p3

    move-object p5, v6

    invoke-direct {p0, p2, p5}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onStartGeolocation(ZLjava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_5
    move p2, p3

    move-object p5, v6

    invoke-direct {p0, p2, p5}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onShareStart(ZLjava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_6
    move p2, p3

    move-object p5, v6

    invoke-direct {p0, p1, p2, p5}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onStopShare(Lcom/sightcall/universal/model/Session;ZLjava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    goto/16 :goto_1

    :pswitch_7
    move-object p5, v6

    invoke-direct {p0, p1, p5}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onAnnotationErased(Lcom/sightcall/universal/model/Session;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    goto :goto_1

    :pswitch_8
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onFlash(Lcom/sightcall/universal/model/Session;ZLnet/rtccloud/sdk/VideoModule;Lnet/rtccloud/sdk/VideoProducer;Lcom/sightcall/universal/internal/model/RemoteState;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    goto :goto_1

    :pswitch_9
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onShareMedia(Lcom/sightcall/universal/model/Session;ZLnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/VideoProducer;Lcom/sightcall/universal/internal/model/RemoteState;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    goto :goto_1

    :pswitch_a
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onVideoPauseResume(Lcom/sightcall/universal/model/Session;ZLnet/rtccloud/sdk/VideoModule;Lnet/rtccloud/sdk/VideoProducer;Lcom/sightcall/universal/internal/model/RemoteState;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    goto :goto_1

    :pswitch_b
    const/4 p2, 0x0

    goto :goto_1

    :pswitch_c
    move p2, p3

    move-object p4, p5

    move-object p3, v4

    move-object p5, v6

    invoke-direct/range {p0 .. p5}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onVideoSource(Lcom/sightcall/universal/model/Session;ZLnet/rtccloud/sdk/VideoProducer;Lcom/sightcall/universal/internal/model/RemoteState;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    goto :goto_1

    :pswitch_d
    move p2, p3

    move-object p4, p5

    move-object p3, v3

    move-object p5, v6

    invoke-direct/range {p0 .. p5}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onVideoCaseReport(Lcom/sightcall/universal/model/Session;ZLnet/rtccloud/sdk/VideoModule;Lcom/sightcall/universal/internal/model/RemoteState;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    goto :goto_1

    :pswitch_e
    move p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, v6

    invoke-direct/range {p0 .. p5}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onMicroCaseReport(Lcom/sightcall/universal/model/Session;ZLnet/rtccloud/sdk/Call;Lcom/sightcall/universal/internal/model/RemoteState;Ljava/lang/String;)Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/report/CaseReportRepositoryImpl;->onUserAction(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/report/data/entities/CaseReportV3Request;)V

    :cond_2
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
