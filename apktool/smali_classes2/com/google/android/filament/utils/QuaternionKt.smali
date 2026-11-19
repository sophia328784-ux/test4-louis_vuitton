.class public abstract Lcom/google/android/filament/utils/QuaternionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "filament-utils-android_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/google/android/filament/utils/Quaternion;Lcom/google/android/filament/utils/Quaternion;F)Lcom/google/android/filament/utils/Quaternion;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    new-instance v1, Lcom/google/android/filament/utils/Quaternion;

    iget v2, p0, Lcom/google/android/filament/utils/Quaternion;->a:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/google/android/filament/utils/Quaternion;->b:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/google/android/filament/utils/Quaternion;->c:F

    mul-float/2addr v4, v0

    iget p0, p0, Lcom/google/android/filament/utils/Quaternion;->d:F

    mul-float/2addr v0, p0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    new-instance p0, Lcom/google/android/filament/utils/Quaternion;

    iget v0, p1, Lcom/google/android/filament/utils/Quaternion;->a:F

    mul-float/2addr v0, p2

    iget v2, p1, Lcom/google/android/filament/utils/Quaternion;->b:F

    mul-float/2addr v2, p2

    iget v3, p1, Lcom/google/android/filament/utils/Quaternion;->c:F

    mul-float/2addr v3, p2

    iget p1, p1, Lcom/google/android/filament/utils/Quaternion;->d:F

    mul-float/2addr p2, p1

    invoke-direct {p0, v0, v2, v3, p2}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    new-instance p1, Lcom/google/android/filament/utils/Quaternion;

    iget p2, v1, Lcom/google/android/filament/utils/Quaternion;->a:F

    iget v0, p0, Lcom/google/android/filament/utils/Quaternion;->a:F

    add-float/2addr p2, v0

    iget v0, v1, Lcom/google/android/filament/utils/Quaternion;->b:F

    iget v2, p0, Lcom/google/android/filament/utils/Quaternion;->b:F

    add-float/2addr v0, v2

    iget v2, v1, Lcom/google/android/filament/utils/Quaternion;->c:F

    iget v3, p0, Lcom/google/android/filament/utils/Quaternion;->c:F

    add-float/2addr v2, v3

    iget v1, v1, Lcom/google/android/filament/utils/Quaternion;->d:F

    iget p0, p0, Lcom/google/android/filament/utils/Quaternion;->d:F

    add-float/2addr v1, p0

    invoke-direct {p1, p2, v0, v2, v1}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    return-object p1
.end method

.method public static final b(Lcom/google/android/filament/utils/Quaternion;)Lcom/google/android/filament/utils/Quaternion;
    .locals 5

    iget v0, p0, Lcom/google/android/filament/utils/Quaternion;->a:F

    mul-float v1, v0, v0

    iget v2, p0, Lcom/google/android/filament/utils/Quaternion;->b:F

    mul-float v3, v2, v2

    add-float/2addr v3, v1

    iget v1, p0, Lcom/google/android/filament/utils/Quaternion;->c:F

    mul-float v4, v1, v1

    add-float/2addr v4, v3

    iget p0, p0, Lcom/google/android/filament/utils/Quaternion;->d:F

    mul-float v3, p0, p0

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v3

    new-instance v3, Lcom/google/android/filament/utils/Quaternion;

    mul-float/2addr v0, v4

    mul-float/2addr v2, v4

    mul-float/2addr v1, v4

    mul-float/2addr p0, v4

    invoke-direct {v3, v0, v2, v1, p0}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    return-object v3
.end method

