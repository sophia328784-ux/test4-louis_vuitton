.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$e;
.super Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field image_anchor_point:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field model_depth_ratio:F

.field model_offset:Landroid/graphics/PointF;

.field model_scale_ratio:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$b;-><init>()V

    return-void
.end method
