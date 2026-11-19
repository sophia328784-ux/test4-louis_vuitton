.class public Lcom/google/android/material/shape/RoundedCornerTreatment;
.super Lcom/google/android/material/shape/CornerTreatment;
.source "SourceFile"


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;->a:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-direct {p0}, Lcom/google/android/material/shape/CornerTreatment;-><init>()V

    .line 9
    iput p1, p0, Lcom/google/android/material/shape/RoundedCornerTreatment;->a:F

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/shape/ShapePath;FF)V
    .locals 7

    mul-float/2addr p3, p2

    const/high16 p0, 0x43340000    # 180.0f

    const/high16 p2, 0x42b40000    # 90.0f

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p3, p0, p2}, Lcom/google/android/material/shape/ShapePath;->e(FFFF)V

    const/high16 p0, 0x40000000    # 2.0f

    mul-float v3, p3, p0

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    move v4, v3

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/material/shape/ShapePath;->a(FFFFFF)V

    return-void
.end method
