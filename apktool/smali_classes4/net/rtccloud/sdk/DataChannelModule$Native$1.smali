.class Lnet/rtccloud/sdk/DataChannelModule$Native$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/DataChannelModule$Native;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/DataChannelModule$Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public ack(Ljava/lang/String;II)Z
    .locals 2

    iget-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnet/rtccloud/sdk/DataChannelModule$Native$1$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lnet/rtccloud/sdk/DataChannelModule$Native$1$5;-><init>(Lnet/rtccloud/sdk/DataChannelModule$Native$1;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public send([BJLjava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnet/rtccloud/sdk/DataChannelModule$Native$1$1;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lnet/rtccloud/sdk/DataChannelModule$Native$1$1;-><init>(Lnet/rtccloud/sdk/DataChannelModule$Native$1;[BJLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public send([BJ[Ljava/lang/String;)Z
    .locals 7

    .line 16
    iget-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnet/rtccloud/sdk/DataChannelModule$Native$1$2;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lnet/rtccloud/sdk/DataChannelModule$Native$1$2;-><init>(Lnet/rtccloud/sdk/DataChannelModule$Native$1;[BJ[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public sendInBand([B)Z
    .locals 2

    iget-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnet/rtccloud/sdk/DataChannelModule$Native$1$4;

    invoke-direct {v1, p0, p1}, Lnet/rtccloud/sdk/DataChannelModule$Native$1$4;-><init>(Lnet/rtccloud/sdk/DataChannelModule$Native$1;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public sendMpi(Ljava/lang/String;J[B)Z
    .locals 7

    iget-object v0, p0, Lnet/rtccloud/sdk/DataChannelModule$Native$1;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnet/rtccloud/sdk/DataChannelModule$Native$1$3;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lnet/rtccloud/sdk/DataChannelModule$Native$1$3;-><init>(Lnet/rtccloud/sdk/DataChannelModule$Native$1;Ljava/lang/String;J[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method
