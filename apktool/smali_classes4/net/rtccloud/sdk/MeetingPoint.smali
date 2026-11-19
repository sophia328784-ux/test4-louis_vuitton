.class public Lnet/rtccloud/sdk/MeetingPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/MeetingPoint$Status;,
        Lnet/rtccloud/sdk/MeetingPoint$Type;,
        Lnet/rtccloud/sdk/MeetingPoint$Lock;,
        Lnet/rtccloud/sdk/MeetingPoint$Native;,
        Lnet/rtccloud/sdk/MeetingPoint$Config;,
        Lnet/rtccloud/sdk/MeetingPoint$DataControl;,
        Lnet/rtccloud/sdk/MeetingPoint$DataUrl;,
        Lnet/rtccloud/sdk/MeetingPoint$DataDetails;,
        Lnet/rtccloud/sdk/MeetingPoint$Control;
    }
.end annotation


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private attendeeUrl:Ljava/lang/String;

.field private endTime:I

.field private hostUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field public isHost:Z

.field private location:Ljava/lang/String;

.field private lock:Lnet/rtccloud/sdk/MeetingPoint$Lock;

.field private final nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

.field private final rtcc:Lnet/rtccloud/sdk/Rtcc;

.field private startTime:I

.field status:Lnet/rtccloud/sdk/MeetingPoint$Status;

.field private title:Ljava/lang/String;

