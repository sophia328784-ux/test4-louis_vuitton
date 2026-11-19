.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;
.super Ljava/lang/Object;


# instance fields
.field public is_lip_shape_enabled:Z

.field public lip_shape_height_intensity:I

.field public lip_shape_height_lower_intensity:I

.field public lip_shape_height_upper_intensity:I

.field public lip_shape_mshaped_intensity:I

.field public lip_shape_size_intensity:I

.field public lip_shape_width_intensity:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 18
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;-><init>(ZIIIIII)V

    return-void
.end method

.method public constructor <init>(ZIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;->is_lip_shape_enabled:Z

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;->lip_shape_mshaped_intensity:I

    iput p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;->lip_shape_width_intensity:I

    iput p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;->lip_shape_size_intensity:I

    iput p5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;->lip_shape_height_intensity:I

    iput p6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;->lip_shape_height_upper_intensity:I

    iput p7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;->lip_shape_height_lower_intensity:I

    return-void
.end method
