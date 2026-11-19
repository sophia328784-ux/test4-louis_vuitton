.class public abstract Lcom/google/android/filament/utils/TextureLoaderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/utils/TextureLoaderKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Lcom/google/android/filament/Engine;Landroid/content/res/Resources;ILcom/google/android/filament/utils/TextureType;)Lcom/google/android/filament/Texture;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Lcom/google/android/filament/utils/TextureType;->COLOR:Lcom/google/android/filament/utils/TextureType;

    const/4 v2, 0x1

    if-ne p3, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/google/android/filament/Texture$Builder;

    invoke-direct {p2}, Lcom/google/android/filament/Texture$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-wide v3, p2, Lcom/google/android/filament/Texture$Builder;->b:J

    invoke-static {v0, v3, v4}, Lcom/google/android/filament/Texture;->h(IJ)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v0, v3, v4}, Lcom/google/android/filament/Texture;->c(IJ)V

    sget-object v0, Lcom/google/android/filament/Texture$Sampler;->SAMPLER_2D:Lcom/google/android/filament/Texture$Sampler;

    invoke-virtual {p2, v0}, Lcom/google/android/filament/Texture$Builder;->c(Lcom/google/android/filament/Texture$Sampler;)V

    sget-object v0, Lcom/google/android/filament/utils/TextureLoaderKt$WhenMappings;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    if-eq p3, v2, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    sget-object p3, Lcom/google/android/filament/Texture$InternalFormat;->RGBA8:Lcom/google/android/filament/Texture$InternalFormat;

    goto :goto_1

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    sget-object p3, Lcom/google/android/filament/Texture$InternalFormat;->RGBA8:Lcom/google/android/filament/Texture$InternalFormat;

    goto :goto_1

    :cond_3
    sget-object p3, Lcom/google/android/filament/Texture$InternalFormat;->SRGB8_A8:Lcom/google/android/filament/Texture$InternalFormat;

    :goto_1
    invoke-virtual {p2, p3}, Lcom/google/android/filament/Texture$Builder;->b(Lcom/google/android/filament/Texture$InternalFormat;)V

    const/16 p3, 0xff

    invoke-static {p3, v3, v4}, Lcom/google/android/filament/Texture;->e(IJ)V

    invoke-static {v3, v4}, Lcom/google/android/filament/Texture;->g(J)V

    invoke-virtual {p2, p0}, Lcom/google/android/filament/Texture$Builder;->a(Lcom/google/android/filament/Engine;)Lcom/google/android/filament/Texture;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/google/android/filament/android/TextureHelper;->a(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, p0}, Lcom/google/android/filament/Texture;->k(Lcom/google/android/filament/Engine;)V

    return-object p2
.end method
