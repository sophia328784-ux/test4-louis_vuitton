.class public final Lcom/canhub/cropper/CropWindowMoveHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropWindowMoveHandler$Companion;,
        Lcom/canhub/cropper/CropWindowMoveHandler$Type;,
        Lcom/canhub/cropper/CropWindowMoveHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001:\u0002\u000b\u000cB\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/canhub/cropper/CropWindowMoveHandler;",
        "",
        "Lcom/canhub/cropper/CropWindowMoveHandler$Type;",
        "type",
        "Lcom/canhub/cropper/CropWindowHandler;",
        "cropWindowHandler",
        "",
        "touchX",
        "touchY",
        "<init>",
        "(Lcom/canhub/cropper/CropWindowMoveHandler$Type;Lcom/canhub/cropper/CropWindowHandler;FF)V",
        "Type",
        "Companion",
        "cropper_release"
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
.field public static final g:Lcom/canhub/cropper/CropWindowMoveHandler$Companion;


# instance fields
.field public final a:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropWindowMoveHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropWindowMoveHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/CropWindowMoveHandler;->g:Lcom/canhub/cropper/CropWindowMoveHandler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/canhub/cropper/CropWindowMoveHandler$Type;Lcom/canhub/cropper/CropWindowHandler;FF)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->a:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    invoke-virtual {p2}, Lcom/canhub/cropper/CropWindowHandler;->e()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->b:F

    invoke-virtual {p2}, Lcom/canhub/cropper/CropWindowHandler;->d()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->c:F

    invoke-virtual {p2}, Lcom/canhub/cropper/CropWindowHandler;->c()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->d:F

    invoke-virtual {p2}, Lcom/canhub/cropper/CropWindowHandler;->b()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->e:F

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    invoke-virtual {p2}, Lcom/canhub/cropper/CropWindowHandler;->g()Landroid/graphics/RectF;

    move-result-object p0

    sget-object p2, Lcom/canhub/cropper/CropWindowMoveHandler$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    sub-float v1, p1, p3

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    :goto_0
    sub-float/2addr p0, p4

    goto :goto_2

    :pswitch_1
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :pswitch_2
    iget p0, p0, Landroid/graphics/RectF;->right:F

    :goto_1
    sub-float/2addr p0, p3

    move v2, v1

    move v1, p0

    move p0, v2

    goto :goto_2

    :pswitch_3
    iget p0, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :pswitch_4
    iget p0, p0, Landroid/graphics/RectF;->left:F

    goto :goto_1

    :pswitch_5
    iget p1, p0, Landroid/graphics/RectF;->right:F

    sub-float v1, p1, p3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :pswitch_6
    iget p1, p0, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, p3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :pswitch_7
    iget p1, p0, Landroid/graphics/RectF;->right:F

    sub-float v1, p1, p3

    iget p0, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :pswitch_8
    iget p1, p0, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, p3

    iget p0, p0, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :goto_2
    iput v1, v0, Landroid/graphics/PointF;->x:F

    iput p0, v0, Landroid/graphics/PointF;->y:F

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/graphics/RectF;->inset(FF)V

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1, p2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v0, p1

    if-lez v1, :cond_1

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    return-void
.end method

