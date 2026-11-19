.class public abstract Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;,
        Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;,
        Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$PictureCallback;,
        Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$AutoFocusCallback;,
        Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$PreviewCallback;,
        Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;
    }
.end annotation


# direct methods
.method public static d(Landroid/content/Context;Lcom/vuitton/core/infrastructure/perfectcorp/CameraLibrary;Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;)Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;
    .locals 8

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget-object v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->p:Ljava/util/List;

    const-string p1, "camera"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    sget-object v7, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->q:Lcom/google/common/collect/ImmutableMap;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

    if-eqz v6, :cond_2

    if-eq v6, p2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0x23

    invoke-virtual {v5, p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$CompareSizesByArea;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Size;

    new-instance v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Builder;

    invoke-direct {v0, p0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Builder;->b:Landroid/hardware/camera2/CameraManager;

    iput-object v4, v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Builder;->c:Ljava/lang/String;

    new-instance p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;-><init>(II)V

    iput-object p0, v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Builder;->d:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    new-instance p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;

    invoke-direct {p0, v0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;-><init>(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Builder;)V

    return-object p0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "Can\'t find available camera for facing "

    invoke-static {p2, p0}, La61;->q(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_4
    const-string p0, "Library "

    const-string p2, " is not supported!"

    invoke-static {p0, p1, p2}, Llc0;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_5
    sget-object p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->c:Lcom/google/common/collect/ImmutableMap;

    new-instance p0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {p0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result p1

    if-eqz p1, :cond_9

    move v0, v3

    :goto_2
    if-ge v0, p1, :cond_7

    invoke-static {v0, p0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    sget-object v1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->c:Lcom/google/common/collect/ImmutableMap;

    iget v4, p0, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_6

    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    iget-object p0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_4
    new-instance p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;

    invoke-direct {p0, v3}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;-><init>(I)V

    return-object p0

    :cond_9
    const-string p0, "No physical camera can be used."

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public abstract a(Lmd;)V
.end method

.method public abstract b()Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;
.end method

.method public abstract c()Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;
.end method

.method public abstract e()V
.end method

.method public abstract f(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;)V
.end method

.method public abstract g(Ls3;)V
.end method

.method public abstract h()V
.end method

.method public abstract i(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method public final l()V
    .locals 8

    new-instance v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;-><init>(II)V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;->c()Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;->b()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList;->v(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    iget v6, v3, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;->a:I

    iget v7, v5, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;->a:I

    if-ne v6, v7, :cond_1

    iget v7, v3, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;->b:I

    iget v5, v5, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;->b:I

    if-ne v7, v5, :cond_1

    invoke-interface {v1, v6, v7}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;->c(II)V

    invoke-virtual {p0, v1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;->f(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;)V

    return-void

    :cond_2
    invoke-interface {v1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;->getPreviewSize()Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    move-result-object p0

    iget p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;->a:I

    return-void
.end method
