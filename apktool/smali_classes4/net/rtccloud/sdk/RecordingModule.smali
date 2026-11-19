.class public Lnet/rtccloud/sdk/RecordingModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/RecordingModule$Status;,
        Lnet/rtccloud/sdk/RecordingModule$Native;,
        Lnet/rtccloud/sdk/RecordingModule$Mode;
    }
.end annotation


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private final call:Lnet/rtccloud/sdk/Call;

.field private isTeardown:Z

.field private final nativeInterface:Lnet/rtccloud/sdk/RecordingModule$Native;

.field private final rtcc:Lnet/rtccloud/sdk/Rtcc;

.field private status:Lnet/rtccloud/sdk/RecordingModule$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->RECORDING:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/RecordingModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/RecordingModule$Native;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->UNDEFINED:Lnet/rtccloud/sdk/RecordingModule$Status;

    iput-object v0, p0, Lnet/rtccloud/sdk/RecordingModule;->status:Lnet/rtccloud/sdk/RecordingModule$Status;

    iput-object p1, p0, Lnet/rtccloud/sdk/RecordingModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iput-object p2, p0, Lnet/rtccloud/sdk/RecordingModule;->call:Lnet/rtccloud/sdk/Call;

    iput-object p3, p0, Lnet/rtccloud/sdk/RecordingModule;->nativeInterface:Lnet/rtccloud/sdk/RecordingModule$Native;

    return-void
.end method

