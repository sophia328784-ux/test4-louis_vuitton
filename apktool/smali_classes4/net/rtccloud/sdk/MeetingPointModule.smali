.class public Lnet/rtccloud/sdk/MeetingPointModule;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field protected final meetingPoints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lnet/rtccloud/sdk/MeetingPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected pendingMeetingPoint:Lnet/rtccloud/sdk/MeetingPoint;

.field private final rtcc:Lnet/rtccloud/sdk/Rtcc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->MEETING_POINT:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/MeetingPointModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/rtccloud/sdk/MeetingPointModule;->meetingPoints:Ljava/util/HashMap;

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPointModule;->mpList:Ljava/util/List;

    return-void
.end method

.method private static findCorrespondingError(II)Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;
    .locals 1

    const/16 v0, 0x3000

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3010

    if-eq p0, v0, :cond_0

    sget-object p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->UNKNOWN:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0

    :cond_0
    packed-switch p1, :pswitch_data_0

    sget-object p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->UNKNOWN:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0

    :pswitch_0
    sget-object p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->LOCK:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0

    :pswitch_1
    sget-object p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->ACCEPTONETOONE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0

    :pswitch_2
    sget-object p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->INVITE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0

    :pswitch_3
    sget-object p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->JOIN:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0

    :pswitch_4
    sget-object p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->STOP:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0

    :pswitch_5
    sget-object p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->CANCEL:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0

    :pswitch_6
    sget-object p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->DENY:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0

    :pswitch_7
    sget-object p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->ACCEPT:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0

    :pswitch_8
    sget-object p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->HOST:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0

    :cond_1
    const/4 p0, 0x1

    if-eq p1, p0, :cond_5

    const/4 p0, 0x2

    if-eq p1, p0, :cond_4

    const/4 p0, 0x4

    if-eq p1, p0, :cond_3

    const/4 p0, 0x5

    if-eq p1, p0, :cond_2

    sget-object p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->UNKNOWN:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0

    :cond_2
    sget-object p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->DETAILS:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0

    :cond_3
    sget-object p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->DELETE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0

    :cond_4
    sget-object p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->UPDATE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0

    :cond_5
    sget-object p0, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->CREATE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized get(Ljava/lang/String;Z)Lnet/rtccloud/sdk/MeetingPoint;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPointModule;->meetingPoints:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/rtccloud/sdk/MeetingPoint;

    if-nez v0, :cond_0

    new-instance v0, Lnet/rtccloud/sdk/MeetingPoint;

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Native;->JNI:Lnet/rtccloud/sdk/MeetingPoint$Native;

    invoke-direct {v0, v1, v2, p1, p2}, Lnet/rtccloud/sdk/MeetingPoint;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/MeetingPoint$Native;Ljava/lang/String;Z)V

    iget-object p2, p0, Lnet/rtccloud/sdk/MeetingPointModule;->meetingPoints:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iput-boolean p2, v0, Lnet/rtccloud/sdk/MeetingPoint;->isHost:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public asAttendee(Ljava/lang/String;)Lnet/rtccloud/sdk/MeetingPoint;
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/MeetingPointModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "asAttendee(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/rtccloud/sdk/MeetingPointModule;->get(Ljava/lang/String;Z)Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "[mpid] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public asHost(Ljava/lang/String;)Lnet/rtccloud/sdk/MeetingPoint;
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/MeetingPointModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "asHost(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnet/rtccloud/sdk/MeetingPointModule;->get(Ljava/lang/String;Z)Lnet/rtccloud/sdk/MeetingPoint;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "[mpid] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public declared-synchronized handleConfig(ILjava/lang/Object;)V
    .locals 7

    monitor-enter p0

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    instance-of v0, p2, Lnet/rtccloud/sdk/MeetingPoint$DataUrl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lnet/rtccloud/sdk/MeetingPoint$DataUrl;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    move-object v0, v1

    :goto_0
    instance-of v2, p2, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;

    if-eqz v2, :cond_2

    check-cast p2, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    iget-object v3, p0, Lnet/rtccloud/sdk/MeetingPointModule;->pendingMeetingPoint:Lnet/rtccloud/sdk/MeetingPoint;

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lnet/rtccloud/sdk/MeetingPointModule;->meetingPoints:Ljava/util/HashMap;

    iget-object v4, v0, Lnet/rtccloud/sdk/MeetingPoint$DataUrl;->mpid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/rtccloud/sdk/MeetingPoint;

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    iget-object v3, p0, Lnet/rtccloud/sdk/MeetingPointModule;->meetingPoints:Ljava/util/HashMap;

    iget-object v4, p2, Lnet/rtccloud/sdk/MeetingPoint$DataDetails;->mpid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/rtccloud/sdk/MeetingPoint;

    goto :goto_2

    :cond_5
    move-object v3, v1

    :goto_2
    if-nez v3, :cond_6

    sget-object p1, Lnet/rtccloud/sdk/MeetingPointModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string p2, "MeetingPoint is [null]"

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_1
    sget-object v4, Lnet/rtccloud/sdk/MeetingPointModule$1;->$SwitchMap$net$rtccloud$sdk$MeetingPoint$Status:[I

    invoke-virtual {v3}, Lnet/rtccloud/sdk/MeetingPoint;->status()Lnet/rtccloud/sdk/MeetingPoint$Status;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x3

    if-eq v4, v2, :cond_b

    const/4 v1, 0x2

    if-eq v4, v1, :cond_7

    if-eq v4, v6, :cond_7

    const/4 v2, 0x4

    if-eq v4, v2, :cond_7

    goto :goto_3

    :cond_7
    if-eq p1, v1, :cond_a

    if-eq p1, v6, :cond_9

    if-eq p1, v5, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v3, p2}, Lnet/rtccloud/sdk/MeetingPoint;->handle(Lnet/rtccloud/sdk/MeetingPoint$DataDetails;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance p2, Lnet/rtccloud/sdk/event/meetingpoint/UpdateEvent;

    invoke-direct {p2, v3}, Lnet/rtccloud/sdk/event/meetingpoint/UpdateEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;)V

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_9
    :try_start_2
    invoke-virtual {v3, v0}, Lnet/rtccloud/sdk/MeetingPoint;->handle(Lnet/rtccloud/sdk/MeetingPoint$DataUrl;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_a
    :try_start_3
    invoke-virtual {v3, v0}, Lnet/rtccloud/sdk/MeetingPoint;->handle(Lnet/rtccloud/sdk/MeetingPoint$DataUrl;)V

    invoke-virtual {v3}, Lnet/rtccloud/sdk/MeetingPoint;->details()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_b
    if-eq p1, v2, :cond_e

    if-eq p1, v6, :cond_d

    if-eq p1, v5, :cond_c

    :goto_3
    :try_start_4
    sget-object p2, Lnet/rtccloud/sdk/MeetingPointModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "Invalid [param] [%s] in status [%s]"

    invoke-static {p1}, Lnet/rtccloud/sdk/internal/Constants$MeetingPointConfig;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Lnet/rtccloud/sdk/MeetingPoint;->status()Lnet/rtccloud/sdk/MeetingPoint$Status;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_c
    :try_start_5
    invoke-virtual {v3, p2}, Lnet/rtccloud/sdk/MeetingPoint;->handle(Lnet/rtccloud/sdk/MeetingPoint$DataDetails;)V

    sget-object p1, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-virtual {v3, p1}, Lnet/rtccloud/sdk/MeetingPoint;->updateStatus(Lnet/rtccloud/sdk/MeetingPoint$Status;)V

    iget-object p2, p0, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p2, p2, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v0, Lnet/rtccloud/sdk/event/meetingpoint/StatusEvent;

    invoke-direct {v0, v3, p1}, Lnet/rtccloud/sdk/event/meetingpoint/StatusEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;)V

    invoke-virtual {p2, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_d
    :try_start_6
    invoke-virtual {v3, v0}, Lnet/rtccloud/sdk/MeetingPoint;->handle(Lnet/rtccloud/sdk/MeetingPoint$DataUrl;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :cond_e
    if-nez v0, :cond_f

    :try_start_7
    sget-object p1, Lnet/rtccloud/sdk/MeetingPointModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string p2, "Missing [data] to create MeetingPoint"

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :cond_f
    :try_start_8
    iput-object v1, p0, Lnet/rtccloud/sdk/MeetingPointModule;->pendingMeetingPoint:Lnet/rtccloud/sdk/MeetingPoint;

    iget-object p1, p0, Lnet/rtccloud/sdk/MeetingPointModule;->meetingPoints:Ljava/util/HashMap;

    iget-object p2, v0, Lnet/rtccloud/sdk/MeetingPoint$DataUrl;->mpid:Ljava/lang/String;

    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lnet/rtccloud/sdk/MeetingPoint;->handle(Lnet/rtccloud/sdk/MeetingPoint$DataUrl;)V

    invoke-virtual {v3}, Lnet/rtccloud/sdk/MeetingPoint;->details()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p1
.end method

.method public declared-synchronized handleControl(IILjava/lang/Object;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "{\"status\":\"ok\",\"evt\":\"meetingpointhosted\",\"mode\":\"n\",\"mpi\":\""

    const-string v5, "{\"status\":\"ok\",\"evt\":\"meetingpointattended\",\"request\":\"accepted\",\"mpi\":\""

    const-string v6, "{\"status\":\"ok\",\"evt\":\"meetingpointattended\",\"request\":\"denied\",\"mpi\":\""

    const-string v7, "{\"status\":\"ok\",\"evt\":\"meetingpointattended\",\"request\":\"acceptedonetoone\",\"mpi\":\""

    const-string v8, "{\"status\":\"ok\",\"evt\":\"meetingpointhosted\",\"mode\":\"1\",\"mpi\":\""

    const-string v9, "{\"status\":\"ok\",\"evt\":\"meetingpointhosted\",\"mode\":\"b\",\"mpi\":\""

    const-string v10, "{\"status\":\"ok\",\"evt\":\"meetingpointattended\",\"request\":\"hosted\",\"mpi\":\""

    monitor-enter p0

    if-eqz v3, :cond_12

    :try_start_0
    instance-of v11, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;

    if-nez v11, :cond_0

    goto/16 :goto_9

    :cond_0
    check-cast v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;

    iget-object v11, v1, Lnet/rtccloud/sdk/MeetingPointModule;->meetingPoints:Ljava/util/HashMap;

    iget-object v12, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->mpid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/rtccloud/sdk/MeetingPoint;

    const/4 v12, -0x1

    const/4 v14, 0x1

    if-eq v2, v12, :cond_1

    move v12, v14

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    if-ne v2, v14, :cond_2

    move v2, v14

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-nez v11, :cond_5

    const/4 v11, 0x2

    if-eq v0, v11, :cond_3

    const/4 v11, 0x3

    if-eq v0, v11, :cond_3

    const/4 v11, 0x4

    if-eq v0, v11, :cond_3

    const/4 v11, 0x6

    if-eq v0, v11, :cond_3

    const/4 v11, 0x7

    if-eq v0, v11, :cond_4

    const/16 v11, 0x8

    if-eq v0, v11, :cond_3

    sget-object v0, Lnet/rtccloud/sdk/MeetingPointModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v2, "MeetingPoint is [null]"

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_3
    :try_start_1
    iget-object v11, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v11}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v11

    invoke-virtual {v11}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v11

    iget-object v15, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v15}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v15

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lnet/rtccloud/sdk/Call;->status()Lnet/rtccloud/sdk/Call$Status;

    move-result-object v13

    sget-object v14, Lnet/rtccloud/sdk/Call$Status;->CREATING:Lnet/rtccloud/sdk/Call$Status;

    if-ne v13, v14, :cond_4

    invoke-virtual {v11}, Lnet/rtccloud/sdk/Call;->type()Lnet/rtccloud/sdk/Call$Type;

    move-result-object v13

    sget-object v14, Lnet/rtccloud/sdk/Call$Type;->CALL_OUTBOUND:Lnet/rtccloud/sdk/Call$Type;

    if-ne v13, v14, :cond_4

    if-eqz v15, :cond_4

    instance-of v13, v15, Lnet/rtccloud/sdk/User$SixDigits;

    if-eqz v13, :cond_4

    sget-object v13, Lnet/rtccloud/sdk/MeetingPointModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v14, "Incoming MeetingPoint detected! It will replace the current sixdigits call"

    invoke-virtual {v13, v14}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    invoke-virtual {v11}, Lnet/rtccloud/sdk/Call;->end()V

    :cond_4
    new-instance v11, Lnet/rtccloud/sdk/MeetingPoint;

    iget-object v13, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v14, Lnet/rtccloud/sdk/MeetingPoint$Native;->JNI:Lnet/rtccloud/sdk/MeetingPoint$Native;

    invoke-direct {v11, v13, v14, v3}, Lnet/rtccloud/sdk/MeetingPoint;-><init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/MeetingPoint$Native;Lnet/rtccloud/sdk/MeetingPoint$DataControl;)V

    iget-object v13, v1, Lnet/rtccloud/sdk/MeetingPointModule;->meetingPoints:Ljava/util/HashMap;

    invoke-virtual {v11}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/16 v13, 0x10

    if-eq v0, v13, :cond_11

    const/16 v8, 0x20

    if-eq v0, v8, :cond_10

    const/16 v8, 0x30

    if-eq v0, v8, :cond_f

    packed-switch v0, :pswitch_data_0

    sget-object v2, Lnet/rtccloud/sdk/MeetingPointModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v3, "Invalid [param] [%s] in status [%s]"

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/Constants$MeetingPointControl;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lnet/rtccloud/sdk/MeetingPoint;->status()Lnet/rtccloud/sdk/MeetingPoint$Status;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_2
    invoke-virtual {v11, v0}, Lnet/rtccloud/sdk/MeetingPoint;->updateLock(I)V

    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v0, v0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v2, Lnet/rtccloud/sdk/event/meetingpoint/LockEvent;

    invoke-virtual {v11}, Lnet/rtccloud/sdk/MeetingPoint;->lock()Lnet/rtccloud/sdk/MeetingPoint$Lock;

    move-result-object v3

    invoke-direct {v2, v11, v3}, Lnet/rtccloud/sdk/event/meetingpoint/LockEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Lock;)V

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_1
    :try_start_3
    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v0, v0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v2, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;

    sget-object v4, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->ACCEPTONETOONE:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    iget-object v5, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->uid:Ljava/lang/String;

    iget-object v3, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->displayname:Ljava/lang/String;

    invoke-direct {v2, v11, v4, v5, v3}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_2
    :try_start_4
    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v0, v0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v2, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;

    sget-object v4, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->INVITE:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    iget-object v5, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->uid:Ljava/lang/String;

    iget-object v3, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->displayname:Ljava/lang/String;

    invoke-direct {v2, v11, v4, v5, v3}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_3
    :try_start_5
    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v0, v0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v2, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;

    sget-object v4, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->JOIN:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    iget-object v5, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->uid:Ljava/lang/String;

    iget-object v6, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->displayname:Ljava/lang/String;

    invoke-direct {v2, v11, v4, v5, v6}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v13, 0x0

    goto :goto_3

    :cond_6
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_2

    :cond_7
    const/4 v13, 0x1

    :goto_3
    if-eqz v13, :cond_8

    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"status\":\"ok\",\"evt\":\"meetingpointattended\",\"request\":\"pending\",\"mpi\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :cond_8
    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    if-eqz v12, :cond_9

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"status\":\"ok\",\"evt\":\"meetingpointrequested\",\"request\":\"requesttoattend\",\"mpi\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"uid\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->uid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"dn\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->displayname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"status\":\"ok\",\"evt\":\"meetingpointrequested\",\"request\":\"notification\",\"mpi\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"uid\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->uid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"dn\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->displayname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    monitor-exit p0

    return-void

    :pswitch_4
    :try_start_7
    invoke-virtual {v11}, Lnet/rtccloud/sdk/MeetingPoint;->status()Lnet/rtccloud/sdk/MeetingPoint$Status;

    move-result-object v0

    sget-object v2, Lnet/rtccloud/sdk/MeetingPoint$Status;->HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    if-ne v0, v2, :cond_a

    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Status;->CREATED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-virtual {v11, v0}, Lnet/rtccloud/sdk/MeetingPoint;->updateStatus(Lnet/rtccloud/sdk/MeetingPoint$Status;)V

    :cond_a
    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v0, v0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v2, Lnet/rtccloud/sdk/event/meetingpoint/StatusEvent;

    sget-object v3, Lnet/rtccloud/sdk/MeetingPoint$Status;->STOPPED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-direct {v2, v11, v3}, Lnet/rtccloud/sdk/event/meetingpoint/StatusEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;)V

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_5
    :try_start_8
    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v0, v0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v4, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;

    sget-object v5, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->CANCEL:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    iget-object v6, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->uid:Ljava/lang/String;

    iget-object v7, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->displayname:Ljava/lang/String;

    invoke-direct {v4, v11, v5, v6, v7}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->uid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_c

    invoke-virtual {v0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v7

    if-nez v7, :cond_b

    const/4 v13, 0x0

    goto :goto_6

    :cond_b
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_5

    :cond_c
    const/4 v13, 0x1

    :goto_6
    if-eqz v13, :cond_d

    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"status\":\"ok\",\"evt\":\"meetingpointattended\",\"action\":\"cancel\",\"mpi\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_7

    :cond_d
    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    if-eqz v2, :cond_e

    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"status\":\"ok\",\"evt\":\"meetingpointrequested\",\"request\":\"requestcancelled\",\"mpi\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"uid\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->uid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"dn\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->displayname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{\"status\":\"ok\",\"evt\":\"meetingpointrequested\",\"request\":\"notificationcancelled\",\"mpi\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"uid\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->uid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"dn\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->displayname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_7
    monitor-exit p0

    return-void

    :pswitch_6
    :try_start_a
    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v0, v0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v2, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;

    sget-object v4, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->DENY:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    iget-object v5, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->uid:Ljava/lang/String;

    iget-object v3, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->displayname:Ljava/lang/String;

    invoke-direct {v2, v11, v4, v5, v3}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_7
    :try_start_b
    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v0, v0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v2, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;

    sget-object v4, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;->ACCEPT:Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;

    iget-object v6, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->uid:Ljava/lang/String;

    iget-object v3, v3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->displayname:Ljava/lang/String;

    invoke-direct {v2, v11, v4, v6, v3}, Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/event/meetingpoint/RequestEvent$Type;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-void

    :pswitch_8
    :try_start_c
    sget-object v0, Lnet/rtccloud/sdk/MeetingPoint$Status;->HOSTED:Lnet/rtccloud/sdk/MeetingPoint$Status;

    invoke-virtual {v11, v0}, Lnet/rtccloud/sdk/MeetingPoint;->updateStatus(Lnet/rtccloud/sdk/MeetingPoint$Status;)V

    iget-object v2, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v2, v2, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v3, Lnet/rtccloud/sdk/event/meetingpoint/StatusEvent;

    invoke-direct {v3, v11, v0}, Lnet/rtccloud/sdk/event/meetingpoint/StatusEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/MeetingPoint$Status;)V

    invoke-virtual {v2, v3}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-void

    :cond_f
    :try_start_d
    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    monitor-exit p0

    return-void

    :cond_10
    :try_start_e
    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit p0

    return-void

    :cond_11
    :try_start_f
    iget-object v0, v1, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    monitor-exit p0

    return-void

    :goto_8
    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    throw v0

    :cond_12
    :goto_9
    monitor-exit p0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handleControlError(IILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "\"}"

    const-string v2, "\",\"mpi\":\""

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/16 p1, 0x10

    if-eq p2, p1, :cond_1

    const/16 p1, 0x20

    if-eq p2, p1, :cond_1

    return-void

    :cond_0
    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "{\"status\":\"ko\",\"evt\":\"meetingpointcontrolled\",\"action\":\""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"error\": \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    const-string p1, "{\"status\":\"ko\",\"evt\":\"meetingpointhosted\",\"error\":\""

    invoke-static {p1, p4, v2, p3, v1}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized handleError(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPointModule;->meetingPoints:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/rtccloud/sdk/MeetingPoint;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPointModule;->pendingMeetingPoint:Lnet/rtccloud/sdk/MeetingPoint;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p1, p1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance p2, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent;

    sget-object p3, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;->CREATE:Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    invoke-direct {p2, v0, p3, p4}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPointModule;->pendingMeetingPoint:Lnet/rtccloud/sdk/MeetingPoint;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    sget-object v0, Lnet/rtccloud/sdk/MeetingPointModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "Error: but unknown MeetingPoint mpid=%s cmd=%x action=%x message=%s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p3, p1, p2, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object p3, p0, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object p3, p3, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v1, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent;

    invoke-static {p1, p2}, Lnet/rtccloud/sdk/MeetingPointModule;->findCorrespondingError(II)Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;

    move-result-object p1

    invoke-direct {v1, v0, p1, p4}, Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent;-><init>(Lnet/rtccloud/sdk/MeetingPoint;Lnet/rtccloud/sdk/event/meetingpoint/ErrorEvent$Action;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized handleList(IILjava/lang/Object;)V
    .locals 3

    const-string v0, "{\"evt\": \"mpilist\", \"mpi\": \""

    monitor-enter p0

    :try_start_0
    instance-of v1, p3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    check-cast p3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPointModule;->meetingPoints:Ljava/util/HashMap;

    iget-object v2, p3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->mpid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/rtccloud/sdk/MeetingPoint;

    if-lez p1, :cond_1

    iget-object v1, p0, Lnet/rtccloud/sdk/MeetingPointModule;->mpList:Ljava/util/List;

    iget-object v2, p3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->uid:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_3

    :cond_2
    iget-object p1, p0, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p3, Lnet/rtccloud/sdk/MeetingPoint$DataControl;->mpid:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\",\"uids\": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lnet/rtccloud/sdk/MeetingPointModule;->mpList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {p3, v0, v0}, Lcom/sightcall/pratik/extensions/AnyExtensionsKt;->toJson(Ljava/lang/Object;ZZ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "}"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V

    iget-object p1, p0, Lnet/rtccloud/sdk/MeetingPointModule;->mpList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public pending()Lnet/rtccloud/sdk/MeetingPoint;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPointModule;->pendingMeetingPoint:Lnet/rtccloud/sdk/MeetingPoint;

    return-object p0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/MeetingPointModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "remove(%s)"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_3

    sget-object v0, Lnet/rtccloud/sdk/util/Input;->MPID:Lnet/rtccloud/sdk/util/Input;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/util/Input;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPointModule;->meetingPoints:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPointModule;->pendingMeetingPoint:Lnet/rtccloud/sdk/MeetingPoint;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/MeetingPoint;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/rtccloud/sdk/MeetingPointModule;->pendingMeetingPoint:Lnet/rtccloud/sdk/MeetingPoint;

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "[mpid] must be ["

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] but is ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "[mpid] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public rtcc()Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/MeetingPointModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method

.method public teardown()V
    .locals 1

    iget-object v0, p0, Lnet/rtccloud/sdk/MeetingPointModule;->meetingPoints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/MeetingPointModule;->pendingMeetingPoint:Lnet/rtccloud/sdk/MeetingPoint;

    return-void
.end method
