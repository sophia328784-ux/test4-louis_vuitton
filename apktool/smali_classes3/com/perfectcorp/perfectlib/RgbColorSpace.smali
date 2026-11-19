.class public final Lcom/perfectcorp/perfectlib/RgbColorSpace;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "r < 0"

    invoke-static {v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    const/16 v2, 0xff

    if-gt p1, v2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    const-string v4, "r > 255"

    invoke-static {v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    if-ltz p2, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    const-string v4, "g < 0"

    invoke-static {v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    if-gt p2, v2, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v0

    :goto_3
    const-string v4, "g > 255"

    invoke-static {v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    if-ltz p3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    move v3, v0

    :goto_4
    const-string v4, "b < 0"

    invoke-static {v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    if-gt p3, v2, :cond_5

    move v0, v1

    :cond_5
    const-string v1, "b > 255"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    iput p1, p0, Lcom/perfectcorp/perfectlib/RgbColorSpace;->a:I

    iput p2, p0, Lcom/perfectcorp/perfectlib/RgbColorSpace;->b:I

    iput p3, p0, Lcom/perfectcorp/perfectlib/RgbColorSpace;->c:I

    return-void
.end method


# virtual methods
.method public final getB()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/RgbColorSpace;->c:I

    return p0
.end method

.method public final getG()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/RgbColorSpace;->b:I

    return p0
.end method

.method public final getR()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/RgbColorSpace;->a:I

    return p0
.end method
