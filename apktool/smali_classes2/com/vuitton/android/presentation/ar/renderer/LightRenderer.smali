.class public final Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/vuitton/android/presentation/ar/filament/Filament;",
        "filament",
        "<init>",
        "(Landroid/content/Context;Lcom/vuitton/android/presentation/ar/filament/Filament;)V",
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


# instance fields
.field public final a:Lcom/vuitton/android/presentation/ar/filament/Filament;

.field public final b:Lcom/google/android/filament/Texture;

.field public c:[F

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vuitton/android/presentation/ar/filament/Filament;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;->a:Lcom/vuitton/android/presentation/ar/filament/Filament;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    const-string v3, "reflections/m0_nx.rgb32f"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v7, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {v3, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    iget-object v3, v8, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v4, v8, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    new-instance v7, Lcom/google/android/filament/Texture$Builder;

    invoke-direct {v7}, Lcom/google/android/filament/Texture$Builder;-><init>()V

    iget-wide v8, v7, Lcom/google/android/filament/Texture$Builder;->b:J

    invoke-static {v3, v8, v9}, Lcom/google/android/filament/Texture;->h(IJ)V

    invoke-static {v4, v8, v9}, Lcom/google/android/filament/Texture;->c(IJ)V

    int-to-float v3, v3

    invoke-static {v3}, Lkotlin/math/MathKt;->a(F)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, v5

    invoke-static {v3, v8, v9}, Lcom/google/android/filament/Texture;->e(IJ)V

    sget-object v3, Lcom/google/android/filament/Texture$InternalFormat;->R11F_G11F_B10F:Lcom/google/android/filament/Texture$InternalFormat;

    invoke-virtual {v7, v3}, Lcom/google/android/filament/Texture$Builder;->b(Lcom/google/android/filament/Texture$InternalFormat;)V

    sget-object v3, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_CUBEMAP:Lcom/google/android/filament/Texture$Sampler;

    invoke-virtual {v7, v3}, Lcom/google/android/filament/Texture$Builder;->c(Lcom/google/android/filament/Texture$Sampler;)V

    invoke-static {v8, v9}, Lcom/google/android/filament/Texture;->g(J)V

    invoke-virtual {v7, v0}, Lcom/google/android/filament/Texture$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/filament/Texture;->m()I

    move-result v4

    const/4 v5, 0x0

    move v7, v5

    :goto_0
    if-ge v7, v4, :cond_3

    const-string v8, "m"

    const-string v9, "_"

    invoke-static {v7, v8, v9}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v5, v9, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    invoke-virtual {v3, v7}, Lcom/google/android/filament/Texture;->n(I)I

    move-result v10

    invoke-virtual {v3, v7}, Lcom/google/android/filament/Texture;->l(I)I

    move-result v11

    mul-int/2addr v11, v10

    mul-int/lit8 v10, v11, 0x4

    const/4 v12, 0x6

    new-array v13, v12, [I

    move v14, v5

    :goto_1
    if-ge v14, v12, :cond_0

    mul-int v15, v14, v10

    aput v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    mul-int/lit8 v11, v11, 0x18

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    const-string v18, "pz"

    const-string v19, "nz"

    const-string v14, "px"

    const-string v15, "nx"

    const-string v16, "py"

    const-string v17, "ny"

    filled-new-array/range {v14 .. v19}, [Ljava/lang/String;

    move-result-object v11

    move v14, v5

    :goto_2
    if-ge v14, v12, :cond_2

    aget-object v15, v11, v14

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reflections/"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".rgb32f"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {v5, v6, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v12, v10}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :cond_1
    :goto_3
    :try_start_3
    invoke-static {v5, v6}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    const/4 v12, 0x6

    goto :goto_2

    :goto_4
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v5, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_2
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v5, Lcom/google/android/filament/Texture$PixelBufferDescriptor;

    sget-object v8, Lcom/google/android/filament/Texture$Format;->RGB:Lcom/google/android/filament/Texture$Format;

    sget-object v9, Lcom/google/android/filament/Texture$Type;->UINT_10F_11F_11F_REV:Lcom/google/android/filament/Texture$Type;

    invoke-direct {v5, v10, v8, v9}, Lcom/google/android/filament/Texture$PixelBufferDescriptor;-><init>(Ljava/nio/Buffer;Lcom/google/android/filament/Texture$Format;Lcom/google/android/filament/Texture$Type;)V

    invoke-virtual {v3, v0, v7, v5, v13}, Lcom/google/android/filament/Texture;->o(Lcom/google/android/filament/Engine;ILcom/google/android/filament/Texture$PixelBufferDescriptor;[I)V

    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :catch_0
    :cond_3
    iput-object v3, v1, Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;->b:Lcom/google/android/filament/Texture;

    const/16 v0, 0x1b

    new-array v0, v0, [F

    iput-object v0, v1, Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;->c:[F

    invoke-static {}, Lcom/google/android/filament/EntityManager;->c()Lcom/google/android/filament/EntityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/filament/EntityManager;->a()I

    move-result v0

    iget-object v2, v1, Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;->a:Lcom/vuitton/android/presentation/ar/filament/Filament;

    iget-object v2, v2, Lcom/vuitton/android/presentation/ar/filament/Filament;->e:Lcom/google/android/filament/Scene;

    invoke-virtual {v2, v0}, Lcom/google/android/filament/Scene;->b(I)V

    new-instance v2, Lcom/google/android/filament/LightManager$Builder;

    sget-object v3, Lcom/google/android/filament/LightManager$Type;->DIRECTIONAL:Lcom/google/android/filament/LightManager$Type;

    invoke-direct {v2, v3}, Lcom/google/android/filament/LightManager$Builder;-><init>(Lcom/google/android/filament/LightManager$Type;)V

    iget-wide v3, v2, Lcom/google/android/filament/LightManager$Builder;->b:J

    invoke-static {v3, v4}, Lcom/google/android/filament/LightManager;->b(J)V

    iget-object v3, v1, Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;->a:Lcom/vuitton/android/presentation/ar/filament/Filament;

    iget-object v3, v3, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/filament/LightManager$Builder;->a(Lcom/google/android/filament/Engine;I)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;->a:Lcom/vuitton/android/presentation/ar/filament/Filament;

    iget-object v2, v2, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    iget-object v2, v2, Lcom/google/android/filament/Engine;->c:Lcom/google/android/filament/LightManager;

    invoke-virtual {v2, v0}, Lcom/google/android/filament/LightManager;->l(I)I

    move-result v0

    iput v0, v1, Lcom/vuitton/android/presentation/ar/renderer/LightRenderer;->d:I

    return-void

    :goto_5
    move-object v1, v0

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    :goto_6
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
