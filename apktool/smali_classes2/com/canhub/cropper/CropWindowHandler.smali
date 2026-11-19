.class public final Lcom/canhub/cropper/CropWindowHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropWindowHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/canhub/cropper/CropWindowHandler;",
        "",
        "<init>",
        "()V",
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


# instance fields
.field public final a:Landroid/graphics/RectF;

.field public final b:Landroid/graphics/RectF;

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->b:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->k:F

    iput v0, p0, Lcom/canhub/cropper/CropWindowHandler;->l:F

    return-void
.end method

.method public static a(FFFF)F
    .locals 0

    sub-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static h(FFFFFF)Z
    .locals 0

    cmpl-float p2, p0, p2

    if-lez p2, :cond_0

    cmpg-float p0, p0, p4

    if-gez p0, :cond_0

    cmpl-float p0, p1, p3

    if-lez p0, :cond_0

    cmpg-float p0, p1, p5

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b()F
    .locals 2

    iget v0, p0, Lcom/canhub/cropper/CropWindowHandler;->f:F

    iget v1, p0, Lcom/canhub/cropper/CropWindowHandler;->j:F

    iget p0, p0, Lcom/canhub/cropper/CropWindowHandler;->l:F

    div-float/2addr v1, p0

    cmpl-float p0, v0, v1

    if-lez p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public final c()F
    .locals 2

    iget v0, p0, Lcom/canhub/cropper/CropWindowHandler;->e:F

    iget v1, p0, Lcom/canhub/cropper/CropWindowHandler;->i:F

    iget p0, p0, Lcom/canhub/cropper/CropWindowHandler;->k:F

    div-float/2addr v1, p0

    cmpl-float p0, v0, v1

    if-lez p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public final d()F
    .locals 2

    iget v0, p0, Lcom/canhub/cropper/CropWindowHandler;->d:F

    iget v1, p0, Lcom/canhub/cropper/CropWindowHandler;->h:F

    iget p0, p0, Lcom/canhub/cropper/CropWindowHandler;->l:F

    div-float/2addr v1, p0

    cmpg-float p0, v0, v1

    if-gez p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public final e()F
    .locals 2

    iget v0, p0, Lcom/canhub/cropper/CropWindowHandler;->c:F

    iget v1, p0, Lcom/canhub/cropper/CropWindowHandler;->g:F

    iget p0, p0, Lcom/canhub/cropper/CropWindowHandler;->k:F

    div-float/2addr v1, p0

    cmpg-float p0, v0, v1

    if-gez p0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public final f(FFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;
    .locals 5

    iget-object p0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    div-float/2addr v0, v1

    iget v2, p0, Landroid/graphics/RectF;->left:F

    add-float v3, v2, v0

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    iget p0, p0, Landroid/graphics/RectF;->top:F

    add-float v1, p0, v2

    mul-float/2addr v4, v2

    add-float/2addr v4, p0

    cmpg-float p0, p1, v3

    if-gez p0, :cond_2

    cmpg-float p0, p2, v1

    if-gez p0, :cond_0

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    return-object p0

    :cond_0
    cmpg-float p0, p2, v4

    if-gez p0, :cond_1

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    return-object p0

    :cond_1
    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    return-object p0

    :cond_2
    cmpg-float p0, p1, v0

    if-gez p0, :cond_6

    cmpg-float p0, p2, v1

    if-gez p0, :cond_3

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    return-object p0

    :cond_3
    cmpg-float p0, p2, v4

    if-gez p0, :cond_5

    if-eqz p3, :cond_4

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0

    :cond_5
    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    return-object p0

    :cond_6
    cmpg-float p0, p2, v1

    if-gez p0, :cond_7

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    return-object p0

    :cond_7
    cmpg-float p0, p2, v4

    if-gez p0, :cond_8

    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    return-object p0

    :cond_8
    sget-object p0, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    return-object p0
.end method

.method public final g()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/canhub/cropper/CropWindowHandler;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-object p0
.end method
