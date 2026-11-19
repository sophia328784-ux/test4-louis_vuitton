.class public Lnet/rtccloud/sdk/AudioModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/AudioModule$AudioRoute;,
        Lnet/rtccloud/sdk/AudioModule$Native;,
        Lnet/rtccloud/sdk/AudioModule$myAudioDeviceCallback;
    }
.end annotation


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private final audioManager:Landroid/media/AudioManager;

.field private final call:Lnet/rtccloud/sdk/Call;

.field private volatile frameLength:I

.field private volatile frequency:I

.field private isPlayerMuted:Z

.field private isRecorderMuted:Z

.field private isSco:Z

.field private isStarted:Z

.field private final mAudioDeviceCallback:Lnet/rtccloud/sdk/AudioModule$myAudioDeviceCallback;

.field private mFocusRequest:Landroid/media/AudioFocusRequest;

.field private final nativeInterface:Lnet/rtccloud/sdk/AudioModule$Native;

.field private volatile playDeviceId:I

.field private volatile recDeviceId:I

.field private route:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

.field private final rtcc:Lnet/rtccloud/sdk/Rtcc;

.field private scoBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->AUDIO:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/AudioModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/AudioModule$Native;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/rtccloud/sdk/AudioModule$1;

    invoke-direct {v0, p0}, Lnet/rtccloud/sdk/AudioModule$1;-><init>(Lnet/rtccloud/sdk/AudioModule;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/AudioModule;->scoBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v0, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->SPEAKER:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    iput-object v0, p0, Lnet/rtccloud/sdk/AudioModule;->route:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/rtccloud/sdk/AudioModule;->isSco:Z

    iput-object p1, p0, Lnet/rtccloud/sdk/AudioModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iput-object p2, p0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    iput-object p3, p0, Lnet/rtccloud/sdk/AudioModule;->nativeInterface:Lnet/rtccloud/sdk/AudioModule$Native;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->context()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/pratik/InstantAppWrapper;->isInstantApp(Landroid/content/Context;)Z

    move-result p2

    const-string p3, "AudioModule"

    if-eqz p2, :cond_0

    sget-object p2, Lnet/rtccloud/sdk/AudioModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    sget-object v1, Lnet/rtccloud/sdk/util/Permission;->RECORD_AUDIO:Lnet/rtccloud/sdk/util/Permission;

    filled-new-array {v1}, [Lnet/rtccloud/sdk/util/Permission;

    move-result-object v1

    invoke-static {p2, p1, p3, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforcePermissions(Lnet/rtccloud/sdk/util/OldLogger;Landroid/content/Context;Ljava/lang/String;[Lnet/rtccloud/sdk/util/Permission;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lnet/rtccloud/sdk/AudioModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    sget-object v1, Lnet/rtccloud/sdk/util/Permission;->RECORD_AUDIO:Lnet/rtccloud/sdk/util/Permission;

    sget-object v2, Lnet/rtccloud/sdk/util/Permission;->MODIFY_AUDIO_SETTINGS:Lnet/rtccloud/sdk/util/Permission;

    filled-new-array {v1, v2}, [Lnet/rtccloud/sdk/util/Permission;

    move-result-object v1

    invoke-static {p2, p1, p3, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforcePermissions(Lnet/rtccloud/sdk/util/OldLogger;Landroid/content/Context;Ljava/lang/String;[Lnet/rtccloud/sdk/util/Permission;)V

    :goto_0
    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lnet/rtccloud/sdk/AudioModule;->audioManager:Landroid/media/AudioManager;

    new-instance p2, Lnet/rtccloud/sdk/AudioModule$myAudioDeviceCallback;

    invoke-direct {p2, p0, v0}, Lnet/rtccloud/sdk/AudioModule$myAudioDeviceCallback;-><init>(Lnet/rtccloud/sdk/AudioModule;I)V

    iput-object p2, p0, Lnet/rtccloud/sdk/AudioModule;->mAudioDeviceCallback:Lnet/rtccloud/sdk/AudioModule$myAudioDeviceCallback;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    iput-boolean v0, p0, Lnet/rtccloud/sdk/AudioModule;->isStarted:Z

    iput-boolean v0, p0, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted:Z

    iput-boolean v0, p0, Lnet/rtccloud/sdk/AudioModule;->isPlayerMuted:Z

    invoke-direct {p0, p3}, Lnet/rtccloud/sdk/AudioModule;->selectAudioRoute(Lnet/rtccloud/sdk/AudioModule$AudioRoute;)Z

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->getDevices()Ljava/lang/String;

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk26()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lnet/rtccloud/sdk/AudioModule;->initFocus()V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lnet/rtccloud/sdk/AudioModule;Landroid/media/AudioDeviceInfo;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/AudioModule;->lambda$getDevices$0(Landroid/media/AudioDeviceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private abandonAudioFocusRequest()V
    .locals 1

    iget-object v0, p0, Lnet/rtccloud/sdk/AudioModule;->audioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lnet/rtccloud/sdk/AudioModule;->mFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    return-void
.end method

.method public static synthetic b(Lnet/rtccloud/sdk/AudioModule;Landroid/media/AudioDeviceInfo;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/AudioModule;->lambda$getDevices$1(Landroid/media/AudioDeviceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lnet/rtccloud/sdk/AudioModule;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/rtccloud/sdk/AudioModule;->lambda$nativeRestart$3(ZZ)V

    return-void
.end method

.method public static synthetic d(Lnet/rtccloud/sdk/AudioModule;)V
    .locals 0

    invoke-direct {p0}, Lnet/rtccloud/sdk/AudioModule;->lambda$restart$2()V

    return-void
.end method

.method public static bridge synthetic e(Lnet/rtccloud/sdk/AudioModule;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/AudioModule;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static bridge synthetic f(Lnet/rtccloud/sdk/AudioModule;)Lnet/rtccloud/sdk/Call;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    return-object p0
.end method

.method public static bridge synthetic g(Lnet/rtccloud/sdk/AudioModule;)I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/AudioModule;->frameLength:I

    return p0
.end method

.method public static bridge synthetic h(Lnet/rtccloud/sdk/AudioModule;)I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/AudioModule;->frequency:I

    return p0
.end method

.method public static bridge synthetic i(Lnet/rtccloud/sdk/AudioModule;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/AudioModule;->isSco:Z

    return p0
.end method

.method private initFocus()V
    .locals 3

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v2, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v2, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    invoke-virtual {v2, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/AudioModule;->mFocusRequest:Landroid/media/AudioFocusRequest;

    return-void
.end method

.method public static bridge synthetic j(Lnet/rtccloud/sdk/AudioModule;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/AudioModule;->isStarted:Z

    return p0
.end method

.method public static bridge synthetic k(Lnet/rtccloud/sdk/AudioModule;)Lnet/rtccloud/sdk/AudioModule$Native;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/AudioModule;->nativeInterface:Lnet/rtccloud/sdk/AudioModule$Native;

    return-object p0
.end method

.method public static bridge synthetic l(Lnet/rtccloud/sdk/AudioModule;)I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/AudioModule;->playDeviceId:I

    return p0
.end method

.method private synthetic lambda$getDevices$0(Landroid/media/AudioDeviceInfo;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"id\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\",\"selected\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/rtccloud/sdk/AudioModule;->playDeviceId:I

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", \"name\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getDevices$1(Landroid/media/AudioDeviceInfo;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"id\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\",\"selected\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/rtccloud/sdk/AudioModule;->recDeviceId:I

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", \"name\":\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$nativeRestart$3(ZZ)V
    .locals 7

    iget-object v0, p0, Lnet/rtccloud/sdk/AudioModule;->nativeInterface:Lnet/rtccloud/sdk/AudioModule$Native;

    iget v1, p0, Lnet/rtccloud/sdk/AudioModule;->frequency:I

    iget v2, p0, Lnet/rtccloud/sdk/AudioModule;->frameLength:I

    iget v3, p0, Lnet/rtccloud/sdk/AudioModule;->recDeviceId:I

    iget v4, p0, Lnet/rtccloud/sdk/AudioModule;->playDeviceId:I

    invoke-static {}, Lnet/rtccloud/sdk/util/AudioWorkaroundKt;->isEchoCancelerEnabled()Z

    move-result v5

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->rtcc()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v6

    iget-object v6, v6, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/sightcall/pratik/InstantAppWrapper;->isInstantApp(Landroid/content/Context;)Z

    move-result v6

    invoke-interface/range {v0 .. v6}, Lnet/rtccloud/sdk/AudioModule$Native;->start(IIIIZZ)V

    iget-object v0, p0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/AudioModule;->muteRecorder(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/rtccloud/sdk/AudioModule;->muteRecorder(ZZ)V

    :goto_0
    iget-object p1, p0, Lnet/rtccloud/sdk/AudioModule;->nativeInterface:Lnet/rtccloud/sdk/AudioModule$Native;

    invoke-interface {p1, p2}, Lnet/rtccloud/sdk/AudioModule$Native;->mutePlayer(Z)V

    iget-object p0, p0, Lnet/rtccloud/sdk/AudioModule;->audioManager:Landroid/media/AudioManager;

    invoke-static {p0}, Lnet/rtccloud/sdk/util/AudioWorkaroundKt;->setModeInCommunication(Landroid/media/AudioManager;)V

    return-void
.end method

.method private synthetic lambda$restart$2()V
    .locals 1

    invoke-static {}, Lcom/sightcall/pratik/utils/SdkUtilsKt;->isAtLeastSdk26()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->requestAudioFocus()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->onStart()V

    return-void
.end method

.method public static bridge synthetic m(Lnet/rtccloud/sdk/AudioModule;)I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/AudioModule;->recDeviceId:I

    return p0
.end method

.method public static bridge synthetic n(Lnet/rtccloud/sdk/AudioModule;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/AudioModule;->isStarted:Z

    return-void
.end method

.method private nativeRestart()V
    .locals 4

    iget-boolean v0, p0, Lnet/rtccloud/sdk/AudioModule;->isStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted()Z

    move-result v0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->isPlayerMuted()Z

    move-result v1

    iget-object v2, p0, Lnet/rtccloud/sdk/AudioModule;->nativeInterface:Lnet/rtccloud/sdk/AudioModule$Native;

    invoke-interface {v2}, Lnet/rtccloud/sdk/AudioModule$Native;->stop()V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lib;

    invoke-direct {v3, p0, v0, v1}, Lib;-><init>(Lnet/rtccloud/sdk/AudioModule;ZZ)V

    const-wide/16 v0, 0x96

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static bridge synthetic o(Lnet/rtccloud/sdk/AudioModule;)V
    .locals 0

    invoke-direct {p0}, Lnet/rtccloud/sdk/AudioModule;->nativeRestart()V

    return-void
.end method

.method public static bridge synthetic p(Lnet/rtccloud/sdk/AudioModule;)V
    .locals 0

    invoke-direct {p0}, Lnet/rtccloud/sdk/AudioModule;->restartAudio()V

    return-void
.end method

.method private restartAudio()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/rtccloud/sdk/AudioModule;->selectAudioRoute(Lnet/rtccloud/sdk/AudioModule$AudioRoute;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/rtccloud/sdk/AudioModule;->isSco:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lnet/rtccloud/sdk/AudioModule;->nativeRestart()V

    return-void

    :cond_0
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v0, "RestartAudio Requested, no changes"

    invoke-virtual {p0, v0}, Lcom/sightcall/pratik/logs/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method private selectAudioRoute(Lnet/rtccloud/sdk/AudioModule$AudioRoute;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lnet/rtccloud/sdk/AudioModule;->playDeviceId:I

    iget v3, v0, Lnet/rtccloud/sdk/AudioModule;->recDeviceId:I

    iget-object v4, v0, Lnet/rtccloud/sdk/AudioModule;->audioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v4

    sget-object v6, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->SPEAKER:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    const/4 v7, 0x1

    if-ne v1, v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    const/4 v8, 0x0

    iput-boolean v8, v0, Lnet/rtccloud/sdk/AudioModule;->isSco:Z

    const/4 v9, -0x1

    iput v9, v0, Lnet/rtccloud/sdk/AudioModule;->playDeviceId:I

    iput v9, v0, Lnet/rtccloud/sdk/AudioModule;->recDeviceId:I

    move v10, v9

    :goto_1
    const/4 v11, 0x4

    if-ge v6, v11, :cond_e

    array-length v12, v4

    move v13, v8

    :goto_2
    if-ge v13, v12, :cond_c

    aget-object v14, v4, v13

    iget v15, v0, Lnet/rtccloud/sdk/AudioModule;->playDeviceId:I

    move/from16 v16, v8

    const/4 v8, 0x2

    if-ne v15, v9, :cond_6

    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v15

    if-eqz v15, :cond_6

    if-eq v6, v7, :cond_5

    if-eq v6, v8, :cond_3

    if-eq v6, v5, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {v14}, Lcom/sightcall/pratik/utils/RealWearUtilsKt;->selectBuildInEarpiece(Landroid/media/AudioDeviceInfo;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v15

    if-ne v15, v8, :cond_b

    :cond_2
    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v8

    iput v8, v0, Lnet/rtccloud/sdk/AudioModule;->playDeviceId:I

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    if-eq v8, v11, :cond_4

    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    if-eq v8, v5, :cond_4

    sget-object v8, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->HEADSET:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    if-ne v1, v8, :cond_b

    iget v8, v0, Lnet/rtccloud/sdk/AudioModule;->playDeviceId:I

    if-ne v8, v9, :cond_b

    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    if-ne v8, v7, :cond_b

    :cond_4
    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v8

    iput v8, v0, Lnet/rtccloud/sdk/AudioModule;->playDeviceId:I

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    const/4 v15, 0x7

    if-ne v8, v15, :cond_b

    invoke-virtual {v0}, Lnet/rtccloud/sdk/AudioModule;->rtcc()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v8

    iget-object v8, v8, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/sightcall/pratik/InstantAppWrapper;->isInstalledApp(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_b

    iput-boolean v7, v0, Lnet/rtccloud/sdk/AudioModule;->isSco:Z

    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v8

    iput v8, v0, Lnet/rtccloud/sdk/AudioModule;->playDeviceId:I

    goto :goto_3

    :cond_6
    iget v15, v0, Lnet/rtccloud/sdk/AudioModule;->recDeviceId:I

    if-ne v15, v9, :cond_b

    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->isSource()Z

    move-result v15

    if-eqz v15, :cond_b

    if-eq v6, v7, :cond_a

    const/16 v15, 0xf

    if-eq v6, v8, :cond_8

    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    if-ne v8, v15, :cond_b

    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v8

    const-string v15, "back"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v8

    iput v8, v0, Lnet/rtccloud/sdk/AudioModule;->recDeviceId:I

    goto :goto_3

    :cond_7
    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v8

    move v10, v8

    goto :goto_3

    :cond_8
    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    if-eq v8, v5, :cond_9

    sget-object v8, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->HEADSET:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    if-ne v1, v8, :cond_b

    iget v8, v0, Lnet/rtccloud/sdk/AudioModule;->recDeviceId:I

    if-ne v8, v9, :cond_b

    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    if-ne v8, v15, :cond_b

    :cond_9
    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v8

    iput v8, v0, Lnet/rtccloud/sdk/AudioModule;->recDeviceId:I

    goto :goto_3

    :cond_a
    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v8

    const/4 v15, 0x7

    if-ne v8, v15, :cond_b

    invoke-virtual {v0}, Lnet/rtccloud/sdk/AudioModule;->rtcc()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v8

    iget-object v8, v8, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/sightcall/pratik/InstantAppWrapper;->isInstalledApp(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_b

    iput-boolean v7, v0, Lnet/rtccloud/sdk/AudioModule;->isSco:Z

    invoke-virtual {v14}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v8

    iput v8, v0, Lnet/rtccloud/sdk/AudioModule;->recDeviceId:I

    :cond_b
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v16

    goto/16 :goto_2

    :cond_c
    move/from16 v16, v8

    iget v8, v0, Lnet/rtccloud/sdk/AudioModule;->playDeviceId:I

    if-eq v8, v9, :cond_d

    iget v8, v0, Lnet/rtccloud/sdk/AudioModule;->recDeviceId:I

    if-eq v8, v9, :cond_d

    goto :goto_4

    :cond_d
    iput v9, v0, Lnet/rtccloud/sdk/AudioModule;->playDeviceId:I

    iput v9, v0, Lnet/rtccloud/sdk/AudioModule;->recDeviceId:I

    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v16

    goto/16 :goto_1

    :cond_e
    move/from16 v16, v8

    :goto_4
    iget v1, v0, Lnet/rtccloud/sdk/AudioModule;->recDeviceId:I

    if-ne v1, v9, :cond_f

    iput v10, v0, Lnet/rtccloud/sdk/AudioModule;->recDeviceId:I

    :cond_f
    iget-boolean v1, v0, Lnet/rtccloud/sdk/AudioModule;->isSco:Z

    iget-object v4, v0, Lnet/rtccloud/sdk/AudioModule;->audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_10

    invoke-virtual {v4}, Landroid/media/AudioManager;->stopBluetoothSco()V

    iget-object v1, v0, Lnet/rtccloud/sdk/AudioModule;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->startBluetoothSco()V

    goto :goto_5

    :cond_10
    invoke-virtual {v4}, Landroid/media/AudioManager;->stopBluetoothSco()V

    :goto_5
    iget v1, v0, Lnet/rtccloud/sdk/AudioModule;->playDeviceId:I

    if-ne v2, v1, :cond_12

    iget v1, v0, Lnet/rtccloud/sdk/AudioModule;->recDeviceId:I

    if-eq v3, v1, :cond_11

    goto :goto_6

    :cond_11
    return v16

    :cond_12
    :goto_6
    if-ne v6, v5, :cond_13

    sget-object v1, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->SPEAKER:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    goto :goto_7

    :cond_13
    sget-object v1, Lnet/rtccloud/sdk/AudioModule$AudioRoute;->HEADSET:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    :goto_7
    sget-object v2, Lnet/rtccloud/sdk/AudioModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v3, v0, Lnet/rtccloud/sdk/AudioModule;->route:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "selectAudioDevice(%s -> %s)"

    invoke-virtual {v2, v4, v3}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lnet/rtccloud/sdk/AudioModule;->route:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    if-eq v2, v1, :cond_15

    iput-object v1, v0, Lnet/rtccloud/sdk/AudioModule;->route:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    iget-boolean v2, v0, Lnet/rtccloud/sdk/AudioModule;->isSco:Z

    if-nez v2, :cond_14

    invoke-direct {v0}, Lnet/rtccloud/sdk/AudioModule;->nativeRestart()V

    :cond_14
    iget-object v2, v0, Lnet/rtccloud/sdk/AudioModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v2}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v2

    new-instance v3, Lnet/rtccloud/sdk/event/call/AudioRouteEvent;

    iget-object v0, v0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-direct {v3, v0, v1}, Lnet/rtccloud/sdk/event/call/AudioRouteEvent;-><init>(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/AudioModule$AudioRoute;)V

    invoke-virtual {v2, v3}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_15
    return v7
.end method


# virtual methods
.method public getDevices()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnet/rtccloud/sdk/AudioModule;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Ljb;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljb;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lkb;

    invoke-direct {v2, p0, v3}, Lkb;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Ljb;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljb;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lkb;

    invoke-direct {v2, p0, v3}, Lkb;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\"audio_capture\":"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",\"audio_playback\":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isPlayerMuted()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/AudioModule;->isPlayerMuted:Z

    return p0
.end method

.method public isRecorderMuted()Z
    .locals 1

    iget-object v0, p0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object p0

    iget-object p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->myself:Lnet/rtccloud/sdk/Participant;

    iget-boolean p0, p0, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    return p0

    :cond_0
    iget-boolean p0, p0, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted:Z

    return p0
.end method

.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/AudioModule;->isStarted:Z

    return p0
.end method

.method public mutePlayer(Z)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/AudioModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mutePlayer(%b)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lnet/rtccloud/sdk/AudioModule;->isPlayerMuted:Z

    iget-object v0, p0, Lnet/rtccloud/sdk/AudioModule;->nativeInterface:Lnet/rtccloud/sdk/AudioModule$Native;

    invoke-interface {v0, p1}, Lnet/rtccloud/sdk/AudioModule$Native;->mutePlayer(Z)V

    iget-object p1, p0, Lnet/rtccloud/sdk/AudioModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p1

    new-instance v0, Lnet/rtccloud/sdk/event/call/AudioEvent;

    iget-object v1, p0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    iget-boolean v2, p0, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted:Z

    iget-boolean p0, p0, Lnet/rtccloud/sdk/AudioModule;->isPlayerMuted:Z

    invoke-direct {v0, v1, v2, p0}, Lnet/rtccloud/sdk/event/call/AudioEvent;-><init>(Lnet/rtccloud/sdk/Call;ZZ)V

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public muteRecorder(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, p1, v0}, Lnet/rtccloud/sdk/AudioModule;->muteRecorder(ZZ)V

    return-void
.end method

.method public muteRecorder(ZZ)V
    .locals 4

    iget-object v0, p0, Lnet/rtccloud/sdk/AudioModule;->nativeInterface:Lnet/rtccloud/sdk/AudioModule$Native;

    invoke-interface {v0, p1}, Lnet/rtccloud/sdk/AudioModule$Native;->muteRecorder(Z)V

    if-nez p2, :cond_1

    iput-boolean p1, p0, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted:Z

    iget-object p2, p0, Lnet/rtccloud/sdk/AudioModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {p2}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p2

    new-instance v0, Lnet/rtccloud/sdk/event/call/AudioEvent;

    iget-object v1, p0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    iget-boolean v2, p0, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted:Z

    iget-boolean v3, p0, Lnet/rtccloud/sdk/AudioModule;->isPlayerMuted:Z

    invoke-direct {v0, v1, v2, v3}, Lnet/rtccloud/sdk/event/call/AudioEvent;-><init>(Lnet/rtccloud/sdk/Call;ZZ)V

    invoke-virtual {p2, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object p2, p0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p2}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "mute"

    goto :goto_0

    :cond_0
    const-string p1, "unmute"

    :goto_0
    iget-object p2, p0, Lnet/rtccloud/sdk/AudioModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"evt\": \"callstatus\",\"id\": "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    iget v1, v1, Lnet/rtccloud/sdk/Call;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\"type\": \"sound\",\"status\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"sipcallid\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->sipId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/AudioModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAudioFocusChange focusChange= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->onStart()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->onStop()V

    return-void
.end method

.method public onCallStatusEvent(Lnet/rtccloud/sdk/event/call/StatusEvent;)V
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    iget-object p1, p0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v0, p1, Lnet/rtccloud/sdk/Call;->status:Lnet/rtccloud/sdk/Call$Status;

    sget-object v1, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->isEscalating()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p1, p0, Lnet/rtccloud/sdk/Call;->conferenceModule:Lnet/rtccloud/sdk/ConferenceModule;

    iget-object p1, p1, Lnet/rtccloud/sdk/ConferenceModule;->myself:Lnet/rtccloud/sdk/Participant;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->audio()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/Participant;->mute(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 9

    sget-object v0, Lnet/rtccloud/sdk/AudioModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "onStart()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-boolean v1, p0, Lnet/rtccloud/sdk/AudioModule;->isStarted:Z

    if-eqz v1, :cond_0

    const-string p0, "AudioModule is already [started]"

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/AudioModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v0, v0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/event/EventBus;->register(Ljava/lang/Object;)V

    sget-object v0, Lcom/sightcall/pratik/utils/Utils;->Companion:Lcom/sightcall/pratik/utils/Utils$Companion;

    iget-object v1, p0, Lnet/rtccloud/sdk/AudioModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v1, v1, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    iget-object v2, p0, Lnet/rtccloud/sdk/AudioModule;->scoBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sightcall/pratik/utils/Utils$Companion;->registerReceiverCompat(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/AudioModule;->isStarted:Z

    iget-boolean v1, p0, Lnet/rtccloud/sdk/AudioModule;->isSco:Z

    if-nez v1, :cond_3

    iget-object v2, p0, Lnet/rtccloud/sdk/AudioModule;->nativeInterface:Lnet/rtccloud/sdk/AudioModule$Native;

    iget v3, p0, Lnet/rtccloud/sdk/AudioModule;->frequency:I

    iget v4, p0, Lnet/rtccloud/sdk/AudioModule;->frameLength:I

    iget v5, p0, Lnet/rtccloud/sdk/AudioModule;->recDeviceId:I

    iget v6, p0, Lnet/rtccloud/sdk/AudioModule;->playDeviceId:I

    invoke-static {}, Lnet/rtccloud/sdk/util/AudioWorkaroundKt;->isEchoCancelerEnabled()Z

    move-result v7

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->rtcc()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v1

    iget-object v1, v1, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/sightcall/pratik/InstantAppWrapper;->isInstantApp(Landroid/content/Context;)Z

    move-result v8

    invoke-interface/range {v2 .. v8}, Lnet/rtccloud/sdk/AudioModule$Native;->start(IIIIZZ)V

    iget-object v1, p0, Lnet/rtccloud/sdk/AudioModule;->audioManager:Landroid/media/AudioManager;

    invoke-static {v1}, Lnet/rtccloud/sdk/util/AudioWorkaroundKt;->setModeInCommunication(Landroid/media/AudioManager;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call$Parameters;->audio()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lnet/rtccloud/sdk/AudioModule;->muteRecorder(ZZ)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/AudioModule;->muteRecorder(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lnet/rtccloud/sdk/AudioModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"evt\": \"callstatus\",\"id\": "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    iget v2, v2, Lnet/rtccloud/sdk/Call;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\"type\": \"sound\",\"status\":\"unmute\",\"sipcallid\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/rtccloud/sdk/AudioModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p0, p0, Lnet/rtccloud/sdk/Call;->sipId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/AudioModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "onStop()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-boolean v1, p0, Lnet/rtccloud/sdk/AudioModule;->isStarted:Z

    if-nez v1, :cond_0

    const-string p0, "AudioModule is already [stopped]"

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/rtccloud/sdk/AudioModule;->isStarted:Z

    iget-object v1, p0, Lnet/rtccloud/sdk/AudioModule;->nativeInterface:Lnet/rtccloud/sdk/AudioModule$Native;

    invoke-interface {v1}, Lnet/rtccloud/sdk/AudioModule$Native;->stop()V

    iput-boolean v0, p0, Lnet/rtccloud/sdk/AudioModule;->isRecorderMuted:Z

    iput-boolean v0, p0, Lnet/rtccloud/sdk/AudioModule;->isPlayerMuted:Z

    iget-object v0, p0, Lnet/rtccloud/sdk/AudioModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v0, v0, Lnet/rtccloud/sdk/Rtcc;->context:Landroid/content/Context;

    iget-object v1, p0, Lnet/rtccloud/sdk/AudioModule;->scoBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/AudioModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v0, v0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/event/EventBus;->unregister(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lnet/rtccloud/sdk/AudioModule;->isSco:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/rtccloud/sdk/AudioModule;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    :cond_1
    return-void
.end method

.method public requestAudioFocus()V
    .locals 4

    iget-object v0, p0, Lnet/rtccloud/sdk/AudioModule;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lnet/rtccloud/sdk/AudioModule;->mFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    sget-object v1, Lnet/rtccloud/sdk/AudioModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestAudioFocus res= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->onStart()V

    :cond_0
    return-void
.end method

.method public restart()V
    .locals 4

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->onStop()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lz1;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lz1;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public route()Lnet/rtccloud/sdk/AudioModule$AudioRoute;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/rtccloud/sdk/AudioModule;->route:Lnet/rtccloud/sdk/AudioModule$AudioRoute;

    return-object p0
.end method

.method public route(Lnet/rtccloud/sdk/AudioModule$AudioRoute;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/AudioModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "route(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/AudioModule;->selectAudioRoute(Lnet/rtccloud/sdk/AudioModule$AudioRoute;)Z

    return-void

    :cond_0
    const-string p0, "[route] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public rtcc()Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/AudioModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method

.method public setFrameLength(I)V
    .locals 0

    iput p1, p0, Lnet/rtccloud/sdk/AudioModule;->frameLength:I

    return-void
.end method

.method public setFrequency(I)V
    .locals 0

    iput p1, p0, Lnet/rtccloud/sdk/AudioModule;->frequency:I

    return-void
.end method

.method public setPlayDeviceId(I)V
    .locals 0

    iput p1, p0, Lnet/rtccloud/sdk/AudioModule;->playDeviceId:I

    invoke-direct {p0}, Lnet/rtccloud/sdk/AudioModule;->nativeRestart()V

    return-void
.end method

.method public setRecDeviceId(I)V
    .locals 0

    iput p1, p0, Lnet/rtccloud/sdk/AudioModule;->recDeviceId:I

    invoke-direct {p0}, Lnet/rtccloud/sdk/AudioModule;->nativeRestart()V

    return-void
.end method

.method public teardown()V
    .locals 0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/AudioModule;->onStop()V

    return-void
.end method
