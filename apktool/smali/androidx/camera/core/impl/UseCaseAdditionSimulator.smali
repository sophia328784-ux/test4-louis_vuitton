.class public abstract Landroidx/camera/core/impl/UseCaseAdditionSimulator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/camera/core/impl/UseCaseAdditionSimulator;",
        "",
        "camera-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static a:Landroidx/camera/core/CameraUseCaseAdapterProvider;


# direct methods
.method public static final a(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/LegacySessionConfig;Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/core/impl/UseCaseAdditionSimulator;->a:Landroidx/camera/core/CameraUseCaseAdapterProvider;

    if-eqz v0, :cond_2

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraInfoInternal;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Landroidx/camera/core/CameraUseCaseAdapterProvider;->a(Ljava/lang/String;)Landroidx/camera/core/internal/CameraUseCaseAdapter;

    move-result-object p0

    iget-object v0, p1, Landroidx/camera/core/SessionConfig;->a:Landroidx/camera/core/ViewPort;

    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->i:Landroidx/camera/core/ViewPort;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    iget-object v0, p1, Landroidx/camera/core/SessionConfig;->b:Ljava/util/List;

    iget-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->m:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iput-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->j:Ljava/util/List;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    iget-object v0, p1, Landroidx/camera/core/SessionConfig;->c:Landroid/util/Range;

    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->k:Landroid/util/Range;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iget-object p1, p1, Landroidx/camera/core/SessionConfig;->f:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    const-string v0, "CameraUseCaseAdapter"

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v0, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->b:Landroidx/camera/core/impl/AdapterCameraInternal;

    iget-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->l:Landroidx/camera/core/impl/CameraConfig;

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/AdapterCameraInternal;->n(Landroidx/camera/core/impl/CameraConfig;)V

    iget-object v1, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->c:Landroidx/camera/core/impl/AdapterCameraInternal;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroidx/camera/core/impl/AdapterCameraInternal;->n(Landroidx/camera/core/impl/CameraConfig;)V

    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->f:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, p2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->m(Ljava/util/LinkedHashSet;Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object p2, p0, Landroidx/camera/core/internal/CameraUseCaseAdapter;->c:Landroidx/camera/core/impl/AdapterCameraInternal;

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, v1, p2}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->s(Ljava/util/LinkedHashSet;Z)Landroidx/camera/core/internal/CalculatedUseCaseInfo;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->E(Ljava/util/HashMap;)V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_7
    new-instance p2, Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraException;

    invoke-direct {p2, p0}, Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_1
    :try_start_8
    invoke-static {p1}, Landroidx/camera/core/internal/CameraUseCaseAdapter;->E(Ljava/util/HashMap;)V

    throw p0

    :goto_2
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw p0

    :catchall_2
    move-exception p0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p0

    :catchall_5
    move-exception p0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw p0

    :cond_2
    const-string p0, "mCameraUseCaseAdapterProvider must be initialized first!"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
