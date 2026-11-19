.class public Lnet/rtccloud/sdk/Participant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/Participant$Native;,
        Lnet/rtccloud/sdk/Participant$Control;
    }
.end annotation


# static fields
.field static final UNKNOWN_ID:I = -0x1

.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field call:Lnet/rtccloud/sdk/Call;

.field displayName:Ljava/lang/String;

.field id:I

.field isAdmin:Z

.field isDeafened:Z

.field private isLocked:Z

.field private isMuteUpdateNeeded:Z

.field isMuted:Z

.field private isMyself:Z

.field final isSendingVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isTalking:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isTeardown:Z

.field public keep:Z

.field private final nativeInterface:Lnet/rtccloud/sdk/Participant$Native;

.field rtcc:Lnet/rtccloud/sdk/Rtcc;

.field private uid:Ljava/lang/String;

.field videoConsumerReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/rtccloud/sdk/VideoConsumer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->PARTICIPANT:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/Participant;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/rtccloud/sdk/Participant;->id:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/Participant;->videoConsumerReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lnet/rtccloud/sdk/Participant;->isSendingVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lnet/rtccloud/sdk/Participant;->isTalking:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lnet/rtccloud/sdk/Participant$Native;->JNI:Lnet/rtccloud/sdk/Participant$Native;

    iput-object v0, p0, Lnet/rtccloud/sdk/Participant;->nativeInterface:Lnet/rtccloud/sdk/Participant$Native;

    return-void
.end method

.method public static createMyself(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Z)Lnet/rtccloud/sdk/Participant;
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/Participant;

    invoke-direct {v0}, Lnet/rtccloud/sdk/Participant;-><init>()V

    iput-object p0, v0, Lnet/rtccloud/sdk/Participant;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iput-object p1, v0, Lnet/rtccloud/sdk/Participant;->call:Lnet/rtccloud/sdk/Call;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lnet/rtccloud/sdk/Participant;->isMyself:Z

    iput-boolean p2, v0, Lnet/rtccloud/sdk/Participant;->isAdmin:Z

    return-object v0
.end method

.method public static createRemote(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Ljava/lang/String;)Lnet/rtccloud/sdk/Participant;
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/Participant;

    invoke-direct {v0}, Lnet/rtccloud/sdk/Participant;-><init>()V

    iput-object p0, v0, Lnet/rtccloud/sdk/Participant;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iput-object p1, v0, Lnet/rtccloud/sdk/Participant;->call:Lnet/rtccloud/sdk/Call;

    iput-object p2, v0, Lnet/rtccloud/sdk/Participant;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public static createTemporary(ILjava/lang/String;Ljava/lang/String;ZZZZZZ)Lnet/rtccloud/sdk/Participant;
    .locals 1

    new-instance v0, Lnet/rtccloud/sdk/Participant;

    invoke-direct {v0}, Lnet/rtccloud/sdk/Participant;-><init>()V

    iput p0, v0, Lnet/rtccloud/sdk/Participant;->id:I

    iput-object p1, v0, Lnet/rtccloud/sdk/Participant;->uid:Ljava/lang/String;

    iput-object p2, v0, Lnet/rtccloud/sdk/Participant;->displayName:Ljava/lang/String;

    iput-boolean p3, v0, Lnet/rtccloud/sdk/Participant;->isDeafened:Z

    iput-boolean p4, v0, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    iput-boolean p5, v0, Lnet/rtccloud/sdk/Participant;->isAdmin:Z

    iget-object p0, v0, Lnet/rtccloud/sdk/Participant;->isSendingVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, v0, Lnet/rtccloud/sdk/Participant;->isTalking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-boolean p8, v0, Lnet/rtccloud/sdk/Participant;->isLocked:Z

    return-object v0
.end method

