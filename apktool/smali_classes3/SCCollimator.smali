.class public final LSCCollimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSCCollimator$Rect;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0007B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "LSCCollimator;",
        "",
        "",
        "safeArea",
        "ratio",
        "<init>",
        "(FF)V",
        "Rect",
        "pratik_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:F

.field public final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LSCCollimator;->a:F

    iput p2, p0, LSCCollimator;->b:F

    return-void
.end method


# virtual methods
.method public final a(II)LSCCollimator$Rect;
    .locals 8

    new-instance v0, LSCCollimator$Rect;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, LSCCollimator$Rect;-><init>(FFFF)V

    iget p1, v0, LSCCollimator$Rect;->c:F

    iget p2, p0, LSCCollimator;->a:F

    mul-float v2, p1, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, v0, LSCCollimator$Rect;->d:F

    mul-float/2addr p2, v4

    div-float/2addr p2, v3

    new-instance v5, LSCCollimator$Rect;

    iget v6, v0, LSCCollimator$Rect;->a:F

    add-float/2addr v6, p2

    iget v0, v0, LSCCollimator$Rect;->b:F

    add-float/2addr v0, v2

    mul-float/2addr v2, v3

    sub-float/2addr p1, v2

    mul-float/2addr p2, v3

    sub-float/2addr v4, p2

    invoke-direct {v5, v6, v0, p1, v4}, LSCCollimator$Rect;-><init>(FFFF)V

    iget p1, v5, LSCCollimator$Rect;->c:F

    iget p0, p0, LSCCollimator;->b:F

    div-float p2, p1, p0

    iget v0, v5, LSCCollimator$Rect;->d:F

    cmpl-float v2, p2, v0

    if-lez v2, :cond_0

    mul-float/2addr p0, v0

    sub-float p0, p1, p0

    div-float/2addr p0, v3

    move v7, v1

    move v1, p0

    move p0, v7

    goto :goto_0

    :cond_0
    sub-float p0, v0, p2

    div-float/2addr p0, v3

    :goto_0
    new-instance p2, LSCCollimator$Rect;

    iget v2, v5, LSCCollimator$Rect;->a:F

    add-float/2addr v2, p0

    iget v4, v5, LSCCollimator$Rect;->b:F

    add-float/2addr v4, v1

    mul-float/2addr v1, v3

    sub-float/2addr p1, v1

    mul-float/2addr v3, p0

    sub-float/2addr v0, v3

    invoke-direct {p2, v2, v4, p1, v0}, LSCCollimator$Rect;-><init>(FFFF)V

    return-object p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LSCCollimator;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LSCCollimator;

    iget v1, p0, LSCCollimator;->a:F

    iget v3, p1, LSCCollimator;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, LSCCollimator;->b:F

    iget p1, p1, LSCCollimator;->b:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, LSCCollimator;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, LSCCollimator;->b:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SCCollimator(safeArea="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, LSCCollimator;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LSCCollimator;->b:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
