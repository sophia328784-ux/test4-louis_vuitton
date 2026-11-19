.class public Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/gifdecoder/GifDecoder;


# instance fields
.field public a:[I

.field public final b:[I

.field public final c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

.field public d:Ljava/nio/ByteBuffer;

.field public e:[B

.field public f:[S

.field public g:[B

.field public h:[B

.field public i:[B

.field public final j:[I

.field public k:I

.field public l:Lcom/bumptech/glide/gifdecoder/GifHeader;

.field public m:Landroid/graphics/Bitmap;

.field public final n:Z

.field public o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public s:Ljava/lang/Boolean;

.field public t:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 127
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->b:[I

    .line 128
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->t:Landroid/graphics/Bitmap$Config;

    .line 129
    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 130
    new-instance p1, Lcom/bumptech/glide/gifdecoder/GifHeader;

    invoke-direct {p1}, Lcom/bumptech/glide/gifdecoder/GifHeader;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 125
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/bumptech/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;-><init>(Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V

    const-string p1, "Sample size must be >=0, not: "

    monitor-enter p0

    if-lez p4, :cond_2

    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    const/4 p4, 0x0

    iput p4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->o:I

    iput-object p2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->d:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-boolean p4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->n:Z

    iget-object p3, p2, Lcom/bumptech/glide/gifdecoder/GifHeader;->e:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget p4, p4, Lcom/bumptech/glide/gifdecoder/GifFrame;->g:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->n:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->p:I

    iget p3, p2, Lcom/bumptech/glide/gifdecoder/GifHeader;->f:I

    div-int p4, p3, p1

    iput p4, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->r:I

    iget p2, p2, Lcom/bumptech/glide/gifdecoder/GifHeader;->g:I

    div-int p1, p2, p1

    iput p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->q:I

    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    mul-int/2addr p3, p2

    invoke-interface {p1, p3}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->b(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    iget-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    iget p2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->r:I

    iget p3, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->q:I

    mul-int/2addr p2, p3

    invoke-interface {p1, p2}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->d(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->j:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/graphics/Bitmap;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    if-gez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    const-string v0, "StandardGifDecoder"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->c:I

    :cond_1
    iput v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->o:I

    :cond_2
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->o:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_9

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->o:I

    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->e:[B

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    const/16 v6, 0xff

    invoke-interface {v5, v6}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->b(I)[B

    move-result-object v5

    iput-object v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->e:[B

    :cond_4
    iget-object v5, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v5, v5, Lcom/bumptech/glide/gifdecoder/GifHeader;->e:Ljava/util/ArrayList;

    iget v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget v6, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    sub-int/2addr v6, v2

    if-ltz v6, :cond_5

    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v7, v7, Lcom/bumptech/glide/gifdecoder/GifHeader;->e:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bumptech/glide/gifdecoder/GifFrame;

    goto :goto_1

    :cond_5
    move-object v6, v3

    :goto_1
    iget-object v7, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->k:[I

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v7, v7, Lcom/bumptech/glide/gifdecoder/GifHeader;->a:[I

    :goto_2
    iput-object v7, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->a:[I

    if-nez v7, :cond_7

    const-string v0, "StandardGifDecoder"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    iput v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    :cond_7
    :try_start_1
    iget-boolean v1, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->f:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->b:[I

    array-length v2, v7

    invoke-static {v7, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->b:[I

    iput-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->a:[I

    iget v2, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->h:I

    aput v0, v1, v2

    iget v0, v5, Lcom/bumptech/glide/gifdecoder/GifFrame;->g:I

    if-ne v0, v4, :cond_8

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    if-nez v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->s:Ljava/lang/Boolean;

    :cond_8
    invoke-virtual {p0, v5, v6}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->h(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_9
    :goto_3
    :try_start_2
    const-string v0, "StandardGifDecoder"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v3

    :goto_4
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifHeader;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    return-void
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget p0, p0, Lcom/bumptech/glide/gifdecoder/GifHeader;->c:I

    return p0
.end method

.method public final clear()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    iget-object v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    if-eqz v1, :cond_0

    invoke-interface {v2, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->e([B)V

    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->j:[I

    if-eqz v1, :cond_1

    invoke-interface {v2, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->f([I)V

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->m:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-interface {v2, v1}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->a(Landroid/graphics/Bitmap;)V

    :cond_2
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->m:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->d:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->s:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->e:[B

    if-eqz p0, :cond_3

    invoke-interface {v2, p0}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->e([B)V

    :cond_3
    return-void
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v1, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->c:I

    if-lez v1, :cond_2

    iget p0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p0, :cond_1

    if-ge p0, v1, :cond_1

    iget-object v0, v0, Lcom/bumptech/glide/gifdecoder/GifHeader;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/gifdecoder/GifFrame;

    iget p0, p0, Lcom/bumptech/glide/gifdecoder/GifFrame;->i:I

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    return p0
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->j:[I

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x4

    add-int/2addr p0, v0

    return p0
.end method

.method public final g()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->s:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->t:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    iget v1, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->r:I

    iget v2, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->q:I

    iget-object p0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    invoke-interface {p0, v1, v2, v0}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->c(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object p0
.end method

.method public final getData()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->d:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final h(Lcom/bumptech/glide/gifdecoder/GifFrame;Lcom/bumptech/glide/gifdecoder/GifFrame;)Landroid/graphics/Bitmap;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->c:Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    const/4 v4, 0x0

    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->j:[I

    if-nez v2, :cond_1

    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->m:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    invoke-interface {v3, v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->m:Landroid/graphics/Bitmap;

    invoke-static {v6, v4}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v13, 0x3

    if-eqz v2, :cond_2

    iget v5, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->g:I

    if-ne v5, v13, :cond_2

    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->m:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    invoke-static {v6, v4}, Ljava/util/Arrays;->fill([II)V

    :cond_2
    iget v14, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->r:I

    iget v15, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->p:I

    const/4 v5, 0x2

    if-eqz v2, :cond_6

    iget v7, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->g:I

    if-lez v7, :cond_6

    if-ne v7, v5, :cond_7

    iget-boolean v7, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->f:Z

    if-nez v7, :cond_3

    iget-object v7, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->l:Lcom/bumptech/glide/gifdecoder/GifHeader;

    iget v8, v7, Lcom/bumptech/glide/gifdecoder/GifHeader;->k:I

    iget-object v9, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->k:[I

    if-eqz v9, :cond_4

    iget v7, v7, Lcom/bumptech/glide/gifdecoder/GifHeader;->j:I

    iget v9, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->h:I

    if-ne v7, v9, :cond_4

    :cond_3
    move v8, v4

    :cond_4
    iget v7, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->d:I

    div-int/2addr v7, v15

    iget v9, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->b:I

    div-int/2addr v9, v15

    iget v10, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    div-int/2addr v10, v15

    iget v2, v2, Lcom/bumptech/glide/gifdecoder/GifFrame;->a:I

    div-int/2addr v2, v15

    mul-int/2addr v9, v14

    add-int/2addr v9, v2

    mul-int/2addr v7, v14

    add-int/2addr v7, v9

    :goto_0
    if-ge v9, v7, :cond_6

    add-int v2, v9, v10

    move v11, v9

    :goto_1
    if-ge v11, v2, :cond_5

    aput v8, v6, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v9, v14

    goto :goto_0

    :cond_6
    move v2, v5

    goto :goto_2

    :cond_7
    if-ne v7, v13, :cond_6

    move v2, v5

    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->m:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_8

    const/4 v10, 0x0

    iget v12, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->q:I

    const/4 v7, 0x0

    iget v8, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->r:I

    const/4 v9, 0x0

    move v11, v8

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_8
    :goto_2
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->d:Ljava/nio/ByteBuffer;

    iget v7, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->j:I

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v5, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    iget v7, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->d:I

    mul-int/2addr v5, v7

    iget-object v7, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    if-eqz v7, :cond_9

    array-length v7, v7

    if-ge v7, v5, :cond_a

    :cond_9
    invoke-interface {v3, v5}, Lcom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;->b(I)[B

    move-result-object v3

    iput-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    :cond_a
    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    iget-object v7, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->f:[S

    const/16 v8, 0x1000

    if-nez v7, :cond_b

    new-array v7, v8, [S

    iput-object v7, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->f:[S

    :cond_b
    iget-object v7, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->f:[S

    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->g:[B

    if-nez v9, :cond_c

    new-array v9, v8, [B

    iput-object v9, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->g:[B

    :cond_c
    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->g:[B

    iget-object v10, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->h:[B

    if-nez v10, :cond_d

    const/16 v10, 0x1001

    new-array v10, v10, [B

    iput-object v10, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->h:[B

    :cond_d
    iget-object v10, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->h:[B

    iget-object v11, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x1

    shl-int v2, v12, v11

    move/from16 v16, v12

    add-int/lit8 v12, v2, 0x1

    add-int/lit8 v17, v2, 0x2

    add-int/lit8 v11, v11, 0x1

    shl-int v18, v16, v11

    add-int/lit8 v18, v18, -0x1

    move v8, v4

    :goto_3
    if-ge v8, v2, :cond_e

    aput-short v4, v7, v8

    int-to-byte v13, v8

    aput-byte v13, v9, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v13, 0x3

    goto :goto_3

    :cond_e
    iget-object v8, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->e:[B

    move v13, v4

    move/from16 v22, v13

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v30, v26

    move/from16 v31, v30

    move/from16 v29, v11

    move/from16 v27, v17

    move/from16 v28, v18

    const/16 v20, -0x1

    const/16 v21, -0x1

    :goto_4
    const/16 v32, 0x8

    if-ge v13, v5, :cond_1a

    if-nez v22, :cond_11

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    if-gtz v4, :cond_f

    move/from16 v22, v4

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v35, v8

    goto :goto_5

    :cond_f
    move-object/from16 v33, v6

    iget-object v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->d:Ljava/nio/ByteBuffer;

    move-object/from16 v34, v7

    iget-object v7, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->e:[B

    move-object/from16 v35, v8

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    move/from16 v22, v4

    const/4 v4, 0x0

    invoke-virtual {v6, v7, v4, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_5
    if-gtz v22, :cond_10

    const/4 v4, 0x3

    iput v4, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->o:I

    const/4 v4, 0x0

    :goto_6
    move/from16 v2, v26

    goto/16 :goto_e

    :cond_10
    const/16 v23, 0x0

    goto :goto_7

    :cond_11
    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v35, v8

    :goto_7
    aget-byte v4, v35, v23

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v24

    add-int v25, v25, v4

    add-int/lit8 v24, v24, 0x8

    add-int/lit8 v23, v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v4, v21

    move/from16 v6, v24

    move/from16 v7, v27

    move/from16 v8, v29

    move-object/from16 v21, v9

    move/from16 v9, v30

    :goto_8
    move/from16 v24, v6

    if-lt v6, v8, :cond_19

    and-int v6, v25, v28

    shr-int v25, v25, v8

    sub-int v24, v24, v8

    if-ne v6, v2, :cond_12

    move v8, v11

    move/from16 v7, v17

    move/from16 v28, v18

    move/from16 v4, v20

    move/from16 v6, v24

    goto :goto_8

    :cond_12
    if-ne v6, v12, :cond_13

    move/from16 v27, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move-object/from16 v9, v21

    move-object/from16 v6, v33

    move-object/from16 v7, v34

    move-object/from16 v8, v35

    move/from16 v21, v4

    :goto_9
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_13
    move/from16 v27, v8

    move/from16 v8, v20

    if-ne v4, v8, :cond_14

    aget-byte v4, v21, v6

    aput-byte v4, v3, v26

    add-int/lit8 v26, v26, 0x1

    add-int/lit8 v13, v13, 0x1

    move v4, v6

    move v9, v4

    move/from16 v6, v24

    move/from16 v8, v27

    :goto_a
    const/16 v20, -0x1

    goto :goto_8

    :cond_14
    if-lt v6, v7, :cond_15

    int-to-byte v8, v9

    aput-byte v8, v10, v31

    add-int/lit8 v31, v31, 0x1

    move v8, v4

    goto :goto_b

    :cond_15
    move v8, v6

    :goto_b
    if-lt v8, v2, :cond_16

    aget-byte v9, v21, v8

    aput-byte v9, v10, v31

    add-int/lit8 v31, v31, 0x1

    aget-short v8, v34, v8

    goto :goto_b

    :cond_16
    aget-byte v8, v21, v8

    and-int/lit16 v9, v8, 0xff

    int-to-byte v8, v9

    aput-byte v8, v3, v26

    :goto_c
    add-int/lit8 v26, v26, 0x1

    add-int/lit8 v13, v13, 0x1

    if-lez v31, :cond_17

    add-int/lit8 v31, v31, -0x1

    aget-byte v29, v10, v31

    aput-byte v29, v3, v26

    goto :goto_c

    :cond_17
    move/from16 v29, v2

    const/16 v2, 0x1000

    if-ge v7, v2, :cond_18

    int-to-short v4, v4

    aput-short v4, v34, v7

    aput-byte v8, v21, v7

    add-int/lit8 v7, v7, 0x1

    and-int v4, v7, v28

    if-nez v4, :cond_18

    if-ge v7, v2, :cond_18

    add-int/lit8 v8, v27, 0x1

    add-int v28, v28, v7

    goto :goto_d

    :cond_18
    move/from16 v8, v27

    :goto_d
    move v4, v6

    move/from16 v6, v24

    move/from16 v2, v29

    goto :goto_a

    :cond_19
    move/from16 v27, v8

    move/from16 v30, v9

    move-object/from16 v9, v21

    move/from16 v29, v27

    move-object/from16 v6, v33

    move-object/from16 v8, v35

    const/16 v20, -0x1

    move/from16 v21, v4

    move/from16 v27, v7

    move-object/from16 v7, v34

    goto :goto_9

    :cond_1a
    move-object/from16 v33, v6

    goto/16 :goto_6

    :goto_e
    invoke-static {v3, v2, v5, v4}, Ljava/util/Arrays;->fill([BIIB)V

    iget-boolean v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->e:Z

    iget-object v3, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->j:[I

    if-nez v2, :cond_1b

    move/from16 v2, v16

    if-eq v15, v2, :cond_1c

    :cond_1b
    move-object/from16 v18, v3

    goto/16 :goto_14

    :cond_1c
    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->d:I

    iget v5, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->b:I

    iget v6, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    iget v7, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->a:I

    iget v8, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    if-nez v8, :cond_1d

    const/4 v8, 0x1

    goto :goto_f

    :cond_1d
    move v8, v4

    :goto_f
    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    iget-object v10, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->a:[I

    move v11, v4

    const/4 v12, -0x1

    :goto_10
    if-ge v11, v2, :cond_22

    add-int v13, v11, v5

    mul-int/2addr v13, v14

    add-int v15, v13, v7

    add-int v4, v15, v6

    add-int/2addr v13, v14

    if-ge v13, v4, :cond_1e

    move v4, v13

    :cond_1e
    iget v13, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    mul-int/2addr v13, v11

    :goto_11
    if-ge v15, v4, :cond_21

    move/from16 v17, v2

    aget-byte v2, v9, v13

    move-object/from16 v18, v3

    and-int/lit16 v3, v2, 0xff

    if-eq v3, v12, :cond_20

    aget v3, v10, v3

    if-eqz v3, :cond_1f

    aput v3, v18, v15

    goto :goto_12

    :cond_1f
    move v12, v2

    :cond_20
    :goto_12
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v17

    move-object/from16 v3, v18

    goto :goto_11

    :cond_21
    move/from16 v17, v2

    move-object/from16 v18, v3

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_10

    :cond_22
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->s:Ljava/lang/Boolean;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_24

    :cond_23
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->s:Ljava/lang/Boolean;

    if-nez v2, :cond_25

    if-eqz v8, :cond_25

    const/4 v8, -0x1

    if-eq v12, v8, :cond_25

    :cond_24
    const/4 v4, 0x1

    goto :goto_13

    :cond_25
    const/4 v4, 0x0

    :goto_13
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->s:Ljava/lang/Boolean;

    goto/16 :goto_24

    :goto_14
    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->d:I

    div-int/2addr v2, v15

    iget v3, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->b:I

    div-int/2addr v3, v15

    iget v4, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    div-int/2addr v4, v15

    iget v5, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->a:I

    div-int/2addr v5, v15

    iget v6, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->k:I

    if-nez v6, :cond_26

    const/4 v6, 0x1

    goto :goto_15

    :cond_26
    const/4 v6, 0x0

    :goto_15
    iget-object v7, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    iget-object v8, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->a:[I

    iget-object v9, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->s:Ljava/lang/Boolean;

    move-object v12, v9

    move/from16 v11, v32

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x1

    :goto_16
    if-ge v9, v2, :cond_3c

    move/from16 v17, v3

    iget-boolean v3, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->e:Z

    if-eqz v3, :cond_2b

    if-lt v10, v2, :cond_2a

    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x2

    if-eq v13, v3, :cond_29

    const/4 v3, 0x3

    if-eq v13, v3, :cond_28

    const/4 v3, 0x4

    if-eq v13, v3, :cond_27

    goto :goto_17

    :cond_27
    const/4 v10, 0x1

    const/4 v11, 0x2

    goto :goto_17

    :cond_28
    const/4 v3, 0x4

    move v11, v3

    const/4 v10, 0x2

    goto :goto_17

    :cond_29
    const/4 v3, 0x4

    move v10, v3

    :cond_2a
    :goto_17
    add-int v3, v10, v11

    goto :goto_18

    :cond_2b
    move v3, v10

    move v10, v9

    :goto_18
    add-int v10, v10, v17

    move/from16 v19, v2

    const/4 v2, 0x1

    if-ne v15, v2, :cond_2c

    const/16 v20, 0x1

    goto :goto_19

    :cond_2c
    const/16 v20, 0x0

    :goto_19
    iget v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->q:I

    if-ge v10, v2, :cond_3b

    mul-int/2addr v10, v14

    add-int v2, v10, v5

    move/from16 v21, v2

    add-int v2, v21, v4

    add-int/2addr v10, v14

    if-ge v10, v2, :cond_2d

    move v2, v10

    :cond_2d
    mul-int v10, v9, v15

    move/from16 v22, v3

    iget v3, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    mul-int/2addr v10, v3

    if-eqz v20, :cond_31

    move/from16 v3, v21

    :goto_1a
    if-ge v3, v2, :cond_30

    move/from16 v20, v3

    aget-byte v3, v7, v10

    and-int/lit16 v3, v3, 0xff

    aget v3, v8, v3

    if-eqz v3, :cond_2e

    aput v3, v18, v20

    goto :goto_1b

    :cond_2e
    if-eqz v6, :cond_2f

    if-nez v12, :cond_2f

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v12, v3

    :cond_2f
    :goto_1b
    add-int/2addr v10, v15

    add-int/lit8 v3, v20, 0x1

    goto :goto_1a

    :cond_30
    :goto_1c
    move/from16 v29, v4

    move/from16 v30, v5

    goto/16 :goto_22

    :cond_31
    sub-int v3, v2, v21

    mul-int/2addr v3, v15

    add-int/2addr v3, v10

    move-object/from16 v20, v12

    move v12, v10

    move/from16 v10, v21

    :goto_1d
    if-ge v10, v2, :cond_3a

    move/from16 v21, v2

    iget v2, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->c:I

    move/from16 v28, v2

    move/from16 v29, v4

    move v2, v12

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_1e
    add-int v4, v12, v15

    if-ge v2, v4, :cond_33

    iget-object v4, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    move/from16 v30, v5

    array-length v5, v4

    if-ge v2, v5, :cond_34

    if-ge v2, v3, :cond_34

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->a:[I

    aget v4, v5, v4

    if-eqz v4, :cond_32

    shr-int/lit8 v5, v4, 0x18

    and-int/lit16 v5, v5, 0xff

    add-int v23, v23, v5

    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    add-int v24, v24, v5

    shr-int/lit8 v5, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int v25, v25, v5

    and-int/lit16 v4, v4, 0xff

    add-int v26, v26, v4

    add-int/lit8 v27, v27, 0x1

    :cond_32
    add-int/lit8 v2, v2, 0x1

    move/from16 v5, v30

    goto :goto_1e

    :cond_33
    move/from16 v30, v5

    :cond_34
    add-int v2, v12, v28

    move v4, v2

    :goto_1f
    add-int v5, v2, v15

    if-ge v4, v5, :cond_36

    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->i:[B

    move/from16 v28, v2

    array-length v2, v5

    if-ge v4, v2, :cond_36

    if-ge v4, v3, :cond_36

    aget-byte v2, v5, v4

    and-int/lit16 v2, v2, 0xff

    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->a:[I

    aget v2, v5, v2

    if-eqz v2, :cond_35

    shr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    add-int v23, v23, v5

    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    add-int v24, v24, v5

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int v25, v25, v5

    and-int/lit16 v2, v2, 0xff

    add-int v26, v26, v2

    add-int/lit8 v27, v27, 0x1

    :cond_35
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v28

    goto :goto_1f

    :cond_36
    if-nez v27, :cond_37

    const/4 v4, 0x0

    goto :goto_20

    :cond_37
    div-int v23, v23, v27

    shl-int/lit8 v2, v23, 0x18

    div-int v24, v24, v27

    shl-int/lit8 v4, v24, 0x10

    or-int/2addr v2, v4

    div-int v25, v25, v27

    shl-int/lit8 v4, v25, 0x8

    or-int/2addr v2, v4

    div-int v26, v26, v27

    or-int v4, v2, v26

    :goto_20
    if-eqz v4, :cond_38

    aput v4, v18, v10

    goto :goto_21

    :cond_38
    if-eqz v6, :cond_39

    if-nez v20, :cond_39

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v20, v2

    :cond_39
    :goto_21
    add-int/2addr v12, v15

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v21

    move/from16 v4, v29

    move/from16 v5, v30

    goto/16 :goto_1d

    :cond_3a
    move/from16 v29, v4

    move/from16 v30, v5

    move-object/from16 v12, v20

    goto :goto_22

    :cond_3b
    move/from16 v22, v3

    goto/16 :goto_1c

    :goto_22
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v17

    move/from16 v2, v19

    move/from16 v10, v22

    move/from16 v4, v29

    move/from16 v5, v30

    goto/16 :goto_16

    :cond_3c
    iget-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->s:Ljava/lang/Boolean;

    if-nez v2, :cond_3e

    if-nez v12, :cond_3d

    const/4 v4, 0x0

    goto :goto_23

    :cond_3d
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_23
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->s:Ljava/lang/Boolean;

    :cond_3e
    :goto_24
    iget-boolean v2, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->n:Z

    if-eqz v2, :cond_3f

    iget v1, v1, Lcom/bumptech/glide/gifdecoder/GifFrame;->g:I

    if-eqz v1, :cond_40

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3f

    goto :goto_25

    :cond_3f
    move-object/from16 v6, v33

    goto :goto_26

    :cond_40
    :goto_25
    iget-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->m:Landroid/graphics/Bitmap;

    if-nez v1, :cond_41

    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->g()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->m:Landroid/graphics/Bitmap;

    :cond_41
    iget-object v5, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->m:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    iget v12, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->q:I

    const/4 v7, 0x0

    iget v8, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->r:I

    const/4 v9, 0x0

    move v11, v8

    move-object/from16 v6, v33

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :goto_26
    invoke-virtual {v0}, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->g()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v10, 0x0

    iget v12, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->q:I

    const/4 v7, 0x0

    iget v8, v0, Lcom/bumptech/glide/gifdecoder/StandardGifDecoder;->r:I

    const/4 v9, 0x0

    move v11, v8

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v5
.end method
