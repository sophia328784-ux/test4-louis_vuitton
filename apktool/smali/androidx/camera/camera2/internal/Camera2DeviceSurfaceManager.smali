.class public final Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/CameraDeviceSurfaceManager;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/HashMap;

.field public final c:Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager$1;

.field public final d:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

.field public final e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/camera/core/CameraUnavailableException;
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->a:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->b:Ljava/util/HashMap;

    iput-object v0, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->c:Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager$1;

    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->e:Landroid/content/Context;

    instance-of v0, p2, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    iput-object p2, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->d:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/camera/core/impl/utils/MainThreadAsyncHandler;->a()Landroid/os/Handler;

    invoke-static {p1}, Landroidx/camera/camera2/internal/compat/CameraManagerCompat;->a(Landroid/content/Context;)Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->d:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    :goto_0
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->d(Ljava/util/List;)V
    :try_end_0
    .catch Landroidx/camera/core/impl/CameraUpdateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Landroidx/camera/core/CameraUnavailableException;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/CameraUnavailableException;

    throw p0

    :cond_1
    new-instance p1, Landroidx/camera/core/CameraUnavailableException;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, Landroidx/camera/core/CameraUnavailableException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final a(ILjava/lang/String;ILandroid/util/Size;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;
    .locals 7

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No such camera id in supported combination list: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    invoke-virtual {p0, p3}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->l(I)Landroidx/camera/core/impl/SurfaceSizeDefinition;

    move-result-object v3

    sget-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;->CAPTURE_SESSION_TABLES:Landroidx/camera/core/impl/SurfaceConfig$ConfigSource;

    sget-object p0, Landroidx/camera/core/impl/SurfaceConfig;->e:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v4, p1

    move v1, p3

    move-object v2, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->b(ILandroid/util/Size;Landroidx/camera/core/impl/SurfaceSizeDefinition;ILandroidx/camera/core/impl/SurfaceConfig$ConfigSource;Landroidx/camera/core/impl/StreamUseCase;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/util/List;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->f(Ljava/lang/String;)Landroidx/camera/camera2/internal/SupportedSurfaceCombination;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroidx/camera/core/CameraUnavailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Landroidx/camera/core/impl/CameraUpdateException;

    const-string v0, "Failed to create SupportedSurfaceCombination"

    invoke-direct {p1, v0, p0}, Landroidx/camera/core/impl/CameraUpdateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final e(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/LinkedHashMap;ZZZ)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;
    .locals 3

    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "No new use cases to be bound."

    invoke-static {v0, v2}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No such camera id in supported combination list: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/String;)V

    move p2, p1

    move-object p1, p0

    invoke-virtual/range {p1 .. p7}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;->j(ILjava/util/ArrayList;Ljava/util/HashMap;ZZZ)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Landroidx/camera/camera2/internal/SupportedSurfaceCombination;
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;

    iget-object v1, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->e:Landroid/content/Context;

    iget-object v2, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->d:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    invoke-direct {v0, v1, p1, v2}, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/camera/camera2/internal/compat/CameraManagerCompat;)V

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    sget-object v0, Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;->a:Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery$Companion$NO_OP_FEATURE_COMBINATION_QUERY$1;

    goto :goto_0

    :goto_1
    new-instance v1, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;

    iget-object v4, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->d:Landroidx/camera/camera2/internal/compat/CameraManagerCompat;

    iget-object v5, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->c:Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager$1;

    iget-object v2, p0, Landroidx/camera/camera2/internal/Camera2DeviceSurfaceManager;->e:Landroid/content/Context;

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Landroidx/camera/camera2/internal/SupportedSurfaceCombination;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/camera/camera2/internal/compat/CameraManagerCompat;Landroidx/camera/camera2/internal/CamcorderProfileHelper;Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;)V

    return-object v1
.end method
