.class Lcom/perfectcorp/perfectlib/makeupcam/camera/b;
.super Ljava/lang/Object;


# instance fields
.field data:[B

.field feather_data:[B

.field height:I

.field mode:I

.field model_eyebrow_head:Landroid/graphics/PointF;

.field model_eyebrow_lower1:Landroid/graphics/PointF;

.field model_eyebrow_lower2:Landroid/graphics/PointF;

.field model_eyebrow_lower3:Landroid/graphics/PointF;

.field model_eyebrow_tail:Landroid/graphics/PointF;

.field model_eyebrow_top:Landroid/graphics/PointF;

.field model_eyebrow_upper1:Landroid/graphics/PointF;

.field model_eyebrow_upper2:Landroid/graphics/PointF;

.field model_eyebrow_upper3:Landroid/graphics/PointF;

.field stride:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->data:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->width:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->height:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->stride:I

    return-void
.end method


# virtual methods
.method public AllocByteArray(III)V
    .locals 1

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->width:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->height:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->width:I

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->height:I

    mul-int/2addr p1, p3

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->stride:I

    mul-int/2addr p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/b;->data:[B

    return-void
.end method
