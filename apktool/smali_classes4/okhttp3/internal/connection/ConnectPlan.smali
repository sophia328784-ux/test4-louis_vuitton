.class public final Lokhttp3/internal/connection/ConnectPlan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/internal/connection/RoutePlanner$Plan;
.implements Lokhttp3/internal/http/ExchangeCodec$Carrier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/connection/ConnectPlan$Companion;,
        Lokhttp3/internal/connection/ConnectPlan$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001eB\u0093\u0001\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u0015\u0012\u0006\u0010\u0017\u001a\u00020\u0007\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\u0006\u0010\u001a\u001a\u00020\u0007\u0012\u0006\u0010\u001b\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lokhttp3/internal/connection/ConnectPlan;",
        "Lokhttp3/internal/connection/RoutePlanner$Plan;",
        "Lokhttp3/internal/http/ExchangeCodec$Carrier;",
        "Lokhttp3/internal/concurrent/TaskRunner;",
        "taskRunner",
        "Lokhttp3/internal/connection/RealConnectionPool;",
        "connectionPool",
        "",
        "readTimeoutMillis",
        "writeTimeoutMillis",
        "socketConnectTimeoutMillis",
        "socketReadTimeoutMillis",
        "pingIntervalMillis",
        "",
        "retryOnConnectionFailure",
        "Lokhttp3/internal/connection/RealCall;",
        "call",
        "Lokhttp3/internal/connection/RealRoutePlanner;",
        "routePlanner",
        "Lokhttp3/Route;",
        "route",
        "",
        "routes",
        "attempt",
        "Lokhttp3/Request;",
        "tunnelRequest",
        "connectionSpecIndex",
        "isTlsFallback",
        "<init>",
        "(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIIZLokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILokhttp3/Request;IZ)V",
        "Companion",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic y:I


# instance fields
.field public final b:Lokhttp3/internal/concurrent/TaskRunner;

.field public final c:Lokhttp3/internal/connection/RealConnectionPool;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Z

.field public final j:Lokhttp3/internal/connection/RealCall;

.field public final k:Lokhttp3/internal/connection/RealRoutePlanner;

.field public final l:Lokhttp3/Route;

.field public final m:Ljava/util/List;

.field public final n:I

.field public final o:Lokhttp3/Request;

.field public final p:I

.field public final q:Z

.field public volatile r:Z

.field public s:Ljava/net/Socket;

.field public t:Ljava/net/Socket;

.field public u:Lokhttp3/Handshake;

.field public v:Lokhttp3/Protocol;

.field public w:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

.field public x:Lokhttp3/internal/connection/RealConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/connection/ConnectPlan$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/ConnectPlan$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIIZLokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILokhttp3/Request;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/concurrent/TaskRunner;",
            "Lokhttp3/internal/connection/RealConnectionPool;",
            "IIIIIZ",
            "Lokhttp3/internal/connection/RealCall;",
            "Lokhttp3/internal/connection/RealRoutePlanner;",
            "Lokhttp3/Route;",
            "Ljava/util/List<",
            "Lokhttp3/Route;",
            ">;I",
            "Lokhttp3/Request;",
            "IZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/ConnectPlan;->b:Lokhttp3/internal/concurrent/TaskRunner;

    iput-object p2, p0, Lokhttp3/internal/connection/ConnectPlan;->c:Lokhttp3/internal/connection/RealConnectionPool;

    iput p3, p0, Lokhttp3/internal/connection/ConnectPlan;->d:I

    iput p4, p0, Lokhttp3/internal/connection/ConnectPlan;->e:I

    iput p5, p0, Lokhttp3/internal/connection/ConnectPlan;->f:I

    iput p6, p0, Lokhttp3/internal/connection/ConnectPlan;->g:I

    iput p7, p0, Lokhttp3/internal/connection/ConnectPlan;->h:I

    iput-boolean p8, p0, Lokhttp3/internal/connection/ConnectPlan;->i:Z

    iput-object p9, p0, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iput-object p10, p0, Lokhttp3/internal/connection/ConnectPlan;->k:Lokhttp3/internal/connection/RealRoutePlanner;

    iput-object p11, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iput-object p12, p0, Lokhttp3/internal/connection/ConnectPlan;->m:Ljava/util/List;

    iput p13, p0, Lokhttp3/internal/connection/ConnectPlan;->n:I

    iput-object p14, p0, Lokhttp3/internal/connection/ConnectPlan;->o:Lokhttp3/Request;

    iput p15, p0, Lokhttp3/internal/connection/ConnectPlan;->p:I

    move/from16 p1, p16

    iput-boolean p1, p0, Lokhttp3/internal/connection/ConnectPlan;->q:Z

    return-void
.end method

