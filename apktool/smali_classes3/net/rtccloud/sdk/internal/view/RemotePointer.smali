.class public Lnet/rtccloud/sdk/internal/view/RemotePointer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final coordinates:[F

.field public flag:I

.field public final paint:Landroid/graphics/Paint;

.field private final radius:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->paint:Landroid/graphics/Paint;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->x:F

    iput v2, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->y:F

    const/4 v2, -0x1

    iput v2, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->flag:I

    const/4 v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->coordinates:[F

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->radius:F

    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p0, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {v1, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;II)V
    .locals 3

    iget v0, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->x:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    iget v2, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->y:F

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->coordinates:[F

    invoke-static {v1, v0, v2, p2, p3}, Lnet/rtccloud/sdk/util/ViewUtils;->remapRemoteCoordinates([FFFII)V

    iget-object p2, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->coordinates:[F

    const/4 p3, 0x0

    aget p3, p2, p3

    const/4 v0, 0x1

    aget p2, p2, v0

    iget v0, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->radius:F

    iget v1, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->flag:I

    int-to-float v1, v1

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v1, v0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 4

    .line 45
    iget v0, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->x:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_0

    iget v2, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->y:F

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_0

    .line 46
    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->coordinates:[F

    invoke-static {v1, v0, v2, p2}, Lnet/rtccloud/sdk/util/ViewUtils;->remapRemoteCoordinates([FFFLandroid/graphics/RectF;)V

    .line 47
    iget-object p2, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->coordinates:[F

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    iget v1, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->radius:F

    iget v2, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->flag:I

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    mul-float/2addr v2, v1

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public isValid()Z
    .locals 2

    iget v0, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget p0, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->y:F

    cmpl-float p0, p0, v1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public set(FFI)V
    .locals 0

    iput p1, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->x:F

    iput p2, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->y:F

    iput p3, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->flag:I

    return-void
.end method

.method public teardown()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->flag:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->y:F

    iput v0, p0, Lnet/rtccloud/sdk/internal/view/RemotePointer;->x:F

    return-void
.end method
