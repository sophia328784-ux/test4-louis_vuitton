.class public abstract Lcom/sightcall/universal/scenario/steps/CallStep;
.super Lcom/sightcall/universal/scenario/Step;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/scenario/Step$WithSession;
.implements Lcom/sightcall/uvc/DeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/scenario/steps/CallStep$Delegate;
    }
.end annotation


# static fields
.field public static mode:Lnet/rtccloud/sdk/RecordingModule$Mode;

.field public static success:Lcom/sightcall/universal/agent/CreateRecordingCallback$Success;


# instance fields
.field advancedAnnotationsAPI:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected final context:Landroid/content/Context;

.field private dataInBandRequestId:Ljava/lang/String;

.field private dataInBandRequestTimeout:Ljava/lang/Long;

.field private final dc:Lnet/rtccloud/sdk/DataChannelModule;

.field private final delegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/universal/scenario/steps/CallStep$Delegate;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceMonitoring:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

.field gpsRepository:Lcom/sightcall/gpslocation/GpsRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final liveTranslationAPI:Lcom/sightcall/livetranslation/LiveTranslationAPI;

.field private final poolOfInbandDataChannelWrapper:Lnet/rtccloud/sdk/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/rtccloud/sdk/util/Pools$SynchronizedPool<",
            "Lcom/sightcall/common/DataChannelAction$Wrapper;",
            ">;"
        }
    .end annotation
.end field

.field private previousParticipants:[Lnet/rtccloud/sdk/Participant;

.field private final recordingPlugin:Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin;

.field protected final rtcc:Lnet/rtccloud/sdk/Rtcc;

.field private final session:Lcom/sightcall/universal/model/Session;

.field private uvcProducer:Lcom/sightcall/universal/internal/view/UvcProducer;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/model/Session;)V
    .locals 3

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/Step;-><init>()V

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->context:Landroid/content/Context;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->dataChannel()Lnet/rtccloud/sdk/DataChannelModule;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->dataInBandRequestId:Ljava/lang/String;

    iput-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->dataInBandRequestTimeout:Ljava/lang/Long;

    new-instance v1, Lnet/rtccloud/sdk/util/Pools$SynchronizedPool;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lnet/rtccloud/sdk/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->poolOfInbandDataChannelWrapper:Lnet/rtccloud/sdk/util/Pools$SynchronizedPool;

    invoke-static {}, Lpq0;->v()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->delegates:Ljava/util/List;

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-static {p0}, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin;->create(Lcom/sightcall/universal/scenario/steps/CallStep;)Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->recordingPlugin:Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin;

    sget-object v1, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;->INSTANCE:Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p1

    sget-object v2, Lcom/sightcall/universal/model/Session$Role;->ATTENDEE:Lcom/sightcall/universal/model/Session$Role;

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;->setValue(Z)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->create(Landroid/content/Context;Lnet/rtccloud/sdk/User;)Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->deviceMonitoring:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/universal/di/SDKInjectorI;->getReferenceComponent()Lcom/sightcall/universal/ReferenceComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/universal/ReferenceComponent;->getLiveTranslationAPI()Lcom/sightcall/livetranslation/LiveTranslationAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->liveTranslationAPI:Lcom/sightcall/livetranslation/LiveTranslationAPI;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/scenario/steps/CallStep;)Lnet/rtccloud/sdk/DataChannelModule;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/scenario/steps/CallStep;)Lcom/sightcall/livetranslation/LiveTranslationAPI;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->liveTranslationAPI:Lcom/sightcall/livetranslation/LiveTranslationAPI;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/scenario/steps/CallStep;)Lcom/sightcall/universal/model/Session;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    return-object p0
.end method