.method public static j(Lokhttp3/internal/connection/ConnectPlan;ILokhttp3/Request;IZI)Lokhttp3/internal/connection/ConnectPlan;
    .locals 19

    move-object/from16 v0, p0

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_0

    iget v1, v0, Lokhttp3/internal/connection/ConnectPlan;->n:I

    move v15, v1

    goto :goto_0

    :cond_0
    move/from16 v15, p1

    :goto_0
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_1

    iget-object v1, v0, Lokhttp3/internal/connection/ConnectPlan;->o:Lokhttp3/Request;

    move-object/from16 v16, v1

    goto :goto_1

    :cond_1
    move-object/from16 v16, p2

    :goto_1
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_2

    iget v1, v0, Lokhttp3/internal/connection/ConnectPlan;->p:I

    move/from16 v17, v1

    goto :goto_2

    :cond_2
    move/from16 v17, p3

    :goto_2
    and-int/lit8 v1, p5, 0x8

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lokhttp3/internal/connection/ConnectPlan;->q:Z

    move/from16 v18, v1

    goto :goto_3

    :cond_3
    move/from16 v18, p4

    :goto_3
    new-instance v2, Lokhttp3/internal/connection/ConnectPlan;

    iget-object v3, v0, Lokhttp3/internal/connection/ConnectPlan;->b:Lokhttp3/internal/concurrent/TaskRunner;

    iget-object v4, v0, Lokhttp3/internal/connection/ConnectPlan;->c:Lokhttp3/internal/connection/RealConnectionPool;

    iget v5, v0, Lokhttp3/internal/connection/ConnectPlan;->d:I

    iget v6, v0, Lokhttp3/internal/connection/ConnectPlan;->e:I

    iget v7, v0, Lokhttp3/internal/connection/ConnectPlan;->f:I

    iget v8, v0, Lokhttp3/internal/connection/ConnectPlan;->g:I

    iget v9, v0, Lokhttp3/internal/connection/ConnectPlan;->h:I

    iget-boolean v10, v0, Lokhttp3/internal/connection/ConnectPlan;->i:Z

    iget-object v11, v0, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v12, v0, Lokhttp3/internal/connection/ConnectPlan;->k:Lokhttp3/internal/connection/RealRoutePlanner;

    iget-object v13, v0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v14, v0, Lokhttp3/internal/connection/ConnectPlan;->m:Ljava/util/List;

    invoke-direct/range {v2 .. v18}, Lokhttp3/internal/connection/ConnectPlan;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIIZLokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILokhttp3/Request;IZ)V

    return-object v2
.end method


# virtual methods
.method public final a()Lokhttp3/internal/connection/RoutePlanner$Plan;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Lokhttp3/internal/connection/ConnectPlan;

    iget v15, v0, Lokhttp3/internal/connection/ConnectPlan;->p:I

    iget-boolean v2, v0, Lokhttp3/internal/connection/ConnectPlan;->q:Z

    move-object v3, v1

    iget-object v1, v0, Lokhttp3/internal/connection/ConnectPlan;->b:Lokhttp3/internal/concurrent/TaskRunner;

    move/from16 v16, v2

    iget-object v2, v0, Lokhttp3/internal/connection/ConnectPlan;->c:Lokhttp3/internal/connection/RealConnectionPool;

    move-object v4, v3

    iget v3, v0, Lokhttp3/internal/connection/ConnectPlan;->d:I

    move-object v5, v4

    iget v4, v0, Lokhttp3/internal/connection/ConnectPlan;->e:I

    move-object v6, v5

    iget v5, v0, Lokhttp3/internal/connection/ConnectPlan;->f:I

    move-object v7, v6

    iget v6, v0, Lokhttp3/internal/connection/ConnectPlan;->g:I

    move-object v8, v7

    iget v7, v0, Lokhttp3/internal/connection/ConnectPlan;->h:I

    move-object v9, v8

    iget-boolean v8, v0, Lokhttp3/internal/connection/ConnectPlan;->i:Z

    move-object v10, v9

    iget-object v9, v0, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    move-object v11, v10

    iget-object v10, v0, Lokhttp3/internal/connection/ConnectPlan;->k:Lokhttp3/internal/connection/RealRoutePlanner;

    move-object v12, v11

    iget-object v11, v0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    move-object v13, v12

    iget-object v12, v0, Lokhttp3/internal/connection/ConnectPlan;->m:Ljava/util/List;

    move-object v14, v13

    iget v13, v0, Lokhttp3/internal/connection/ConnectPlan;->n:I

    iget-object v0, v0, Lokhttp3/internal/connection/ConnectPlan;->o:Lokhttp3/Request;

    move-object/from16 v17, v14

    move-object v14, v0

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lokhttp3/internal/connection/ConnectPlan;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;IIIIIZLokhttp3/internal/connection/RealCall;Lokhttp3/internal/connection/RealRoutePlanner;Lokhttp3/Route;Ljava/util/List;ILokhttp3/Request;IZ)V

    return-object v0
