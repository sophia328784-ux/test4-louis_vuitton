.class public final Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/common/network/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/common/network/h<",
        "Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/task/InitResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/util/List;


# instance fields
.field public volatile a:Z

.field public volatile b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->c:Ljava/lang/Object;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/a;->a:Lcom/perfectcorp/perfectlib/ymk/a$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/a$a;->h:Ljava/util/List;

    sput-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .locals 6

    const-string v0, "SDKInitHandler"

    const-string v1, "[requestInit] start"

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    const-string v1, "SDKInitHandler"

    const-string v3, "[requestInit] check local future (1)"

    invoke-static {v2, v1, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const-string v0, "SDKInitHandler"

    const-string v1, "[requestInit] local future (1) is null"

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "SDKInitHandler"

    const-string v3, "[requestInit] enter critical section"

    invoke-static {v2, v0, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    const-string v3, "SDKInitHandler"

    const-string v4, "[requestInit] check local future (2)"

    invoke-static {v2, v3, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const-string v0, "SDKInitHandler"

    const-string v3, "[requestInit] local future (2) is null"

    invoke-static {v2, v0, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->d:Ljava/util/List;

    iget-boolean v3, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->a:Z

    const-string v4, "SDKInitHandler"

    const-string v5, "[startInit] start"

    invoke-static {v2, v4, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Lho0;

    check-cast v0, Ljava/util/List;

    invoke-direct {v5, p1, v0, v3, v2}, Lho0;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {p1, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v0, La61;

    const/16 v3, 0xe

    invoke-direct {v0, v3}, La61;-><init>(I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v3, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, La61;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, La61;-><init>(I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, v3, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p1, Ljn0;

    const/4 v3, 0x1

    invoke-direct {p1, v4, v3}, Ljn0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;I)V

    new-instance v3, Ljn0;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Ljn0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;I)V

    new-instance v5, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v5, p1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    const-string p1, "SDKInitHandler"

    const-string v0, "[startInit] end"

    invoke-static {v2, p1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    const-string p1, "SDKInitHandler"

    const-string v0, "[requestInit] future created"

    invoke-static {v2, p1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/b;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/b;-><init>(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/a;)V

    sget-object p0, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/guava/MoreFutures;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    const-string p0, "SDKInitHandler"

    const-string p1, "[requestInit] future callback added"

    invoke-static {v2, p0, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "SDKInitHandler"

    const-string p1, "[requestInit] local future (2) isn\'t null"

    invoke-static {v2, p0, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "SDKInitHandler"

    const-string p1, "[requestInit] exit critical section"

    invoke-static {v2, p0, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const-string p0, "SDKInitHandler"

    const-string p1, "[requestInit] local future (1) isn\'t null"

    invoke-static {v2, p0, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string p0, "SDKInitHandler"

    const-string p1, "[requestInit] return local future"

    invoke-static {v2, p0, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