.method private clearDelegates()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->delegates:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->delegates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private forwardInbandDataChannel(Lcom/sightcall/common/DataChannelAction;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->delegates:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->delegates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/universal/scenario/steps/CallStep$Delegate;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    invoke-interface {v1, p1, p2}, Lcom/sightcall/universal/scenario/steps/CallStep$Delegate;->onForwardInbandDataChannel(Lcom/sightcall/common/DataChannelAction;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private handleInbandDataChannel(Lnet/rtccloud/sdk/Call;Lcom/sightcall/common/DataChannelAction$Wrapper;Lcom/sightcall/common/DataChannelAction;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;->INSTANCE:Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;

    invoke-virtual {v3}, Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;->getValue()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    return v4

    :cond_0
    :pswitch_0
    sget-object v3, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v3, v5

    const/4 v6, 0x0

    const-class v7, Lcom/sightcall/universal/internal/ui/CallActivity;

    const/4 v8, 0x1

    packed-switch v5, :pswitch_data_1

    :pswitch_1
    goto/16 :goto_1

    :pswitch_2
    iget-object v1, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-object v1, v1, Lcom/sightcall/universal/model/CallParameters;->ar:Lcom/sightcall/universal/ar/ArConfig;

    if-nez v1, :cond_1

    sget-object v1, Lcom/sightcall/common/DataChannelAction;->AR_STOPPED:Lcom/sightcall/common/DataChannelAction;

    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v1, v0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return v8

    :cond_1
    iget-object v1, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v1}, Lcom/sightcall/capabilities/CapabilitiesRepository;->stopAr()V

    iget-object v1, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-object v6, v1, Lcom/sightcall/universal/model/CallParameters;->ar:Lcom/sightcall/universal/ar/ArConfig;

    invoke-static {}, Lcom/sightcall/universal/Universal;->ar()Lcom/sightcall/universal/ar/UniversalAr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/universal/ar/UniversalAr;->getActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sightcall/universal/scenario/steps/CallStep;->isActivityListening(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_b

    sget-object v1, Lcom/sightcall/common/DataChannelAction;->AR_STOPPED:Lcom/sightcall/common/DataChannelAction;

    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v1, v0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return v8

    :pswitch_3
    invoke-static {}, Lcom/sightcall/universal/Universal;->ar()Lcom/sightcall/universal/ar/UniversalAr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sightcall/universal/ar/UniversalAr;->getActivityClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sightcall/universal/scenario/steps/CallStep;->isActivityListening(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/sightcall/common/DataChannelAction;->AR_STARTED:Lcom/sightcall/common/DataChannelAction;

    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v1, v0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    return v8

    :cond_2
    invoke-static {}, Lcom/sightcall/universal/Universal;->ar()Lcom/sightcall/universal/ar/UniversalAr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sightcall/universal/ar/UniversalAr;->getArCoreState()Lcom/sightcall/universal/ar/ArCoreState;

    move-result-object v3

    sget-object v5, Lcom/sightcall/universal/ar/ArCoreState;->UNKNOWN:Lcom/sightcall/universal/ar/ArCoreState;

    if-ne v3, v5, :cond_3

    sget-object v1, Lcom/sightcall/common/DataChannelAction;->AR_START_IGNORED:Lcom/sightcall/common/DataChannelAction;

    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    sget-object v2, Lcom/sightcall/universal/ar/ArIgnored;->UNKNOWN:Lcom/sightcall/universal/ar/ArIgnored;

    invoke-virtual {v2}, Lcom/sightcall/universal/ar/ArIgnored;->toJson()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;[Ljava/lang/Object;)Z

    return v8

    :cond_3
    invoke-static {}, Lcom/sightcall/universal/Universal;->ar()Lcom/sightcall/universal/ar/UniversalAr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sightcall/universal/ar/UniversalAr;->isArCoreUnsupported()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v1, Lcom/sightcall/common/DataChannelAction;->AR_START_IGNORED:Lcom/sightcall/common/DataChannelAction;

    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    sget-object v2, Lcom/sightcall/universal/ar/ArIgnored;->UNSUPPORTED:Lcom/sightcall/universal/ar/ArIgnored;

    invoke-virtual {v2}, Lcom/sightcall/universal/ar/ArIgnored;->toJson()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;[Ljava/lang/Object;)Z

    return v8

    :cond_4
    invoke-direct {v0, v7}, Lcom/sightcall/universal/scenario/steps/CallStep;->isActivityListening(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v1, Lcom/sightcall/common/DataChannelAction;->AR_START_IGNORED:Lcom/sightcall/common/DataChannelAction;

    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    sget-object v2, Lcom/sightcall/universal/ar/ArIgnored;->BACKGROUND:Lcom/sightcall/universal/ar/ArIgnored;

    invoke-virtual {v2}, Lcom/sightcall/universal/ar/ArIgnored;->toJson()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;[Ljava/lang/Object;)Z

    return v8

    :cond_5
    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v3

    invoke-virtual {v3}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v1, Lcom/sightcall/common/DataChannelAction;->AR_START_IGNORED:Lcom/sightcall/common/DataChannelAction;

    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    sget-object v2, Lcom/sightcall/universal/ar/ArIgnored;->CAMERA_OFF:Lcom/sightcall/universal/ar/ArIgnored;

    invoke-virtual {v2}, Lcom/sightcall/universal/ar/ArIgnored;->toJson()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;[Ljava/lang/Object;)Z

    return v8

    :cond_6
    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call$Parameters;->cameraSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object v1

    sget-object v3, Lnet/rtccloud/sdk/VideoModule$CameraSource;->BACK:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    if-eq v1, v3, :cond_7

    sget-object v1, Lcom/sightcall/common/DataChannelAction;->AR_START_IGNORED:Lcom/sightcall/common/DataChannelAction;

    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    sget-object v2, Lcom/sightcall/universal/ar/ArIgnored;->CAMERA_SOURCE:Lcom/sightcall/universal/ar/ArIgnored;

    invoke-virtual {v2}, Lcom/sightcall/universal/ar/ArIgnored;->toJson()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;[Ljava/lang/Object;)Z

    return v8

    :cond_7
    iget-object v1, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const-class v3, Lcom/sightcall/universal/ar/ArStart;

    iget-object v5, v2, Lcom/sightcall/common/DataChannelAction$Wrapper;->extra:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/sightcall/universal/model/Moshi;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sightcall/universal/ar/ArStart;

    invoke-static {v3}, Lcom/sightcall/universal/ar/ArConfig;->with(Lcom/sightcall/universal/ar/ArStart;)Lcom/sightcall/universal/ar/ArConfig;

    move-result-object v3

    iput-object v3, v1, Lcom/sightcall/universal/model/CallParameters;->ar:Lcom/sightcall/universal/ar/ArConfig;

    goto/16 :goto_1

    :pswitch_4
    sget-object v3, Lcom/sightcall/common/DataChannelAction;->USB_CAMERA_DISABLED:Lcom/sightcall/common/DataChannelAction;

    iget-object v5, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v3, v5}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    iget-object v3, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v3, v3, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v4, v3, Lcom/sightcall/universal/model/CallParameters;->allowUsbCamera:Z

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v3

    invoke-virtual {v3}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v3

    instance-of v3, v3, Lcom/sightcall/universal/internal/view/UvcProducer;

    if-eqz v3, :cond_b

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->releaseProducer()V

    goto/16 :goto_1

    :pswitch_5
    sget-object v1, Lcom/sightcall/common/DataChannelAction;->USB_CAMERA_ENABLED:Lcom/sightcall/common/DataChannelAction;

    iget-object v3, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v1, v3}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    iget-object v1, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v8, v1, Lcom/sightcall/universal/model/CallParameters;->allowUsbCamera:Z

    goto/16 :goto_1

    :pswitch_6
    iget-object v1, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v4, v1, Lcom/sightcall/universal/model/CallParameters;->showCollimator:Z

    sget-object v1, Lcom/sightcall/common/DataChannelAction;->STOPPED_COLLIMATOR:Lcom/sightcall/common/DataChannelAction;

    iget-object v3, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v1, v3}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    goto/16 :goto_1

    :pswitch_7
    iget-object v1, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v8, v1, Lcom/sightcall/universal/model/CallParameters;->showCollimator:Z

    sget-object v1, Lcom/sightcall/common/DataChannelAction;->STARTED_COLLIMATOR:Lcom/sightcall/common/DataChannelAction;

    iget-object v3, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v1, v3}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object v3

    invoke-virtual {v3}, Lnet/rtccloud/sdk/ScreenshareModule;->producer()Lnet/rtccloud/sdk/ScreenshareProducer;

    move-result-object v3

    instance-of v3, v3, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v5, v3, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v4, v5, Lcom/sightcall/universal/model/CallParameters;->isPendingScreencastRequest:Z

    iget-object v5, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->context:Landroid/content/Context;

    iget-object v7, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-static {v5, v1, v3, v7, v6}, Lcom/sightcall/universal/util/ScreenShareServiceKt;->stopScreenCast(Landroid/content/Context;Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/DataChannelModule;Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_1

    :pswitch_9
    invoke-direct {v0, v7}, Lcom/sightcall/universal/scenario/steps/CallStep;->isActivityListening(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v8, v1, Lcom/sightcall/universal/model/CallParameters;->isPendingScreencastRequest:Z

    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/CallActivity;->start(Landroid/content/Context;)V

    return v8

    :pswitch_a
    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->deviceMonitoring:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-static {v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->trigger(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V

    return v8

    :pswitch_b
    sget-object v1, Lcom/sightcall/common/DataChannelAction;->STATE:Lcom/sightcall/common/DataChannelAction;

    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-static {v0}, Lcom/sightcall/universal/internal/model/State;->create(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/internal/model/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/model/State;->toJson()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sightcall/common/DataChannelAction;->send([Ljava/lang/Object;)Z

    return v8

    :pswitch_c
    sget-object v1, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->Companion:Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse$Companion;

    iget-object v3, v2, Lcom/sightcall/common/DataChannelAction$Wrapper;->extra:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse$Companion;->fromJson(Ljava/lang/String;)Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;

    move-result-object v1

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object v3

    invoke-interface {v3}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object v9

    iget-object v10, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {v1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->getLatitude()Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->getLongitude()Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->getAccuracy()Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->getAltitude()Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->getAltitudeAccuracy()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/sightcall/universal/util/DateTimeUtilKt;->getDateTime(J)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v9 .. v16}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onGeoLocationReceived(Lcom/sightcall/universal/model/Session;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDeclined;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$FirstUsagePopupDeclined;

    invoke-virtual {v3}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Declined;->INSTANCE:Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus$Declined;

    invoke-virtual {v3}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sightcall/gpslocation/rtcc/model/GeolocationResponse;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_8
    iget-object v1, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->context:Landroid/content/Context;

    sget v3, Lcom/sightcall/universal/R$string;->universal_location_request_denied:I

    invoke-static {v1, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :pswitch_d
    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v4, v0, Lcom/sightcall/universal/model/CallParameters;->isPendingLocationRequest:Z

    return v8

    :pswitch_e
    invoke-direct {v0, v7}, Lcom/sightcall/universal/scenario/steps/CallStep;->isActivityListening(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v8, v1, Lcom/sightcall/universal/model/CallParameters;->isPendingLocationRequest:Z

    sget-object v1, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->Constant:Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest$Constant;

    iget-object v2, v2, Lcom/sightcall/common/DataChannelAction$Wrapper;->extra:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest$Constant;->fromJson(Ljava/lang/String;)Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->dataInBandRequestId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sightcall/gpslocation/rtcc/model/GeoLocationRequest;->getExpirationTimeout()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->dataInBandRequestTimeout:Ljava/lang/Long;

    return v8

    :pswitch_f
    sget-object v1, Lcom/sightcall/common/DataChannelAction;->PROPERTIES:Lcom/sightcall/common/DataChannelAction;

    iget-object v2, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    new-instance v3, Lcom/sightcall/universal/internal/util/Properties;

    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->context:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/sightcall/universal/internal/util/Properties;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/sightcall/universal/internal/util/Properties;->toJson()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;[Ljava/lang/Object;)Z

    :pswitch_10
    return v8

    :pswitch_11
    iget-object v1, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    sget-object v2, Lcom/sightcall/common/DataChannelAction;->IP_ADDRESS:Lcom/sightcall/common/DataChannelAction;

    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lnet/rtccloud/sdk/User;->ip()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_9
    const-string v1, ""

    :goto_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;[Ljava/lang/Object;)Z

    return v8

    :pswitch_12
    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v1

    instance-of v5, v1, Lcom/sightcall/universal/internal/view/UvcProducer;

    if-eqz v5, :cond_b

    check-cast v1, Lcom/sightcall/universal/internal/view/UvcProducer;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_2

    goto :goto_1

    :pswitch_13
    iget-object v0, v2, Lcom/sightcall/common/DataChannelAction$Wrapper;->extra:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_a

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/view/UvcProducer;->isZoomAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Lcom/sightcall/universal/internal/view/UvcProducer;->isPaused()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v2, Lcom/sightcall/common/DataChannelAction$Wrapper;->extra:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/ViewUtils;->intPercentToFloatPercent(I)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->setZoom(F)V

    :cond_a
    return v8

    :pswitch_14
    invoke-virtual {v1}, Lcom/sightcall/universal/internal/view/UvcProducer;->snapshot()V

    return v8

    :pswitch_15
    invoke-virtual {v1}, Lcom/sightcall/universal/internal/view/UvcProducer;->resume()V

    return v8

    :pswitch_16
    invoke-virtual {v1}, Lcom/sightcall/universal/internal/view/UvcProducer;->pause()V

    return v8

    :cond_b
    :goto_1
    iget-object v1, v2, Lcom/sightcall/common/DataChannelAction$Wrapper;->extra:Ljava/lang/String;

    move-object/from16 v2, p3

    invoke-direct {v0, v2, v1}, Lcom/sightcall/universal/scenario/steps/CallStep;->forwardInbandDataChannel(Lcom/sightcall/common/DataChannelAction;Ljava/lang/String;)V

    return v4

    :pswitch_17
    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->advancedAnnotationsAPI:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    new-instance v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;

    iget-object v2, v2, Lcom/sightcall/common/DataChannelAction$Wrapper;->extra:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;->selectDrivenMode(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AnnotationRequest;)V

    return v8

    :pswitch_18
    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->advancedAnnotationsAPI:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    new-instance v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;

    iget-object v2, v2, Lcom/sightcall/common/DataChannelAction$Wrapper;->extra:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;->processAnnotation(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InbandMessageAnnotation;)V

    return v8

    :pswitch_19
    iget-object v2, v2, Lcom/sightcall/common/DataChannelAction$Wrapper;->extra:Ljava/lang/String;

    invoke-static {v2}, Lcom/sightcall/universal/internal/model/DataChannelParser$Messaging;->fromJson(Ljava/lang/String;)Lcom/sightcall/universal/internal/messaging/Message$Incoming;

    move-result-object v2

    if-nez v2, :cond_c

    return v8

    :cond_c
    iget-object v3, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-static {v3, v1}, Lcom/sightcall/universal/internal/messaging/Messaging;->from(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;)Lcom/sightcall/universal/internal/messaging/Messaging;

    move-result-object v1

    iget-object v3, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {v1, v2, v3}, Lcom/sightcall/universal/internal/messaging/Messaging;->onMessageReceived(Lcom/sightcall/universal/internal/messaging/Message$Incoming;Lcom/sightcall/universal/model/Session;)V

    invoke-direct {v0, v7}, Lcom/sightcall/universal/scenario/steps/CallStep;->isActivityListening(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->context:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/messaging/Message;->content()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_d
    return v8

    :pswitch_1a
    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v0}, Lcom/sightcall/capabilities/CapabilitiesRepository;->cancel()V

    return v8

    :pswitch_1b
    iget-object v1, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    iget-object v0, v0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/User;->uidLocal()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v2, Lcom/sightcall/common/DataChannelAction$Wrapper;->extra:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/sightcall/capabilities/CapabilitiesRepository;->register(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return v8

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_1
        :pswitch_17
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method private isActivityListening(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->delegates:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->delegates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p0, 0x1

    monitor-exit v1

    return p0

    :cond_3
    monitor-exit v1

    return v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static sendDataChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->dataChannel()Lnet/rtccloud/sdk/DataChannelModule;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, p0}, Lnet/rtccloud/sdk/DataChannelModule;->send(Ljava/lang/Object;JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    const-string v1, "` payload: `"

    const-string v2, "`"

    const-string v3, "Error while sending DataChannel message to `"

    invoke-static {v3, p0, v1, p1, v2}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateActivityCallButtonBar()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->delegates:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->delegates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/universal/scenario/steps/CallStep$Delegate;

    invoke-interface {v1}, Lcom/sightcall/universal/scenario/steps/CallStep$Delegate;->onRefreshCallButtons()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public accept(Lnet/rtccloud/sdk/Call;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->createCallParameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/Call;->accept(Lnet/rtccloud/sdk/Call$Parameters;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->createCallParameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lnet/rtccloud/sdk/CallModule;->create(Ljava/lang/String;Lnet/rtccloud/sdk/Call$Parameters;)V

    return-void
.end method

.method public call(Lnet/rtccloud/sdk/MeetingPoint;)V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->createCallParameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/MeetingPoint;->call(Lnet/rtccloud/sdk/Call$Parameters;)V

    return-void
.end method

.method public createCallParameters()Lnet/rtccloud/sdk/Call$Parameters;
    .locals 7

    new-instance v0, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {v0}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    sget-object v1, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$universal$agent$Usecase$VideoProfile:[I

    iget-object v2, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {v2}, Lcom/sightcall/universal/model/Session;->videoProfile()Lcom/sightcall/universal/agent/Usecase$VideoProfile;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lnet/rtccloud/sdk/VideoModule$Profile;->VGA:Lnet/rtccloud/sdk/VideoModule$Profile;

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/Call$Parameters;->videoProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)Lnet/rtccloud/sdk/Call$Parameters;

    goto :goto_0

    :cond_1
    sget-object v1, Lnet/rtccloud/sdk/VideoModule$Profile;->QVGA:Lnet/rtccloud/sdk/VideoModule$Profile;

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/Call$Parameters;->videoProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)Lnet/rtccloud/sdk/Call$Parameters;

    :goto_0
    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Session;->videoCapture()Lcom/sightcall/universal/agent/Usecase$VideoCapture;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_2

    invoke-virtual {v0, v4}, Lnet/rtccloud/sdk/Call$Parameters;->video(Z)Lnet/rtccloud/sdk/Call$Parameters;

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$universal$agent$Usecase$VideoCapture:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v3, :cond_4

    if-eq v5, v2, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Lnet/rtccloud/sdk/VideoModule$CameraSource;->BACK:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/Call$Parameters;->cameraSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)Lnet/rtccloud/sdk/Call$Parameters;

    goto :goto_1

    :cond_4
    sget-object v2, Lnet/rtccloud/sdk/VideoModule$CameraSource;->FRONT:Lnet/rtccloud/sdk/VideoModule$CameraSource;

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/Call$Parameters;->cameraSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)Lnet/rtccloud/sdk/Call$Parameters;

    :goto_1
    iget-object v2, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {v2}, Lcom/sightcall/universal/model/Session;->videoOutStartup()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/Call$Parameters;->video(Z)Lnet/rtccloud/sdk/Call$Parameters;

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Session;->mute()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Lnet/rtccloud/sdk/Call$Parameters;->audio(Z)Lnet/rtccloud/sdk/Call$Parameters;

    return-object v0
.end method

.method public abstract execute()V
.end method

.method public getDataInBandRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->dataInBandRequestId:Ljava/lang/String;

    return-object p0
.end method

.method public getDataInBandRequestTimeout()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->dataInBandRequestTimeout:Ljava/lang/Long;

    return-object p0
.end method

.method public getUvcProducer()Lcom/sightcall/universal/internal/view/UvcProducer;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->uvcProducer:Lcom/sightcall/universal/internal/view/UvcProducer;

    return-object p0
.end method

.method public interrupt()V
    .locals 9

    sget-object v0, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->disconnect()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->disconnect()V

    return-void

    :cond_2
    iget-object v7, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v7, v7, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-boolean v2, v7, Lcom/sightcall/universal/model/CallParameters;->hasRequestedHangup:Z

    sget-object v7, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v2, :cond_5

    if-eq v7, v3, :cond_4

    if-eq v7, v6, :cond_5

    if-eq v7, v5, :cond_5

    if-eq v7, v4, :cond_3

    :goto_0
    return-void

    :cond_3
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->disconnect()V

    return-void

    :cond_4
    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->deny()V

    return-void

    :cond_5
    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ConferenceModule;->myself()Lnet/rtccloud/sdk/Participant;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Participant;->isAdmin()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ConferenceModule;->participants()[Lnet/rtccloud/sdk/Participant;

    move-result-object p0

    array-length v2, p0

    :goto_1
    if-ge v1, v2, :cond_6

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lnet/rtccloud/sdk/Participant;->kick()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->hangup()V

    return-void

    :cond_7
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->disconnect()V

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->unbindService()V

    new-array v0, v1, [Lcom/sightcall/universal/scenario/Step;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->failure([Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

.method public onAudioEvent(Lnet/rtccloud/sdk/event/call/AudioEvent;)V
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v0

    sget-object v1, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/AudioEvent;->isRecorderMuted()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sightcall/common/DataChannelAction;->STARTED_MUTE:Lcom/sightcall/common/DataChannelAction;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->STOPPED_MUTE:Lcom/sightcall/common/DataChannelAction;

    :goto_0
    invoke-virtual {p1}, Lcom/sightcall/common/DataChannelAction;->send()Z

    :cond_1
    invoke-direct {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->updateActivityCallButtonBar()V

    return-void
.end method

.method public onAudioRouteEvent(Lnet/rtccloud/sdk/event/call/AudioRouteEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    sget-object v0, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$AudioModule$AudioRoute:[I

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/AudioRouteEvent;->route()Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->CHANGED_SOUND_TO_HEADSET:Lcom/sightcall/common/DataChannelAction;

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, v0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sightcall/common/DataChannelAction;->CHANGED_SOUND_TO_SPEAKER:Lcom/sightcall/common/DataChannelAction;

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {p1, v0}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    :goto_0
    invoke-direct {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->updateActivityCallButtonBar()V

    return-void
.end method

.method public onBind(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 1

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->register(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->recordingPlugin:Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin;

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin;->onBind(Lcom/sightcall/universal/scenario/Scenario;)V

    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->deviceMonitoring:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-static {p1}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->start(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V

    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/uvc/DeviceManager;->instance(Landroid/content/Context;)Lcom/sightcall/uvc/DeviceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sightcall/uvc/DeviceManager;->addDeviceListener(Lcom/sightcall/uvc/DeviceListener;)V

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/uvc/DeviceManager;->instance(Landroid/content/Context;)Lcom/sightcall/uvc/DeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/uvc/DeviceManager;->start()V

    return-void
.end method

.method public onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V
    .locals 9
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    sget-object v0, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$Call$Status:[I

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/StatusEvent;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/di/SDKInjectorI;->destroyCallComponent()V

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/di/SDKInjectorI;->destroyReferenceComponent()V

    invoke-static {}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->shutdownLiveQr()V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/model/RemoteState;->stop(Lcom/sightcall/universal/scenario/steps/CallStep;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->deviceMonitoring:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-static {v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->stop(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/util/Utils;->toastCallReport(Lnet/rtccloud/sdk/event/call/StatusEvent;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/event/CallReportEvent;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sightcall/universal/event/CallReportEvent;-><init>(Lnet/rtccloud/sdk/Call;)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-static {v0, v1}, Lcom/sightcall/universal/internal/ui/SurveyActivity;->start(Landroid/content/Context;Lcom/sightcall/universal/model/Session;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sightcall/universal/internal/util/Snapshots;->cleanup(Landroid/content/Context;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->media()Lcom/sightcall/universal/media/UniversalMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/media/UniversalMedia;->triggerUpload()V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->disconnect()V

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-ne v0, v1, :cond_2

    const-string v0, "F6891F"

    goto :goto_0

    :cond_2
    const-string v0, "7AFF00"

    :goto_0
    invoke-static {}, Lcom/sightcall/universal/model/Session;->get()Lcom/sightcall/universal/model/Session;

    move-result-object v1

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/universal/agent/Agent;->annotationsUrl()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v7, v1

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->urlAnnotation()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v1, ""

    goto :goto_1

    :goto_2
    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v2

    new-instance v3, Lcom/sightcall/universal/scenario/steps/CallStep$1;

    invoke-direct {v3, p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep$1;-><init>(Lcom/sightcall/universal/scenario/steps/CallStep;Lnet/rtccloud/sdk/event/call/StatusEvent;)V

    new-instance v4, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;

    invoke-direct {v4, v0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/sightcall/universal/scenario/steps/CallStep$2;

    invoke-direct {v5, p0}, Lcom/sightcall/universal/scenario/steps/CallStep$2;-><init>(Lcom/sightcall/universal/scenario/steps/CallStep;)V

    new-instance v6, Lcom/sightcall/universal/scenario/steps/CallStep$3;

    invoke-direct {v6, p0}, Lcom/sightcall/universal/scenario/steps/CallStep$3;-><init>(Lcom/sightcall/universal/scenario/steps/CallStep;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->session()Lcom/sightcall/universal/model/Session;

    move-result-object v0

    iget-object v8, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-interface/range {v2 .. v8}, Lcom/sightcall/universal/di/SDKInjectorI;->createCallComponent(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;Ljava/lang/String;Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/CallComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sightcall/universal/CallComponent;->inject(Lcom/sightcall/universal/scenario/steps/CallStep;)V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/scenario/steps/CallStep$4;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/scenario/steps/CallStep$4;-><init>(Lcom/sightcall/universal/scenario/steps/CallStep;)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/Call;->setLiveTranslationNewSentenceCallback(Lnet/rtccloud/sdk/event/LiveTranslationNewSentence;)V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->useNgaSVG()Z

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->advancedAnnotationsAPI:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;->Driven:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;

    invoke-interface {v1, v0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;->selectUpdateCapability(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;)V

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;->Standalone:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;

    invoke-interface {v1, v0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;->selectUpdateCapability(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$UpdateCapability;)V

    :goto_3
    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/scenario/steps/CallStep$5;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/scenario/steps/CallStep$5;-><init>(Lcom/sightcall/universal/scenario/steps/CallStep;)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/Call;->setAnnotationTypeCallback(Lnet/rtccloud/sdk/event/AnnotationTypeCommand;)V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->audio()Lnet/rtccloud/sdk/AudioModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STARTED_MUTE:Lcom/sightcall/common/DataChannelAction;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, v1}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    :cond_6
    sget-object v0, Lcom/sightcall/common/DataChannelAction;->GET_IP_ADDRESS:Lcom/sightcall/common/DataChannelAction;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-virtual {v0, v1}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;)Z

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->deviceMonitoring:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-static {v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->trigger(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/CallActivity;->start(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->updateServiceNotification()V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/model/RemoteState;->start(Lcom/sightcall/universal/scenario/steps/CallStep;)V

    :goto_4
    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-interface {v0, p1, p0}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;Lcom/sightcall/universal/model/Session;)V

    return-void
.end method

.method public onDataChannelAction(Lcom/sightcall/common/DataChannelAction;)V
    .locals 0

    return-void
.end method

.method public onDataChannelInbandEvent(Lnet/rtccloud/sdk/event/datachannel/DataChannelInBandEvent;)V
    .locals 5
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->poolOfInbandDataChannelWrapper:Lnet/rtccloud/sdk/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/common/DataChannelAction$Wrapper;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sightcall/common/DataChannelAction$Wrapper;

    invoke-direct {v1}, Lcom/sightcall/common/DataChannelAction$Wrapper;-><init>()V

    :cond_1
    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/datachannel/DataChannelInBandEvent;->payload()[B

    move-result-object p1

    invoke-static {p1, v1}, Lcom/sightcall/common/DataChannelAction;->valueOf([BLcom/sightcall/common/DataChannelAction$Wrapper;)Lcom/sightcall/common/DataChannelAction;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v2

    invoke-virtual {v2}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onDataChannelInbandEvent "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sightcall/common/DataChannelAction$Wrapper;->extra:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v0, v1, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->handleInbandDataChannel(Lnet/rtccloud/sdk/Call;Lcom/sightcall/common/DataChannelAction$Wrapper;Lcom/sightcall/common/DataChannelAction;)Z

    :cond_3
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->poolOfInbandDataChannelWrapper:Lnet/rtccloud/sdk/util/Pools$SynchronizedPool;

    invoke-virtual {p0, v1}, Lnet/rtccloud/sdk/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDataChannelMessage(Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;)V
    .locals 0

    return-void
.end method

.method public final onDataChannelOutOfBandEvent(Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;)V
    .locals 5
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->payload()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "@M2M_DECLINE@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->context:Landroid/content/Context;

    const-string v0, "The agent declined the request. Please try again later."

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/sightcall/universal/model/Session;->get()Lcom/sightcall/universal/model/Session;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sightcall/universal/model/Session;->get()Lcom/sightcall/universal/model/Session;

    move-result-object p1

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->callNotStartedUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sightcall/universal/model/Session;->get()Lcom/sightcall/universal/model/Session;

    move-result-object p1

    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Config;->callNotStartedUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "?reason=declined"

    invoke-static {p1, v0}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "&reason=declined"

    invoke-static {p1, v0}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->interrupt()V

    return-void

    :cond_2
    new-instance v0, Lcom/sightcall/common/DataChannelAction$Wrapper;

    invoke-direct {v0}, Lcom/sightcall/common/DataChannelAction$Wrapper;-><init>()V

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->payload()[B

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sightcall/common/DataChannelAction;->outOfBandValueOf([BLcom/sightcall/common/DataChannelAction$Wrapper;)Lcom/sightcall/common/DataChannelAction;

    move-result-object v2

    if-eqz v2, :cond_8

    sget-object v3, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$common$DataChannelAction:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/sightcall/universal/scenario/steps/CallStep;->onDataChannelAction(Lcom/sightcall/common/DataChannelAction;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;->id()I

    move-result p1

    const/16 v1, 0x539

    if-eq p1, v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object p1, v0, Lcom/sightcall/common/DataChannelAction$Wrapper;->extra:Ljava/lang/String;

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/proposition/Proposition;->fromJson(Ljava/lang/String;Lcom/sightcall/universal/agent/Usecase;)Lcom/sightcall/universal/internal/proposition/Proposition;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object v0, Lcom/sightcall/universal/internal/proposition/Proposition$State;->CREATED:Lcom/sightcall/universal/internal/proposition/Proposition$State;

    invoke-virtual {p1, v0}, Lcom/sightcall/universal/internal/proposition/Proposition;->is(Lcom/sightcall/universal/internal/proposition/Proposition$State;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iput-object p1, v0, Lcom/sightcall/universal/model/CallParameters;->pendingProposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/sightcall/universal/internal/proposition/Proposition$State;->DELETED:Lcom/sightcall/universal/internal/proposition/Proposition$State;

    invoke-virtual {p1, v0}, Lcom/sightcall/universal/internal/proposition/Proposition;->is(Lcom/sightcall/universal/internal/proposition/Proposition$State;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-object v0, v0, Lcom/sightcall/universal/model/CallParameters;->pendingProposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/proposition/Proposition;->id()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/proposition/Proposition;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/proposition/Proposition;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sightcall/universal/model/CallParameters;->pendingProposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void

    :cond_8
    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/steps/CallStep;->onDataChannelMessage(Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;)V

    return-void
.end method

.method public onDeviceAttached(Lcom/sightcall/uvc/Device;)V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDeviceAttached() called with: device = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/sightcall/universal/internal/view/UvcProducer;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-direct {v0, v1, p1, v2}, Lcom/sightcall/universal/internal/view/UvcProducer;-><init>(Landroid/content/Context;Lcom/sightcall/uvc/Device;Lcom/sightcall/universal/model/Session;)V

    iput-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->uvcProducer:Lcom/sightcall/universal/internal/view/UvcProducer;

    return-void
.end method

.method public onDeviceDetached(Lcom/sightcall/uvc/Device;)V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDeviceDetached() called with: device = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->uvcProducer:Lcom/sightcall/universal/internal/view/UvcProducer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->device()Lcom/sightcall/uvc/Device;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iput-object v2, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->uvcProducer:Lcom/sightcall/universal/internal/view/UvcProducer;

    :cond_0
    return-void
.end method

.method public onDevicePermissionDenied(Lcom/sightcall/uvc/Device;)V
    .locals 0

    return-void
.end method

.method public onDevicePermissionGranted(Lcom/sightcall/uvc/Device;)V
    .locals 2

    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDevicePermissionGranted() called with: device = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onParticipantsEvent(Lnet/rtccloud/sdk/event/call/ParticipantsEvent;)V
    .locals 3
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v1

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ConferenceModule;->myself()Lnet/rtccloud/sdk/Participant;

    move-result-object v0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/ParticipantsEvent;->participants()[Lnet/rtccloud/sdk/Participant;

    move-result-object p1

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->previousParticipants:[Lnet/rtccloud/sdk/Participant;

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->interrupt()V

    :cond_1
    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->previousParticipants:[Lnet/rtccloud/sdk/Participant;

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Usecase;->activeSpeaker()Lcom/sightcall/universal/agent/Usecase$ActiveSpeaker;

    move-result-object p0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Participant;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p0, :cond_4

    sget-object v1, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$com$sightcall$universal$agent$Usecase$ActiveSpeaker:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    goto :goto_0

    :cond_2
    array-length p0, p1

    if-lez p0, :cond_4

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Participant;->isLocked()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v1}, Lnet/rtccloud/sdk/Participant;->lock(Z)V

    return-void

    :cond_3
    invoke-virtual {v0}, Lnet/rtccloud/sdk/Participant;->isLocked()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/Participant;->lock(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onRegistrationEvent(Lnet/rtccloud/sdk/event/presence/RegistrationEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    return-void
.end method

.method public onRtccStatus(Lnet/rtccloud/sdk/Rtcc$Status;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->updateServiceNotification()V

    sget-object v0, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$Rtcc$Status:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->deviceMonitoring:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->trigger(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->unbindService()V

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/sightcall/universal/scenario/Step;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->success([Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

.method public onServiceConnected(Lcom/sightcall/universal/scenario/ScenarioService;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sightcall/universal/scenario/Step;->onServiceConnected(Lcom/sightcall/universal/scenario/ScenarioService;)V

    sget-object p1, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object p1

    sget-object v0, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->unbindService()V

    const-string p1, "CallStep needs a Rtcc Status set to CONNECTED"

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->failure(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->execute()V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    invoke-super {p0}, Lcom/sightcall/universal/scenario/Step;->onServiceDisconnected()V

    return-void
.end method

.method public onUnbind()V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/steps/CallStep;->clearDelegates()V

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->recordingPlugin:Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin;

    invoke-virtual {v0}, Lcom/sightcall/universal/scenario/steps/CallRecordingPlugin;->onUnbind()V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->deviceMonitoring:Lcom/sightcall/universal/internal/model/DeviceMonitoring;

    invoke-static {v0}, Lcom/sightcall/universal/internal/model/DeviceMonitoring;->stop(Lcom/sightcall/universal/internal/model/DeviceMonitoring;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sightcall/uvc/DeviceManager;->instance(Landroid/content/Context;)Lcom/sightcall/uvc/DeviceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sightcall/uvc/DeviceManager;->removeDeviceListener(Lcom/sightcall/uvc/DeviceListener;)V

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sightcall/uvc/DeviceManager;->instance(Landroid/content/Context;)Lcom/sightcall/uvc/DeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/uvc/DeviceManager;->stop()V

    return-void
.end method

.method public onVideoProfileEvent(Lnet/rtccloud/sdk/event/call/VideoProfileEvent;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    sget-object p0, Lcom/sightcall/universal/scenario/steps/CallStep$6;->$SwitchMap$net$rtccloud$sdk$VideoModule$Profile:[I

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/VideoProfileEvent;->profile()Lnet/rtccloud/sdk/VideoModule$Profile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    sget-object p0, Lnet/rtccloud/sdk/VideoModule$Profile;->QVGA:Lnet/rtccloud/sdk/VideoModule$Profile;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/rtccloud/sdk/VideoModule$Profile;->VGA:Lnet/rtccloud/sdk/VideoModule$Profile;

    :goto_0
    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/Call$Parameters;->videoProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)Lnet/rtccloud/sdk/Call$Parameters;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/event/call/CallEvent;->call()Lnet/rtccloud/sdk/Call;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz p1, :cond_1

    check-cast v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->setProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)V

    return-void

    :cond_1
    instance-of p1, v0, Lcom/sightcall/universal/internal/view/UvcProducer;

    if-eqz p1, :cond_2

    check-cast v0, Lcom/sightcall/universal/internal/view/UvcProducer;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/view/UvcProducer;->setProfile(Lnet/rtccloud/sdk/VideoModule$Profile;)V

    :cond_2
    return-void
.end method

.method public register(Lcom/sightcall/universal/scenario/steps/CallStep$Delegate;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->delegates:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->delegates:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->delegates:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->status()Lnet/rtccloud/sdk/Rtcc$Status;

    move-result-object v1

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    if-eq v1, v2, :cond_1

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->NETWORK_LOST:Lnet/rtccloud/sdk/Rtcc$Status;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v0

    sget-object v1, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->start(Landroid/content/Context;)V

    return-void

    :cond_2
    invoke-super {p0}, Lcom/sightcall/universal/scenario/Step;->resume()V

    return-void
.end method

.method public run()V
    .locals 1

    invoke-static {}, Lcom/sightcall/universal/Universal;->ar()Lcom/sightcall/universal/ar/UniversalAr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/ar/UniversalAr;->checkArCoreAvailability()V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->bindService()V

    return-void
.end method

.method public session()Lcom/sightcall/universal/model/Session;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->session:Lcom/sightcall/universal/model/Session;

    return-object p0
.end method

.method public unregister(Lcom/sightcall/universal/scenario/steps/CallStep$Delegate;)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->delegates:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/CallStep;->delegates:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