.method private ensureNotTeardown()Z
    .locals 1

    iget-boolean p0, p0, Lnet/rtccloud/sdk/RecordingModule;->isTeardown:Z

    if-eqz p0, :cond_0

    sget-object p0, Lnet/rtccloud/sdk/RecordingModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "RecordingModule must not be [teardown]"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private ensureReady()Z
    .locals 3

    invoke-direct {p0}, Lnet/rtccloud/sdk/RecordingModule;->ensureNotTeardown()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lnet/rtccloud/sdk/RecordingModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/rtccloud/sdk/RecordingModule;->call:Lnet/rtccloud/sdk/Call;

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lnet/rtccloud/sdk/RecordingModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object p0

    invoke-static {v0, p0}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceConferenceAdmin(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/ConferenceModule;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private ensureStatus(Lnet/rtccloud/sdk/RecordingModule$Status;)Z
    .locals 2

    .line 21
    iget-object p0, p0, Lnet/rtccloud/sdk/RecordingModule;->status:Lnet/rtccloud/sdk/RecordingModule$Status;

    if-eq p0, p1, :cond_0

    .line 22
    sget-object v0, Lnet/rtccloud/sdk/RecordingModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "The [recording] must be [%s] but is [%s]"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private ensureStatus(Lnet/rtccloud/sdk/RecordingModule$Status;Lnet/rtccloud/sdk/RecordingModule$Status;)Z
    .locals 2

    iget-object p0, p0, Lnet/rtccloud/sdk/RecordingModule;->status:Lnet/rtccloud/sdk/RecordingModule$Status;

    if-eq p0, p1, :cond_0

    if-eq p0, p2, :cond_0

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "The [recording] must be [%s] or [%s] but is [%s]"

    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public bookmark()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "bookmark()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/RecordingModule;->ensureReady()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->RECORDING:Lnet/rtccloud/sdk/RecordingModule$Status;

    invoke-direct {p0, v0}, Lnet/rtccloud/sdk/RecordingModule;->ensureStatus(Lnet/rtccloud/sdk/RecordingModule$Status;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/RecordingModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    sget-object v1, Lnet/rtccloud/sdk/Call$Control;->BOOKMARK:Lnet/rtccloud/sdk/Call$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Call;->id:I

    const/4 v2, -0x1

    invoke-interface {v0, v1, p0, v2}, Lnet/rtccloud/sdk/Call$Native;->control(Lnet/rtccloud/sdk/Call$Control;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getStatus()Lnet/rtccloud/sdk/RecordingModule$Status;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/RecordingModule;->status:Lnet/rtccloud/sdk/RecordingModule$Status;

    return-object p0
.end method

.method public handle(I)V
    .locals 2

    const/16 v0, 0x71a0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x71a1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x71b0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-object p1, Lnet/rtccloud/sdk/RecordingModule$Status;->STOPPED:Lnet/rtccloud/sdk/RecordingModule$Status;

    iput-object p1, p0, Lnet/rtccloud/sdk/RecordingModule;->status:Lnet/rtccloud/sdk/RecordingModule$Status;

    iget-object p1, p0, Lnet/rtccloud/sdk/RecordingModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v0, Lnet/rtccloud/sdk/event/call/RecordingEvent;

    iget-object p0, p0, Lnet/rtccloud/sdk/RecordingModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-direct {v0, p0, v1}, Lnet/rtccloud/sdk/event/call/RecordingEvent;-><init>(Lnet/rtccloud/sdk/Call;Z)V

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object p1, Lnet/rtccloud/sdk/RecordingModule$Status;->PAUSED:Lnet/rtccloud/sdk/RecordingModule$Status;

    iput-object p1, p0, Lnet/rtccloud/sdk/RecordingModule;->status:Lnet/rtccloud/sdk/RecordingModule$Status;

    iget-object p1, p0, Lnet/rtccloud/sdk/RecordingModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v0, Lnet/rtccloud/sdk/event/call/RecordingEvent;

    iget-object p0, p0, Lnet/rtccloud/sdk/RecordingModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-direct {v0, p0, v1}, Lnet/rtccloud/sdk/event/call/RecordingEvent;-><init>(Lnet/rtccloud/sdk/Call;Z)V

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_2
    sget-object p1, Lnet/rtccloud/sdk/RecordingModule$Status;->RECORDING:Lnet/rtccloud/sdk/RecordingModule$Status;

    iput-object p1, p0, Lnet/rtccloud/sdk/RecordingModule;->status:Lnet/rtccloud/sdk/RecordingModule$Status;

    iget-object p1, p0, Lnet/rtccloud/sdk/RecordingModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v0, Lnet/rtccloud/sdk/event/call/RecordingEvent;

    iget-object p0, p0, Lnet/rtccloud/sdk/RecordingModule;->call:Lnet/rtccloud/sdk/Call;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lnet/rtccloud/sdk/event/call/RecordingEvent;-><init>(Lnet/rtccloud/sdk/Call;Z)V

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public isPaused()Z
    .locals 1

    iget-object p0, p0, Lnet/rtccloud/sdk/RecordingModule;->status:Lnet/rtccloud/sdk/RecordingModule$Status;

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->PAUSED:Lnet/rtccloud/sdk/RecordingModule$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRecording()Z
    .locals 1

    iget-object p0, p0, Lnet/rtccloud/sdk/RecordingModule;->status:Lnet/rtccloud/sdk/RecordingModule$Status;

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->RECORDING:Lnet/rtccloud/sdk/RecordingModule$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isStarted()Z
    .locals 1

    iget-object p0, p0, Lnet/rtccloud/sdk/RecordingModule;->status:Lnet/rtccloud/sdk/RecordingModule$Status;

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->RECORDING:Lnet/rtccloud/sdk/RecordingModule$Status;

    if-eq p0, v0, :cond_1

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->PAUSED:Lnet/rtccloud/sdk/RecordingModule$Status;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isStopped()Z
    .locals 1

    iget-object p0, p0, Lnet/rtccloud/sdk/RecordingModule;->status:Lnet/rtccloud/sdk/RecordingModule$Status;

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->STOPPED:Lnet/rtccloud/sdk/RecordingModule$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "pause()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/RecordingModule;->ensureReady()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->RECORDING:Lnet/rtccloud/sdk/RecordingModule$Status;

    invoke-direct {p0, v0}, Lnet/rtccloud/sdk/RecordingModule;->ensureStatus(Lnet/rtccloud/sdk/RecordingModule$Status;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/RecordingModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    sget-object v1, Lnet/rtccloud/sdk/Call$Control;->PAUSERECORD:Lnet/rtccloud/sdk/Call$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Call;->id:I

    const/4 v2, -0x1

    invoke-interface {v0, v1, p0, v2}, Lnet/rtccloud/sdk/Call$Native;->control(Lnet/rtccloud/sdk/Call$Control;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "resume()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/RecordingModule;->ensureReady()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->PAUSED:Lnet/rtccloud/sdk/RecordingModule$Status;

    invoke-direct {p0, v0}, Lnet/rtccloud/sdk/RecordingModule;->ensureStatus(Lnet/rtccloud/sdk/RecordingModule$Status;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/RecordingModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    sget-object v1, Lnet/rtccloud/sdk/Call$Control;->RESUMERECORD:Lnet/rtccloud/sdk/Call$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Call;->id:I

    const/4 v2, -0x1

    invoke-interface {v0, v1, p0, v2}, Lnet/rtccloud/sdk/Call$Native;->control(Lnet/rtccloud/sdk/Call$Control;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public rtcc()Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/RecordingModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method

.method public start(Ljava/lang/String;)V
    .locals 1

    .line 47
    sget-object v0, Lnet/rtccloud/sdk/RecordingModule$Mode;->AUDIO_AND_VIDEO:Lnet/rtccloud/sdk/RecordingModule$Mode;

    invoke-virtual {p0, p1, v0}, Lnet/rtccloud/sdk/RecordingModule;->start(Ljava/lang/String;Lnet/rtccloud/sdk/RecordingModule$Mode;)V

    return-void
.end method

.method public start(Ljava/lang/String;Lnet/rtccloud/sdk/RecordingModule$Mode;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "start(%s, %s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lnet/rtccloud/sdk/RecordingModule;->ensureReady()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->UNDEFINED:Lnet/rtccloud/sdk/RecordingModule$Status;

    invoke-direct {p0, v0}, Lnet/rtccloud/sdk/RecordingModule;->ensureStatus(Lnet/rtccloud/sdk/RecordingModule$Status;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/rtccloud/sdk/RecordingModule;->nativeInterface:Lnet/rtccloud/sdk/RecordingModule$Native;

    invoke-interface {p0, p1, p2}, Lnet/rtccloud/sdk/RecordingModule$Native;->start(Ljava/lang/String;Lnet/rtccloud/sdk/RecordingModule$Mode;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string p0, "Recording [url] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public stop()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "stop()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/RecordingModule;->ensureReady()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->RECORDING:Lnet/rtccloud/sdk/RecordingModule$Status;

    sget-object v1, Lnet/rtccloud/sdk/RecordingModule$Status;->PAUSED:Lnet/rtccloud/sdk/RecordingModule$Status;

    invoke-direct {p0, v0, v1}, Lnet/rtccloud/sdk/RecordingModule;->ensureStatus(Lnet/rtccloud/sdk/RecordingModule$Status;Lnet/rtccloud/sdk/RecordingModule$Status;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/RecordingModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v0, p0, Lnet/rtccloud/sdk/Call;->nativeInterface:Lnet/rtccloud/sdk/Call$Native;

    sget-object v1, Lnet/rtccloud/sdk/Call$Control;->STOPRECORD:Lnet/rtccloud/sdk/Call$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Call;->id:I

    const/4 v2, -0x1

    invoke-interface {v0, v1, p0, v2}, Lnet/rtccloud/sdk/Call$Native;->control(Lnet/rtccloud/sdk/Call$Control;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public teardown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/RecordingModule;->isTeardown:Z

    sget-object v0, Lnet/rtccloud/sdk/RecordingModule$Status;->UNDEFINED:Lnet/rtccloud/sdk/RecordingModule$Status;

    iput-object v0, p0, Lnet/rtccloud/sdk/RecordingModule;->status:Lnet/rtccloud/sdk/RecordingModule$Status;

    return-void
.end method