.method public static c(Lcom/google/android/filament/utils/Quaternion;Lcom/google/android/filament/utils/Quaternion;F)Lcom/google/android/filament/utils/Quaternion;
    .locals 10

    iget v0, p0, Lcom/google/android/filament/utils/Quaternion;->a:F

    iget v1, p1, Lcom/google/android/filament/utils/Quaternion;->a:F

    mul-float v2, v0, v1

    iget v3, p0, Lcom/google/android/filament/utils/Quaternion;->b:F

    iget v4, p1, Lcom/google/android/filament/utils/Quaternion;->b:F

    mul-float v5, v3, v4

    add-float/2addr v5, v2

    iget v2, p0, Lcom/google/android/filament/utils/Quaternion;->c:F

    iget v6, p1, Lcom/google/android/filament/utils/Quaternion;->c:F

    mul-float v7, v2, v6

    add-float/2addr v7, v5

    iget v5, p0, Lcom/google/android/filament/utils/Quaternion;->d:F

    iget v8, p1, Lcom/google/android/filament/utils/Quaternion;->d:F

    mul-float v9, v5, v8

    add-float/2addr v9, v7

    const/4 v7, 0x0

    cmpg-float v7, v9, v7

    if-gez v7, :cond_0

    neg-float v9, v9

    new-instance p1, Lcom/google/android/filament/utils/Quaternion;

    neg-float v1, v1

    neg-float v4, v4

    neg-float v6, v6

    neg-float v7, v8

    invoke-direct {p1, v1, v4, v6, v7}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    :cond_0
    const v1, 0x3f7fdf3b    # 0.9995f

    cmpg-float v1, v9, v1

    if-gez v1, :cond_1

    float-to-double v6, v9

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    double-to-float p0, v6

    float-to-double v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v1, v6

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p2

    mul-float/2addr v4, p0

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    new-instance v6, Lcom/google/android/filament/utils/Quaternion;

    mul-float/2addr v0, v4

    mul-float/2addr v3, v4

    mul-float/2addr v2, v4

    mul-float/2addr v5, v4

    invoke-direct {v6, v0, v3, v2, v5}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    new-instance v0, Lcom/google/android/filament/utils/Quaternion;

    iget v2, v6, Lcom/google/android/filament/utils/Quaternion;->a:F

    div-float/2addr v2, v1

    iget v3, v6, Lcom/google/android/filament/utils/Quaternion;->b:F

    div-float/2addr v3, v1

    iget v4, v6, Lcom/google/android/filament/utils/Quaternion;->c:F

    div-float/2addr v4, v1

    iget v5, v6, Lcom/google/android/filament/utils/Quaternion;->d:F

    div-float/2addr v5, v1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    mul-float/2addr p2, p0

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p0, v2

    new-instance p2, Lcom/google/android/filament/utils/Quaternion;

    iget v2, p1, Lcom/google/android/filament/utils/Quaternion;->a:F

    mul-float/2addr v2, p0

    iget v3, p1, Lcom/google/android/filament/utils/Quaternion;->b:F

    mul-float/2addr v3, p0

    iget v4, p1, Lcom/google/android/filament/utils/Quaternion;->c:F

    mul-float/2addr v4, p0

    iget p1, p1, Lcom/google/android/filament/utils/Quaternion;->d:F

    mul-float/2addr p1, p0

    invoke-direct {p2, v2, v3, v4, p1}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    new-instance p0, Lcom/google/android/filament/utils/Quaternion;

    iget p1, p2, Lcom/google/android/filament/utils/Quaternion;->a:F

    div-float/2addr p1, v1

    iget v2, p2, Lcom/google/android/filament/utils/Quaternion;->b:F

    div-float/2addr v2, v1

    iget v3, p2, Lcom/google/android/filament/utils/Quaternion;->c:F

    div-float/2addr v3, v1

    iget p2, p2, Lcom/google/android/filament/utils/Quaternion;->d:F

    div-float/2addr p2, v1

    invoke-direct {p0, p1, v2, v3, p2}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    new-instance p1, Lcom/google/android/filament/utils/Quaternion;

    iget p2, v0, Lcom/google/android/filament/utils/Quaternion;->a:F

    iget v1, p0, Lcom/google/android/filament/utils/Quaternion;->a:F

    add-float/2addr p2, v1

    iget v1, v0, Lcom/google/android/filament/utils/Quaternion;->b:F

    iget v2, p0, Lcom/google/android/filament/utils/Quaternion;->b:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/google/android/filament/utils/Quaternion;->c:F

    iget v3, p0, Lcom/google/android/filament/utils/Quaternion;->c:F

    add-float/2addr v2, v3

    iget v0, v0, Lcom/google/android/filament/utils/Quaternion;->d:F

    iget p0, p0, Lcom/google/android/filament/utils/Quaternion;->d:F

    add-float/2addr v0, p0

    invoke-direct {p1, p2, v1, v2, v0}, Lcom/google/android/filament/utils/Quaternion;-><init>(FFFF)V

    return-object p1

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/google/android/filament/utils/QuaternionKt;->a(Lcom/google/android/filament/utils/Quaternion;Lcom/google/android/filament/utils/Quaternion;F)Lcom/google/android/filament/utils/Quaternion;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/filament/utils/QuaternionKt;->b(Lcom/google/android/filament/utils/Quaternion;)Lcom/google/android/filament/utils/Quaternion;

    move-result-object p0

    return-object p0
.end method
