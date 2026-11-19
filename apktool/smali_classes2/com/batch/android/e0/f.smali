.class public Lcom/batch/android/e0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "GifHeaderParser"

.field private static final f:I = 0xff

.field private static final g:I = 0x2c

.field private static final h:I = 0x21

.field private static final i:I = 0x3b

.field private static final j:I = 0xf9

.field private static final k:I = 0xff

.field private static final l:I = 0xfe

.field private static final m:I = 0x1

.field private static final n:I = 0x1c

.field private static final o:I = 0x2

.field private static final p:I = 0x1

.field private static final q:I = 0x80

.field private static final r:I = 0x40

.field private static final s:I = 0x7

.field private static final t:I = 0x80

.field private static final u:I = 0x7

.field static final v:I = 0x2

.field static final w:I = 0xa

.field private static final x:I = 0x100


# instance fields
.field private final a:[B

.field private b:Ljava/nio/ByteBuffer;

.field private c:Lcom/batch/android/e0/e;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/batch/android/e0/f;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/e0/f;->d:I

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lcom/batch/android/e0/e;
    .locals 1

    .line 69
    new-instance v0, Lcom/batch/android/e0/f;

    invoke-direct {v0}, Lcom/batch/android/e0/f;-><init>()V

    .line 70
    invoke-virtual {v0, p0}, Lcom/batch/android/e0/f;->b(Ljava/nio/ByteBuffer;)Lcom/batch/android/e0/f;

    .line 71
    invoke-virtual {v0}, Lcom/batch/android/e0/f;->d()Lcom/batch/android/e0/e;

    move-result-object p0

    return-object p0
.end method

.method private a(I)[I
    .locals 9

    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/batch/android/e0/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v3, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v3, v3, 0x3

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, 0x1

    shl-int/lit8 v5, v5, 0x10

    const/high16 v8, -0x1000000

    or-int/2addr v5, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v6

    aput v4, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v7

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    const-string p1, "GifHeaderParser"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    const/4 p1, 0x1

    iput p1, p0, Lcom/batch/android/e0/e;->b:I

    return-object v1
.end method

.method private b(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-nez v1, :cond_a

    invoke-direct {p0}, Lcom/batch/android/e0/f;->b()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iget v2, v2, Lcom/batch/android/e0/e;->c:I

    if-gt v2, p1, :cond_a

    invoke-direct {p0}, Lcom/batch/android/e0/f;->e()I

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iput v4, v2, Lcom/batch/android/e0/e;->b:I

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iget-object v3, v2, Lcom/batch/android/e0/e;->d:Lcom/batch/android/e0/d;

    if-nez v3, :cond_2

    new-instance v3, Lcom/batch/android/e0/d;

    invoke-direct {v3}, Lcom/batch/android/e0/d;-><init>()V

    iput-object v3, v2, Lcom/batch/android/e0/e;->d:Lcom/batch/android/e0/d;

    :cond_2
    invoke-direct {p0}, Lcom/batch/android/e0/f;->f()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/batch/android/e0/f;->e()I

    move-result v2

    if-eq v2, v4, :cond_9

    const/16 v3, 0xf9

    if-eq v2, v3, :cond_8

    const/16 v3, 0xfe

    if-eq v2, v3, :cond_7

    const/16 v3, 0xff

    if-eq v2, v3, :cond_4

    invoke-direct {p0}, Lcom/batch/android/e0/f;->o()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/batch/android/e0/f;->g()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v0

    :goto_1
    const/16 v4, 0xb

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/batch/android/e0/f;->a:[B

    aget-byte v4, v4, v3

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NETSCAPE2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/batch/android/e0/f;->l()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/batch/android/e0/f;->o()V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/batch/android/e0/f;->o()V

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    new-instance v3, Lcom/batch/android/e0/d;

    invoke-direct {v3}, Lcom/batch/android/e0/d;-><init>()V

    iput-object v3, v2, Lcom/batch/android/e0/e;->d:Lcom/batch/android/e0/d;

    invoke-direct {p0}, Lcom/batch/android/e0/f;->i()V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/batch/android/e0/f;->o()V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method private b()Z
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iget p0, p0, Lcom/batch/android/e0/e;->b:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private e()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/batch/android/e0/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p0, p0, 0xff

    return p0

    :catch_0
    iget-object p0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    const/4 v0, 0x1

    iput v0, p0, Lcom/batch/android/e0/e;->b:I

    const/4 p0, 0x0

    return p0
.end method

.method private f()V
    .locals 8

    iget-object v0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iget-object v0, v0, Lcom/batch/android/e0/e;->d:Lcom/batch/android/e0/d;

    invoke-direct {p0}, Lcom/batch/android/e0/f;->m()I

    move-result v1

    iput v1, v0, Lcom/batch/android/e0/d;->a:I

    iget-object v0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iget-object v0, v0, Lcom/batch/android/e0/e;->d:Lcom/batch/android/e0/d;

    invoke-direct {p0}, Lcom/batch/android/e0/f;->m()I

    move-result v1

    iput v1, v0, Lcom/batch/android/e0/d;->b:I

    iget-object v0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iget-object v0, v0, Lcom/batch/android/e0/e;->d:Lcom/batch/android/e0/d;

    invoke-direct {p0}, Lcom/batch/android/e0/f;->m()I

    move-result v1

    iput v1, v0, Lcom/batch/android/e0/d;->c:I

    iget-object v0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iget-object v0, v0, Lcom/batch/android/e0/e;->d:Lcom/batch/android/e0/d;

    invoke-direct {p0}, Lcom/batch/android/e0/f;->m()I

    move-result v1

    iput v1, v0, Lcom/batch/android/e0/d;->d:I

    invoke-direct {p0}, Lcom/batch/android/e0/f;->e()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v4, v0, 0x7

    add-int/2addr v4, v3

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iget-object v5, v5, Lcom/batch/android/e0/e;->d:Lcom/batch/android/e0/d;

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, v5, Lcom/batch/android/e0/d;->e:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v4}, Lcom/batch/android/e0/f;->a(I)[I

    move-result-object v0

    iput-object v0, v5, Lcom/batch/android/e0/d;->k:[I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/batch/android/e0/d;->k:[I

    :goto_1
    iget-object v0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iget-object v0, v0, Lcom/batch/android/e0/e;->d:Lcom/batch/android/e0/d;

    iget-object v1, p0, Lcom/batch/android/e0/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iput v1, v0, Lcom/batch/android/e0/d;->j:I

    invoke-direct {p0}, Lcom/batch/android/e0/f;->p()V

    invoke-direct {p0}, Lcom/batch/android/e0/f;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iget v0, p0, Lcom/batch/android/e0/e;->c:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/batch/android/e0/e;->c:I

    iget-object v0, p0, Lcom/batch/android/e0/e;->e:Ljava/util/List;

    iget-object p0, p0, Lcom/batch/android/e0/e;->d:Lcom/batch/android/e0/d;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private g()V
    .locals 4

    invoke-direct {p0}, Lcom/batch/android/e0/f;->e()I

    move-result v0

    iput v0, p0, Lcom/batch/android/e0/f;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/batch/android/e0/f;->d:I

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/batch/android/e0/f;->b:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/batch/android/e0/f;->a:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v1

    goto :goto_0

    :catch_0
    const-string v0, "GifHeaderParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    const/4 v0, 0x1

    iput v0, p0, Lcom/batch/android/e0/e;->b:I

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/batch/android/e0/f;->b(I)V

    return-void
.end method

.method private i()V
    .locals 5

    invoke-direct {p0}, Lcom/batch/android/e0/f;->e()I

    invoke-direct {p0}, Lcom/batch/android/e0/f;->e()I

    move-result v0

    iget-object v1, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iget-object v1, v1, Lcom/batch/android/e0/e;->d:Lcom/batch/android/e0/d;

    and-int/lit8 v2, v0, 0x1c

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    iput v2, v1, Lcom/batch/android/e0/d;->g:I

    const/4 v4, 0x1

    if-nez v2, :cond_0

    iput v4, v1, Lcom/batch/android/e0/d;->g:I

    :cond_0
    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v1, Lcom/batch/android/e0/d;->f:Z

    invoke-direct {p0}, Lcom/batch/android/e0/f;->m()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v3, :cond_2

    move v0, v1

    :cond_2
    iget-object v2, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iget-object v2, v2, Lcom/batch/android/e0/e;->d:Lcom/batch/android/e0/d;

    mul-int/2addr v0, v1

    iput v0, v2, Lcom/batch/android/e0/d;->i:I

    invoke-direct {p0}, Lcom/batch/android/e0/f;->e()I

    move-result v0

    iput v0, v2, Lcom/batch/android/e0/d;->h:I

    invoke-direct {p0}, Lcom/batch/android/e0/f;->e()I

    return-void
.end method

.method private j()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lcom/batch/android/e0/f;->e()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    const/4 v0, 0x1

    iput v0, p0, Lcom/batch/android/e0/e;->b:I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/batch/android/e0/f;->k()V

    iget-object v0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iget-boolean v0, v0, Lcom/batch/android/e0/e;->h:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/batch/android/e0/f;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iget v1, v0, Lcom/batch/android/e0/e;->i:I

    invoke-direct {p0, v1}, Lcom/batch/android/e0/f;->a(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/batch/android/e0/e;->a:[I

    iget-object p0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iget-object v0, p0, Lcom/batch/android/e0/e;->a:[I

    iget v1, p0, Lcom/batch/android/e0/e;->j:I

    aget v0, v0, v1

    iput v0, p0, Lcom/batch/android/e0/e;->l:I

    :cond_2
    return-void
.end method

.method private k()V
    .locals 6

    iget-object v0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    invoke-direct {p0}, Lcom/batch/android/e0/f;->m()I

    move-result v1

    iput v1, v0, Lcom/batch/android/e0/e;->f:I

    iget-object v0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    invoke-direct {p0}, Lcom/batch/android/e0/f;->m()I

    move-result v1

    iput v1, v0, Lcom/batch/android/e0/e;->g:I

    invoke-direct {p0}, Lcom/batch/android/e0/f;->e()I

    move-result v0

    iget-object v1, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/batch/android/e0/e;->h:Z

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/batch/android/e0/e;->i:I

    iget-object v0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    invoke-direct {p0}, Lcom/batch/android/e0/f;->e()I

    move-result v1

    iput v1, v0, Lcom/batch/android/e0/e;->j:I

    iget-object v0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    invoke-direct {p0}, Lcom/batch/android/e0/f;->e()I

    move-result p0

    iput p0, v0, Lcom/batch/android/e0/e;->k:I

    return-void
.end method

.method private l()V
    .locals 3

    :cond_0
    invoke-direct {p0}, Lcom/batch/android/e0/f;->g()V

    iget-object v0, p0, Lcom/batch/android/e0/f;->a:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lcom/batch/android/e0/e;->m:I

    :cond_1
    iget v0, p0, Lcom/batch/android/e0/f;->d:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/batch/android/e0/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private m()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/e0/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    return p0
.end method

.method private n()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/e0/f;->b:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/batch/android/e0/f;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lcom/batch/android/e0/e;

    invoke-direct {v0}, Lcom/batch/android/e0/e;-><init>()V

    iput-object v0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iput v1, p0, Lcom/batch/android/e0/f;->d:I

    return-void
.end method

.method private o()V
    .locals 3

    :cond_0
    invoke-direct {p0}, Lcom/batch/android/e0/f;->e()I

    move-result v0

    iget-object v1, p0, Lcom/batch/android/e0/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/batch/android/e0/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/batch/android/e0/f;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    return-void
.end method

.method private p()V
    .locals 0

    invoke-direct {p0}, Lcom/batch/android/e0/f;->e()I

    invoke-direct {p0}, Lcom/batch/android/e0/f;->o()V

    return-void
.end method


# virtual methods
.method public a([B)Lcom/batch/android/e0/f;
    .locals 1

    if-eqz p1, :cond_0

    .line 64
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/batch/android/e0/f;->b(Ljava/nio/ByteBuffer;)Lcom/batch/android/e0/f;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 65
    iput-object p1, p0, Lcom/batch/android/e0/f;->b:Ljava/nio/ByteBuffer;

    .line 66
    iget-object p1, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    const/4 v0, 0x2

    iput v0, p1, Lcom/batch/android/e0/e;->b:I

    return-object p0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/batch/android/e0/f;->b:Ljava/nio/ByteBuffer;

    .line 68
    iput-object v0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;)Lcom/batch/android/e0/f;
    .locals 1

    .line 147
    invoke-direct {p0}, Lcom/batch/android/e0/f;->n()V

    .line 148
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/e0/f;->b:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 150
    iget-object p1, p0, Lcom/batch/android/e0/f;->b:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public c()Z
    .locals 1

    invoke-direct {p0}, Lcom/batch/android/e0/f;->j()V

    invoke-direct {p0}, Lcom/batch/android/e0/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/batch/android/e0/f;->b(I)V

    :cond_0
    iget-object p0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iget p0, p0, Lcom/batch/android/e0/e;->c:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public d()Lcom/batch/android/e0/e;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/e0/f;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/batch/android/e0/f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/batch/android/e0/f;->j()V

    invoke-direct {p0}, Lcom/batch/android/e0/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/batch/android/e0/f;->h()V

    iget-object v0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    iget v1, v0, Lcom/batch/android/e0/e;->c:I

    if-gez v1, :cond_1

    const/4 v1, 0x1

    iput v1, v0, Lcom/batch/android/e0/e;->b:I

    :cond_1
    iget-object p0, p0, Lcom/batch/android/e0/f;->c:Lcom/batch/android/e0/e;

    return-object p0

    :cond_2
    const-string p0, "You must call setData() before parseHeader()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
