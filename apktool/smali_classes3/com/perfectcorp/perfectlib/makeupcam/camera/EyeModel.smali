.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel$a;
    }
.end annotation


# static fields
.field public static final b:[Landroid/graphics/PointF;

.field public static final c:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field public final a:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/PointF;

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->b:[Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->c:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x430e0000    # 142.0f

    const v3, 0x430f8000    # 143.5f

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x42d50000    # 106.5f

    const/high16 v4, 0x43650000    # 229.0f

    invoke-direct {v1, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    const v2, 0x439e4000    # 316.5f

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x43350000    # 181.0f

    invoke-direct {v1, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const-string v1, "EyeModel"

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p3, v0, :cond_2

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->a:[[B

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    invoke-static {p3, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->c(Landroid/content/Context;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v0}, Lcom/perfectcorp/common/utility/ImageUtils;->b(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->a:[[B

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->b(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    aput-object v3, v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->a()Z

    move-result p0

    if-nez p0, :cond_a

    new-instance p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel$a;

    invoke-direct {p0, p2, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel$a;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    sget p1, Lcom/perfectcorp/common/utility/Log;->a:I

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/EnumMap;

    const-class v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;

    invoke-direct {v0, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    sget-object v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/e;->a:[I

    iget-object v8, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v5, :cond_3

    if-eq v7, v3, :cond_3

    if-eq v7, v6, :cond_3

    goto :goto_1

    :cond_3
    iget-object v5, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;

    invoke-virtual {v0, v5, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;->UPPER:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->a:[[B

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    sget-object v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/e;->a:[I

    iget-object v8, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v5, :cond_8

    if-eq v7, v3, :cond_7

    if-eq v7, v6, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unexpected position: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$Position;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move v7, v5

    goto :goto_3

    :cond_8
    move v7, v2

    :goto_3
    invoke-static {p3, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->c(Landroid/content/Context;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v4}, Lcom/perfectcorp/common/utility/ImageUtils;->b(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->a:[[B

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->b(Landroid/graphics/Bitmap;)[B

    move-result-object v8

    aput-object v8, v4, v7

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->a()Z

    move-result p0

    if-nez p0, :cond_a

    new-instance p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel$a;

    invoke-direct {p0, p2, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel$a;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    sget p1, Lcom/perfectcorp/common/utility/Log;->a:I

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/perfectcorp/common/utility/Log;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    return-void
.end method

.method public static b(Landroid/graphics/Bitmap;)[B
    .locals 7

    const-string v0, "bitmap is null!!!"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-eq v3, v4, :cond_1

    div-int v3, v2, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v2, v0, p0}, La61;->i(IILjava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    mul-int v3, v2, v1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    if-ne v0, v2, :cond_2

    return-object p0

    :cond_2
    mul-int v3, v0, v1

    new-array v3, v3, [B

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    mul-int v5, v4, v2

    mul-int v6, v4, v0

    invoke-static {p0, v5, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method public static c(Landroid/content/Context;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;)Landroid/graphics/Bitmap;
    .locals 4

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->b:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/perfectcorp/perfectlib/makeupcam/utility/BitmapUtils;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x12c

    const/16 v2, 0x1c2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/16 v3, 0x145

    if-ne v0, v3, :cond_2

    const/16 v0, 0x19

    :goto_1
    invoke-static {p0, v0, v2, v1, p1}, Lcom/perfectcorp/common/utility/Bitmaps;->b(Landroid/graphics/Bitmap;IIILandroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    return-object p1
.end method


# virtual methods
.method public final a()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeModel;->a:[[B

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v4, v3, v2

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Unassigned images["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x5

    const-string v5, "EyeModel"

    invoke-static {v4, v5, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const v0, 0x20f58

    new-array v0, v0, [B

    aput-object v0, v3, v2

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
