.class public abstract Lcom/google/android/filament/android/TextureHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/filament/Engine;Lcom/google/android/filament/Texture;Landroid/graphics/Bitmap;)V
    .locals 11

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/google/android/filament/Texture;->n(I)I

    move-result v7

    invoke-virtual {p1, v4}, Lcom/google/android/filament/Texture;->l(I)I

    move-result v8

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/android/TextureHelper$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v5, 0x6

    if-eq v0, v5, :cond_1

    :cond_0
    :goto_0
    move v10, v3

    goto :goto_1

    :cond_1
    move v10, v1

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    goto :goto_0

    :cond_3
    move v10, v2

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    if-eq v10, v2, :cond_5

    if-eq v10, v1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/filament/Texture;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v9, p2

    invoke-static/range {v0 .. v10}, Lcom/google/android/filament/android/TextureHelper;->nSetBitmap(JJIIIIILandroid/graphics/Bitmap;I)V

    return-void

    :cond_5
    const-string p0, "Unsupported config: ARGB_4444 or HARDWARE"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method private static native nSetBitmap(JJIIIIILandroid/graphics/Bitmap;I)V
.end method