.method private ensureNotTeardown()Z
    .locals 1

    iget-boolean p0, p0, Lnet/rtccloud/sdk/Participant;->isTeardown:Z

    if-eqz p0, :cond_0

    sget-object p0, Lnet/rtccloud/sdk/Participant;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "Participant must not be [teardown]"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private teardownConsumer()V
    .locals 3

    iget-object v0, p0, Lnet/rtccloud/sdk/Participant;->videoConsumerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/rtccloud/sdk/VideoConsumer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lnet/rtccloud/sdk/VideoConsumer;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lnet/rtccloud/sdk/VideoConsumer;->onStop()V

    :cond_0
    invoke-interface {v0}, Lnet/rtccloud/sdk/VideoConsumer;->onUnbind()V

    invoke-interface {v0}, Lnet/rtccloud/sdk/VideoConsumer;->participant()Lnet/rtccloud/sdk/Participant;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lnet/rtccloud/sdk/Participant;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v2, "The consumer [%s] should release its participant to avoid leak"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lnet/rtccloud/sdk/Participant;->videoConsumerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    :cond_2
    return-void
.end method


# virtual methods
.method public call()Lnet/rtccloud/sdk/Call;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Participant;->call:Lnet/rtccloud/sdk/Call;

    return-object p0
.end method

