.class public Lnet/rtccloud/sdk/DataChannelModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/DataChannelModule$Native;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_ARRAY:[B

.field public static final MAX_SIZE_DATA_CHANNEL:I = 0x600

.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field final messageConsumer:Ljava/lang/Runnable;

.field private messageConsumerHandler:Landroid/os/Handler;

.field private final nativeInterface:Lnet/rtccloud/sdk/DataChannelModule$Native;

.field private final rtcc:Lnet/rtccloud/sdk/Rtcc;

.field private unsentMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->DATA_CHANNEL:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/DataChannelModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lnet/rtccloud/sdk/DataChannelModule;->EMPTY_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/DataChannelModule$Native;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule;->unsentMessages:Ljava/util/Queue;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule;->messageConsumerHandler:Landroid/os/Handler;

    new-instance v0, Lnet/rtccloud/sdk/DataChannelModule$1;

    invoke-direct {v0, p0}, Lnet/rtccloud/sdk/DataChannelModule$1;-><init>(Lnet/rtccloud/sdk/DataChannelModule;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule;->messageConsumer:Ljava/lang/Runnable;

    iput-object p1, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iput-object p2, p0, Lnet/rtccloud/sdk/DataChannelModule;->nativeInterface:Lnet/rtccloud/sdk/DataChannelModule$Native;

    return-void
.end method

.method public static bridge synthetic a(Lnet/rtccloud/sdk/DataChannelModule;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/DataChannelModule;->messageConsumerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic b(Lnet/rtccloud/sdk/DataChannelModule;)Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method

.method public static bridge synthetic c(Lnet/rtccloud/sdk/DataChannelModule;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/DataChannelModule;->unsentMessages:Ljava/util/Queue;

    return-object p0
.end method

.method public static bridge synthetic d(Lnet/rtccloud/sdk/DataChannelModule;)Z
    .locals 0

    invoke-direct {p0}, Lnet/rtccloud/sdk/DataChannelModule;->hasUnsentMessage()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Lnet/rtccloud/sdk/DataChannelModule;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lnet/rtccloud/sdk/DataChannelModule;->pollUnsentMessage()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f()Lnet/rtccloud/sdk/util/OldLogger;
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/DataChannelModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-object v0
.end method

.method private declared-synchronized hasUnsentMessage()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule;->unsentMessages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static isValidMessageType(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of p0, p0, [B

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static payloadToByteArray(Ljava/lang/Object;)[B
    .locals 1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    return-object p0

    :cond_1
    sget-object p0, Lnet/rtccloud/sdk/DataChannelModule;->EMPTY_ARRAY:[B

    return-object p0
.end method

.method public static payloadToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    check-cast p0, [B

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized pollUnsentMessage()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule;->unsentMessages:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized stackInBandMessage(Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule;->unsentMessages:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lnet/rtccloud/sdk/DataChannelModule;->messageConsumerHandler:Landroid/os/Handler;

    iget-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule;->messageConsumer:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public ack(Ljava/lang/String;II)Z
    .locals 4

    sget-object v0, Lnet/rtccloud/sdk/DataChannelModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ack(uid=%s, id=%d, flag=%d)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_5

    sget-object v1, Lnet/rtccloud/sdk/util/Input;->UID:Lnet/rtccloud/sdk/util/Input;

    invoke-virtual {v1, p1}, Lnet/rtccloud/sdk/util/Input;->isValid(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "]"

    if-eqz v2, :cond_4

    const/16 v1, 0xff

    if-gt p3, v1, :cond_3

    if-ltz p3, :cond_3

    iget-object v1, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    sget-object v3, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    invoke-static {v0, v1, v3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceUserStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/User;Lnet/rtccloud/sdk/User$Status;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lnet/rtccloud/sdk/DataChannelModule;->nativeInterface:Lnet/rtccloud/sdk/DataChannelModule$Native;

    invoke-interface {p0, p1, p2, p3}, Lnet/rtccloud/sdk/DataChannelModule$Native;->ack(Ljava/lang/String;II)Z

    move-result p0

    return p0

    :cond_3
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[flag] must be in range [0 - 255] but is ["

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "[uid] must be ["

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "] but is ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_5
    const-string p0, "[uid] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public declared-synchronized handleAck(IILjava/lang/String;)V
    .locals 3

    const-string v0, "{\"evt\": \"ackmessage\",\"uid\": \""

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v1, v1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v2, Lnet/rtccloud/sdk/event/datachannel/DataChannelAckEvent;

    invoke-direct {v2, p0, p1, p2, p3}, Lnet/rtccloud/sdk/event/datachannel/DataChannelAckEvent;-><init>(Lnet/rtccloud/sdk/DataChannelModule;IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\",\"id\":"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\"status\": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " }"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized handleInBand([B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v0, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingDataChannelInBandEvent([B)V

    iget-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v0, v0, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v1, Lnet/rtccloud/sdk/event/datachannel/DataChannelInBandEvent;

    invoke-direct {v1, p0, p1}, Lnet/rtccloud/sdk/event/datachannel/DataChannelInBandEvent;-><init>(Lnet/rtccloud/sdk/DataChannelModule;[B)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized handleOutBand(ILjava/lang/String;[B)V
    .locals 3

    const-string v0, "{\"evt\":\"dcmessage\",\"uid\": \""

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    iget-object v1, v1, Lnet/rtccloud/sdk/Rtcc;->bus:Lnet/rtccloud/sdk/event/EventBus;

    new-instance v2, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;

    invoke-direct {v2, p0, p1, p2, p3}, Lnet/rtccloud/sdk/event/datachannel/DataChannelOutOfBandEvent;-><init>(Lnet/rtccloud/sdk/DataChannelModule;ILjava/lang/String;[B)V

    invoke-virtual {v1, v2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\",\"id\":"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\"msg\": \""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    invoke-static {p3, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnet/rtccloud/sdk/Rtcc;->sendMeetingCallBack(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public rtcc()Lnet/rtccloud/sdk/Rtcc;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    return-object p0
.end method

.method public send(Ljava/lang/Object;JLjava/lang/String;)Z
    .locals 4

    sget-object v0, Lnet/rtccloud/sdk/DataChannelModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lnet/rtccloud/sdk/DataChannelModule;->payloadToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2, p4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "send(payload=%s, id=%d, uid=%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_7

    invoke-static {p1}, Lnet/rtccloud/sdk/DataChannelModule;->isValidMessageType(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p1}, Lnet/rtccloud/sdk/DataChannelModule;->payloadToByteArray(Ljava/lang/Object;)[B

    move-result-object p1

    array-length v1, p1

    const/16 v2, 0x600

    const-string v3, "]"

    if-gt v1, v2, :cond_5

    if-eqz p4, :cond_4

    sget-object v1, Lnet/rtccloud/sdk/util/Input;->UID:Lnet/rtccloud/sdk/util/Input;

    invoke-virtual {v1, p4}, Lnet/rtccloud/sdk/util/Input;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    sget-object v3, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    invoke-static {v0, v1, v3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceUserStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/User;Lnet/rtccloud/sdk/User$Status;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lnet/rtccloud/sdk/DataChannelModule;->nativeInterface:Lnet/rtccloud/sdk/DataChannelModule$Native;

    invoke-interface {p0, p1, p2, p3, p4}, Lnet/rtccloud/sdk/DataChannelModule$Native;->send([BJLjava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[uid] must be ["

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] but is ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_4
    const-string p0, "[uid] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0

    :cond_5
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length p0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[payload] length must be in range [0 - 1536] but is ["

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_6
    const-string p0, "[payload] type must be String or String[]"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_7
    const-string p0, "[payload] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public varargs send(Ljava/lang/Object;J[Ljava/lang/String;)Z
    .locals 4

    .line 164
    sget-object v0, Lnet/rtccloud/sdk/DataChannelModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-static {p1}, Lnet/rtccloud/sdk/DataChannelModule;->payloadToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "send(payload=%s, id=%d, uids=%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_3

    .line 166
    invoke-static {p1}, Lnet/rtccloud/sdk/DataChannelModule;->payloadToByteArray(Ljava/lang/Object;)[B

    move-result-object p1

    .line 167
    invoke-static {p4, v0}, Lnet/rtccloud/sdk/internal/util/Utils;->consolidateUidInput([Ljava/lang/String;Lnet/rtccloud/sdk/util/OldLogger;)[Ljava/lang/String;

    move-result-object p4

    .line 168
    iget-object v1, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v2, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v1, v2}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 169
    :cond_1
    iget-object v1, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    sget-object v3, Lnet/rtccloud/sdk/User$Status;->REGISTERED:Lnet/rtccloud/sdk/User$Status;

    invoke-static {v0, v1, v3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceUserStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/User;Lnet/rtccloud/sdk/User$Status;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 170
    :cond_2
    iget-object p0, p0, Lnet/rtccloud/sdk/DataChannelModule;->nativeInterface:Lnet/rtccloud/sdk/DataChannelModule$Native;

    invoke-interface {p0, p1, p2, p3, p4}, Lnet/rtccloud/sdk/DataChannelModule$Native;->send([BJ[Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 171
    :cond_3
    const-string p0, "[payload] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public sendInBand(Ljava/lang/Object;)Z
    .locals 5

    sget-object v0, Lnet/rtccloud/sdk/DataChannelModule;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lnet/rtccloud/sdk/DataChannelModule;->payloadToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "sendInBand(payload=%s)"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_6

    invoke-static {p1}, Lnet/rtccloud/sdk/DataChannelModule;->isValidMessageType(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Lnet/rtccloud/sdk/DataChannelModule;->payloadToByteArray(Ljava/lang/Object;)[B

    move-result-object v1

    array-length v2, v1

    const/16 v3, 0x600

    if-gt v2, v3, :cond_4

    iget-object v2, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    sget-object v3, Lnet/rtccloud/sdk/Rtcc$Status;->CONNECTED:Lnet/rtccloud/sdk/Rtcc$Status;

    invoke-static {v0, v2, v3}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceRtccStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;Lnet/rtccloud/sdk/Rtcc$Status;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-virtual {v2}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v2

    invoke-virtual {v2}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v2

    iget-object v4, p0, Lnet/rtccloud/sdk/DataChannelModule;->rtcc:Lnet/rtccloud/sdk/Rtcc;

    invoke-static {v0, v4}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCall(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Rtcc;)Z

    move-result v4

    if-nez v4, :cond_2

    return v3

    :cond_2
    sget-object v4, Lnet/rtccloud/sdk/Call$Status;->ACTIVE:Lnet/rtccloud/sdk/Call$Status;

    invoke-static {v0, v2, v4}, Lnet/rtccloud/sdk/internal/Preconditions;->enforceCallStatus(Lnet/rtccloud/sdk/util/OldLogger;Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Call$Status;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/DataChannelModule;->stackInBandMessage(Ljava/lang/Object;)V

    return v3

    :cond_3
    iget-object p0, p0, Lnet/rtccloud/sdk/DataChannelModule;->nativeInterface:Lnet/rtccloud/sdk/DataChannelModule$Native;

    invoke-interface {p0, v1}, Lnet/rtccloud/sdk/DataChannelModule$Native;->sendInBand([B)Z

    move-result p0

    return p0

    :cond_4
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    array-length p0, v1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[payload] length must be in range [0 - 1536] but is ["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_5
    const-string p0, "[payload] type must be String or String[]"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_6
    const-string p0, "[payload] must not be null"

    invoke-static {p0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object p0

    throw p0
.end method

.method public sendMpi(Ljava/lang/String;JLjava/lang/String;)Z
    .locals 0

    invoke-static {p4}, Lnet/rtccloud/sdk/DataChannelModule;->payloadToByteArray(Ljava/lang/Object;)[B

    move-result-object p4

    iget-object p0, p0, Lnet/rtccloud/sdk/DataChannelModule;->nativeInterface:Lnet/rtccloud/sdk/DataChannelModule$Native;

    invoke-interface {p0, p1, p2, p3, p4}, Lnet/rtccloud/sdk/DataChannelModule$Native;->sendMpi(Ljava/lang/String;J[B)Z

    move-result p0

    return p0
.end method

.method public sendMulti(Ljava/lang/Object;J[Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/rtccloud/sdk/DataChannelModule;->send(Ljava/lang/Object;J[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