.method public static f(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, p2

    sub-float/2addr v0, v1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    sub-float/2addr v1, v0

    invoke-virtual {p0, p2, v1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v0, p1

    if-lez v1, :cond_1

    sub-float/2addr p1, v0

    invoke-virtual {p0, p2, p1}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .locals 4

    int-to-float p4, p4

    cmpl-float v0, p2, p4

    iget-object v1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    if-lez v0, :cond_0

    sub-float/2addr p2, p4

    const v0, 0x3f866666    # 1.05f

    div-float/2addr p2, v0

    add-float/2addr p2, p4

    iget v0, v1, Landroid/graphics/PointF;->y:F

    sub-float p4, p2, p4

    const v2, 0x3f8ccccd    # 1.1f

    div-float/2addr p4, v2

    sub-float/2addr v0, p4

    iput v0, v1, Landroid/graphics/PointF;->y:F

    :cond_0
    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p2, p4

    if-lez v0, :cond_1

    iget v0, v1, Landroid/graphics/PointF;->y:F

    sub-float v2, p2, p4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/PointF;->y:F

    :cond_1
    sub-float v0, p4, p2

    cmpg-float v0, v0, p5

    if-gez v0, :cond_2

    move p2, p4

    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v0

    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->c:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    add-float p2, v0, v2

    :cond_3
    sub-float v1, p2, v0

    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->e:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    add-float p2, v0, v2

    :cond_4
    sub-float v1, p4, p2

    cmpg-float p5, v1, p5

    if-gez p5, :cond_5

    move p2, p4

    :cond_5
    const/4 p5, 0x0

    cmpl-float p5, p6, p5

    if-lez p5, :cond_a

    sub-float p5, p2, v0

    mul-float/2addr p5, p6

    iget v1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->b:F

    cmpg-float v2, p5, v1

    if-gez v2, :cond_6

    div-float/2addr v1, p6

    add-float/2addr v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float p4, p2, p4

    mul-float p5, p4, p6

    :cond_6
    iget p0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->d:F

    cmpl-float p4, p5, p0

    if-lez p4, :cond_7

    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    iget p4, p1, Landroid/graphics/RectF;->top:F

    div-float/2addr p0, p6

    add-float/2addr p0, p4

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget p0, p1, Landroid/graphics/RectF;->top:F

    sub-float p0, p2, p0

    mul-float p5, p0, p6

    :cond_7
    if-eqz p7, :cond_8

    if-eqz p8, :cond_8

    iget p0, p3, Landroid/graphics/RectF;->bottom:F

    iget p4, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr p3, p6

    add-float/2addr p3, p4

    invoke-static {p0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p7, :cond_9

    iget p0, p1, Landroid/graphics/RectF;->right:F

    sub-float p4, p0, p5

    iget p7, p3, Landroid/graphics/RectF;->left:F

    cmpg-float p4, p4, p7

    if-gez p4, :cond_9

    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    iget p4, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, p7

    div-float/2addr p0, p6

    add-float/2addr p0, p4

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iget p2, p1, Landroid/graphics/RectF;->top:F

    sub-float p2, p0, p2

    mul-float p5, p2, p6

    move p2, p0

    :cond_9
    if-eqz p8, :cond_a

    iget p0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p5, p0

    iget p4, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p5, p5, p4

    if-lez p5, :cond_a

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    iget p5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p4, p0

    div-float/2addr p4, p6

    add-float/2addr p4, p5

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public final b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    iget-object v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    if-gez v1, :cond_0

    const v1, 0x3f866666    # 1.05f

    div-float/2addr p2, v1

    iget v1, v2, Landroid/graphics/PointF;->x:F

    const v3, 0x3f8ccccd    # 1.1f

    div-float v3, p2, v3

    sub-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/PointF;->x:F

    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->left:F

    cmpg-float v3, p2, v1

    if-gez v3, :cond_1

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float v4, p2, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    :cond_1
    sub-float v2, p2, v1

    cmpg-float v2, v2, p4

    if-gez v2, :cond_2

    move p2, v1

    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float v3, v2, p2

    iget v4, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    sub-float p2, v2, v4

    :cond_3
    sub-float v3, v2, p2

    iget v4, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->d:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    sub-float p2, v2, v4

    :cond_4
    sub-float v3, p2, v1

    cmpg-float p4, v3, p4

    if-gez p4, :cond_5

    move p2, v1

    :cond_5
    cmpl-float p4, p5, v0

    if-lez p4, :cond_a

    sub-float p4, v2, p2

    div-float/2addr p4, p5

    iget v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->c:F

    cmpg-float v3, p4, v0

    if-gez v3, :cond_6

    mul-float/2addr v0, p5

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p4, p2

    div-float/2addr p4, p5

    :cond_6
    iget p0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->e:F

    cmpl-float v0, p4, p0

    if-lez v0, :cond_7

    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr p0, p5

    sub-float/2addr p4, p0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget p0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p0, p2

    div-float p4, p0, p5

    :cond_7
    if-eqz p6, :cond_8

    if-eqz p7, :cond_8

    iget p0, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float/2addr p3, p5

    sub-float/2addr p4, p3

    invoke-static {p0, p4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p6, :cond_9

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float p6, p0, p4

    iget v0, p3, Landroid/graphics/RectF;->top:F

    cmpg-float p6, p6, v0

    if-gez p6, :cond_9

    iget p2, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p0, v0

    mul-float/2addr p0, p5

    sub-float/2addr p4, p0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iget p2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, p0

    div-float p4, p2, p5

    move p2, p0

    :cond_9
    if-eqz p7, :cond_a

    iget p0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p4, p0

    iget p6, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p4, p4, p6

    if-lez p4, :cond_a

    iget p3, p3, Landroid/graphics/RectF;->left:F

    iget p4, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p6, p0

    mul-float/2addr p6, p5

    sub-float/2addr p4, p6

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->left:F

    return-void
.end method

.method public final d(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V
    .locals 4

    int-to-float p4, p4

    cmpl-float v0, p2, p4

    iget-object v1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    if-lez v0, :cond_0

    sub-float/2addr p2, p4

    const v0, 0x3f866666    # 1.05f

    div-float/2addr p2, v0

    add-float/2addr p2, p4

    iget v0, v1, Landroid/graphics/PointF;->x:F

    sub-float p4, p2, p4

    const v2, 0x3f8ccccd    # 1.1f

    div-float/2addr p4, v2

    sub-float/2addr v0, p4

    iput v0, v1, Landroid/graphics/PointF;->x:F

    :cond_0
    iget p4, p3, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p2, p4

    if-lez v0, :cond_1

    iget v0, v1, Landroid/graphics/PointF;->x:F

    sub-float v2, p2, p4

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/PointF;->x:F

    :cond_1
    sub-float v0, p4, p2

    cmpg-float v0, v0, p5

    if-gez v0, :cond_2

    move p2, p4

    :cond_2
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v1, p2, v0

    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->b:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    add-float p2, v0, v2

    :cond_3
    sub-float v1, p2, v0

    iget v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->d:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    add-float p2, v0, v2

    :cond_4
    sub-float v1, p4, p2

    cmpg-float p5, v1, p5

    if-gez p5, :cond_5

    move p2, p4

    :cond_5
    const/4 p5, 0x0

    cmpl-float p5, p6, p5

    if-lez p5, :cond_a

    sub-float p5, p2, v0

    div-float/2addr p5, p6

    iget v1, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->c:F

    cmpg-float v2, p5, v1

    if-gez v2, :cond_6

    mul-float/2addr v1, p6

    add-float/2addr v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float p4, p2, p4

    div-float p5, p4, p6

    :cond_6
    iget p0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->e:F

    cmpl-float p4, p5, p0

    if-lez p4, :cond_7

    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr p0, p6

    add-float/2addr p0, p4

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iget p0, p1, Landroid/graphics/RectF;->left:F

    sub-float p0, p2, p0

    div-float p5, p0, p6

    :cond_7
    if-eqz p7, :cond_8

    if-eqz p8, :cond_8

    iget p0, p3, Landroid/graphics/RectF;->right:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float/2addr p3, p6

    add-float/2addr p3, p4

    invoke-static {p0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p7, :cond_9

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float p4, p0, p5

    iget p7, p3, Landroid/graphics/RectF;->top:F

    cmpg-float p4, p4, p7

    if-gez p4, :cond_9

    iget p2, p3, Landroid/graphics/RectF;->right:F

    iget p4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, p7

    mul-float/2addr p0, p6

    add-float/2addr p0, p4

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iget p2, p1, Landroid/graphics/RectF;->left:F

    sub-float p2, p0, p2

    div-float p5, p2, p6

    move p2, p0

    :cond_9
    if-eqz p8, :cond_a

    iget p0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p5, p0

    iget p4, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p5, p5, p4

    if-lez p5, :cond_a

    iget p3, p3, Landroid/graphics/RectF;->right:F

    iget p5, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p4, p0

    mul-float/2addr p4, p6

    add-float/2addr p4, p5

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method public final e(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    iget-object v2, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    if-gez v1, :cond_0

    const v1, 0x3f866666    # 1.05f

    div-float/2addr p2, v1

    iget v1, v2, Landroid/graphics/PointF;->y:F

    const v3, 0x3f8ccccd    # 1.1f

    div-float v3, p2, v3

    sub-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/PointF;->y:F

    :cond_0
    iget v1, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v3, p2, v1

    if-gez v3, :cond_1

    iget v3, v2, Landroid/graphics/PointF;->y:F

    sub-float v4, p2, v1

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    :cond_1
    sub-float v2, p2, v1

    cmpg-float v2, v2, p4

    if-gez v2, :cond_2

    move p2, v1

    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v2, p2

    iget v4, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->c:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    sub-float p2, v2, v4

    :cond_3
    sub-float v3, v2, p2

    iget v4, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->e:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    sub-float p2, v2, v4

    :cond_4
    sub-float v3, p2, v1

    cmpg-float p4, v3, p4

    if-gez p4, :cond_5

    move p2, v1

    :cond_5
    cmpl-float p4, p5, v0

    if-lez p4, :cond_a

    sub-float p4, v2, p2

    mul-float/2addr p4, p5

    iget v0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->b:F

    cmpg-float v3, p4, v0

    if-gez v3, :cond_6

    div-float/2addr v0, p5

    sub-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p4, p2

    mul-float/2addr p4, p5

    :cond_6
    iget p0, p0, Lcom/canhub/cropper/CropWindowMoveHandler;->d:F

    cmpl-float v0, p4, p0

    if-lez v0, :cond_7

    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p0, p5

    sub-float/2addr p4, p0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, p2

    mul-float p4, p0, p5

    :cond_7
    if-eqz p6, :cond_8

    if-eqz p7, :cond_8

    iget p0, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p3

    div-float/2addr p3, p5

    sub-float/2addr p4, p3

    invoke-static {p0, p4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_0

    :cond_8
    if-eqz p6, :cond_9

    iget p0, p1, Landroid/graphics/RectF;->right:F

    sub-float p6, p0, p4

    iget v0, p3, Landroid/graphics/RectF;->left:F

    cmpg-float p6, p6, v0

    if-gez p6, :cond_9

    iget p2, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, v0

    div-float/2addr p0, p5

    sub-float/2addr p4, p0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, p0

    mul-float p4, p2, p5

    move p2, p0

    :cond_9
    if-eqz p7, :cond_a

    iget p0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr p4, p0

    iget p6, p3, Landroid/graphics/RectF;->right:F

    cmpl-float p4, p4, p6

    if-lez p4, :cond_a

    iget p3, p3, Landroid/graphics/RectF;->top:F

    iget p4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p6, p0

    div-float/2addr p6, p5

    sub-float/2addr p4, p6

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    :cond_a
    :goto_0
    iput p2, p1, Landroid/graphics/RectF;->top:F

    return-void
.end method
