.class public final Lcom/bumptech/glide/request/SingleRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/Request;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;
.implements Lcom/bumptech/glide/request/ResourceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/SingleRequest$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/Request;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;",
        "Lcom/bumptech/glide/request/ResourceCallback;"
    }
.end annotation


# static fields
.field public static final z:Z


# instance fields
.field public final a:Lcom/bumptech/glide/util/pool/StateVerifier;

.field public final b:Ljava/lang/Object;

.field public final c:Lcom/bumptech/glide/request/RequestCoordinator;

.field public final d:Lcom/bumptech/glide/GlideContext;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Class;

.field public final g:Lcom/bumptech/glide/request/BaseRequestOptions;

.field public final h:I

.field public final i:I

.field public final j:Lcom/bumptech/glide/Priority;

.field public final k:Lcom/bumptech/glide/request/target/Target;

.field public final l:Ljava/util/List;

.field public final m:Lcom/bumptech/glide/request/transition/TransitionFactory;

.field public final n:Ljava/util/concurrent/Executor;

.field public o:Lcom/bumptech/glide/load/engine/Resource;

.field public p:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

.field public volatile q:Lcom/bumptech/glide/load/engine/Engine;

.field public r:Lcom/bumptech/glide/request/SingleRequest$Status;

.field public s:Landroid/graphics/drawable/Drawable;

.field public t:Landroid/graphics/drawable/Drawable;

.field public u:Landroid/graphics/drawable/Drawable;

.field public v:I

.field public w:I

.field public x:Z