.field private type:Lnet/rtccloud/sdk/MeetingPoint$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->MEETING_POINT:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/MeetingPoint$Native;Ljava/lang/String;Z)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATING:Lnet/rtccloud/sdk/MeetingPoint$Status;

    iput-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->status:Lnet/rtccloud/sdk/MeetingPoint$Status;

    .line 63
    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Type;->UNKNOWN:Lnet/rtccloud/sdk/MeetingPoint$Type;

    iput-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->type:Lnet/rtccloud/sdk/MeetingPoint$Type;

    .line 64
    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Lock;->UNKNOWN:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    iput-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->lock:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    .line 65
    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    .line 66
    iput-object p2, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    .line 67
    iput-object p3, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    .line 68
    iput-boolean p4, p0, Lnet/rtccloud/sdk/MeetingPoint;->isHost:Z

    .line 69
    sget-object p1, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->status:Lnet/rtccloud/sdk/MeetingPoint$Status;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/MeetingPoint$Native;Lnet/rtccloud/sdk/MeetingPoint$Config;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATING:Lnet/rtccloud/sdk/MeetingPoint$Status;

    iput-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->status:Lnet/rtccloud/sdk/MeetingPoint$Status;

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Type;->UNKNOWN:Lnet/rtccloud/sdk/MeetingPoint$Type;

    iput-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->type:Lnet/rtccloud/sdk/MeetingPoint$Type;

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Lock;->UNKNOWN:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    iput-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->lock:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iput-object p2, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    iget-object p1, p3, Lnet/rtccloud/sdk/MeetingPoint$Config;->type:Lnet/rtccloud/sdk/MeetingPoint$Type;

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->type:Lnet/rtccloud/sdk/MeetingPoint$Type;

    sget-object p1, Lnet/rtccloud/sdk/MeetingPoint$Lock;->DEFAULT:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->lock:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->isHost:Z

    iget-object p1, p3, Lnet/rtccloud/sdk/MeetingPoint$Config;->title:Ljava/lang/String;

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->title:Ljava/lang/String;

    iget-object p1, p3, Lnet/rtccloud/sdk/MeetingPoint$Config;->location:Ljava/lang/String;

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->location:Ljava/lang/String;

    instance-of p1, p3, Lnet/rtccloud/sdk/MeetingPoint$Config$Scheduled;

    if-eqz p1, :cond_0

    check-cast p3, Lnet/rtccloud/sdk/MeetingPoint$Config$Scheduled;

    iget p1, p3, Lnet/rtccloud/sdk/MeetingPoint$Config$Scheduled;->endTime:I

    iput p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->endTime:I

    iget p1, p3, Lnet/rtccloud/sdk/MeetingPoint$Config$Scheduled;->startTime:I

    iput p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->startTime:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/MeetingPoint$Native;Lnet/rtccloud/sdk/MeetingPoint$DataControl;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATING:Lnet/rtccloud/sdk/MeetingPoint$Status;

    iput-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->status:Lnet/rtccloud/sdk/MeetingPoint$Status;

    .line 55
    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Type;->UNKNOWN:Lnet/rtccloud/sdk/MeetingPoint$Type;

    iput-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->type:Lnet/rtccloud/sdk/MeetingPoint$Type;

    .line 56
    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Lock;->UNKNOWN:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    iput-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->lock:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    .line 57
    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    .line 58
    iput-object p2, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    .line 59
    iget-object p1, p3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->mpid:Ljava/lang/String;

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    .line 60
    sget-object p1, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->status:Lnet/rtccloud/sdk/MeetingPoint$Status;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "accept(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_3

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Status;->HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-static {v0, p0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;Lnet/rtccloud/sdk/MeetingPoint$Status;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Control;->ACCEPT:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-interface {v0, p0, v1, p1}, Lnet/rtccloud/sdk/MeetingPoint$Native;->control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "[uid] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public acceptOneToOne(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "accept(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_3

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Status;->HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-static {v0, p0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;Lnet/rtccloud/sdk/MeetingPoint$Status;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Control;->ACCEPT_ONE_TO_ONE:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-interface {v0, p0, v1, p1}, Lnet/rtccloud/sdk/MeetingPoint$Native;->control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "[uid] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public call()V
    .locals 2

    .line 19
    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    new-instance v1, Lnet/rtccloud/sdk/Call$Parameters;

    invoke-direct {v1}, Lnet/rtccloud/sdk/Call$Parameters;-><init>()V

    invoke-virtual {v0, p0, v1}, Lnet/rtccloud/sdk/CallModule;->create(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/Call$Parameters;)V

    return-void
.end method

.method public call(Lnet/rtccloud/sdk/Call$Parameters;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/rtccloud/sdk/CallModule;->create(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/Call$Parameters;)V

    return-void

    :cond_0
    const-string p0, "[parameters] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public cancel()V
    .locals 3

    .line 59
    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "cancel()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Status;->HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-static {v0, p0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;Lnet/rtccloud/sdk/MeetingPoint$Status;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Control;->CANCEL:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-interface {v0, p0, v1}, Lnet/rtccloud/sdk/MeetingPoint$Native;->control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;)V

    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cancel(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Status;->HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-static {v0, p0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;Lnet/rtccloud/sdk/MeetingPoint$Status;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    if-nez p1, :cond_3

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    sget-object p1, Lnet/rtccloud/sdk/MeetingPoint$Control;->CANCEL:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-interface {v0, p0, p1}, Lnet/rtccloud/sdk/MeetingPoint$Native;->control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;)V

    return-void

    :cond_3
    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Control;->CANCEL:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-interface {v0, p0, v1, p1}, Lnet/rtccloud/sdk/MeetingPoint$Native;->control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;Ljava/lang/String;)V

    return-void
.end method

.method public deny(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "deny(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_3

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Status;->HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-static {v0, p0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;Lnet/rtccloud/sdk/MeetingPoint$Status;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Control;->DENY:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-interface {v0, p0, v1, p1}, Lnet/rtccloud/sdk/MeetingPoint$Native;->control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "[uid] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public details()V
    .locals 4

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "details()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointHost(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATING:Lnet/rtccloud/sdk/MeetingPoint$Status;

    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Status;->HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    sget-object v3, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-static {v0, p0, v1, v2, v3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;Lnet/rtccloud/sdk/MeetingPoint$Status;Lnet/rtccloud/sdk/MeetingPoint$Status;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    invoke-interface {v0, p0}, Lnet/rtccloud/sdk/MeetingPoint$Native;->get(Ljava/lang/String;)V

    return-void
.end method

.method public endTime()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->endTime:I

    return p0
.end method

.method public handle(Lnet/rtccloud/sdk/MeetingPoint$DataDetails;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v0, p1, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->mpid:Ljava/lang/String;

    iput-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    iget-object v0, p1, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->title:Ljava/lang/String;

    iput-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->title:Ljava/lang/String;

    iget-object v0, p1, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->location:Ljava/lang/String;

    iput-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->location:Ljava/lang/String;

    iget v0, p1, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->startTime:I

    iput v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->startTime:I

    iget v0, p1, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->endTime:I

    iput v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->endTime:I

    iget-object p1, p1, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->type:Lnet/rtccloud/sdk/MeetingPoint$Type;

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->type:Lnet/rtccloud/sdk/MeetingPoint$Type;

    return-void
.end method

.method public handle(Lnet/rtccloud/sdk/MeetingPoint$DataUrl;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 37
    :cond_0
    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/MeetingPoint$DataUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    .line 38
    iget-object v0, p1, Lnet/rtccloud/sdk/MeetingPoint$DataUrl;->mpid:Ljava/lang/String;

    iput-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lnet/rtccloud/sdk/MeetingPoint$DataUrl;->hostUrl:Ljava/lang/String;

    iput-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->hostUrl:Ljava/lang/String;

    .line 40
    iget-object p1, p1, Lnet/rtccloud/sdk/MeetingPoint$DataUrl;->attendeeUrl:Ljava/lang/String;

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->attendeeUrl:Ljava/lang/String;

    return-void
.end method

.method public host()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "host()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointHost(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Status;->HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-static {v0, p0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;Lnet/rtccloud/sdk/MeetingPoint$Status;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Control;->HOST:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-interface {v0, p0, v1}, Lnet/rtccloud/sdk/MeetingPoint$Native;->control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;)V

    return-void
.end method

.method public id()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    return-object p0
.end method

.method public varargs invite([Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "invite(%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lnet/rtccloud/sdk/util/Utils;->isVarargsNullOrEmpty([Ljava/lang/String;)Z

    move-result v1

    const-string v2, "[uids] must not be null"

    if-nez v1, :cond_6

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v3, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Status;->HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    sget-object v3, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-static {v0, p0, v1, v3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;Lnet/rtccloud/sdk/MeetingPoint$Status;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1, v0}, Lnet/rtccloud/sdk/internal/util/Utils;->consolidateUidInput([Ljava/lang/String;Lnet/rtccloud/sdk/util/OldLogger;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_3
    array-length v1, p1

    if-nez v1, :cond_4

    const-string p0, "[uids] must not be empty"

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_4
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p1, v1

    iget-object v3, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    iget-object v4, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    sget-object v5, Lnet/rtccloud/sdk/MeetingPoint$Control;->INVITE:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-interface {v3, v4, v5, v2}, Lnet/rtccloud/sdk/MeetingPoint$Native;->control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-static {v2}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public isAttendee()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->isHost:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isHost()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->isHost:Z

    return p0
.end method

.method public join()V
    .locals 2

    .line 68
    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "join()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Control;->JOIN:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-interface {v0, p0, v1}, Lnet/rtccloud/sdk/MeetingPoint$Native;->control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;)V

    return-void
.end method

.method public join(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "join(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lnet/rtccloud/sdk/util/Input;->HASH:Lnet/rtccloud/sdk/util/Input;

    invoke-virtual {v1, p1}, Lnet/rtccloud/sdk/util/Input;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointAttendee(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Status;->HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-static {v0, p0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;Lnet/rtccloud/sdk/MeetingPoint$Status;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Control;->JOIN_WITH_HASH:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-interface {v0, p0, v1, p1}, Lnet/rtccloud/sdk/MeetingPoint$Native;->control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string p0, "] but is ["

    const-string v0, "]"

    const-string v2, "[hash] must be ["

    invoke-static {v1, p0, p1, v0, v2}, Lb21;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public joinMeeting(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "joinMeeting()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Control;->JOIN:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-interface {v0, p0, v1, p1}, Lnet/rtccloud/sdk/MeetingPoint$Native;->control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;Ljava/lang/String;)V

    return-void
.end method

.method public list()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "list()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointHost(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Status;->HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-static {v0, p0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;Lnet/rtccloud/sdk/MeetingPoint$Status;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Control;->LIST:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-interface {v0, p0, v1}, Lnet/rtccloud/sdk/MeetingPoint$Native;->control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;)V

    return-void
.end method

.method public list2()V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "list2()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Control;->LIST2:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-interface {v0, p0, v1}, Lnet/rtccloud/sdk/MeetingPoint$Native;->control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;)V

    return-void
.end method

.method public location()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->location:Ljava/lang/String;

    return-object p0
.end method

.method public lock()Lnet/rtccloud/sdk/MeetingPoint$Lock;
    .locals 0

    .line 103
    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->lock:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    return-object p0
.end method

.method public lock(Lnet/rtccloud/sdk/MeetingPoint$Lock;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "lock(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_7

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p0}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointHost(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Status;->HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-static {v0, p0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;Lnet/rtccloud/sdk/MeetingPoint$Status;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$1;->$SwitchMap$net$rtccloud$sdk$MeetingPoint$Lock:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    :goto_0
    return-void

    :cond_4
    iget-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->LOCK:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-interface {p1, p0, v0}, Lnet/rtccloud/sdk/MeetingPoint$Native;->control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;)V

    return-void

    :cond_5
    iget-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->AUTOACCEPT:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-interface {p1, p0, v0}, Lnet/rtccloud/sdk/MeetingPoint$Native;->control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;)V

    return-void

    :cond_6
    iget-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Control;->DEFAULT:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-interface {p1, p0, v0}, Lnet/rtccloud/sdk/MeetingPoint$Native;->control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;)V

    return-void

    :cond_7
    const-string p0, "[lock] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public rtcc()Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method

.method public startTime()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->startTime:I

    return p0
.end method

.method public status()Lnet/rtccloud/sdk/MeetingPoint$Status;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->status:Lnet/rtccloud/sdk/MeetingPoint$Status;

    return-object p0
.end method

.method public stop()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "stop()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPoint;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceMeetingPointHost(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/MeetingPoint;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPoint;->nativeInterface:Lnet/rtccloud/sdk/MeetingPoint$Native;

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->id:Ljava/lang/String;

    sget-object v1, Lnet/rtccloud/sdk/MeetingPoint$Control;->STOP:Lnet/rtccloud/sdk/MeetingPoint$Control;

    invoke-interface {v0, p0, v1}, Lnet/rtccloud/sdk/MeetingPoint$Native;->control(Ljava/lang/String;Lnet/rtccloud/sdk/MeetingPoint$Control;)V

    return-void
.end method

.method public title()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->title:Ljava/lang/String;

    return-object p0
.end method

.method public type()Lnet/rtccloud/sdk/MeetingPoint$Type;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->type:Lnet/rtccloud/sdk/MeetingPoint$Type;

    return-object p0
.end method

.method public updateLock(I)V
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    sget-object p1, Lnet/rtccloud/sdk/MeetingPoint$Lock;->UNKNOWN:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->lock:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    return-void

    :cond_0
    sget-object p1, Lnet/rtccloud/sdk/MeetingPoint$Lock;->DEFAULT:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->lock:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    return-void

    :cond_1
    sget-object p1, Lnet/rtccloud/sdk/MeetingPoint$Lock;->AUTO_ACCEPT:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->lock:Lnet/rtccloud/sdk/MeetingPoint$Lock;

    return-void
.end method

.method public updateStatus(Lnet/rtccloud/sdk/MeetingPoint$Status;)V
    .locals 0

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPoint;->status:Lnet/rtccloud/sdk/MeetingPoint$Status;

    return-void
.end method

.method public urlOfAttendee()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->attendeeUrl:Ljava/lang/String;

    return-object p0
.end method

.method public urlOfHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPoint;->hostUrl:Ljava/lang/String;

    return-object p0
.end method
