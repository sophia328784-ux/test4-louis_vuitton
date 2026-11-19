.class final Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Camera2Parameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Camera2Parameters"
.end annotation


# instance fields
.field public final a:Ljava/util/AbstractList;

.field public final b:Lcom/google/common/collect/ImmutableList;

.field public c:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->d:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->b([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Luh;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Luh;-><init>(I)V

    invoke-static {v2, v1}, Lcom/google/common/collect/Lists;->d(Lcom/google/common/base/Function;Ljava/util/List;)Ljava/util/AbstractList;

    move-result-object v1

    iput-object v1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Camera2Parameters;->a:Ljava/util/AbstractList;

    invoke-static {v0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Camera2Parameters;->f(Landroid/hardware/camera2/CameraCharacteristics;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Camera2Parameters;->b:Lcom/google/common/collect/ImmutableList;

    new-instance v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    iget-object v1, p1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->l:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    iget v2, v1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;->a:I

    iget v1, v1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;->b:I

    invoke-direct {v0, v2, v1}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;-><init>(II)V

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Camera2Parameters;->c:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    iget-object p1, p1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2;->m:Ljava/lang/String;

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Camera2Parameters;->d:Ljava/lang/String;

    return-void
.end method

.method public static f(Landroid/hardware/camera2/CameraCharacteristics;)Lcom/google/common/collect/ImmutableList;
    .locals 5

    sget v0, Lcom/google/common/collect/ImmutableSet;->d:I

    new-instance v0, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_6

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget v3, p0, v2

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "edof"

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_1

    :cond_1
    const-string v3, "continuous-picture"

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_1

    :cond_2
    const-string v3, "continuous-video"

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_1

    :cond_3
    const-string v3, "macro"

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_1

    :cond_4
    const-string v3, "auto"

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_1

    :cond_5
    const-string v3, "infinity"

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->i(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->k()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Camera2Parameters;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Camera2Parameters;->a:Ljava/util/AbstractList;

    return-object p0
.end method

.method public final c(II)V
    .locals 1

    new-instance v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    invoke-direct {v0, p1, p2}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;-><init>(II)V

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Camera2Parameters;->c:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Camera2Parameters;->d:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Camera2Parameters;->b:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public final getPreviewSize()Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera2$Camera2Parameters;->c:Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Size;

    return-object p0
.end method
