.class public Lcom/batch/android/e0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/e0/b;


# static fields
.field private static final A:Ljava/lang/String; = "h"

.field private static final B:I = 0x1000

.field private static final C:I = -0x1

.field private static final D:I = -0x1

.field private static final E:I = 0x4

.field private static final F:I = 0xff

.field private static final G:I


# instance fields
.field private f:[I

.field private final g:[I

.field private final h:Lcom/batch/android/e0/b$a;

.field private i:Ljava/nio/ByteBuffer;

.field private j:[B

.field private k:Lcom/batch/android/e0/f;

.field private l:[S

.field private m:[B

.field private n:[B

.field private o:[B

.field private p:[I

.field private q:I

.field private r:Lcom/batch/android/e0/e;

.field private s:Landroid/graphics/Bitmap;

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Ljava/lang/Boolean;

.field private z:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lcom/batch/android/e0/b$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/batch/android/e0/h;->g:[I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/batch/android/e0/h;->z:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/batch/android/e0/h;->h:Lcom/batch/android/e0/b$a;

    new-instance p1, Lcom/batch/android/e0/e;

    invoke-direct {p1}, Lcom/batch/android/e0/e;-><init>()V

    iput-object p1, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/e0/b$a;Lcom/batch/android/e0/e;Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x1

    .line 23
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/batch/android/e0/h;-><init>(Lcom/batch/android/e0/b$a;Lcom/batch/android/e0/e;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/e0/b$a;Lcom/batch/android/e0/e;Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/batch/android/e0/h;-><init>(Lcom/batch/android/e0/b$a;)V

    .line 25
    invoke-virtual {p0, p2, p3, p4}, Lcom/batch/android/e0/h;->a(Lcom/batch/android/e0/e;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/e0/b$a;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 26
    invoke-static {p2}, Lcom/batch/android/e0/f;->a(Ljava/nio/ByteBuffer;)Lcom/batch/android/e0/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/batch/android/e0/h;-><init>(Lcom/batch/android/e0/b$a;Lcom/batch/android/e0/e;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private a(III)I
    .locals 9

    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 291
    :goto_0
    iget v7, p0, Lcom/batch/android/e0/h;->v:I

    add-int/2addr v7, p1

    if-ge v1, v7, :cond_1

    iget-object v7, p0, Lcom/batch/android/e0/h;->o:[B

    array-length v8, v7

    if-ge v1, v8, :cond_1

    if-ge v1, p2, :cond_1

    .line 292
    aget-byte v7, v7, v1

    and-int/lit16 v7, v7, 0xff

    .line 293
    iget-object v8, p0, Lcom/batch/android/e0/h;->f:[I

    aget v7, v8, v7

    if-eqz v7, :cond_0

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v3, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr p1, p3

    move p3, p1

    .line 294
    :goto_1
    iget v1, p0, Lcom/batch/android/e0/h;->v:I

    add-int/2addr v1, p1

    if-ge p3, v1, :cond_3

    iget-object v1, p0, Lcom/batch/android/e0/h;->o:[B

    array-length v7, v1

    if-ge p3, v7, :cond_3

    if-ge p3, p2, :cond_3

    .line 295
    aget-byte v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    .line 296
    iget-object v7, p0, Lcom/batch/android/e0/h;->f:[I

    aget v1, v7, v1

    if-eqz v1, :cond_2

    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v2, v1

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    if-nez v6, :cond_4

    return v0

    .line 297
    :cond_4
    div-int/2addr v5, v6

    shl-int/lit8 p0, v5, 0x18

    div-int/2addr v4, v6

    shl-int/lit8 p1, v4, 0x10

    or-int/2addr p0, p1

    div-int/2addr v3, v6

    shl-int/lit8 p1, v3, 0x8

    or-int/2addr p0, p1

    div-int/2addr v2, v6

    or-int/2addr p0, v2

    return p0
.end method

.method private a(Lcom/batch/android/e0/d;Lcom/batch/android/e0/d;)Landroid/graphics/Bitmap;
    .locals 8

    .line 257
    iget-object v1, p0, Lcom/batch/android/e0/h;->p:[I

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/batch/android/e0/h;->s:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 259
    iget-object v3, p0, Lcom/batch/android/e0/h;->h:Lcom/batch/android/e0/b$a;

    invoke-interface {v3, v2}, Lcom/batch/android/e0/b$a;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 v2, 0x0

    .line 260
    iput-object v2, p0, Lcom/batch/android/e0/h;->s:Landroid/graphics/Bitmap;

    .line 261
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v2, 0x3

    if-eqz p2, :cond_2

    .line 262
    iget v3, p2, Lcom/batch/android/e0/d;->g:I

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Lcom/batch/android/e0/h;->s:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 263
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_2
    if-eqz p2, :cond_8

    .line 264
    iget v3, p2, Lcom/batch/android/e0/d;->g:I

    if-lez v3, :cond_8

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 265
    iget-boolean v2, p1, Lcom/batch/android/e0/d;->f:Z

    if-nez v2, :cond_4

    .line 266
    iget-object v2, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    iget v3, v2, Lcom/batch/android/e0/e;->l:I

    .line 267
    iget-object v4, p1, Lcom/batch/android/e0/d;->k:[I

    if-eqz v4, :cond_3

    iget v2, v2, Lcom/batch/android/e0/e;->j:I

    iget v4, p1, Lcom/batch/android/e0/d;->h:I

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    .line 268
    :cond_4
    iget v2, p0, Lcom/batch/android/e0/h;->q:I

    if-nez v2, :cond_5

    .line 269
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/batch/android/e0/h;->y:Ljava/lang/Boolean;

    .line 270
    :cond_5
    :goto_0
    iget v2, p2, Lcom/batch/android/e0/d;->d:I

    iget v3, p0, Lcom/batch/android/e0/h;->v:I

    div-int/2addr v2, v3

    .line 271
    iget v4, p2, Lcom/batch/android/e0/d;->b:I

    div-int/2addr v4, v3

    .line 272
    iget v5, p2, Lcom/batch/android/e0/d;->c:I

    div-int/2addr v5, v3

    .line 273
    iget p2, p2, Lcom/batch/android/e0/d;->a:I

    div-int/2addr p2, v3

    .line 274
    iget v3, p0, Lcom/batch/android/e0/h;->x:I

    mul-int/2addr v4, v3

    add-int/2addr v4, p2

    mul-int/2addr v2, v3

    add-int/2addr v2, v4

    :goto_1
    if-ge v4, v2, :cond_8

    add-int p2, v4, v5

    move v3, v4

    :goto_2
    if-ge v3, p2, :cond_6

    .line 275
    aput v0, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 276
    :cond_6
    iget p2, p0, Lcom/batch/android/e0/h;->x:I

    add-int/2addr v4, p2

    goto :goto_1

    :cond_7
    if-ne v3, v2, :cond_8

    .line 277
    iget-object v0, p0, Lcom/batch/android/e0/h;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 278
    iget v3, p0, Lcom/batch/android/e0/h;->x:I

    iget v7, p0, Lcom/batch/android/e0/h;->w:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 279
    :cond_8
    invoke-direct {p0, p1}, Lcom/batch/android/e0/h;->c(Lcom/batch/android/e0/d;)V

    .line 280
    iget-boolean p2, p1, Lcom/batch/android/e0/d;->e:Z

    const/4 v0, 0x1

    if-nez p2, :cond_a

    iget p2, p0, Lcom/batch/android/e0/h;->v:I

    if-eq p2, v0, :cond_9

    goto :goto_3

    .line 281
    :cond_9
    invoke-direct {p0, p1}, Lcom/batch/android/e0/h;->b(Lcom/batch/android/e0/d;)V

    goto :goto_4

    .line 282
    :cond_a
    :goto_3
    invoke-direct {p0, p1}, Lcom/batch/android/e0/h;->a(Lcom/batch/android/e0/d;)V

    .line 283
    :goto_4
    iget-boolean p2, p0, Lcom/batch/android/e0/h;->t:Z

    if-eqz p2, :cond_d

    iget p1, p1, Lcom/batch/android/e0/d;->g:I

    if-eqz p1, :cond_b

    if-ne p1, v0, :cond_d

    .line 284
    :cond_b
    iget-object p1, p0, Lcom/batch/android/e0/h;->s:Landroid/graphics/Bitmap;

    if-nez p1, :cond_c

    .line 285
    invoke-direct {p0}, Lcom/batch/android/e0/h;->p()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/e0/h;->s:Landroid/graphics/Bitmap;

    .line 286
    :cond_c
    iget-object v0, p0, Lcom/batch/android/e0/h;->s:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/batch/android/e0/h;->x:I

    iget v7, p0, Lcom/batch/android/e0/h;->w:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 287
    :cond_d
    invoke-direct {p0}, Lcom/batch/android/e0/h;->p()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 288
    iget v3, p0, Lcom/batch/android/e0/h;->x:I

    iget v7, p0, Lcom/batch/android/e0/h;->w:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0
.end method

.method private a(Lcom/batch/android/e0/d;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/batch/android/e0/h;->p:[I

    iget v3, v1, Lcom/batch/android/e0/d;->d:I

    iget v4, v0, Lcom/batch/android/e0/h;->v:I

    div-int/2addr v3, v4

    iget v5, v1, Lcom/batch/android/e0/d;->b:I

    div-int/2addr v5, v4

    iget v6, v1, Lcom/batch/android/e0/d;->c:I

    div-int/2addr v6, v4

    iget v7, v1, Lcom/batch/android/e0/d;->a:I

    div-int/2addr v7, v4

    iget v8, v0, Lcom/batch/android/e0/h;->q:I

    if-nez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    iget v11, v0, Lcom/batch/android/e0/h;->x:I

    iget v12, v0, Lcom/batch/android/e0/h;->w:I

    iget-object v13, v0, Lcom/batch/android/e0/h;->o:[B

    iget-object v14, v0, Lcom/batch/android/e0/h;->f:[I

    iget-object v15, v0, Lcom/batch/android/e0/h;->y:Ljava/lang/Boolean;

    const/16 v16, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x1

    :goto_1
    if-ge v10, v3, :cond_10

    move-object/from16 v19, v2

    iget-boolean v2, v1, Lcom/batch/android/e0/d;->e:Z

    if-eqz v2, :cond_5

    if-lt v9, v3, :cond_4

    add-int/lit8 v2, v18, 0x1

    move/from16 v20, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    move/from16 v18, v2

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v9, 0x1

    const/16 v16, 0x2

    goto :goto_2

    :cond_2
    const/4 v3, 0x4

    move/from16 v18, v2

    move/from16 v16, v3

    const/4 v9, 0x2

    goto :goto_2

    :cond_3
    const/4 v3, 0x4

    move/from16 v18, v2

    move v9, v3

    goto :goto_2

    :cond_4
    move/from16 v20, v3

    :goto_2
    add-int v2, v9, v16

    goto :goto_3

    :cond_5
    move/from16 v20, v3

    move v2, v9

    move v9, v10

    :goto_3
    add-int/2addr v9, v5

    const/4 v3, 0x1

    if-ne v4, v3, :cond_6

    move/from16 v17, v3

    goto :goto_4

    :cond_6
    const/16 v17, 0x0

    :goto_4
    if-ge v9, v12, :cond_e

    mul-int/2addr v9, v11

    add-int v21, v9, v7

    add-int v3, v21, v6

    add-int/2addr v9, v11

    if-ge v9, v3, :cond_7

    move v3, v9

    :cond_7
    mul-int v9, v10, v4

    move/from16 v22, v2

    iget v2, v1, Lcom/batch/android/e0/d;->c:I

    mul-int/2addr v9, v2

    if-eqz v17, :cond_b

    move/from16 v2, v21

    :goto_5
    if-ge v2, v3, :cond_a

    move/from16 v17, v2

    aget-byte v2, v13, v9

    and-int/lit16 v2, v2, 0xff

    aget v2, v14, v2

    if-eqz v2, :cond_8

    aput v2, v19, v17

    goto :goto_6

    :cond_8
    if-eqz v8, :cond_9

    if-nez v15, :cond_9

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v15, v2

    :cond_9
    :goto_6
    add-int/2addr v9, v4

    add-int/lit8 v2, v17, 0x1

    goto :goto_5

    :cond_a
    :goto_7
    move/from16 v17, v4

    goto :goto_a

    :cond_b
    sub-int v2, v3, v21

    mul-int/2addr v2, v4

    add-int/2addr v2, v9

    move/from16 v17, v4

    move/from16 v4, v21

    :goto_8
    if-ge v4, v3, :cond_f

    move/from16 v21, v3

    iget v3, v1, Lcom/batch/android/e0/d;->c:I

    invoke-direct {v0, v9, v2, v3}, Lcom/batch/android/e0/h;->a(III)I

    move-result v3

    if-eqz v3, :cond_c

    aput v3, v19, v4

    goto :goto_9

    :cond_c
    if-eqz v8, :cond_d

    if-nez v15, :cond_d

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v15, v3

    :cond_d
    :goto_9
    add-int v9, v9, v17

    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v21

    goto :goto_8

    :cond_e
    move/from16 v22, v2

    goto :goto_7

    :cond_f
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v9, v22

    goto/16 :goto_1

    :cond_10
    iget-object v1, v0, Lcom/batch/android/e0/h;->y:Ljava/lang/Boolean;

    if-nez v1, :cond_12

    if-nez v15, :cond_11

    const/4 v10, 0x0

    goto :goto_b

    :cond_11
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    :goto_b
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/batch/android/e0/h;->y:Ljava/lang/Boolean;

    :cond_12
    return-void
.end method

.method private b(Lcom/batch/android/e0/d;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 141
    iget-object v2, v0, Lcom/batch/android/e0/h;->p:[I

    .line 142
    iget v3, v1, Lcom/batch/android/e0/d;->d:I

    .line 143
    iget v4, v1, Lcom/batch/android/e0/d;->b:I

    .line 144
    iget v5, v1, Lcom/batch/android/e0/d;->c:I

    .line 145
    iget v6, v1, Lcom/batch/android/e0/d;->a:I

    .line 146
    iget v7, v0, Lcom/batch/android/e0/h;->q:I

    if-nez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 147
    :goto_0
    iget v10, v0, Lcom/batch/android/e0/h;->x:I

    .line 148
    iget-object v11, v0, Lcom/batch/android/e0/h;->o:[B

    .line 149
    iget-object v12, v0, Lcom/batch/android/e0/h;->f:[I

    const/4 v14, 0x0

    const/4 v15, -0x1

    :goto_1
    if-ge v14, v3, :cond_5

    add-int v16, v14, v4

    mul-int v16, v16, v10

    add-int v17, v16, v6

    add-int v8, v17, v5

    add-int v9, v16, v10

    if-ge v9, v8, :cond_1

    move v8, v9

    .line 150
    :cond_1
    iget v9, v1, Lcom/batch/android/e0/d;->c:I

    mul-int/2addr v9, v14

    move/from16 v13, v17

    :goto_2
    if-ge v13, v8, :cond_4

    .line 151
    aget-byte v1, v11, v9

    move-object/from16 v17, v2

    and-int/lit16 v2, v1, 0xff

    if-eq v2, v15, :cond_3

    .line 152
    aget v2, v12, v2

    if-eqz v2, :cond_2

    .line 153
    aput v2, v17, v13

    goto :goto_3

    :cond_2
    move v15, v1

    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    goto :goto_2

    :cond_4
    move-object/from16 v17, v2

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_1

    .line 154
    :cond_5
    iget-object v1, v0, Lcom/batch/android/e0/h;->y:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    if-eqz v7, :cond_6

    const/4 v1, -0x1

    if-eq v15, v1, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/batch/android/e0/h;->y:Ljava/lang/Boolean;

    return-void
.end method

.method private c(Lcom/batch/android/e0/d;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/batch/android/e0/h;->i:Ljava/nio/ByteBuffer;

    iget v3, v1, Lcom/batch/android/e0/d;->j:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    iget v2, v1, Lcom/batch/android/e0/e;->f:I

    iget v1, v1, Lcom/batch/android/e0/e;->g:I

    :goto_0
    mul-int/2addr v2, v1

    goto :goto_1

    :cond_1
    iget v2, v1, Lcom/batch/android/e0/d;->c:I

    iget v1, v1, Lcom/batch/android/e0/d;->d:I

    goto :goto_0

    :goto_1
    iget-object v1, v0, Lcom/batch/android/e0/h;->o:[B

    if-eqz v1, :cond_2

    array-length v1, v1

    if-ge v1, v2, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/batch/android/e0/h;->h:Lcom/batch/android/e0/b$a;

    invoke-interface {v1, v2}, Lcom/batch/android/e0/b$a;->a(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/batch/android/e0/h;->o:[B

    :cond_3
    iget-object v1, v0, Lcom/batch/android/e0/h;->o:[B

    iget-object v3, v0, Lcom/batch/android/e0/h;->l:[S

    const/16 v4, 0x1000

    if-nez v3, :cond_4

    new-array v3, v4, [S

    iput-object v3, v0, Lcom/batch/android/e0/h;->l:[S

    :cond_4
    iget-object v3, v0, Lcom/batch/android/e0/h;->l:[S

    iget-object v5, v0, Lcom/batch/android/e0/h;->m:[B

    if-nez v5, :cond_5

    new-array v5, v4, [B

    iput-object v5, v0, Lcom/batch/android/e0/h;->m:[B

    :cond_5
    iget-object v5, v0, Lcom/batch/android/e0/h;->m:[B

    iget-object v6, v0, Lcom/batch/android/e0/h;->n:[B

    if-nez v6, :cond_6

    const/16 v6, 0x1001

    new-array v6, v6, [B

    iput-object v6, v0, Lcom/batch/android/e0/h;->n:[B

    :cond_6
    iget-object v6, v0, Lcom/batch/android/e0/h;->n:[B

    invoke-direct {v0}, Lcom/batch/android/e0/h;->r()I

    move-result v7

    const/4 v8, 0x1

    shl-int v9, v8, v7

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v11, v9, 0x2

    add-int/2addr v7, v8

    shl-int v12, v8, v7

    sub-int/2addr v12, v8

    const/4 v13, 0x0

    move v14, v13

    :goto_2
    if-ge v14, v9, :cond_7

    aput-short v13, v3, v14

    int-to-byte v15, v14

    aput-byte v15, v5, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_7
    iget-object v14, v0, Lcom/batch/android/e0/h;->j:[B

    const/4 v15, -0x1

    move/from16 v24, v7

    move/from16 p1, v8

    move/from16 v26, v11

    move/from16 v25, v12

    move v8, v13

    move/from16 v16, v8

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v15

    :goto_3
    if-ge v8, v2, :cond_8

    if-nez v16, :cond_a

    invoke-direct {v0}, Lcom/batch/android/e0/h;->q()I

    move-result v16

    if-gtz v16, :cond_9

    const/4 v3, 0x3

    iput v3, v0, Lcom/batch/android/e0/h;->u:I

    :cond_8
    move v0, v13

    move/from16 v13, v17

    goto/16 :goto_8

    :cond_9
    move/from16 v20, v13

    :cond_a
    aget-byte v13, v14, v20

    and-int/lit16 v13, v13, 0xff

    shl-int v13, v13, v19

    add-int v18, v18, v13

    add-int/lit8 v19, v19, 0x8

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v13, v19

    move/from16 v4, v22

    move/from16 v0, v23

    move/from16 v15, v24

    move-object/from16 v23, v3

    move/from16 v3, v26

    :goto_4
    if-lt v13, v15, :cond_12

    move-object/from16 v24, v5

    and-int v5, v18, v25

    shr-int v18, v18, v15

    sub-int/2addr v13, v15

    if-ne v5, v9, :cond_b

    move v15, v7

    move v3, v11

    move/from16 v25, v12

    move-object/from16 v5, v24

    const/4 v0, -0x1

    goto :goto_4

    :cond_b
    if-ne v5, v10, :cond_c

    move/from16 v26, v3

    move/from16 v22, v4

    :goto_5
    move/from16 v19, v13

    move-object/from16 v3, v23

    move-object/from16 v5, v24

    const/16 v4, 0x1000

    const/4 v13, 0x0

    move/from16 v23, v0

    move/from16 v24, v15

    const/4 v15, -0x1

    move-object/from16 v0, p0

    goto :goto_3

    :cond_c
    move-object/from16 v26, v6

    const/4 v6, -0x1

    if-ne v0, v6, :cond_d

    aget-byte v0, v24, v5

    aput-byte v0, v1, v17

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v8, v8, 0x1

    move v0, v5

    move v4, v0

    move-object/from16 v5, v24

    move-object/from16 v6, v26

    goto :goto_4

    :cond_d
    if-lt v5, v3, :cond_e

    int-to-byte v4, v4

    aput-byte v4, v26, v21

    add-int/lit8 v21, v21, 0x1

    move v4, v0

    goto :goto_6

    :cond_e
    move v4, v5

    :goto_6
    if-lt v4, v9, :cond_f

    aget-byte v22, v24, v4

    aput-byte v22, v26, v21

    add-int/lit8 v21, v21, 0x1

    aget-short v4, v23, v4

    goto :goto_6

    :cond_f
    aget-byte v4, v24, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v6, v4

    aput-byte v6, v1, v17

    :goto_7
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v8, v8, 0x1

    if-lez v21, :cond_10

    add-int/lit8 v21, v21, -0x1

    aget-byte v27, v26, v21

    aput-byte v27, v1, v17

    goto :goto_7

    :cond_10
    move/from16 v27, v4

    const/16 v4, 0x1000

    if-ge v3, v4, :cond_11

    int-to-short v0, v0

    aput-short v0, v23, v3

    aput-byte v6, v24, v3

    add-int/lit8 v3, v3, 0x1

    and-int v0, v3, v25

    if-nez v0, :cond_11

    if-ge v3, v4, :cond_11

    add-int/lit8 v15, v15, 0x1

    add-int v25, v25, v3

    :cond_11
    move v0, v5

    move-object/from16 v5, v24

    move-object/from16 v6, v26

    move/from16 v4, v27

    goto/16 :goto_4

    :cond_12
    move-object/from16 v24, v5

    move v5, v4

    move/from16 v26, v3

    move/from16 v22, v5

    goto :goto_5

    :goto_8
    invoke-static {v1, v13, v2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method private o()Lcom/batch/android/e0/f;
    .locals 1

    iget-object v0, p0, Lcom/batch/android/e0/h;->k:Lcom/batch/android/e0/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/batch/android/e0/f;

    invoke-direct {v0}, Lcom/batch/android/e0/f;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e0/h;->k:Lcom/batch/android/e0/f;

    :cond_0
    iget-object p0, p0, Lcom/batch/android/e0/h;->k:Lcom/batch/android/e0/f;

    return-object p0
.end method

.method private p()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/batch/android/e0/h;->y:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/batch/android/e0/h;->z:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    iget-object v1, p0, Lcom/batch/android/e0/h;->h:Lcom/batch/android/e0/b$a;

    iget v2, p0, Lcom/batch/android/e0/h;->x:I

    iget p0, p0, Lcom/batch/android/e0/h;->w:I

    invoke-interface {v1, v2, p0, v0}, Lcom/batch/android/e0/b$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object p0
.end method

.method private q()I
    .locals 4

    invoke-direct {p0}, Lcom/batch/android/e0/h;->r()I

    move-result v0

    if-gtz v0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/batch/android/e0/h;->i:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/batch/android/e0/h;->j:[B

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return v0
.end method

.method private r()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/e0/h;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 225
    iget p0, p0, Lcom/batch/android/e0/h;->q:I

    return p0
.end method

.method public a(I)I
    .locals 1

    if-ltz p1, :cond_0

    .line 289
    iget-object p0, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    iget v0, p0, Lcom/batch/android/e0/e;->c:I

    if-ge p1, v0, :cond_0

    .line 290
    iget-object p0, p0, Lcom/batch/android/e0/e;->e:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/e0/d;

    iget p0, p0, Lcom/batch/android/e0/d;->i:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public a(Ljava/io/InputStream;I)I
    .locals 5

    if-eqz p1, :cond_2

    const/16 v0, 0x4000

    if-lez p2, :cond_0

    add-int/lit16 p2, p2, 0x1000

    goto :goto_0

    :cond_0
    move p2, v0

    .line 226
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 227
    new-array p2, v0, [B

    :goto_1
    const/4 v2, 0x0

    .line 228
    invoke-virtual {p1, p2, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 229
    invoke-virtual {v1, p2, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 230
    :cond_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 231
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/batch/android/e0/h;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    const/4 p2, 0x2

    .line 232
    iput p2, p0, Lcom/batch/android/e0/h;->u:I

    :catch_0
    :goto_2
    if-eqz p1, :cond_3

    .line 233
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    :catch_1
    :cond_3
    iget p0, p0, Lcom/batch/android/e0/h;->u:I

    return p0
.end method

.method public a(Landroid/graphics/Bitmap$Config;)V
    .locals 6

    .line 254
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v3, :cond_0

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne p1, v5, :cond_1

    :cond_0
    move-object v1, p1

    goto :goto_0

    .line 255
    :cond_1
    const-string v2, ", must be one of "

    const-string v4, " or "

    const-string v0, "Unsupported format: "

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lr81;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 256
    :goto_0
    iput-object v1, p0, Lcom/batch/android/e0/h;->z:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public declared-synchronized a(Lcom/batch/android/e0/e;Ljava/nio/ByteBuffer;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 236
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/batch/android/e0/h;->a(Lcom/batch/android/e0/e;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lcom/batch/android/e0/e;Ljava/nio/ByteBuffer;I)V
    .locals 2

    const-string v0, "Sample size must be >=0, not: "

    monitor-enter p0

    if-lez p3, :cond_2

    .line 237
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lcom/batch/android/e0/h;->u:I

    .line 239
    iput-object p1, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    const/4 v1, -0x1

    .line 240
    iput v1, p0, Lcom/batch/android/e0/h;->q:I

    .line 241
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/batch/android/e0/h;->i:Ljava/nio/ByteBuffer;

    .line 242
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 243
    iget-object p2, p0, Lcom/batch/android/e0/h;->i:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 244
    iput-boolean v0, p0, Lcom/batch/android/e0/h;->t:Z

    .line 245
    iget-object p2, p1, Lcom/batch/android/e0/e;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/e0/d;

    .line 246
    iget v0, v0, Lcom/batch/android/e0/d;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    .line 247
    iput-boolean p2, p0, Lcom/batch/android/e0/h;->t:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 248
    :cond_1
    :goto_0
    iput p3, p0, Lcom/batch/android/e0/h;->v:I

    .line 249
    iget p2, p1, Lcom/batch/android/e0/e;->f:I

    div-int v0, p2, p3

    iput v0, p0, Lcom/batch/android/e0/h;->x:I

    .line 250
    iget p1, p1, Lcom/batch/android/e0/e;->g:I

    div-int p3, p1, p3

    iput p3, p0, Lcom/batch/android/e0/h;->w:I

    .line 251
    iget-object p3, p0, Lcom/batch/android/e0/h;->h:Lcom/batch/android/e0/b$a;

    mul-int/2addr p2, p1

    invoke-interface {p3, p2}, Lcom/batch/android/e0/b$a;->a(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/e0/h;->o:[B

    .line 252
    iget-object p1, p0, Lcom/batch/android/e0/h;->h:Lcom/batch/android/e0/b$a;

    iget p2, p0, Lcom/batch/android/e0/h;->x:I

    iget p3, p0, Lcom/batch/android/e0/h;->w:I

    mul-int/2addr p2, p3

    invoke-interface {p1, p2}, Lcom/batch/android/e0/b$a;->b(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/e0/h;->p:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 253
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lcom/batch/android/e0/e;[B)V
    .locals 0

    monitor-enter p0

    .line 235
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/batch/android/e0/h;->a(Lcom/batch/android/e0/e;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized b()Landroid/graphics/Bitmap;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    iget v0, v0, Lcom/batch/android/e0/e;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/batch/android/e0/h;->q:I

    if-gez v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    :goto_0
    sget-object v0, Lcom/batch/android/e0/h;->A:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    iget v0, v0, Lcom/batch/android/e0/e;->c:I

    :cond_1
    iput v2, p0, Lcom/batch/android/e0/h;->u:I

    :cond_2
    iget v0, p0, Lcom/batch/android/e0/h;->u:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_9

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/e0/h;->u:I

    iget-object v4, p0, Lcom/batch/android/e0/h;->j:[B

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/batch/android/e0/h;->h:Lcom/batch/android/e0/b$a;

    const/16 v5, 0xff

    invoke-interface {v4, v5}, Lcom/batch/android/e0/b$a;->a(I)[B

    move-result-object v4

    iput-object v4, p0, Lcom/batch/android/e0/h;->j:[B

    :cond_4
    iget-object v4, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    iget-object v4, v4, Lcom/batch/android/e0/e;->e:Ljava/util/List;

    iget v5, p0, Lcom/batch/android/e0/h;->q:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/batch/android/e0/d;

    iget v5, p0, Lcom/batch/android/e0/h;->q:I

    sub-int/2addr v5, v2

    if-ltz v5, :cond_5

    iget-object v6, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    iget-object v6, v6, Lcom/batch/android/e0/e;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/batch/android/e0/d;

    goto :goto_1

    :cond_5
    move-object v5, v3

    :goto_1
    iget-object v6, v4, Lcom/batch/android/e0/d;->k:[I

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    iget-object v6, v6, Lcom/batch/android/e0/e;->a:[I

    :goto_2
    iput-object v6, p0, Lcom/batch/android/e0/h;->f:[I

    if-nez v6, :cond_7

    sget-object v0, Lcom/batch/android/e0/h;->A:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    iput v2, p0, Lcom/batch/android/e0/h;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    :cond_7
    :try_start_1
    iget-boolean v1, v4, Lcom/batch/android/e0/d;->f:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/batch/android/e0/h;->g:[I

    array-length v2, v6

    invoke-static {v6, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/batch/android/e0/h;->g:[I

    iput-object v1, p0, Lcom/batch/android/e0/h;->f:[I

    iget v2, v4, Lcom/batch/android/e0/d;->h:I

    aput v0, v1, v2

    :cond_8
    invoke-direct {p0, v4, v5}, Lcom/batch/android/e0/h;->a(Lcom/batch/android/e0/d;Lcom/batch/android/e0/d;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_9
    :goto_3
    :try_start_2
    sget-object v0, Lcom/batch/android/e0/h;->A:Ljava/lang/String;

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

.method public c()V
    .locals 2

    .line 327
    iget v0, p0, Lcom/batch/android/e0/h;->q:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    iget v1, v1, Lcom/batch/android/e0/e;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/batch/android/e0/h;->q:I

    return-void
.end method

.method public clear()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    iget-object v1, p0, Lcom/batch/android/e0/h;->o:[B

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/batch/android/e0/h;->h:Lcom/batch/android/e0/b$a;

    invoke-interface {v2, v1}, Lcom/batch/android/e0/b$a;->a([B)V

    :cond_0
    iget-object v1, p0, Lcom/batch/android/e0/h;->p:[I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/batch/android/e0/h;->h:Lcom/batch/android/e0/b$a;

    invoke-interface {v2, v1}, Lcom/batch/android/e0/b$a;->a([I)V

    :cond_1
    iget-object v1, p0, Lcom/batch/android/e0/h;->s:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/batch/android/e0/h;->h:Lcom/batch/android/e0/b$a;

    invoke-interface {v2, v1}, Lcom/batch/android/e0/b$a;->a(Landroid/graphics/Bitmap;)V

    :cond_2
    iput-object v0, p0, Lcom/batch/android/e0/h;->s:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/batch/android/e0/h;->i:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/batch/android/e0/h;->y:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/batch/android/e0/h;->j:[B

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/batch/android/e0/h;->h:Lcom/batch/android/e0/b$a;

    invoke-interface {p0, v0}, Lcom/batch/android/e0/b$a;->a([B)V

    :cond_3
    return-void
.end method

.method public d()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    iget p0, p0, Lcom/batch/android/e0/e;->g:I

    return p0
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    iget p0, p0, Lcom/batch/android/e0/e;->c:I

    return p0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    iget v0, v0, Lcom/batch/android/e0/e;->c:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/batch/android/e0/h;->q:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/batch/android/e0/h;->a(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public g()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/e0/h;->i:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public h()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    iget p0, p0, Lcom/batch/android/e0/e;->m:I

    return p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Lcom/batch/android/e0/h;->u:I

    return p0
.end method

.method public j()I
    .locals 2

    iget-object v0, p0, Lcom/batch/android/e0/h;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/batch/android/e0/h;->o:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/batch/android/e0/h;->p:[I

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x4

    add-int/2addr p0, v0

    return p0
.end method

.method public k()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    iget p0, p0, Lcom/batch/android/e0/e;->f:I

    return p0
.end method

.method public l()I
    .locals 2

    iget-object p0, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    iget p0, p0, Lcom/batch/android/e0/e;->m:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/2addr p0, v1

    return p0
.end method

.method public m()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    iget p0, p0, Lcom/batch/android/e0/e;->m:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public n()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/batch/android/e0/h;->q:I

    return-void
.end method

.method public declared-synchronized read([B)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/batch/android/e0/h;->o()Lcom/batch/android/e0/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/batch/android/e0/f;->a([B)Lcom/batch/android/e0/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/e0/f;->d()Lcom/batch/android/e0/e;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/e0/h;->r:Lcom/batch/android/e0/e;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/batch/android/e0/h;->a(Lcom/batch/android/e0/e;[B)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget p1, p0, Lcom/batch/android/e0/h;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
