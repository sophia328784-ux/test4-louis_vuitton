.class public Lnet/rtccloud/sdk/ConferenceModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/ConferenceModule$Native;,
        Lnet/rtccloud/sdk/ConferenceModule$Control;
    }
.end annotation


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field activeSpeaker:Lnet/rtccloud/sdk/Participant;

.field private final call:Lnet/rtccloud/sdk/Call;

.field private isDeafened:Z

.field private isMuted:Z

.field private isPassiveStreamsOnly:Z

.field private isTeardown:Z

.field myself:Lnet/rtccloud/sdk/Participant;

.field private final nativeInterface:Lnet/rtccloud/sdk/ConferenceModule$Native;

.field final participants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lnet/rtccloud/sdk/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private participantsArray:[Lnet/rtccloud/sdk/Participant;

.field final recordingModule:Lnet/rtccloud/sdk/RecordingModule;

.field private final rtcc:Lnet/rtccloud/sdk/Rtcc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->CONFERENCE:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/ConferenceModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/ConferenceModule$Native;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnet/rtccloud/sdk/ConferenceModule;->participants:Landroid/util/SparseArray;

    const/4 v0, 0x0

    new-array v1, v0, [Lnet/rtccloud/sdk/Participant;

    iput-object v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->participantsArray:[Lnet/rtccloud/sdk/Participant;

    iput-object p1, p0, Lnet/rtccloud/sdk/ConferenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iput-object p2, p0, Lnet/rtccloud/sdk/ConferenceModule;->call:Lnet/rtccloud/sdk/Call;

    iput-object p3, p0, Lnet/rtccloud/sdk/ConferenceModule;->nativeInterface:Lnet/rtccloud/sdk/ConferenceModule$Native;

    new-instance p3, Lnet/rtccloud/sdk/RecordingModule;

    sget-object v1, Lnet/rtccloud/sdk/RecordingModule$Native;->JNI:Lnet/rtccloud/sdk/RecordingModule$Native;

    invoke-direct {p3, p1, p2, v1}, Lnet/rtccloud/sdk/RecordingModule;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/RecordingModule$Native;)V

    iput-object p3, p0, Lnet/rtccloud/sdk/ConferenceModule;->recordingModule:Lnet/rtccloud/sdk/RecordingModule;

    invoke-virtual {p2}, Lnet/rtccloud/sdk/Call;->type()Lnet/rtccloud/sdk/Call$Type;

    move-result-object p3

    sget-object v1, Lnet/rtccloud/sdk/Call$Type;->CONFERENCE_HOST:Lnet/rtccloud/sdk/Call$Type;

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p1, p2, v0}, Lnet/rtccloud/sdk/Participant;->createMyself(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Call;Z)Lnet/rtccloud/sdk/Participant;

    move-result-object p1

    iput-object p1, p0, Lnet/rtccloud/sdk/ConferenceModule;->myself:Lnet/rtccloud/sdk/Participant;

    return-void
.end method

.method private ensureNotTeardown()Z
    .locals 1

    iget-boolean p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->isTeardown:Z

    if-eqz p0, :cond_0

    sget-object p0, Lnet/rtccloud/sdk/ConferenceModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "ConferenceModule must not be [teardown]"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public activeSpeaker()Lnet/rtccloud/sdk/Participant;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->activeSpeaker:Lnet/rtccloud/sdk/Participant;

    return-object p0
.end method

.method public deafen(Z)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/ConferenceModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

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
    invoke-direct {p0}, Lnet/rtccloud/sdk/ConferenceModule;->ensureNotTeardown()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->call:Lnet/rtccloud/sdk/Call;

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0, p0}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceConferenceAdmin(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/ConferenceModule;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->isDeafened:Z

    if-ne v1, p1, :cond_3

    if-eqz p1, :cond_2

    const-string v1, "Conference is already [deafened]"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "Conference is not [deafened]"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->nativeInterface:Lnet/rtccloud/sdk/ConferenceModule$Native;

    if-eqz p1, :cond_4

    sget-object p1, Lnet/rtccloud/sdk/ConferenceModule$Control;->DEAFENALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/ConferenceModule$Native;->control(Lnet/rtccloud/sdk/ConferenceModule$Control;)V

    return-void

    :cond_4
    sget-object p1, Lnet/rtccloud/sdk/ConferenceModule$Control;->UNDEAFENALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/ConferenceModule$Native;->control(Lnet/rtccloud/sdk/ConferenceModule$Control;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public declared-synchronized handleFloor([I)V
    .locals 8

    const-string v0, "Floor length {"

    monitor-enter p0

    if-eqz p1, :cond_6

    :try_start_0
    array-length v1, p1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->participants:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    if-eq v1, v2, :cond_1

    sget-object v1, Lnet/rtccloud/sdk/ConferenceModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length p1, p1

    iget-object v2, p0, Lnet/rtccloud/sdk/ConferenceModule;->participants:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "} mismatch with number of participants in conference {"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    :try_start_1
    iget-object v0, p0, Lnet/rtccloud/sdk/ConferenceModule;->myself:Lnet/rtccloud/sdk/Participant;

    iget v0, v0, Lnet/rtccloud/sdk/Participant;->id:I

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Lnet/rtccloud/sdk/Participant;

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_4

    aget v6, p1, v4

    if-eq v6, v0, :cond_3

    iget-object v7, p0, Lnet/rtccloud/sdk/ConferenceModule;->participants:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/rtccloud/sdk/Participant;

    if-nez v7, :cond_2

    sget-object p1, Lnet/rtccloud/sdk/ConferenceModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Floor contains an unknown participant id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v6, v5, 0x1

    :try_start_2
    aput-object v7, v1, v5

    move v5, v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iput-object v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->participantsArray:[Lnet/rtccloud/sdk/Participant;

    array-length p1, v1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    aget-object p1, v1, v3

    :goto_1
    iput-object p1, p0, Lnet/rtccloud/sdk/ConferenceModule;->activeSpeaker:Lnet/rtccloud/sdk/Participant;

    iget-object p1, p0, Lnet/rtccloud/sdk/ConferenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v0, Lnet/rtccloud/sdk/event/call/FloorEvent;

    iget-object v2, p0, Lnet/rtccloud/sdk/ConferenceModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-direct {v0, v2, v1}, Lnet/rtccloud/sdk/event/call/FloorEvent;-><init>(Lnet/rtccloud/sdk/Call;[Lnet/rtccloud/sdk/Participant;)V

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/ConferenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v0, p0, Lnet/rtccloud/sdk/ConferenceModule;->participantsArray:[Lnet/rtccloud/sdk/Participant;

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/Rtcc;->sendParticipantCallBack([Lnet/rtccloud/sdk/Participant;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :goto_2
    :try_start_3
    sget-object p1, Lnet/rtccloud/sdk/ConferenceModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "Floor invalid"

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public declared-synchronized handleParticipant(IZZZZZZ)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/ConferenceModule;->myself:Lnet/rtccloud/sdk/Participant;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Participant;->id()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lnet/rtccloud/sdk/ConferenceModule;->myself:Lnet/rtccloud/sdk/Participant;

    :goto_0
    move-object v0, p1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/ConferenceModule;->participants:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/rtccloud/sdk/Participant;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, v0, Lnet/rtccloud/sdk/Participant;->displayName:Ljava/lang/String;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lnet/rtccloud/sdk/Participant;->update(Ljava/lang/String;ZZZZZZ)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lnet/rtccloud/sdk/ConferenceModule;->myself:Lnet/rtccloud/sdk/Participant;

    iget-boolean p2, p1, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    iget-boolean p1, p1, Lnet/rtccloud/sdk/Participant;->isDeafened:Z

    const/4 p3, 0x0

    move p4, p3

    move p5, p4

    :goto_2
    iget-object p6, p0, Lnet/rtccloud/sdk/ConferenceModule;->participants:Landroid/util/SparseArray;

    invoke-virtual {p6}, Landroid/util/SparseArray;->size()I

    move-result p6

    if-ge p4, p6, :cond_4

    iget-object p6, p0, Lnet/rtccloud/sdk/ConferenceModule;->participants:Landroid/util/SparseArray;

    invoke-virtual {p6, p4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lnet/rtccloud/sdk/Participant;

    const/4 p7, 0x1

    if-eqz p2, :cond_2

    iget-boolean p2, p6, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    if-eqz p2, :cond_2

    move p2, p7

    goto :goto_3

    :cond_2
    move p2, p3

    :goto_3
    if-eqz p1, :cond_3

    iget-boolean p1, p6, Lnet/rtccloud/sdk/Participant;->isDeafened:Z

    if-eqz p1, :cond_3

    move p1, p7

    goto :goto_4

    :cond_3
    move p1, p3

    :goto_4
    invoke-virtual {p6}, Lnet/rtccloud/sdk/Participant;->isSendingVideo()Z

    move-result p6

    or-int/2addr p5, p6

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_4
    iput-boolean p2, p0, Lnet/rtccloud/sdk/ConferenceModule;->isMuted:Z

    iput-boolean p1, p0, Lnet/rtccloud/sdk/ConferenceModule;->isDeafened:Z

    iget-object p1, p0, Lnet/rtccloud/sdk/ConferenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance p2, Lnet/rtccloud/sdk/event/call/ParticipantEvent;

    iget-object p3, p0, Lnet/rtccloud/sdk/ConferenceModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-direct {p2, p3, v0}, Lnet/rtccloud/sdk/event/call/ParticipantEvent;-><init>(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Participant;)V

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/ConferenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    filled-new-array {v0}, [Lnet/rtccloud/sdk/Participant;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/Rtcc;->sendParticipantCallBack([Lnet/rtccloud/sdk/Participant;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/ConferenceModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p1, p1, Lnet/rtccloud/sdk/Call;->videoModule:Lnet/rtccloud/sdk/VideoModule;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->isReceiving()Z

    move-result p1

    if-eq p1, p5, :cond_5

    iget-object p1, p0, Lnet/rtccloud/sdk/ConferenceModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p1, p1, Lnet/rtccloud/sdk/Call;->videoModule:Lnet/rtccloud/sdk/VideoModule;

    invoke-virtual {p1, p5}, Lnet/rtccloud/sdk/VideoModule;->updateReceivingStatus(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :goto_5
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized handleParticipants(I[Lnet/rtccloud/sdk/Participant;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/ConferenceModule;->myself:Lnet/rtccloud/sdk/Participant;

    iget v1, v0, Lnet/rtccloud/sdk/Participant;->id:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iput p1, v0, Lnet/rtccloud/sdk/Participant;->id:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_b

    :cond_0
    :goto_0
    if-eqz p2, :cond_f

    array-length p1, p2

    if-nez p1, :cond_1

    goto/16 :goto_a

    :cond_1
    array-length p1, p2

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    new-array p1, p1, [Lnet/rtccloud/sdk/Participant;

    array-length v1, p2

    const/4 v2, 0x0

    move v5, v0

    move v6, v5

    move v3, v2

    move v4, v3

    move v7, v4

    :goto_1
    if-ge v3, v1, :cond_a

    aget-object v8, p2, v3

    iget-object v9, p0, Lnet/rtccloud/sdk/ConferenceModule;->participants:Landroid/util/SparseArray;

    iget v10, v8, Lnet/rtccloud/sdk/Participant;->id:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/rtccloud/sdk/Participant;

    if-nez v9, :cond_7

    iget v9, v8, Lnet/rtccloud/sdk/Participant;->id:I

    iget-object v10, p0, Lnet/rtccloud/sdk/ConferenceModule;->myself:Lnet/rtccloud/sdk/Participant;

    iget v11, v10, Lnet/rtccloud/sdk/Participant;->id:I

    if-ne v9, v11, :cond_4

    invoke-virtual {v10, v8}, Lnet/rtccloud/sdk/Participant;->updateMyself(Lnet/rtccloud/sdk/Participant;)V

    iget-object v8, p0, Lnet/rtccloud/sdk/ConferenceModule;->myself:Lnet/rtccloud/sdk/Participant;

    iput-boolean v0, v8, Lnet/rtccloud/sdk/Participant;->keep:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v8, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    if-eqz v5, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    if-eqz v6, :cond_3

    iget-boolean v6, v8, Lnet/rtccloud/sdk/Participant;->isDeafened:Z

    if-eqz v6, :cond_3

    move v6, v0

    goto/16 :goto_7

    :cond_3
    move v6, v2

    goto/16 :goto_7

    :cond_4
    iget-object v10, p0, Lnet/rtccloud/sdk/ConferenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iput-object v10, v8, Lnet/rtccloud/sdk/Participant;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v10, p0, Lnet/rtccloud/sdk/ConferenceModule;->call:Lnet/rtccloud/sdk/Call;

    iput-object v10, v8, Lnet/rtccloud/sdk/Participant;->call:Lnet/rtccloud/sdk/Call;

    iput-boolean v0, v8, Lnet/rtccloud/sdk/Participant;->keep:Z

    iget-object v10, p0, Lnet/rtccloud/sdk/ConferenceModule;->participants:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v9, v4, 0x1

    aput-object v8, p1, v4

    if-eqz v5, :cond_5

    iget-boolean v4, v8, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    if-eqz v4, :cond_5

    move v4, v0

    goto :goto_3

    :cond_5
    move v4, v2

    :goto_3
    if-eqz v6, :cond_6

    iget-boolean v5, v8, Lnet/rtccloud/sdk/Participant;->isDeafened:Z

    if-eqz v5, :cond_6

    move v5, v0

    goto :goto_4

    :cond_6
    move v5, v2

    :goto_4
    invoke-virtual {v8}, Lnet/rtccloud/sdk/Participant;->isSendingVideo()Z

    move-result v6

    or-int/2addr v7, v6

    move v6, v5

    move v5, v4

    move v4, v9

    goto :goto_7

    :cond_7
    invoke-virtual {v9, v8}, Lnet/rtccloud/sdk/Participant;->update(Lnet/rtccloud/sdk/Participant;)Z

    iput-boolean v0, v9, Lnet/rtccloud/sdk/Participant;->keep:Z

    add-int/lit8 v8, v4, 0x1

    aput-object v9, p1, v4

    if-eqz v5, :cond_8

    iget-boolean v4, v9, Lnet/rtccloud/sdk/Participant;->isMuted:Z

    if-eqz v4, :cond_8

    move v4, v0

    goto :goto_5

    :cond_8
    move v4, v2

    :goto_5
    if-eqz v6, :cond_9

    iget-boolean v5, v9, Lnet/rtccloud/sdk/Participant;->isDeafened:Z

    if-eqz v5, :cond_9

    move v5, v0

    goto :goto_6

    :cond_9
    move v5, v2

    :goto_6
    invoke-virtual {v9}, Lnet/rtccloud/sdk/Participant;->isSendingVideo()Z

    move-result v6

    or-int/2addr v7, v6

    move v6, v5

    move v5, v4

    move v4, v8

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_a
    move p2, v2

    :goto_8
    iget-object v0, p0, Lnet/rtccloud/sdk/ConferenceModule;->participants:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_c

    iget-object v0, p0, Lnet/rtccloud/sdk/ConferenceModule;->participants:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/rtccloud/sdk/Participant;

    iget-boolean v1, v0, Lnet/rtccloud/sdk/Participant;->keep:Z

    if-nez v1, :cond_b

    sget-object v1, Lnet/rtccloud/sdk/ConferenceModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v3, "Removing participant id:%d uid:%s"

    iget v4, v0, Lnet/rtccloud/sdk/Participant;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Participant;->uid()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v4, v8}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Participant;->teardown()V

    iget-object v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->participants:Landroid/util/SparseArray;

    iget v3, v0, Lnet/rtccloud/sdk/Participant;->id:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object v1, v1, Lnet/rtccloud/sdk/Call;->frameFetcher:Lnet/rtccloud/sdk/FrameFetcher;

    iget-object v1, v1, Lnet/rtccloud/sdk/FrameFetcher;->videoFrameCache:Lnet/rtccloud/sdk/FrameCache;

    iget v0, v0, Lnet/rtccloud/sdk/Participant;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_b
    iput-boolean v2, v0, Lnet/rtccloud/sdk/Participant;->keep:Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_c
    iput-object p1, p0, Lnet/rtccloud/sdk/ConferenceModule;->participantsArray:[Lnet/rtccloud/sdk/Participant;

    array-length p2, p1

    if-nez p2, :cond_d

    const/4 p2, 0x0

    goto :goto_9

    :cond_d
    aget-object p2, p1, v2

    :goto_9
    iput-object p2, p0, Lnet/rtccloud/sdk/ConferenceModule;->activeSpeaker:Lnet/rtccloud/sdk/Participant;

    iput-boolean v5, p0, Lnet/rtccloud/sdk/ConferenceModule;->isMuted:Z

    iput-boolean v6, p0, Lnet/rtccloud/sdk/ConferenceModule;->isDeafened:Z

    iget-object p2, p0, Lnet/rtccloud/sdk/ConferenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p2, p2, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v0, Lnet/rtccloud/sdk/event/call/ParticipantsEvent;

    iget-object v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->call:Lnet/rtccloud/sdk/Call;

    invoke-direct {v0, v1, p1}, Lnet/rtccloud/sdk/event/call/ParticipantsEvent;-><init>(Lnet/rtccloud/sdk/Call;[Lnet/rtccloud/sdk/Participant;)V

    invoke-virtual {p2, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/ConferenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p2, p0, Lnet/rtccloud/sdk/ConferenceModule;->participantsArray:[Lnet/rtccloud/sdk/Participant;

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/Rtcc;->sendParticipantCallBack([Lnet/rtccloud/sdk/Participant;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/ConferenceModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p1, p1, Lnet/rtccloud/sdk/Call;->videoModule:Lnet/rtccloud/sdk/VideoModule;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/VideoModule;->isReceiving()Z

    move-result p1

    if-eq p1, v7, :cond_e

    iget-object p1, p0, Lnet/rtccloud/sdk/ConferenceModule;->call:Lnet/rtccloud/sdk/Call;

    iget-object p1, p1, Lnet/rtccloud/sdk/Call;->videoModule:Lnet/rtccloud/sdk/VideoModule;

    invoke-virtual {p1, v7}, Lnet/rtccloud/sdk/VideoModule;->updateReceivingStatus(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_e
    monitor-exit p0

    return-void

    :cond_f
    :goto_a
    monitor-exit p0

    return-void

    :goto_b
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public isDeafened()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->isDeafened:Z

    return p0
.end method

.method public isMuted()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->isMuted:Z

    return p0
.end method

.method public isPassiveStreamsOnly()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->isPassiveStreamsOnly:Z

    return p0
.end method

.method public kickAll()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/ConferenceModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "kickAll"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lnet/rtccloud/sdk/ConferenceModule;->ensureNotTeardown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->call:Lnet/rtccloud/sdk/Call;

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0, p0}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceConferenceAdmin(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/ConferenceModule;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->nativeInterface:Lnet/rtccloud/sdk/ConferenceModule$Native;

    sget-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->KICKALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

    invoke-interface {p0, v0}, Lnet/rtccloud/sdk/ConferenceModule$Native;->control(Lnet/rtccloud/sdk/ConferenceModule$Control;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public mute(Z)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/ConferenceModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

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
    invoke-direct {p0}, Lnet/rtccloud/sdk/ConferenceModule;->ensureNotTeardown()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->call:Lnet/rtccloud/sdk/Call;

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0, p0}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceConferenceAdmin(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/ConferenceModule;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->isMuted:Z

    if-ne v1, p1, :cond_3

    if-eqz p1, :cond_2

    const-string v1, "Conference is already [muted]"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "Conference is not [muted]"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->nativeInterface:Lnet/rtccloud/sdk/ConferenceModule$Native;

    if-eqz p1, :cond_4

    sget-object p1, Lnet/rtccloud/sdk/ConferenceModule$Control;->MUTEALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/ConferenceModule$Native;->control(Lnet/rtccloud/sdk/ConferenceModule$Control;)V

    return-void

    :cond_4
    sget-object p1, Lnet/rtccloud/sdk/ConferenceModule$Control;->UNMUTEALL:Lnet/rtccloud/sdk/ConferenceModule$Control;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/ConferenceModule$Native;->control(Lnet/rtccloud/sdk/ConferenceModule$Control;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public myself()Lnet/rtccloud/sdk/Participant;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->myself:Lnet/rtccloud/sdk/Participant;

    return-object p0
.end method

.method public participant(I)Lnet/rtccloud/sdk/Participant;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->participants:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/Participant;

    return-object p0
.end method

.method public participants()[Lnet/rtccloud/sdk/Participant;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->participantsArray:[Lnet/rtccloud/sdk/Participant;

    return-object p0
.end method

.method public passiveStreamsOnly(Z)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/ConferenceModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "passiveStreamsOnly(%b)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lnet/rtccloud/sdk/ConferenceModule;->ensureNotTeardown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->call:Lnet/rtccloud/sdk/Call;

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lnet/rtccloud/sdk/ConferenceModule;->isPassiveStreamsOnly:Z

    iget-object p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->nativeInterface:Lnet/rtccloud/sdk/ConferenceModule$Native;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/ConferenceModule$Native;->passiveStreamsOnly(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public recording()Lnet/rtccloud/sdk/RecordingModule;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->recordingModule:Lnet/rtccloud/sdk/RecordingModule;

    return-object p0
.end method

.method public rtcc()Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method

.method public setMirrorMode(Z)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/ConferenceModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setMirrorMode(%b)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->nativeInterface:Lnet/rtccloud/sdk/ConferenceModule$Native;

    invoke-interface {p0, p1}, Lnet/rtccloud/sdk/ConferenceModule$Native;->setMirrorMode(Z)V

    return-void
.end method

.method public teardown()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/ConferenceModule;->isTeardown:Z

    iget-object v0, p0, Lnet/rtccloud/sdk/ConferenceModule;->recordingModule:Lnet/rtccloud/sdk/RecordingModule;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/RecordingModule;->teardown()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->participants:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget-object v2, p0, Lnet/rtccloud/sdk/ConferenceModule;->participants:Landroid/util/SparseArray;

    if-ge v0, v1, :cond_0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/rtccloud/sdk/Participant;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Participant;->teardown()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lnet/rtccloud/sdk/ConferenceModule;->activeSpeaker:Lnet/rtccloud/sdk/Participant;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/ConferenceModule;->activeSpeaker:Lnet/rtccloud/sdk/Participant;

    :cond_1
    return-void
.end method

.method public unlockActiveSpeaker()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/ConferenceModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "unlockActiveSpeaker"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lnet/rtccloud/sdk/ConferenceModule;->ensureNotTeardown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/rtccloud/sdk/ConferenceModule;->call:Lnet/rtccloud/sdk/Call;

    sget-object v2, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0, p0}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceConferenceAdmin(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/ConferenceModule;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/rtccloud/sdk/ConferenceModule;->nativeInterface:Lnet/rtccloud/sdk/ConferenceModule$Native;

    sget-object v0, Lnet/rtccloud/sdk/ConferenceModule$Control;->UNLOCK_SPEAKER:Lnet/rtccloud/sdk/ConferenceModule$Control;

    invoke-interface {p0, v0}, Lnet/rtccloud/sdk/ConferenceModule$Native;->control(Lnet/rtccloud/sdk/ConferenceModule$Control;)V

    :cond_2
    :goto_0
    return-void
.end method
