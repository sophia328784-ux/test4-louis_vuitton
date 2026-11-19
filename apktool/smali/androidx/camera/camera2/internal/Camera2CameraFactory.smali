.class public final Landroidx/camera/camera2/internal/Camera2CameraFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraFactory;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;

.field public final c:Landroidx/camera/core/impl/CameraThreadConfig;

.field public final d:Landroidx/camera/core/impl/CameraStateRegistry;

.field public final e:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

.field public final f:Landroidx/camera/camera2/internal/DisplayInfoManager;

.field public final g:J

.field public final h:Ljava/util/HashMap;

.field public final i:Landroidx/camera/core/internal/StreamSpecsCalculator;

.field public final j:Landroidx/camera/core/CameraXConfig;

.field public final k:Landroidx/camera/camera2/internal/Camera2PresenceSource;

.field public final l:Landroidx/camera/core/CameraSelector;

.field public final m:Ljava/lang/Object;

.field public n:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/core/CameraSelector;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/InitializationException;
        }
    .end annotation

    const/4 v6, 0x0

    .line 114
    sget-object v7, Landroidx/camera/core/internal/StreamSpecsCalculator;->a:Landroidx/camera/core/internal/StreamSpecsCalculator$Companion$NO_OP_STREAM_SPECS_CALCULATOR$1;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, Landroidx/camera/camera2/internal/Camera2CameraFactory;-><init>(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/core/CameraSelector;JLandroidx/camera/core/CameraXConfig;Landroidx/camera/core/internal/StreamSpecsCalculator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/core/CameraSelector;JLandroidx/camera/core/CameraXConfig;Landroidx/camera/core/internal/StreamSpecsCalculator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/InitializationException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->m:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->n:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->c:Landroidx/camera/core/impl/CameraThreadConfig;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->a(Landroid/content/Context;)Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->e:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    invoke-static {p1}, Landroidx/camera/camera2/internal/DisplayInfoManager;->b(Landroid/content/Context;)Landroidx/camera/camera2/internal/DisplayInfoManager;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->f:Landroidx/camera/camera2/internal/DisplayInfoManager;

    new-instance p1, Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;

    invoke-direct {p1, v0}, Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;-><init>(Landroidx/camera/camera2/internal/compat/CameraManagerCompat;)V

    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->b:Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;

    new-instance v1, Landroidx/camera/core/impl/CameraStateRegistry;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Landroidx/camera/core/impl/CameraStateRegistry;-><init>(Landroidx/camera/core/concurrent/CameraCoordinator;I)V

    iput-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->d:Landroidx/camera/core/impl/CameraStateRegistry;

    iget-object v2, p1, Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object p1, p1, Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-wide p4, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->g:J

    iput-object p7, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->i:Landroidx/camera/core/internal/StreamSpecsCalculator;

    iput-object p6, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->j:Landroidx/camera/core/CameraXConfig;

    iput-object p3, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->l:Landroidx/camera/core/CameraSelector;

    :try_start_1
    iget-object p1, v0, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->a:Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;

    invoke-interface {p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat$CameraManagerCompatImpl;->b()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catch Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat; {:try_start_1 .. :try_end_1} :catch_0

    new-instance p3, Landroidx/camera/camera2/internal/Camera2PresenceSource;

    invoke-virtual {p2}, Landroidx/camera/core/impl/CameraThreadConfig;->b()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-direct {p3, p1, v0, p2}, Landroidx/camera/camera2/internal/Camera2PresenceSource;-><init>(Ljava/util/List;Landroidx/camera/camera2/internal/compat/CameraManagerCompat;Ljava/util/concurrent/Executor;)V

    iput-object p3, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->k:Landroidx/camera/camera2/internal/Camera2PresenceSource;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/Camera2CameraFactory;->e(Ljava/util/List;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/camera/core/InitializationException;

    invoke-static {p0}, Landroidx/camera/camera2/internal/CameraUnavailableExceptionHelper;->a(Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;)Landroidx/camera/core/CameraUnavailableException;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a()Landroidx/camera/camera2/internal/compat/CameraManagerCompat;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->e:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->n:Ljava/util/ArrayList;

    move-object/from16 v6, p1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Landroidx/camera/camera2/internal/Camera2CameraImpl;

    iget-object v4, v0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->a:Landroid/content/Context;

    iget-object v5, v0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->e:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    invoke-virtual/range {p0 .. p1}, Landroidx/camera/camera2/internal/Camera2CameraFactory;->g(Ljava/lang/String;)Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    move-result-object v7

    iget-object v8, v0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->b:Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;

    iget-object v9, v0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->d:Landroidx/camera/core/impl/CameraStateRegistry;

    iget-object v1, v0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->c:Landroidx/camera/core/impl/CameraThreadConfig;

    invoke-virtual {v1}, Landroidx/camera/core/impl/CameraThreadConfig;->b()Ljava/util/concurrent/Executor;

    move-result-object v10

    iget-object v1, v0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->c:Landroidx/camera/core/impl/CameraThreadConfig;

    invoke-virtual {v1}, Landroidx/camera/core/impl/CameraThreadConfig;->c()Landroid/os/Handler;

    move-result-object v11

    iget-object v12, v0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->f:Landroidx/camera/camera2/internal/DisplayInfoManager;

    iget-wide v13, v0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->g:J

    iget-object v15, v0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->j:Landroidx/camera/core/CameraXConfig;

    invoke-direct/range {v3 .. v15}, Landroidx/camera/camera2/internal/Camera2CameraImpl;-><init>(Landroid/content/Context;Landroidx/camera/camera2/internal/compat/CameraManagerCompat;Ljava/lang/String;Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;Landroidx/camera/core/impl/CameraStateRegistry;Ljava/util/concurrent/Executor;Landroid/os/Handler;Landroidx/camera/camera2/internal/DisplayInfoManager;JLandroidx/camera/core/CameraXConfig;)V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The given camera id is not on the available camera id list."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()Landroidx/camera/camera2/internal/Camera2PresenceSource;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->k:Landroidx/camera/camera2/internal/Camera2PresenceSource;

    return-object p0
.end method

.method public final d()Ljava/util/LinkedHashSet;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->n:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e(Ljava/util/List;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->l:Landroidx/camera/core/CameraSelector;

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroidx/camera/core/CameraUnavailableException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroidx/camera/core/CameraSelector;->b()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->e:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    invoke-static {v3, v2, v0}, Landroidx/camera/camera2/internal/CameraSelectionOptimizer;->a(Landroidx/camera/camera2/internal/compat/CameraManagerCompat;Ljava/lang/Integer;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroidx/camera/core/CameraUnavailableException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    const/4 v2, 0x0

    :goto_1
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v4}, Landroidx/camera/camera2/internal/Camera2CameraFactory;->g(Ljava/lang/String;)Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v3}, Landroidx/camera/core/CameraSelector;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/CameraInfo;

    check-cast v0, Landroidx/camera/core/impl/CameraInfoInternal;

    invoke-interface {v0}, Landroidx/camera/core/impl/CameraInfoInternal;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroidx/camera/core/CameraUnavailableException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    iget-object v3, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->e:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    invoke-static {v1, v3}, Landroidx/camera/camera2/internal/CameraIdUtil;->a(Ljava/lang/String;Landroidx/camera/camera2/internal/compat/CameraManagerCompat;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    const-string v1, "Camera2CameraFactory"

    invoke-static {v2, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_4

    :cond_6
    :goto_5
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_8
    const-string v1, "Camera2CameraFactory"

    iget-object v3, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->n:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {v2, v1}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->n:Ljava/util/ArrayList;

    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Landroidx/camera/core/InitializationException;

    invoke-direct {p1, p0}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Landroidx/camera/core/InitializationException;

    invoke-static {p0}, Landroidx/camera/camera2/internal/CameraUnavailableExceptionHelper;->a(Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;)Landroidx/camera/core/CameraUnavailableException;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/camera/core/InitializationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final f()Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->b:Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->h:Ljava/util/HashMap;

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;

    iget-object v2, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->e:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->i:Landroidx/camera/core/internal/StreamSpecsCalculator;

    invoke-direct {v1, p1, v2, p0}, Landroidx/camera/camera2/internal/Camera2CameraInfoImpl;-><init>(Ljava/lang/String;Landroidx/camera/camera2/internal/compat/CameraManagerCompat;Landroidx/camera/core/internal/StreamSpecsCalculator;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroidx/camera/camera2/internal/CameraUnavailableExceptionHelper;->a(Landroidx/camera/camera2/internal/compat/CameraAccessExceptionCompat;)Landroidx/camera/core/CameraUnavailableException;

    move-result-object p0

    throw p0
.end method

.method public final shutdown()V
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->b:Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;

    iget-object v1, v0, Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v0, Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;->e:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    const/4 v2, 0x0

    iput v2, v0, Landroidx/camera/camera2/internal/concurrent/Camera2CameraCoordinator;->g:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2CameraFactory;->k:Landroidx/camera/camera2/internal/Camera2PresenceSource;

    invoke-virtual {p0}, Landroidx/camera/camera2/internal/Camera2PresenceSource;->f()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
