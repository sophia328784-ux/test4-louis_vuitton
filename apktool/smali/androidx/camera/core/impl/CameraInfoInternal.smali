.class public interface abstract Landroidx/camera/core/impl/CameraInfoInternal;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/CameraInfo;


# virtual methods
.method public abstract a()Ljava/util/Set;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract e(Ljava/util/concurrent/Executor;Landroidx/camera/core/impl/CameraCaptureCallback;)V
.end method

.method public abstract f()Landroid/graphics/Rect;
.end method

.method public getImplementation()Landroidx/camera/core/impl/CameraInfoInternal;
    .locals 0

    return-object p0
.end method

.method public abstract h()Ljava/lang/Object;
.end method

.method public abstract j()Landroidx/camera/core/impl/Quirks;
.end method

.method public abstract k(I)Ljava/util/List;
.end method

.method public l()Ljava/util/Set;
    .locals 0

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method

.method public abstract m(Landroidx/camera/core/impl/CameraCaptureCallback;)V
.end method

.method public abstract n()Z
.end method

.method public o(Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;Landroidx/camera/core/LegacySessionConfig;)Z
    .locals 6

    iget-object v0, p1, Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x3

    const-string v3, "CameraInfoInternal"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/featuregroup/GroupableFeature;

    invoke-virtual {v1, p0, p2}, Landroidx/camera/core/featuregroup/GroupableFeature;->b(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/LegacySessionConfig;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    return v4

    :cond_1
    :try_start_0
    invoke-static {p0, p2, p1}, Landroidx/camera/core/impl/UseCaseAdditionSimulator;->a(Landroidx/camera/core/impl/CameraInfoInternal;Landroidx/camera/core/LegacySessionConfig;Landroidx/camera/core/featuregroup/impl/ResolvedFeatureGroup;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/camera/core/internal/CameraUseCaseAdapter$CameraException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    invoke-static {v2, v3}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    return v4
.end method

.method public abstract p(Landroid/util/Range;)Ljava/util/List;
.end method

.method public abstract q()Z
.end method

.method public abstract r()Landroidx/camera/core/impl/Timebase;
.end method

.method public abstract u()Landroidx/camera/core/impl/EncoderProfilesProvider;
.end method

.method public abstract v()Ljava/util/List;
.end method

.method public x(Landroidx/camera/core/CameraUseCaseAdapterProvider;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p1, Landroidx/camera/core/impl/UseCaseAdditionSimulator;->a:Landroidx/camera/core/CameraUseCaseAdapterProvider;

    return-void
.end method

.method public abstract y()Ljava/util/Set;
.end method