.method public deafen(Z)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/Participant;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "deafen(%b)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lnet/rtccloud/sdk/Participant;->ensureNotTeardown()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->call:Lnet/rtccloud/sdk/Call;

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceConferenceAdmin(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/ConferenceModule;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lnet/rtccloud/sdk/Participant;->isDeafened:Z

    if-ne v1, p1, :cond_3

    if-eqz p1, :cond_2

    const-string v1, "Participant is already [deafened]"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "Participant is not [deafened]"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lnet/rtccloud/sdk/Participant;->nativeInterface:Lnet/rtccloud/sdk/Participant$Native;

    if-eqz p1, :cond_4

    sget-object p1, Lnet/rtccloud/sdk/Participant$Control;->DEAFEN:Lnet/rtccloud/sdk/Participant$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Participant;->id:I

    invoke-interface {v0, p1, p0}, Lnet/rtccloud/sdk/Participant$Native;->control(Lnet/rtccloud/sdk/Participant$Control;I)V

    return-void

    :cond_4
    sget-object p1, Lnet/rtccloud/sdk/Participant$Control;->UNDEAFEN:Lnet/rtccloud/sdk/Participant$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Participant;->id:I

    invoke-interface {v0, p1, p0}, Lnet/rtccloud/sdk/Participant$Native;->control(Lnet/rtccloud/sdk/Participant$Control;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public displayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Participant;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public id()I
    .locals 0

    iget p0, p0, Lnet/rtccloud/sdk/Participant;->id:I

    return p0
.end method

.method public isAdmin()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/Participant;->isAdmin:Z

    return p0
.end method

.method public isDeafened()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/Participant;->isDeafened:Z

    return p0
.end method

.method public isLocked()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/Participant;->isLocked:Z

    return p0
.end method

.method public isMuted()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    return p0
.end method

.method public isSendingVideo()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Participant;->isSendingVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isTalking()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Participant;->isTalking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public kick()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/Participant;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "kick()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/Participant;->ensureNotTeardown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->call:Lnet/rtccloud/sdk/Call;

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceConferenceAdmin(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/ConferenceModule;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/Participant;->nativeInterface:Lnet/rtccloud/sdk/Participant$Native;

    sget-object v1, Lnet/rtccloud/sdk/Participant$Control;->KICK:Lnet/rtccloud/sdk/Participant$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Participant;->id:I

    invoke-interface {v0, v1, p0}, Lnet/rtccloud/sdk/Participant$Native;->control(Lnet/rtccloud/sdk/Participant$Control;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public lock(Z)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/Participant;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "lock(%b)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lnet/rtccloud/sdk/Participant;->ensureNotTeardown()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->call:Lnet/rtccloud/sdk/Call;

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceConferenceAdmin(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/ConferenceModule;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lnet/rtccloud/sdk/Participant;->isLocked:Z

    if-ne v1, p1, :cond_3

    if-eqz p1, :cond_2

    const-string v1, "Participant is already [locked]"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "Participant is not [locked]"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lnet/rtccloud/sdk/Participant;->nativeInterface:Lnet/rtccloud/sdk/Participant$Native;

    if-eqz p1, :cond_4

    sget-object p1, Lnet/rtccloud/sdk/Participant$Control;->LOCK_SPEAKER:Lnet/rtccloud/sdk/Participant$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Participant;->id:I

    invoke-interface {v0, p1, p0}, Lnet/rtccloud/sdk/Participant$Native;->control(Lnet/rtccloud/sdk/Participant$Control;I)V

    return-void

    :cond_4
    sget-object p1, Lnet/rtccloud/sdk/Participant$Control;->UNLOCK_SPEAKER:Lnet/rtccloud/sdk/Participant$Control;

    iget p0, p0, Lnet/rtccloud/sdk/Participant;->id:I

    invoke-interface {v0, p1, p0}, Lnet/rtccloud/sdk/Participant$Native;->control(Lnet/rtccloud/sdk/Participant$Control;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public mute(Z)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/Participant;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mute(%b)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lnet/rtccloud/sdk/Participant;->ensureNotTeardown()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->call:Lnet/rtccloud/sdk/Call;

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    if-ne v1, p1, :cond_3

    if-eqz p1, :cond_2

    const-string v1, "Participant is already [muted]"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "Participant is not [muted]"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget v0, p0, Lnet/rtccloud/sdk/Participant;->id:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    iput-boolean p1, p0, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/rtccloud/sdk/Participant;->isMuteUpdateNeeded:Z

    return-void

    :cond_4
    iget-object p0, p0, Lnet/rtccloud/sdk/Participant;->nativeInterface:Lnet/rtccloud/sdk/Participant$Native;

    if-eqz p1, :cond_5

    sget-object p1, Lnet/rtccloud/sdk/Participant$Control;->MUTE:Lnet/rtccloud/sdk/Participant$Control;

    invoke-interface {p0, p1, v0}, Lnet/rtccloud/sdk/Participant$Native;->control(Lnet/rtccloud/sdk/Participant$Control;I)V

    return-void

    :cond_5
    sget-object p1, Lnet/rtccloud/sdk/Participant$Control;->UNMUTE:Lnet/rtccloud/sdk/Participant$Control;

    invoke-interface {p0, p1, v0}, Lnet/rtccloud/sdk/Participant$Native;->control(Lnet/rtccloud/sdk/Participant$Control;I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public releaseVideoConsumer()V
    .locals 2

    sget-object v0, Lnet/rtccloud/sdk/Participant;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "releaseVideoConsumer()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/Participant;->teardownConsumer()V

    return-void
.end method

.method public teardown()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/Participant;->log:Lnet/rtccloud/sdk/util/OldLogger;

    iget v1, p0, Lnet/rtccloud/sdk/Participant;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "teardown(%d)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/Participant;->isTeardown:Z

    invoke-direct {p0}, Lnet/rtccloud/sdk/Participant;->teardownConsumer()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/Participant;->call:Lnet/rtccloud/sdk/Call;

    iput-object v0, p0, Lnet/rtccloud/sdk/Participant;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Participant{, id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/rtccloud/sdk/Participant;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', displayName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/rtccloud/sdk/Participant;->isAdmin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSendingVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->isSendingVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isTalking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->isTalking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/rtccloud/sdk/Participant;->isLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDeafened="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/rtccloud/sdk/Participant;->isDeafened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMuted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ld21;->q(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public uid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/Participant;->uid:Ljava/lang/String;

    return-object p0
.end method

.method public update(Ljava/lang/String;ZZZZZZ)Z
    .locals 2

    iget-object v0, p0, Lnet/rtccloud/sdk/Participant;->displayName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/rtccloud/sdk/Participant;->isDeafened:Z

    if-ne v0, p2, :cond_1

    iget-boolean v0, p0, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lnet/rtccloud/sdk/Participant;->isAdmin:Z

    if-ne v0, p4, :cond_1

    iget-object v0, p0, Lnet/rtccloud/sdk/Participant;->isSendingVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v0, p5, :cond_1

    iget-object v0, p0, Lnet/rtccloud/sdk/Participant;->isTalking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v0, p6, :cond_1

    iget-boolean v0, p0, Lnet/rtccloud/sdk/Participant;->isLocked:Z

    if-eq v0, p7, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->displayName:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object p1, p0, Lnet/rtccloud/sdk/Participant;->displayName:Ljava/lang/String;

    :cond_2
    iget-boolean p1, p0, Lnet/rtccloud/sdk/Participant;->isDeafened:Z

    if-eq p1, p2, :cond_3

    iput-boolean p2, p0, Lnet/rtccloud/sdk/Participant;->isDeafened:Z

    :cond_3
    iget-boolean p1, p0, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    if-eq p1, p3, :cond_4

    iput-boolean p3, p0, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    :cond_4
    iget-boolean p1, p0, Lnet/rtccloud/sdk/Participant;->isAdmin:Z

    if-eq p1, p4, :cond_5

    iput-boolean p4, p0, Lnet/rtccloud/sdk/Participant;->isAdmin:Z

    :cond_5
    iget-object p1, p0, Lnet/rtccloud/sdk/Participant;->isSendingVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 p2, p5, 0x1

    invoke-virtual {p1, p2, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lnet/rtccloud/sdk/Participant;->videoConsumerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/rtccloud/sdk/VideoConsumer;

    if-eqz p1, :cond_8

    iget-object p2, p0, Lnet/rtccloud/sdk/Participant;->isSendingVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Lnet/rtccloud/sdk/VideoConsumer;->onStart()V

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Lnet/rtccloud/sdk/VideoConsumer;->onStop()V

    iget-object p1, p0, Lnet/rtccloud/sdk/Participant;->call:Lnet/rtccloud/sdk/Call;

    iget-object p2, p1, Lnet/rtccloud/sdk/Call;->frameFetcher:Lnet/rtccloud/sdk/FrameFetcher;

    iget-object p2, p2, Lnet/rtccloud/sdk/FrameFetcher;->videoFrameCache:Lnet/rtccloud/sdk/FrameCache;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/ConferenceModule;->activeSpeaker()Lnet/rtccloud/sdk/Participant;

    move-result-object p1

    if-ne p0, p1, :cond_7

    const/4 p1, -0x1

    goto :goto_2

    :cond_7
    iget p1, p0, Lnet/rtccloud/sdk/Participant;->id:I

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_3
    iget-object p1, p0, Lnet/rtccloud/sdk/Participant;->isTalking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean p1, p0, Lnet/rtccloud/sdk/Participant;->isLocked:Z

    if-eq p1, p7, :cond_9

    iput-boolean p7, p0, Lnet/rtccloud/sdk/Participant;->isLocked:Z

    :cond_9
    return v0
.end method

.method public declared-synchronized update(Lnet/rtccloud/sdk/Participant;)Z
    .locals 9

    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v2, p1, Lnet/rtccloud/sdk/Participant;->displayName:Ljava/lang/String;

    iget-boolean v3, p1, Lnet/rtccloud/sdk/Participant;->isDeafened:Z

    iget-boolean v4, p1, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    iget-boolean v5, p1, Lnet/rtccloud/sdk/Participant;->isAdmin:Z

    iget-object v0, p1, Lnet/rtccloud/sdk/Participant;->isSendingVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    iget-object v0, p1, Lnet/rtccloud/sdk/Participant;->isTalking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    iget-boolean v8, p1, Lnet/rtccloud/sdk/Participant;->isLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, p0

    :try_start_1
    invoke-virtual/range {v1 .. v8}, Lnet/rtccloud/sdk/Participant;->update(Ljava/lang/String;ZZZZZZ)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public declared-synchronized updateMyself(Lnet/rtccloud/sdk/Participant;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lnet/rtccloud/sdk/Participant;->uid:Ljava/lang/String;

    iput-object v0, p0, Lnet/rtccloud/sdk/Participant;->uid:Ljava/lang/String;

    iget-boolean v0, p0, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    iget-object v2, p1, Lnet/rtccloud/sdk/Participant;->displayName:Ljava/lang/String;

    iget-boolean v3, p1, Lnet/rtccloud/sdk/Participant;->isDeafened:Z

    iget-boolean v4, p1, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    iget-boolean v5, p1, Lnet/rtccloud/sdk/Participant;->isAdmin:Z

    iget-object v1, p1, Lnet/rtccloud/sdk/Participant;->isSendingVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    iget-object v1, p1, Lnet/rtccloud/sdk/Participant;->isTalking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    iget-boolean v8, p1, Lnet/rtccloud/sdk/Participant;->isLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, p0

    :try_start_1
    invoke-virtual/range {v1 .. v8}, Lnet/rtccloud/sdk/Participant;->update(Ljava/lang/String;ZZZZZZ)Z

    iget-boolean p0, v1, Lnet/rtccloud/sdk/Participant;->isMuteUpdateNeeded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    iget-object p0, v1, Lnet/rtccloud/sdk/Participant;->nativeInterface:Lnet/rtccloud/sdk/Participant$Native;

    if-eqz v0, :cond_0

    :try_start_2
    sget-object p1, Lnet/rtccloud/sdk/Participant$Control;->MUTE:Lnet/rtccloud/sdk/Participant$Control;

    iget v0, v1, Lnet/rtccloud/sdk/Participant;->id:I

    invoke-interface {p0, p1, v0}, Lnet/rtccloud/sdk/Participant$Native;->control(Lnet/rtccloud/sdk/Participant$Control;I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_2

    :cond_0
    sget-object p1, Lnet/rtccloud/sdk/Participant$Control;->UNMUTE:Lnet/rtccloud/sdk/Participant$Control;

    iget v0, v1, Lnet/rtccloud/sdk/Participant;->id:I

    invoke-interface {p0, p1, v0}, Lnet/rtccloud/sdk/Participant$Native;->control(Lnet/rtccloud/sdk/Participant$Control;I)V

    :goto_1
    const/4 p0, 0x0

    iput-boolean p0, v1, Lnet/rtccloud/sdk/Participant;->isMuteUpdateNeeded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public videoConsumer()Lnet/rtccloud/sdk/VideoConsumer;
    .locals 0

    .line 137
    iget-object p0, p0, Lnet/rtccloud/sdk/Participant;->videoConsumerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/VideoConsumer;

    return-object p0
.end method

.method public videoConsumer(Lnet/rtccloud/sdk/VideoConsumer;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/Participant;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "videoConsumer(consumer=%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lnet/rtccloud/sdk/Participant;->ensureNotTeardown()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lnet/rtccloud/sdk/Participant;->isMyself:Z

    if-eqz v1, :cond_2

    const-string p0, "[Myself] can\'t use [VideoConsumer]"

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->videoConsumerReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lnet/rtccloud/sdk/Participant;->teardownConsumer()V

    if-nez p1, :cond_4

    :goto_0
    return-void

    :cond_4
    invoke-interface {p1}, Lnet/rtccloud/sdk/VideoConsumer;->participant()Lnet/rtccloud/sdk/Participant;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/Participant;->videoConsumer(Lnet/rtccloud/sdk/VideoConsumer;)V

    :cond_5
    iget-object v1, p0, Lnet/rtccloud/sdk/Participant;->call:Lnet/rtccloud/sdk/Call;

    invoke-interface {p1, v1, p0}, Lnet/rtccloud/sdk/VideoConsumer;->onBind(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Participant;)V

    invoke-interface {p1}, Lnet/rtccloud/sdk/VideoConsumer;->participant()Lnet/rtccloud/sdk/Participant;

    move-result-object v1

    if-eq v1, p0, :cond_6

    const-string v1, "The consumer [%s] should save the participant [%s]"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lnet/rtccloud/sdk/Participant;->isSendingVideo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lnet/rtccloud/sdk/VideoConsumer;->onStart()V

    iget-object v0, p0, Lnet/rtccloud/sdk/Participant;->call:Lnet/rtccloud/sdk/Call;

    iget-object v1, v0, Lnet/rtccloud/sdk/Call;->frameFetcher:Lnet/rtccloud/sdk/FrameFetcher;

    iget-object v1, v1, Lnet/rtccloud/sdk/FrameFetcher;->videoFrameCache:Lnet/rtccloud/sdk/FrameCache;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/ConferenceModule;->activeSpeaker()Lnet/rtccloud/sdk/Participant;

    move-result-object v0

    if-ne p0, v0, :cond_7

    const/4 v0, -0x1

    goto :goto_1

    :cond_7
    iget v0, p0, Lnet/rtccloud/sdk/Participant;->id:I

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/rtccloud/sdk/Frame;

    if-eqz v0, :cond_8

    invoke-interface {p1, v0}, Lnet/rtccloud/sdk/VideoConsumer;->onFrame(Lnet/rtccloud/sdk/Frame;)V

    :cond_8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/Participant;->videoConsumerReference:Ljava/lang/ref/WeakReference;

    return-void
.end method
