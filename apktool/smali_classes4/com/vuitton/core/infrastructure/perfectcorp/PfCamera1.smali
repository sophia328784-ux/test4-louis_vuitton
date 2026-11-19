.class public final Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;
.super Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1$Camera1Parameters;
    }
.end annotation


# static fields
.field public static final c:Lcom/google/common/collect/ImmutableMap;

.field public static final d:Lcom/google/common/collect/ImmutableMap;


# instance fields
.field public final a:I

.field public final b:Landroid/hardware/Camera;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;->FRONT:Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;->BACK:Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->a(Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->c:Lcom/google/common/collect/ImmutableMap;

    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    const-string v2, "auto"

    invoke-virtual {v0, v2, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v2, "infinity"

    invoke-virtual {v0, v2, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v2, "macro"

    invoke-virtual {v0, v2, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v2, "fixed"

    invoke-virtual {v0, v2, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v2, "edof"

    invoke-virtual {v0, v2, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v2, "continuous-video"

    invoke-virtual {v0, v2, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v2, "continuous-picture"

    invoke-virtual {v0, v2, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->a(Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->d:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->a:I

    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->b:Landroid/hardware/Camera;

    return-void
.end method


# virtual methods
.method public final a(Lmd;)V
    .locals 6

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v4, -0x64

    const/16 v5, 0x64

    invoke-direct {v3, v4, v4, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v4, 0x3e8

    invoke-direct {v2, v3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    new-instance v1, Lao0;

    invoke-direct {v1, p0, p1, v3}, Lao0;-><init>(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;Lmd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    return-void
.end method

.method public final b()Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;
    .locals 3

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iget p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->a:I

    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    new-instance p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;

    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;->FRONT:Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

    goto :goto_0

    :cond_0
    const-string p0, "Only supports front and back camera."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object v1, Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;->BACK:Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;

    :goto_0
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-direct {p0, v1, v0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$CameraInfo;-><init>(Lcom/vuitton/core/infrastructure/perfectcorp/CameraFacing;I)V

    return-object p0
.end method

.method public final c()Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;
    .locals 1

    new-instance v0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1$Camera1Parameters;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->b:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1$Camera1Parameters;-><init>(Landroid/hardware/Camera$Parameters;)V

    return-object v0
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->b:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    return-void
.end method

.method public final f(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$Parameters;)V
    .locals 0

    check-cast p1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1$Camera1Parameters;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->b:Landroid/hardware/Camera;

    iget-object p1, p1, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1$Camera1Parameters;->a:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public final g(Ls3;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->b:Landroid/hardware/Camera;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    return-void

    :cond_0
    new-instance v1, Lzn0;

    invoke-direct {v1, p0, p1}, Lzn0;-><init>(Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera$PreviewCallback;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method

.method public final h()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->b:Landroid/hardware/Camera;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final i(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->b:Landroid/hardware/Camera;

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public final j()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->b:Landroid/hardware/Camera;

    invoke-virtual {p0}, Landroid/hardware/Camera;->startPreview()V

    return-void
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/perfectcorp/PfCamera1;->b:Landroid/hardware/Camera;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    invoke-virtual {p0}, Landroid/hardware/Camera;->stopPreview()V

    return-void
.end method
