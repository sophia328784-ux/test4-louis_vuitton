.class public final Lcom/google/android/filament/utils/Quaternion$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/utils/Quaternion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/Quaternion$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/google/android/filament/utils/Quaternion$Companion;",
        "",
        "filament-utils-android_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/filament/utils/Float3;F)Lcom/google/android/filament/utils/Quaternion;
    .locals 7

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    new-instance v0, Lcom/google/android/filament/utils/Quaternion;

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float p1, v3

    iget v3, p0, Lcom/google/android/filament/utils/Float3;->a:F

    mul-float/2addr v3, v3

    iget v4, p0, Lcom/google/android/filament/utils/Float3;->b:F

    mul-float/2addr v4, v4

    add-float/2addr v4, v3

    iget v3, p0, Lcom/google/android/filament/utils/Float3;->c:F

    mul-float/2addr v3, v3

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v3

    new-instance v3, Lcom/google/android/filament/utils/Float3;

    iget v5, p0, Lcom/google/android/filament/utils/Float3;->a:F

    mul-float/2addr v5, v4

    iget v6, p0, Lcom/google/android/filament/utils/Float3;->b:F

    mul-float/2addr v6, v4

    iget p0, p0, Lcom/google/android/filament/utils/Float3;->c:F

    mul-float/2addr p0, v4

    invoke-direct {v3, v5, v6, p0}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    new-instance p0, Lcom/google/android/filament/utils/Float3;

    iget v4, v3, Lcom/google/android/filament/utils/Float3;->a:F

    mul-float/2addr v4, p1

    iget v5, v3, Lcom/google/android/filament/utils/Float3;->b:F

    mul-float/2addr v5, p1

    iget v3, v3, Lcom/google/android/filament/utils/Float3;->c:F

    mul-float/2addr p1, v3

    invoke-direct {p0, v4, v5, p1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float p1, v1

    invoke-direct {v0, p0, p1}, Lcom/google/android/filament/utils/Quaternion;-><init>(Lcom/google/android/filament/utils/Float3;F)V

    return-object v0
.end method
