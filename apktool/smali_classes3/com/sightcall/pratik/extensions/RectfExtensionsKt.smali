.class public final Lcom/sightcall/pratik/extensions/RectfExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0003\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "center",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/RectF;",
        "scale",
        "scaleFactor",
        "",
        "pratik_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final center(Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static final scale(Landroid/graphics/RectF;D)Landroid/graphics/RectF;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-float v1, v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    mul-double/2addr v2, p1

    double-to-float v2, v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    mul-double/2addr v3, p1

    double-to-float v3, v3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, p0

    mul-double/2addr v4, p1

    double-to-float p0, v4

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method
