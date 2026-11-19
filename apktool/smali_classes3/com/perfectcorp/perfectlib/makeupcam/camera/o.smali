.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/o;
.super Ljava/lang/Object;


# instance fields
.field data:[B

.field face_art_roi:Landroid/graphics/Point;

.field height:I

.field is_enable:Z

.field stride:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AllocByteArray(II)V
    .locals 1

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/o;->width:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/o;->height:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/o;->width:I

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/o;->height:I

    shl-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/o;->stride:I

    mul-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/o;->data:[B

    return-void
.end method
