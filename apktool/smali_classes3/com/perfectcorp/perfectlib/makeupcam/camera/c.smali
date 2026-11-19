.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

.field public final b:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

.field public final c:Ljava/lang/Object;

.field public final d:Z

.field public final e:Lcom/perfectcorp/perfectlib/core/BaseVenus;

.field public f:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

.field public g:Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;ZLjava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;)V

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/c;Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->a:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->b:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->e:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iput-boolean p5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->d:Z

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public static c(Landroid/graphics/Bitmap;)[B
    .locals 8

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

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v3, v4, :cond_1

    div-int v3, v2, v0

    const/4 v4, 0x4

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

    div-int/lit8 v3, v2, 0x4

    if-ne v0, v3, :cond_2

    return-object p0

    :cond_2
    mul-int v3, v0, v1

    shl-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_3

    mul-int v5, v4, v2

    mul-int v6, v4, v0

    shl-int/lit8 v6, v6, 0x2

    shl-int/lit8 v7, v0, 0x2

    invoke-static {p0, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v3
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->b:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;->a:Ljava/nio/ByteBuffer;

    iget v5, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;->c:I

    iget v6, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;->d:I

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;->b:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    invoke-virtual {v3, v5, v6, v2, v4}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->p(IILcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->a:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;->a:Ljava/nio/ByteBuffer;

    iget v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;->c:I

    iget v5, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;->d:I

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a$a;->b:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    invoke-virtual {v2, v4, v5, v1, v3}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->p(IILcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b(Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;->c(Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;Lcom/perfectcorp/perfectlib/makeupcam/camera/c;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/c;Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->b(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->b(Ljava/util/ArrayList;)V

    return-void
.end method
