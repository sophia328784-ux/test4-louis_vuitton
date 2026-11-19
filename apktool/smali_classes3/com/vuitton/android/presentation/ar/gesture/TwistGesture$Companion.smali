.class public final Lcom/vuitton/android/presentation/ar/gesture/TwistGesture$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/ar/gesture/TwistGesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/ar/gesture/TwistGesture$Companion;",
        "",
        "",
        "SLOP_ROTATION_DEGREES",
        "F",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
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

.method public static final a(Lcom/vuitton/android/presentation/ar/gesture/TwistGesture$Companion;Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)F
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/vuitton/android/presentation/ar/MatrixKt;->h(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p0

    invoke-static {p0}, Lcom/vuitton/android/presentation/ar/MatrixKt;->d(Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p0

    invoke-static {p3, p4}, Lcom/vuitton/android/presentation/ar/MatrixKt;->h(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p1

    invoke-static {p1}, Lcom/vuitton/android/presentation/ar/MatrixKt;->d(Lcom/vuitton/android/presentation/ar/V3;)Lcom/vuitton/android/presentation/ar/V3;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/ar/MatrixKt;->a(Lcom/vuitton/android/presentation/ar/V3;Lcom/vuitton/android/presentation/ar/V3;)F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->acos(D)D

    move-result-wide p2

    double-to-float p2, p2

    const p3, 0x42652ee0

    mul-float/2addr p2, p3

    iget-object p1, p1, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    const/4 p3, 0x0

    aget p4, p1, p3

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/V3;->a:[F

    const/4 v0, 0x1

    aget v1, p0, v0

    mul-float/2addr p4, v1

    aget p1, p1, v0

    aget p0, p0, p3

    mul-float/2addr p1, p0

    sub-float/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->signum(F)F

    move-result p0

    mul-float/2addr p0, p2

    return p0
.end method
