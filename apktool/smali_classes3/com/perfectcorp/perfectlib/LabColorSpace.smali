.class public final Lcom/perfectcorp/perfectlib/LabColorSpace;
.super Ljava/lang/Object;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "L* < 0"

    invoke-static {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v3, "L* > 100"

    invoke-static {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    const/high16 v0, -0x3d000000    # -128.0f

    cmpg-float v3, p2, v0

    if-ltz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    const-string v4, "a* < -128"

    invoke-static {v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    const/high16 v3, 0x43000000    # 128.0f

    cmpl-float v4, p2, v3

    if-gtz v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    const-string v5, "a* > 128"

    invoke-static {v4, v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    const-string v4, "b* < -128"

    invoke-static {v0, v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    cmpl-float v0, p3, v3

    if-gtz v0, :cond_5

    move v1, v2

    :cond_5
    const-string v0, "b* > 128"

    invoke-static {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    iput p1, p0, Lcom/perfectcorp/perfectlib/LabColorSpace;->a:F

    iput p2, p0, Lcom/perfectcorp/perfectlib/LabColorSpace;->b:F

    iput p3, p0, Lcom/perfectcorp/perfectlib/LabColorSpace;->c:F

    return-void
.end method


# virtual methods
.method public final getA()F
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/LabColorSpace;->b:F

    return p0
.end method

.method public final getB()F
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/LabColorSpace;->c:F

    return p0
.end method

.method public final getL()F
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/LabColorSpace;->a:F

    return p0
.end method