.end method

.method public final b()Lokhttp3/internal/connection/RealConnection;
    .locals 4

    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->b:Lokhttp3/OkHttpClient;

    iget-object v0, v0, Lokhttp3/OkHttpClient;->B:Lokhttp3/internal/connection/RouteDatabase;

    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lokhttp3/internal/connection/RouteDatabase;->a:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->x:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/internal/connection/ConnectionListener;

    iget-object v2, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v3, p0, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->k:Lokhttp3/internal/connection/RealRoutePlanner;

    iget-object v2, p0, Lokhttp3/internal/connection/ConnectPlan;->m:Ljava/util/List;

    invoke-virtual {v1, p0, v2}, Lokhttp3/internal/connection/RealRoutePlanner;->g(Lokhttp3/internal/connection/ConnectPlan;Ljava/util/List;)Lokhttp3/internal/connection/ReusePlan;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lokhttp3/internal/connection/ReusePlan;->b:Lokhttp3/internal/connection/RealConnection;

    return-object p0

    :cond_0
    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->c:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    iget-object v2, v1, Lokhttp3/internal/connection/RealConnectionPool;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lokhttp3/internal/connection/RealConnectionPool;->d:Lokhttp3/internal/concurrent/TaskQueue;

    iget-object v1, v1, Lokhttp3/internal/connection/RealConnectionPool;->e:Lokhttp3/internal/connection/RealConnectionPool$cleanupTask$1;

    invoke-static {v2, v1}, Lokhttp3/internal/concurrent/TaskQueue;->e(Lokhttp3/internal/concurrent/TaskQueue;Lokhttp3/internal/concurrent/Task;)V

    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v1, v0}, Lokhttp3/internal/connection/RealCall;->b(Lokhttp3/internal/connection/RealConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v1, v1, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v1, v2, v0}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    iget-object v1, v0, Lokhttp3/internal/connection/RealConnection;->k:Lokhttp3/internal/connection/ConnectionListener;

    iget-object p0, p0, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/connection/ConnectPlan;->r:Z

    iget-object p0, p0, Lokhttp3/internal/connection/ConnectPlan;->s:Ljava/net/Socket;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public final d()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 17

    move-object/from16 v1, p0

    iget-object v6, v1, Lokhttp3/internal/connection/ConnectPlan;->s:Ljava/net/Socket;

    const/4 v13, 0x0

    if-eqz v6, :cond_13

    invoke-virtual {v1}, Lokhttp3/internal/connection/ConnectPlan;->isReady()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v1, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v0, v0, Lokhttp3/Route;->a:Lokhttp3/Address;

    iget-object v0, v0, Lokhttp3/Address;->k:Ljava/util/List;

    iget-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v2, v2, Lokhttp3/internal/connection/RealCall;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x0

    :try_start_0
    iget-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->o:Lokhttp3/Request;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lokhttp3/internal/connection/ConnectPlan;->i()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    move-result-object v2

    iget-object v3, v2, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->b:Lokhttp3/internal/connection/RoutePlanner$Plan;

    if-nez v3, :cond_0

    iget-object v3, v2, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;->c:Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object v12, v0

    move-object/from16 v16, v13

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object v0, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v1, Lokhttp3/internal/connection/ConnectPlan;->t:Ljava/net/Socket;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    :cond_1
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    return-object v2

    :cond_2
    :try_start_1
    iget-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v2, v2, Lokhttp3/Route;->a:Lokhttp3/Address;

    iget-object v3, v2, Lokhttp3/Address;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v15, 0x1

    const-string v4, "socket"

    if-eqz v3, :cond_6

    :try_start_2
    iget-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->w:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->c:Lokio/RealBufferedSource;

    iget-object v2, v2, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->Z0()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->w:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->d:Lokio/RealBufferedSink;

    iget-object v2, v2, Lokio/RealBufferedSink;->c:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->Z0()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v2, v2, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    iget-object v3, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v2, v3}, Lokhttp3/EventListener;->secureConnectStart(Lokhttp3/Call;)V

    iget-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v2, v2, Lokhttp3/Route;->a:Lokhttp3/Address;

    iget-object v3, v2, Lokhttp3/Address;->c:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, v2, Lokhttp3/Address;->i:Lokhttp3/HttpUrl;

    iget-object v5, v2, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    iget v2, v2, Lokhttp3/HttpUrl;->e:I

    invoke-virtual {v3, v6, v5, v2, v15}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1, v0, v2}, Lokhttp3/internal/connection/ConnectPlan;->l(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/connection/ConnectPlan;

    move-result-object v3

    iget v5, v3, Lokhttp3/internal/connection/ConnectPlan;->p:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/ConnectionSpec;

    invoke-virtual {v3, v0, v2}, Lokhttp3/internal/connection/ConnectPlan;->k(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/connection/ConnectPlan;

    move-result-object v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v0, v3, Lokhttp3/internal/connection/ConnectPlan;->q:Z

    invoke-virtual {v5, v2, v0}, Lokhttp3/ConnectionSpec;->a(Ljavax/net/ssl/SSLSocket;Z)V

    invoke-virtual {v1, v2, v5}, Lokhttp3/internal/connection/ConnectPlan;->h(Ljavax/net/ssl/SSLSocket;Lokhttp3/ConnectionSpec;)V

    iget-object v0, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    iget-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v3, v1, Lokhttp3/internal/connection/ConnectPlan;->u:Lokhttp3/Handshake;

    invoke-virtual {v0, v2, v3}, Lokhttp3/EventListener;->secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v16, v7

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v12, v0

    move-object/from16 v16, v7

    goto/16 :goto_3

    :cond_3
    :try_start_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v13

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v13

    :cond_6
    iput-object v6, v1, Lokhttp3/internal/connection/ConnectPlan;->t:Ljava/net/Socket;

    iget-object v0, v2, Lokhttp3/Address;->j:Ljava/util/List;

    sget-object v2, Lokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lokhttp3/Protocol;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_7
    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    :goto_1
    iput-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->v:Lokhttp3/Protocol;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v16, v13

    :goto_2
    :try_start_5
    new-instance v2, Lokhttp3/internal/connection/RealConnection;

    iget-object v3, v1, Lokhttp3/internal/connection/ConnectPlan;->b:Lokhttp3/internal/concurrent/TaskRunner;

    move-object v0, v4

    iget-object v4, v1, Lokhttp3/internal/connection/ConnectPlan;->c:Lokhttp3/internal/connection/RealConnectionPool;

    iget-object v5, v1, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v7, v1, Lokhttp3/internal/connection/ConnectPlan;->t:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v1, Lokhttp3/internal/connection/ConnectPlan;->u:Lokhttp3/Handshake;

    iget-object v9, v1, Lokhttp3/internal/connection/ConnectPlan;->v:Lokhttp3/Protocol;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v1, Lokhttp3/internal/connection/ConnectPlan;->w:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    if-eqz v10, :cond_8

    iget v11, v1, Lokhttp3/internal/connection/ConnectPlan;->h:I

    iget-object v0, v1, Lokhttp3/internal/connection/ConnectPlan;->c:Lokhttp3/internal/connection/RealConnectionPool;

    iget-object v12, v0, Lokhttp3/internal/connection/RealConnectionPool;->b:Lokhttp3/internal/connection/ConnectionListener;

    invoke-direct/range {v2 .. v12}, Lokhttp3/internal/connection/RealConnection;-><init>(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/internal/connection/RealConnectionPool;Lokhttp3/Route;Ljava/net/Socket;Ljava/net/Socket;Lokhttp3/Handshake;Lokhttp3/Protocol;Lokhttp3/internal/connection/BufferedSocket;ILokhttp3/internal/connection/ConnectionListener;)V

    iput-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->x:Lokhttp3/internal/connection/RealConnection;

    invoke-virtual {v2}, Lokhttp3/internal/connection/RealConnection;->h()V

    iget-object v0, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    iget-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v3, v1, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v4, v3, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    iget-object v3, v3, Lokhttp3/Route;->b:Ljava/net/Proxy;

    iget-object v5, v1, Lokhttp3/internal/connection/ConnectPlan;->v:Lokhttp3/Protocol;

    invoke-virtual {v0, v2, v4, v3, v5}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v0, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/RoutePlanner$Plan;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v2, v2, Lokhttp3/internal/connection/RealCall;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-object v0

    :catchall_1
    move-exception v0

    move v14, v15

    goto/16 :goto_5

    :catch_2
    move-exception v0

    move-object v12, v0

    move v14, v15

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v12, v0

    goto :goto_3

    :cond_8
    :try_start_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v13
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    :try_start_8
    iget-object v0, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v7, v0, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    iget-object v8, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v0, v1, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v9, v0, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    iget-object v10, v0, Lokhttp3/Route;->b:Ljava/net/Proxy;

    const/4 v11, 0x0

    invoke-virtual/range {v7 .. v12}, Lokhttp3/EventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    iget-object v0, v1, Lokhttp3/internal/connection/ConnectPlan;->c:Lokhttp3/internal/connection/RealConnectionPool;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->b:Lokhttp3/internal/connection/ConnectionListener;

    iget-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v3, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v1, Lokhttp3/internal/connection/ConnectPlan;->i:Z

    if-eqz v0, :cond_d

    instance-of v0, v12, Ljava/net/ProtocolException;

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    instance-of v0, v12, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_a

    goto :goto_4

    :cond_a
    instance-of v0, v12, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_b

    invoke-virtual {v12}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    instance-of v0, v12, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_c
    instance-of v0, v12, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_d

    move-object/from16 v13, v16

    :cond_d
    :goto_4
    new-instance v0, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    invoke-direct {v0, v1, v13, v12}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/RoutePlanner$Plan;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v2, v2, Lokhttp3/internal/connection/RealCall;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    if-nez v14, :cond_f

    iget-object v1, v1, Lokhttp3/internal/connection/ConnectPlan;->t:Ljava/net/Socket;

    if-eqz v1, :cond_e

    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    :cond_e
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    :cond_f
    return-object v0

    :goto_5
    iget-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v2, v2, Lokhttp3/internal/connection/RealCall;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    if-nez v14, :cond_11

    iget-object v1, v1, Lokhttp3/internal/connection/ConnectPlan;->t:Ljava/net/Socket;

    if-eqz v1, :cond_10

    invoke-static {v1}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    :cond_10
    invoke-static {v6}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    :cond_11
    throw v0

    :cond_12
    const-string v0, "already connected"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v13

    :cond_13
    const-string v0, "TCP not connected"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v13
.end method

.method public final e(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final f()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 14

    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->s:Ljava/net/Socket;

    if-nez v0, :cond_3

    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    iget-object v2, p0, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v3, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v4, v3, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    iget-object v3, v3, Lokhttp3/Route;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v2, v4, v3}, Lokhttp3/EventListener;->connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->c:Lokhttp3/internal/connection/RealConnectionPool;

    iget-object v0, v0, Lokhttp3/internal/connection/RealConnectionPool;->b:Lokhttp3/internal/connection/ConnectionListener;

    iget-object v2, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v3, p0, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lokhttp3/internal/connection/ConnectPlan;->g()V

    const/4 v1, 0x1

    new-instance v2, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    :try_start_3
    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/RoutePlanner$Plan;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p0, v3, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-object v2

    :catchall_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    :goto_1
    move-object p0, v0

    move-object v9, p0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, p0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, p0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v3, p0

    goto :goto_1

    :goto_2
    :try_start_4
    iget-object p0, v3, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v0, p0, Lokhttp3/Route;->a:Lokhttp3/Address;

    iget-object v0, v0, Lokhttp3/Address;->g:Ljava/net/Proxy;

    if-nez v0, :cond_0

    iget-object p0, p0, Lokhttp3/Route;->b:Ljava/net/Proxy;

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p0

    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq p0, v0, :cond_0

    iget-object p0, v3, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object p0, p0, Lokhttp3/Route;->a:Lokhttp3/Address;

    iget-object v0, p0, Lokhttp3/Address;->h:Ljava/net/ProxySelector;

    iget-object p0, p0, Lokhttp3/Address;->i:Lokhttp3/HttpUrl;

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->j()Ljava/net/URI;

    move-result-object p0

    iget-object v2, v3, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v2, v2, Lokhttp3/Route;->b:Ljava/net/Proxy;

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {v0, p0, v2, v9}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    iget-object p0, v3, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v4, p0, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    iget-object v5, v3, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object p0, v3, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v6, p0, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lokhttp3/Route;->b:Ljava/net/Proxy;

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Lokhttp3/EventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    iget-object p0, v3, Lokhttp3/internal/connection/ConnectPlan;->c:Lokhttp3/internal/connection/RealConnectionPool;

    iget-object p0, p0, Lokhttp3/internal/connection/RealConnectionPool;->b:Lokhttp3/internal/connection/ConnectionListener;

    iget-object v0, v3, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v2, v3, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object v11, v9

    move-object v9, v3

    :try_start_5
    invoke-direct/range {v8 .. v13}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/RoutePlanner$Plan;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object p0, v3, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object p0, p0, Lokhttp3/internal/connection/RealCall;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    if-nez v1, :cond_1

    iget-object p0, v3, Lokhttp3/internal/connection/ConnectPlan;->s:Ljava/net/Socket;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    :cond_1
    return-object v8

    :catchall_2
    move-exception v0

    move-object v3, v9

    goto :goto_0

    :goto_3
    iget-object v0, v3, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    if-nez v1, :cond_2

    iget-object v0, v3, Lokhttp3/internal/connection/ConnectPlan;->s:Ljava/net/Socket;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    :cond_2
    throw p0

    :cond_3
    const-string p0, "TCP already connected"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v0, v0, Lokhttp3/Route;->b:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lokhttp3/internal/connection/ConnectPlan$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v1, v1, Lokhttp3/Route;->b:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v0, v0, Lokhttp3/Route;->a:Lokhttp3/Address;

    iget-object v0, v0, Lokhttp3/Address;->b:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iput-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->s:Ljava/net/Socket;

    iget-boolean v1, p0, Lokhttp3/internal/connection/ConnectPlan;->r:Z

    if-nez v1, :cond_3

    iget v1, p0, Lokhttp3/internal/connection/ConnectPlan;->g:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    sget-object v1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lokhttp3/internal/platform/Platform;->b:Lokhttp3/internal/platform/Android10Platform;

    iget-object v2, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v2, v2, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    iget v3, p0, Lokhttp3/internal/connection/ConnectPlan;->f:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Lokio/internal/DefaultSocket;

    invoke-direct {v1, v0}, Lokio/internal/DefaultSocket;-><init>(Ljava/net/Socket;)V

    new-instance v0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;-><init>(Lokio/Socket;)V

    iput-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->w:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "throw with null exception"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/net/ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to connect to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object p0, p0, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_3
    const-string p0, "canceled"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-void
.end method

.method public final getRoute()Lokhttp3/Route;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    return-object p0
.end method

.method public final h(Ljavax/net/ssl/SSLSocket;Lokhttp3/ConnectionSpec;)V
    .locals 10

    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v0, v0, Lokhttp3/Route;->a:Lokhttp3/Address;

    :try_start_0
    iget-boolean v1, p2, Lokhttp3/ConnectionSpec;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lokhttp3/internal/platform/Platform;->b:Lokhttp3/internal/platform/Android10Platform;

    iget-object v3, v0, Lokhttp3/Address;->i:Lokhttp3/HttpUrl;

    iget-object v3, v3, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    iget-object v4, v0, Lokhttp3/Address;->j:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lokhttp3/internal/platform/Android10Platform;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lokhttp3/internal/platform/android/SocketAdapter;

    invoke-interface {v6, p1}, Lokhttp3/internal/platform/android/SocketAdapter;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_1
    move-object v5, v2

    :goto_0
    check-cast v5, Lokhttp3/internal/platform/android/SocketAdapter;

    if-eqz v5, :cond_2

    invoke-interface {v5, p1, v3, v4}, Lokhttp3/internal/platform/android/SocketAdapter;->c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    sget-object v3, Lokhttp3/Handshake;->e:Lokhttp3/Handshake$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lokhttp3/Handshake$Companion;->a(Ljavax/net/ssl/SSLSession;)Lokhttp3/Handshake;

    move-result-object v3

    iget-object v4, v0, Lokhttp3/Address;->d:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lokhttp3/Address;->i:Lokhttp3/HttpUrl;

    iget-object v5, v5, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v3}, Lokhttp3/Handshake;->a()Ljava/util/List;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/security/cert/X509Certificate;

    new-instance p2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n            |Hostname "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lokhttp3/Address;->i:Lokhttp3/HttpUrl;

    iget-object v0, v0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n            |    certificate: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lokhttp3/CertificatePinner;->c:Lokhttp3/CertificatePinner$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lokhttp3/CertificatePinner$Companion;->a(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n            |    DN: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n            |    subjectAltNames: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lokhttp3/internal/tls/OkHostnameVerifier;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lokhttp3/internal/tls/OkHostnameVerifier;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p0

    check-cast v0, Ljava/util/Collection;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n            "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hostname "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lokhttp3/Address;->i:Lokhttp3/HttpUrl;

    iget-object v0, v0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified (no certificates)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object v1, v0, Lokhttp3/Address;->e:Lokhttp3/CertificatePinner;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lokhttp3/Handshake;

    iget-object v5, v3, Lokhttp3/Handshake;->a:Lokhttp3/TlsVersion;

    iget-object v6, v3, Lokhttp3/Handshake;->b:Lokhttp3/CipherSuite;

    iget-object v7, v3, Lokhttp3/Handshake;->c:Ljava/util/List;

    new-instance v8, Lq;

    const/16 v9, 0x1c

    invoke-direct {v8, v1, v3, v0, v9}, Lq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v4, v5, v6, v7, v8}, Lokhttp3/Handshake;-><init>(Lokhttp3/TlsVersion;Lokhttp3/CipherSuite;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    iput-object v4, p0, Lokhttp3/internal/connection/ConnectPlan;->u:Lokhttp3/Handshake;

    iget-object v0, v0, Lokhttp3/Address;->i:Lokhttp3/HttpUrl;

    iget-object v0, v0, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    new-instance v3, Lw1;

    const/16 v5, 0x1a

    invoke-direct {v3, v4, v5}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v0, v3}, Lokhttp3/CertificatePinner;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    iget-boolean p2, p2, Lokhttp3/ConnectionSpec;->b:Z

    if-eqz p2, :cond_7

    sget-object p2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lokhttp3/internal/platform/Platform;->b:Lokhttp3/internal/platform/Android10Platform;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Lokhttp3/internal/platform/Android10Platform;->e:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lokhttp3/internal/platform/android/SocketAdapter;

    invoke-interface {v1, p1}, Lokhttp3/internal/platform/android/SocketAdapter;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_6
    move-object v0, v2

    :goto_2
    check-cast v0, Lokhttp3/internal/platform/android/SocketAdapter;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lokhttp3/internal/platform/android/SocketAdapter;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    iput-object p1, p0, Lokhttp3/internal/connection/ConnectPlan;->t:Ljava/net/Socket;

    new-instance p2, Lokio/internal/DefaultSocket;

    invoke-direct {p2, p1}, Lokio/internal/DefaultSocket;-><init>(Ljava/net/Socket;)V

    new-instance v0, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    invoke-direct {v0, p2}, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;-><init>(Lokio/Socket;)V

    iput-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->w:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    if-eqz v2, :cond_8

    sget-object p2, Lokhttp3/Protocol;->Companion:Lokhttp3/Protocol$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lokhttp3/Protocol$Companion;->a(Ljava/lang/String;)Lokhttp3/Protocol;

    move-result-object p2

    goto :goto_3

    :cond_8
    sget-object p2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    :goto_3
    iput-object p2, p0, Lokhttp3/internal/connection/ConnectPlan;->v:Lokhttp3/Protocol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lokhttp3/internal/platform/Platform;->b:Lokhttp3/internal/platform/Android10Platform;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :goto_4
    sget-object p2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lokhttp3/internal/platform/Platform;->b:Lokhttp3/internal/platform/Android10Platform;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    throw p0
.end method

.method public final i()Lokhttp3/internal/connection/RoutePlanner$ConnectResult;
    .locals 14

    iget-object v0, p0, Lokhttp3/internal/connection/ConnectPlan;->o:Lokhttp3/Request;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v2, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    iget-object v2, v2, Lokhttp3/Address;->i:Lokhttp3/HttpUrl;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CONNECT "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lokhttp3/internal/_UtilJvmKt;->i(Lokhttp3/HttpUrl;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " HTTP/1.1"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Lokhttp3/internal/http1/Http1ExchangeCodec;

    iget-object v5, p0, Lokhttp3/internal/connection/ConnectPlan;->w:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    const-string v6, "socket"

    const/4 v7, 0x0

    if-eqz v5, :cond_a

    invoke-direct {v3, v7, p0, v5}, Lokhttp3/internal/http1/Http1ExchangeCodec;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/internal/http/ExchangeCodec$Carrier;Lokhttp3/internal/connection/BufferedSocket;)V

    iget-object v5, p0, Lokhttp3/internal/connection/ConnectPlan;->w:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    if-eqz v5, :cond_9

    iget-object v5, v5, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->c:Lokio/RealBufferedSource;

    iget-object v5, v5, Lokio/RealBufferedSource;->b:Lokio/Source;

    invoke-interface {v5}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v5

    iget v8, p0, Lokhttp3/internal/connection/ConnectPlan;->d:I

    int-to-long v8, v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v8, v9, v10}, Lokio/Timeout;->g(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-object v5, p0, Lokhttp3/internal/connection/ConnectPlan;->w:Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;

    if-eqz v5, :cond_8

    iget-object v5, v5, Lokhttp3/internal/connection/BufferedSocketKt$asBufferedSocket$1;->d:Lokio/RealBufferedSink;

    iget-object v5, v5, Lokio/RealBufferedSink;->b:Lokio/Sink;

    invoke-interface {v5}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v5

    iget v6, p0, Lokhttp3/internal/connection/ConnectPlan;->e:I

    int-to-long v8, v6

    invoke-virtual {v5, v8, v9, v10}, Lokio/Timeout;->g(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    iget-object v5, v0, Lokhttp3/Request;->c:Lokhttp3/Headers;

    invoke-virtual {v3, v5, v2}, Lokhttp3/internal/http1/Http1ExchangeCodec;->n(Lokhttp3/Headers;Ljava/lang/String;)V

    invoke-virtual {v3}, Lokhttp3/internal/http1/Http1ExchangeCodec;->a()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lokhttp3/internal/http1/Http1ExchangeCodec;->g(Z)Lokhttp3/Response$Builder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v5, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    invoke-virtual {v5}, Lokhttp3/Response$Builder;->a()Lokhttp3/Response;

    move-result-object v0

    iget v5, v0, Lokhttp3/Response;->e:I

    invoke-virtual {v3, v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->m(Lokhttp3/Response;)V

    const/16 v3, 0xc8

    if-eq v5, v3, :cond_4

    const/16 v3, 0x197

    if-ne v5, v3, :cond_3

    iget-object v3, v1, Lokhttp3/Route;->a:Lokhttp3/Address;

    iget-object v3, v3, Lokhttp3/Address;->f:Lokhttp3/Authenticator;

    invoke-interface {v3, v1, v0}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v5, "Connection"

    iget-object v0, v0, Lokhttp3/Response;->g:Lokhttp3/Headers;

    invoke-virtual {v0, v5}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v7

    :cond_0
    const-string v5, "close"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    const-string p0, "Failed to authenticate with proxy"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object v7

    :cond_3
    const-string p0, "Unexpected response code for CONNECT: "

    invoke-static {v5, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-object v7

    :cond_4
    move-object v2, v7

    :goto_1
    if-nez v2, :cond_5

    new-instance v8, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    const/4 v12, 0x6

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/RoutePlanner$Plan;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_5
    move-object v1, p0

    iget-object p0, v1, Lokhttp3/internal/connection/ConnectPlan;->s:Ljava/net/Socket;

    if-eqz p0, :cond_6

    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt;->c(Ljava/net/Socket;)V

    :cond_6
    iget p0, v1, Lokhttp3/internal/connection/ConnectPlan;->n:I

    add-int/2addr p0, v4

    const/16 v0, 0x15

    if-ge p0, v0, :cond_7

    iget-object v0, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v0, v0, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    iget-object v3, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v4, v1, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v5, v4, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    iget-object v4, v4, Lokhttp3/Route;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v3, v5, v4, v7}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    new-instance v6, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v3, 0x0

    move-object v0, v1

    move v1, p0

    invoke-static/range {v0 .. v5}, Lokhttp3/internal/connection/ConnectPlan;->j(Lokhttp3/internal/connection/ConnectPlan;ILokhttp3/Request;IZI)Lokhttp3/internal/connection/ConnectPlan;

    move-result-object v2

    move-object v1, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/RoutePlanner$Plan;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_7
    new-instance v3, Ljava/net/ProtocolException;

    const-string p0, "Too many tunnel connections attempted: 21"

    invoke-direct {v3, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    iget-object p0, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object v2, p0, Lokhttp3/internal/connection/RealCall;->f:Lokhttp3/EventListener;

    move-object v7, v3

    iget-object v3, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    iget-object p0, v1, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v4, p0, Lokhttp3/Route;->c:Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lokhttp3/Route;->b:Ljava/net/Proxy;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lokhttp3/EventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    iget-object p0, v1, Lokhttp3/internal/connection/ConnectPlan;->c:Lokhttp3/internal/connection/RealConnectionPool;

    iget-object p0, p0, Lokhttp3/internal/connection/RealConnectionPool;->b:Lokhttp3/internal/connection/ConnectionListener;

    iget-object v0, v1, Lokhttp3/internal/connection/ConnectPlan;->l:Lokhttp3/Route;

    iget-object v2, v1, Lokhttp3/internal/connection/ConnectPlan;->j:Lokhttp3/internal/connection/RealCall;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/connection/RoutePlanner$ConnectResult;-><init>(Lokhttp3/internal/connection/RoutePlanner$Plan;Lokhttp3/internal/connection/RoutePlanner$Plan;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_8
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_9
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_a
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7
.end method

.method public final isReady()Z
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/connection/ConnectPlan;->v:Lokhttp3/Protocol;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/connection/ConnectPlan;
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lokhttp3/internal/connection/ConnectPlan;->p:I

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v6, v1

    :goto_0
    if-ge v6, v2, :cond_4

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/ConnectionSpec;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v1, Lokhttp3/ConnectionSpec;->a:Z

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v1, Lokhttp3/ConnectionSpec;->d:[Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lkotlin/comparisons/ComparisonsKt;->c()Ljava/util/Comparator;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lokhttp3/internal/_UtilCommonKt;->h([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lokhttp3/ConnectionSpec;->c:[Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lokhttp3/CipherSuite;->b:Lokhttp3/CipherSuite$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lokhttp3/CipherSuite;->c:Lokhttp3/CipherSuite$Companion$ORDER_BY_NAME$1;

    invoke-static {v1, v3, v4}, Lokhttp3/internal/_UtilCommonKt;->h([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    if-eq v0, p1, :cond_3

    const/4 p1, 0x1

    :goto_2
    move v7, p1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :goto_3
    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lokhttp3/internal/connection/ConnectPlan;->j(Lokhttp3/internal/connection/ConnectPlan;ILokhttp3/Request;IZI)Lokhttp3/internal/connection/ConnectPlan;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final l(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/connection/ConnectPlan;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lokhttp3/internal/connection/ConnectPlan;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/connection/ConnectPlan;->k(Ljava/util/List;Ljavax/net/ssl/SSLSocket;)Lokhttp3/internal/connection/ConnectPlan;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/net/UnknownServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to find acceptable protocols. isFallback="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lokhttp3/internal/connection/ConnectPlan;->q:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", modes="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, ", supported protocols="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