.field public final y:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GlideRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->z:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/bumptech/glide/request/BaseRequestOptions;IILcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;Ljava/util/ArrayList;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/request/transition/TransitionFactory;)V
    .locals 1

    sget-object p1, Lcom/bumptech/glide/util/Executors;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/bumptech/glide/request/SingleRequest;->z:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/bumptech/glide/util/pool/StateVerifier;->a()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->a:Lcom/bumptech/glide/util/pool/StateVerifier;

    iput-object p3, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->d:Lcom/bumptech/glide/GlideContext;

    iput-object p4, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Ljava/lang/Class;

    iput-object p6, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Lcom/bumptech/glide/request/BaseRequestOptions;

    iput p7, p0, Lcom/bumptech/glide/request/SingleRequest;->h:I

    iput p8, p0, Lcom/bumptech/glide/request/SingleRequest;->i:I

    iput-object p9, p0, Lcom/bumptech/glide/request/SingleRequest;->j:Lcom/bumptech/glide/Priority;

    iput-object p10, p0, Lcom/bumptech/glide/request/SingleRequest;->k:Lcom/bumptech/glide/request/target/Target;

    iput-object p11, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Ljava/util/List;

    iput-object p12, p0, Lcom/bumptech/glide/request/SingleRequest;->c:Lcom/bumptech/glide/request/RequestCoordinator;

    iput-object p13, p0, Lcom/bumptech/glide/request/SingleRequest;->q:Lcom/bumptech/glide/load/engine/Engine;

    iput-object p14, p0, Lcom/bumptech/glide/request/SingleRequest;->m:Lcom/bumptech/glide/request/transition/TransitionFactory;

    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->n:Ljava/util/concurrent/Executor;

    sget-object p1, Lcom/bumptech/glide/request/SingleRequest$Status;->PENDING:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/request/SingleRequest$Status;

    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->y:Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    iget-object p1, p2, Lcom/bumptech/glide/GlideContext;->h:Lcom/bumptech/glide/GlideExperiments;

    const-class p2, Lcom/bumptech/glide/GlideBuilder$LogRequestOrigins;

    iget-object p1, p1, Lcom/bumptech/glide/GlideExperiments;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Glide request origin trace"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->y:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final begin()V
    .locals 5

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/bumptech/glide/request/SingleRequest;->x:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->a:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v1}, Lcom/bumptech/glide/util/pool/StateVerifier;->b()V

    sget v1, Lcom/bumptech/glide/util/LogTime;->a:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Ljava/lang/Object;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->h:I

    iget v2, p0, Lcom/bumptech/glide/request/SingleRequest;->i:I

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/Util;->i(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->h:I

    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->v:I

    iget v1, p0, Lcom/bumptech/glide/request/SingleRequest;->i:I

    iput v1, p0, Lcom/bumptech/glide/request/SingleRequest;->w:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->u:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->u:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->u:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    :goto_1
    new-instance v2, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v3, "Received null model"

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Lcom/bumptech/glide/request/SingleRequest;->j(Lcom/bumptech/glide/load/engine/GlideException;I)V

    monitor-exit v0

    return-void

    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v1, v2, :cond_d

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->o:Lcom/bumptech/glide/load/engine/Resource;

    sget-object v2, Lcom/bumptech/glide/load/DataSource;->MEMORY_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {p0, v1, v2, v3}, Lcom/bumptech/glide/request/SingleRequest;->c(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;Z)V

    monitor-exit v0

    return-void

    :cond_4
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Ljava/util/List;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/request/RequestListener;

    goto :goto_2

    :cond_6
    :goto_3
    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/request/SingleRequest$Status;

    iget v2, p0, Lcom/bumptech/glide/request/SingleRequest;->h:I

    iget v4, p0, Lcom/bumptech/glide/request/SingleRequest;->i:I

    invoke-static {v2, v4}, Lcom/bumptech/glide/util/Util;->i(II)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/bumptech/glide/request/SingleRequest;->h:I

    iget v4, p0, Lcom/bumptech/glide/request/SingleRequest;->i:I

    invoke-virtual {p0, v2, v4}, Lcom/bumptech/glide/request/SingleRequest;->e(II)V

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->k:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v2, p0}, Lcom/bumptech/glide/request/target/Target;->c(Lcom/bumptech/glide/request/SingleRequest;)V

    :goto_4
    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v4, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v2, v4, :cond_8

    if-ne v2, v1, :cond_b

    :cond_8
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->c:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v1, :cond_9

    invoke-interface {v1, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->c(Lcom/bumptech/glide/request/Request;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    const/4 v3, 0x1

    :cond_a
    if-eqz v3, :cond_b

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->k:Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->i()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/bumptech/glide/request/target/Target;->d(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    sget-boolean p0, Lcom/bumptech/glide/request/SingleRequest;->z:Z

    if-eqz p0, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    :cond_c
    monitor-exit v0

    return-void

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot restart a running request"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final c(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;Z)V
    .locals 7

    const-string v0, "Expected to receive an object of "

    const-string v1, "Expected to receive a Resource<R> with an object of "

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->a:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v2}, Lcom/bumptech/glide/util/pool/StateVerifier;->b()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iput-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    const/4 v4, 0x5

    if-nez p1, :cond_0

    new-instance p1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " inside, but instead got null."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v4}, Lcom/bumptech/glide/request/SingleRequest;->j(Lcom/bumptech/glide/load/engine/GlideException;I)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->c:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->d(Lcom/bumptech/glide/request/Request;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :try_start_2
    iput-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->o:Lcom/bumptech/glide/load/engine/Resource;

    sget-object p2, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/request/SingleRequest$Status;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->q:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/Engine;->g(Lcom/bumptech/glide/load/engine/Resource;)V

    return-void

    :catchall_1
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_5

    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/bumptech/glide/request/SingleRequest;->k(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Z)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :cond_4
    :goto_2
    :try_start_4
    iput-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->o:Lcom/bumptech/glide/load/engine/Resource;

    new-instance p2, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Ljava/lang/Class;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " but instead got "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_3

    :cond_5
    const-string v0, ""

    :goto_3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "} inside Resource{"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6

    const-string v0, ""

    goto :goto_4

    :cond_6
    const-string v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_4
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v4}, Lcom/bumptech/glide/request/SingleRequest;->j(Lcom/bumptech/glide/load/engine/GlideException;I)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_5
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v2, :cond_7

    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->q:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/bumptech/glide/load/engine/Engine;->g(Lcom/bumptech/glide/load/engine/Resource;)V

    :cond_7
    throw p1
.end method

.method public final clear()V
    .locals 5

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/bumptech/glide/request/SingleRequest;->x:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->a:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v1}, Lcom/bumptech/glide/util/pool/StateVerifier;->b()V

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/request/SingleRequest;->x:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->a:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v1}, Lcom/bumptech/glide/util/pool/StateVerifier;->b()V

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->k:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v1, p0}, Lcom/bumptech/glide/request/target/Target;->b(Lcom/bumptech/glide/request/SingleRequest;)V

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->a()V

    iput-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->o:Lcom/bumptech/glide/load/engine/Resource;

    if-eqz v1, :cond_2

    iput-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->o:Lcom/bumptech/glide/load/engine/Resource;

    move-object v3, v1

    :cond_2
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->c:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v1, :cond_3

    invoke-interface {v1, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->i(Lcom/bumptech/glide/request/Request;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->k:Lcom/bumptech/glide/request/target/Target;

    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->i()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/bumptech/glide/request/target/Target;->e(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iput-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/request/SingleRequest$Status;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_5

    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->q:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/bumptech/glide/load/engine/Engine;->g(Lcom/bumptech/glide/load/engine/Resource;)V

    :cond_5
    return-void

    :cond_6
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final d(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/request/SingleRequest;->j(Lcom/bumptech/glide/load/engine/GlideException;I)V

    return-void
.end method

.method public final e(II)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->a:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v3}, Lcom/bumptech/glide/util/pool/StateVerifier;->b()V

    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-boolean v20, Lcom/bumptech/glide/request/SingleRequest;->z:Z

    if-eqz v20, :cond_0

    sget v4, Lcom/bumptech/glide/util/LogTime;->a:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    goto :goto_1

    :goto_0
    move-object v1, v3

    goto/16 :goto_5

    :cond_0
    :goto_1
    iget-object v4, v0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v5, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v4, v5, :cond_1

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v4, v0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/request/SingleRequest$Status;

    iget-object v5, v0, Lcom/bumptech/glide/request/SingleRequest;->g:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v5, -0x80000000

    const/high16 v6, 0x3f800000    # 1.0f

    if-ne v1, v5, :cond_2

    goto :goto_2

    :cond_2
    int-to-float v1, v1

    mul-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_2
    iput v1, v0, Lcom/bumptech/glide/request/SingleRequest;->v:I

    if-ne v2, v5, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    int-to-float v1, v2

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_3
    iput v1, v0, Lcom/bumptech/glide/request/SingleRequest;->w:I

    if-eqz v20, :cond_4

    sget v1, Lcom/bumptech/glide/util/LogTime;->a:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    :cond_4
    iget-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->q:Lcom/bumptech/glide/load/engine/Engine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    :try_start_1
    iget-object v3, v0, Lcom/bumptech/glide/request/SingleRequest;->d:Lcom/bumptech/glide/GlideContext;

    move-object v5, v4

    iget-object v4, v0, Lcom/bumptech/glide/request/SingleRequest;->e:Ljava/lang/Object;

    iget-object v6, v0, Lcom/bumptech/glide/request/SingleRequest;->g:Lcom/bumptech/glide/request/BaseRequestOptions;

    move-object v7, v5

    iget-object v5, v6, Lcom/bumptech/glide/request/BaseRequestOptions;->h:Lcom/bumptech/glide/load/Key;

    iget v8, v0, Lcom/bumptech/glide/request/SingleRequest;->v:I

    move-object v9, v7

    iget v7, v0, Lcom/bumptech/glide/request/SingleRequest;->w:I

    move v10, v8

    iget-object v8, v6, Lcom/bumptech/glide/request/BaseRequestOptions;->m:Ljava/lang/Class;

    move-object v11, v9

    iget-object v9, v0, Lcom/bumptech/glide/request/SingleRequest;->f:Ljava/lang/Class;

    move v12, v10

    iget-object v10, v0, Lcom/bumptech/glide/request/SingleRequest;->j:Lcom/bumptech/glide/Priority;

    move-object v13, v11

    iget-object v11, v6, Lcom/bumptech/glide/request/BaseRequestOptions;->c:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move v14, v12

    iget-object v12, v6, Lcom/bumptech/glide/request/BaseRequestOptions;->l:Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    move-object v15, v13

    iget-boolean v13, v6, Lcom/bumptech/glide/request/BaseRequestOptions;->i:Z

    move/from16 v16, v14

    iget-boolean v14, v6, Lcom/bumptech/glide/request/BaseRequestOptions;->q:Z

    move-object/from16 v17, v15

    iget-object v15, v6, Lcom/bumptech/glide/request/BaseRequestOptions;->k:Lcom/bumptech/glide/load/Options;

    move-object/from16 v18, v2

    iget-boolean v2, v6, Lcom/bumptech/glide/request/BaseRequestOptions;->e:Z

    iget-boolean v6, v6, Lcom/bumptech/glide/request/BaseRequestOptions;->r:Z

    move/from16 v19, v2

    iget-object v2, v0, Lcom/bumptech/glide/request/SingleRequest;->n:Ljava/util/concurrent/Executor;

    move-object/from16 v21, v18

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v17, v6

    move/from16 v6, v16

    move/from16 v16, v19

    move-object/from16 v19, v2

    move-object/from16 v2, v21

    invoke-virtual/range {v2 .. v19}, Lcom/bumptech/glide/load/engine/Engine;->d(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/util/CachedHashCodeArrayMap;ZZLcom/bumptech/glide/load/Options;ZZLcom/bumptech/glide/request/SingleRequest;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-result-object v2

    move-object/from16 v3, v18

    iput-object v2, v3, Lcom/bumptech/glide/request/SingleRequest;->p:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    iget-object v2, v3, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq v2, v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, v3, Lcom/bumptech/glide/request/SingleRequest;->p:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_4
    if-eqz v20, :cond_6

    sget v0, Lcom/bumptech/glide/util/LogTime;->a:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    :cond_6
    monitor-exit v1

    return-void

    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->CLEARED:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->a:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->b()V

    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final h(Lcom/bumptech/glide/request/Request;)Z
    .locals 14

    instance-of v0, p1, Lcom/bumptech/glide/request/SingleRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v2, p0, Lcom/bumptech/glide/request/SingleRequest;->h:I

    iget v3, p0, Lcom/bumptech/glide/request/SingleRequest;->i:I

    iget-object v4, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Ljava/lang/Object;

    iget-object v5, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Ljava/lang/Class;

    iget-object v6, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Lcom/bumptech/glide/request/BaseRequestOptions;

    iget-object v7, p0, Lcom/bumptech/glide/request/SingleRequest;->j:Lcom/bumptech/glide/Priority;

    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    move p0, v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, Lcom/bumptech/glide/request/SingleRequest;

    iget-object v8, p1, Lcom/bumptech/glide/request/SingleRequest;->b:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget v0, p1, Lcom/bumptech/glide/request/SingleRequest;->h:I

    iget v9, p1, Lcom/bumptech/glide/request/SingleRequest;->i:I

    iget-object v10, p1, Lcom/bumptech/glide/request/SingleRequest;->e:Ljava/lang/Object;

    iget-object v11, p1, Lcom/bumptech/glide/request/SingleRequest;->f:Ljava/lang/Class;

    iget-object v12, p1, Lcom/bumptech/glide/request/SingleRequest;->g:Lcom/bumptech/glide/request/BaseRequestOptions;

    iget-object v13, p1, Lcom/bumptech/glide/request/SingleRequest;->j:Lcom/bumptech/glide/Priority;

    iget-object p1, p1, Lcom/bumptech/glide/request/SingleRequest;->l:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_2
    move p1, v1

    :goto_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v2, v0, :cond_8

    if-ne v3, v9, :cond_8

    const/4 v0, 0x1

    if-nez v4, :cond_4

    if-nez v10, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    instance-of v2, v4, Lcom/bumptech/glide/load/model/Model;

    if-eqz v2, :cond_5

    check-cast v4, Lcom/bumptech/glide/load/model/Model;

    invoke-interface {v4}, Lcom/bumptech/glide/load/model/Model;->a()Z

    move-result v2

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_8

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v6, :cond_7

    if-nez v12, :cond_6

    move v2, v0

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_3

    :cond_7
    invoke-virtual {v6, v12}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/request/BaseRequestOptions;)Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_8

    if-ne v7, v13, :cond_8

    if-ne p0, p1, :cond_8

    return v0

    :cond_8
    :goto_4
    return v1

    :goto_5
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_6
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final i()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->t:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final isRunning()Z
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/request/SingleRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->RUNNING:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-eq p0, v1, :cond_1

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/SingleRequest$Status;

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j(Lcom/bumptech/glide/load/engine/GlideException;I)V
    .locals 9

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->a:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->d:Lcom/bumptech/glide/GlideContext;

    iget v1, v1, Lcom/bumptech/glide/GlideContext;->i:I

    const/4 v2, 0x0

    if-gt v1, p2, :cond_0

    iget-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 p2, 0x4

    if-gt v1, p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lcom/bumptech/glide/load/engine/GlideException;->a(Ljava/lang/Throwable;Ljava/util/ArrayList;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    move v3, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->p:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    sget-object v1, Lcom/bumptech/glide/request/SingleRequest$Status;->FAILED:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/request/SingleRequest$Status;

    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->c:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->e(Lcom/bumptech/glide/request/Request;)V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bumptech/glide/request/SingleRequest;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Ljava/util/List;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/request/RequestListener;

    iget-object v6, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Ljava/lang/Object;

    iget-object v7, p0, Lcom/bumptech/glide/request/SingleRequest;->k:Lcom/bumptech/glide/request/target/Target;

    iget-object v8, p0, Lcom/bumptech/glide/request/SingleRequest;->c:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v8, :cond_3

    invoke-interface {v8}, Lcom/bumptech/glide/request/RequestCoordinator;->getRoot()Lcom/bumptech/glide/request/RequestCoordinator;

    move-result-object v8

    invoke-interface {v8}, Lcom/bumptech/glide/request/RequestCoordinator;->b()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    move v8, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v1

    :goto_3
    invoke-interface {v5, p1, v6, v7, v8}, Lcom/bumptech/glide/request/RequestListener;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v5

    or-int/2addr v4, v5

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_7

    :cond_4
    move v4, v2

    :cond_5
    if-nez v4, :cond_e

    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->c:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz p1, :cond_7

    invoke-interface {p1, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->c(Lcom/bumptech/glide/request/Request;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :cond_7
    :goto_4
    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Ljava/lang/Object;

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->u:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->u:Landroid/graphics/drawable/Drawable;

    :cond_9
    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->u:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_a
    move-object p1, p2

    :goto_5
    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->s:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->g:Lcom/bumptech/glide/request/BaseRequestOptions;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->s:Landroid/graphics/drawable/Drawable;

    :cond_b
    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->s:Landroid/graphics/drawable/Drawable;

    :cond_c
    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->i()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_d
    iget-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->k:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/request/target/Target;->h(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_e
    :goto_6
    :try_start_2
    iput-boolean v2, p0, Lcom/bumptech/glide/request/SingleRequest;->x:Z

    monitor-exit v0

    return-void

    :goto_7
    iput-boolean v2, p0, Lcom/bumptech/glide/request/SingleRequest;->x:Z

    throw p1

    :goto_8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final k(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Z)V
    .locals 9

    const/4 p4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->c:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bumptech/glide/request/RequestCoordinator;->getRoot()Lcom/bumptech/glide/request/RequestCoordinator;

    move-result-object v2

    invoke-interface {v2}, Lcom/bumptech/glide/request/RequestCoordinator;->b()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v8, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v8, p4

    :goto_1
    sget-object v2, Lcom/bumptech/glide/request/SingleRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->r:Lcom/bumptech/glide/request/SingleRequest$Status;

    iput-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->o:Lcom/bumptech/glide/load/engine/Resource;

    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->d:Lcom/bumptech/glide/GlideContext;

    iget p1, p1, Lcom/bumptech/glide/GlideContext;->i:I

    const/4 v2, 0x3

    if-gt p1, v2, :cond_2

    invoke-static {p3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget p1, Lcom/bumptech/glide/util/LogTime;->a:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->g(Lcom/bumptech/glide/request/Request;)V

    :cond_3
    iput-boolean p4, p0, Lcom/bumptech/glide/request/SingleRequest;->x:Z

    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->l:Ljava/util/List;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p4, v1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/bumptech/glide/request/RequestListener;

    iget-object v5, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Ljava/lang/Object;

    iget-object v6, p0, Lcom/bumptech/glide/request/SingleRequest;->k:Lcom/bumptech/glide/request/target/Target;

    move-object v4, p2

    move-object v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/bumptech/glide/request/RequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/load/DataSource;Z)Z

    move-result p2

    or-int/2addr p2, p4

    instance-of p3, v3, Lcom/bumptech/glide/request/ExperimentalRequestListener;

    if-eqz p3, :cond_4

    check-cast v3, Lcom/bumptech/glide/request/ExperimentalRequestListener;

    invoke-virtual {v3}, Lcom/bumptech/glide/request/ExperimentalRequestListener;->a()Z

    move-result p3

    or-int/2addr p2, p3

    :cond_4
    move p4, p2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_6

    :goto_3
    move-object p2, v4

    move-object p3, v7

    goto :goto_2

    :cond_5
    :goto_4
    move-object v4, p2

    goto :goto_5

    :cond_6
    move p4, v1

    goto :goto_4

    :goto_5
    if-nez p4, :cond_7

    iget-object p1, p0, Lcom/bumptech/glide/request/SingleRequest;->m:Lcom/bumptech/glide/request/transition/TransitionFactory;

    invoke-interface {p1}, Lcom/bumptech/glide/request/transition/TransitionFactory;->build()Lcom/bumptech/glide/request/transition/NoTransition;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/request/SingleRequest;->k:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {p2, v4, p1}, Lcom/bumptech/glide/request/target/Target;->f(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    iput-boolean v1, p0, Lcom/bumptech/glide/request/SingleRequest;->x:Z

    return-void

    :goto_6
    iput-boolean v1, p0, Lcom/bumptech/glide/request/SingleRequest;->x:Z

    throw p1
.end method

.method public final pause()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/request/SingleRequest;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/request/SingleRequest;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/request/SingleRequest;->e:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/request/SingleRequest;->f:Ljava/lang/Class;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "[model="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", transcodeClass="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
