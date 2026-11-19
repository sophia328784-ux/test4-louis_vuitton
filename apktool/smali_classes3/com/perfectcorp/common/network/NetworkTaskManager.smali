.class public final Lcom/perfectcorp/common/network/NetworkTaskManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/network/NetworkTaskManager$DebugLog;,
        Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;,
        Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;
    }
.end annotation


# static fields
.field public static final d:I

.field public static final e:I

.field public static final f:Ljava/util/concurrent/TimeUnit;


# instance fields
.field public final a:Lcom/perfectcorp/common/network/k;

.field public final b:Lcom/perfectcorp/common/network/h;

.field public final c:Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    sput v0, Lcom/perfectcorp/common/network/NetworkTaskManager;->d:I

    sput v0, Lcom/perfectcorp/common/network/NetworkTaskManager;->e:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/perfectcorp/common/network/NetworkTaskManager;->f:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lcom/perfectcorp/common/network/h;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lcom/perfectcorp/common/network/h<",
            "Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/common/network/NetworkTaskManager$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/common/network/NetworkTaskManager$1;->a:Lcom/perfectcorp/common/network/NetworkTaskManager;

    iput-object v0, p0, Lcom/perfectcorp/common/network/NetworkTaskManager;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;

    new-instance v0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;-><init>()V

    const-string v1, "NetworkTaskManager"

    iput-object v1, v0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->a:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->b:Z

    move/from16 v2, p7

    iput v2, v0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->d:I

    iput-boolean v1, v0, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->c:Z

    invoke-virtual {v0}, Lcom/perfectcorp/common/concurrent/ThreadFactoryBuilder;->a()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    new-instance v2, Lcom/perfectcorp/common/network/k;

    new-instance v8, Lcom/perfectcorp/common/network/l;

    invoke-direct {v8}, Lcom/perfectcorp/common/network/l;-><init>()V

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v9}, Lcom/perfectcorp/common/network/k;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/perfectcorp/common/network/l;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, p0, Lcom/perfectcorp/common/network/NetworkTaskManager;->a:Lcom/perfectcorp/common/network/k;

    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 p1, p6

    iput-object p1, p0, Lcom/perfectcorp/common/network/NetworkTaskManager;->b:Lcom/perfectcorp/common/network/h;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/common/network/h;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/common/network/h<",
            "Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;",
            ">;)V"
        }
    .end annotation

    .line 58
    sget-object v5, Lcom/perfectcorp/common/network/NetworkTaskManager;->f:Ljava/util/concurrent/TimeUnit;

    const/4 v7, 0x0

    sget v1, Lcom/perfectcorp/common/network/NetworkTaskManager;->d:I

    sget v2, Lcom/perfectcorp/common/network/NetworkTaskManager;->e:I

    const-wide/16 v3, 0x1e

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/common/network/NetworkTaskManager;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/perfectcorp/common/network/h;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/common/network/DownloadTask;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/network/NetworkTaskManager;->a:Lcom/perfectcorp/common/network/k;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/common/network/k;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/perfectcorp/common/network/DownloadTask;->getFuture()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
