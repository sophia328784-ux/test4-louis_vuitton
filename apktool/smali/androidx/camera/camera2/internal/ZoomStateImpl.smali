.class Landroidx/camera/camera2/internal/ZoomStateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/ZoomState;


# instance fields
.field public a:F

.field public final b:F

.field public final c:F

.field public d:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->b:F

    iput p2, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->c:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->b:F

    return p0
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->d:F

    return p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->c:F

    return p0
.end method

.method public final d()F
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->a:F

    return p0
.end method

.method public final e(F)V
    .locals 3

    iget v0, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->b:F

    cmpl-float v1, p1, v0

    iget v2, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->c:F

    if-gtz v1, :cond_0

    cmpg-float v1, p1, v2

    if-ltz v1, :cond_0

    iput p1, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->a:F

    invoke-static {p1, v2, v0}, Landroidx/camera/core/impl/AdapterCameraInfo;->z(FFF)F

    move-result p1

    iput p1, p0, Landroidx/camera/camera2/internal/ZoomStateImpl;->d:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Requested zoomRatio "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " is not within valid range ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-static {v0, p1, p0}, Ld21;->e(FLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
