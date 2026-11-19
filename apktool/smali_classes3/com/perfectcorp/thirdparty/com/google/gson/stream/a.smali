.class public Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final q:[C


# instance fields
.field public final b:Ljava/io/Reader;

.field public c:Z

.field public final d:[C

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:J

.field public k:I

.field public l:Ljava/lang/String;

.field public m:[I

.field public n:I

.field public o:[Ljava/lang/String;

.field public p:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q:[C

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/b;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/r;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/r;->a:Lcom/perfectcorp/thirdparty/com/google/gson/internal/r;

    return-void

    :array_0
    .array-data 2
        0x29s
        0x5ds
        0x7ds
        0x27s
        0xas
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->c:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->d:[C

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->g:I

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->h:I

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->m:[I

    const/4 v3, 0x1

    iput v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    const/4 v3, 0x6

    aput v3, v2, v0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->o:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->b:Ljava/io/Reader;

    return-void

    :cond_0
    const-string p0, "in == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public B()Z
    .locals 4

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j0()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    sub-int/2addr p0, v3

    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    sub-int/2addr p0, v3

    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected a boolean but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return v2
.end method

.method public C()V
    .locals 2

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j0()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected null but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public E()D
    .locals 6

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j0()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k:I

    iget-object v5, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->d:[C

    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    goto :goto_3

    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k0()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    goto :goto_3

    :cond_4
    if-ne v0, v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected a double but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_6
    :goto_1
    if-ne v0, v1, :cond_7

    const/16 v0, 0x27

    goto :goto_2

    :cond_7
    const/16 v0, 0x22

    :goto_2
    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_3
    iput v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->c:Z

    if-nez v3, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/e;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/e;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    add-int/lit8 p0, p0, -0x1

    aget v3, v2, p0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, p0

    return-wide v0
.end method

.method public F()J
    .locals 10

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j0()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j:J

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-wide/16 v3, 0x0

    const-string v5, "Expected a long but was "

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v6, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k:I

    iget-object v7, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->d:[C

    invoke-direct {v0, v7, v1, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    goto :goto_4

    :cond_2
    const/16 v1, 0xa

    const/16 v6, 0x8

    if-eq v0, v6, :cond_4

    const/16 v7, 0x9

    if-eq v0, v7, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-wide v3

    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k0()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    goto :goto_3

    :cond_5
    if-ne v0, v6, :cond_6

    const/16 v0, 0x27

    goto :goto_2

    :cond_6
    const/16 v0, 0x22

    :goto_2
    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    iget-object v6, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    iget v7, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :goto_4
    const/16 v0, 0xb

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v6, v0

    long-to-double v8, v6

    cmpl-double v0, v8, v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return-wide v6

    :cond_7
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, v0, p0}, Ld20;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-wide v3
.end method

.method public G()I
    .locals 7

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j0()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    const-string v3, "Expected an int but was "

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j:J

    long-to-int v4, v0

    int-to-long v5, v4

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v4

    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    iget-wide v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j:J

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k:I

    iget-object v5, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->d:[C

    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    goto :goto_4

    :cond_3
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-eq v0, v5, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return v2

    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k0()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    goto :goto_3

    :cond_6
    if-ne v0, v4, :cond_7

    const/16 v0, 0x27

    goto :goto_2

    :cond_7
    const/16 v0, 0x22

    :goto_2
    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    iget v4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :goto_4
    const/16 v0, 0xb

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v4, v0

    int-to-double v5, v4

    cmpl-double v0, v5, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v4

    :cond_8
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v0, p0}, Ld20;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2
.end method

.method public H()V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j0()I

    move-result v2

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v4}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j(I)V

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_2
    if-ne v2, v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    :goto_1
    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_7

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    goto :goto_1

    :cond_5
    const/16 v3, 0xe

    const/16 v5, 0xd

    const/16 v6, 0x9

    const/16 v7, 0xc

    const/16 v8, 0xa

    if-eq v2, v3, :cond_b

    if-ne v2, v8, :cond_6

    goto :goto_5

    :cond_6
    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    if-ne v2, v7, :cond_7

    goto :goto_4

    :cond_7
    if-eq v2, v6, :cond_9

    if-ne v2, v5, :cond_8

    goto :goto_2

    :cond_8
    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    goto :goto_7

    :cond_9
    :goto_2
    const/16 v2, 0x22

    :goto_3
    invoke-virtual {p0, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->s(C)V

    goto :goto_7

    :cond_a
    :goto_4
    const/16 v2, 0x27

    goto :goto_3

    :cond_b
    :goto_5
    move v2, v0

    :goto_6
    iget v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/2addr v3, v2

    iget v9, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    if-ge v3, v9, :cond_e

    iget-object v9, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->d:[C

    aget-char v3, v9, v3

    if-eq v3, v6, :cond_d

    if-eq v3, v8, :cond_d

    if-eq v3, v7, :cond_d

    if-eq v3, v5, :cond_d

    const/16 v9, 0x20

    if-eq v3, v9, :cond_d

    const/16 v9, 0x23

    if-eq v3, v9, :cond_c

    const/16 v9, 0x2c

    if-eq v3, v9, :cond_d

    const/16 v9, 0x2f

    if-eq v3, v9, :cond_c

    const/16 v9, 0x3d

    if-eq v3, v9, :cond_c

    const/16 v9, 0x7b

    if-eq v3, v9, :cond_d

    const/16 v9, 0x7d

    if-eq v3, v9, :cond_d

    const/16 v9, 0x3a

    if-eq v3, v9, :cond_d

    const/16 v9, 0x3b

    if-eq v3, v9, :cond_c

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    :pswitch_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l0()V

    :cond_d
    :pswitch_1
    iget v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    goto :goto_7

    :cond_e
    iput v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    invoke-virtual {p0, v4}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q(I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_f
    :goto_7
    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    sub-int/2addr v1, v4

    aget v2, v0, v1

    add-int/2addr v2, v4

    aput v2, v0, v1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->o:[Ljava/lang/String;

    const-string v0, "null"

    aput-object v0, p0, v1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->m:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->b:Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public h()V
    .locals 3

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j0()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j(I)V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected BEGIN_ARRAY but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public i0()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->m:[I

    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->o:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final j(I)V
    .locals 6

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->m:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    shl-int/lit8 v2, v0, 0x1

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->o:[Ljava/lang/String;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    invoke-static {v0, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->m:[I

    iput-object v4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    iput-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->o:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->m:[I

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    aput p1, v0, v1

    return-void
.end method

.method public final j0()I
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->m:[I

    iget v2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v4, v1, v2

    const/16 v9, 0x5d

    const/4 v10, 0x6

    const/4 v11, 0x3

    const/16 v12, 0x3b

    const/16 v13, 0x2c

    const/4 v14, 0x0

    const/4 v15, 0x7

    const/16 v16, 0x0

    iget-object v5, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->d:[C

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x5

    if-ne v4, v3, :cond_0

    aput v7, v1, v2

    goto/16 :goto_3

    :cond_0
    if-ne v4, v7, :cond_3

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->m(Z)I

    move-result v1

    if-eq v1, v13, :cond_10

    if-eq v1, v12, :cond_2

    if-ne v1, v9, :cond_1

    iput v6, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    return v6

    :cond_1
    const-string v1, "Unterminated array"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p(Ljava/lang/String;)V

    throw v16

    :cond_2
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l0()V

    goto/16 :goto_3

    :cond_3
    if-eq v4, v11, :cond_4

    if-ne v4, v8, :cond_5

    :cond_4
    move/from16 v20, v6

    goto/16 :goto_17

    :cond_5
    if-ne v4, v6, :cond_8

    aput v8, v1, v2

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->m(Z)I

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_10

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_7

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l0()V

    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    if-lt v1, v2, :cond_6

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q(I)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_6
    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    aget-char v2, v5, v1

    const/16 v6, 0x3e

    if-ne v2, v6, :cond_10

    add-int/2addr v1, v3

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    goto :goto_3

    :cond_7
    const-string v1, "Expected \':\'"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p(Ljava/lang/String;)V

    throw v16

    :cond_8
    if-ne v4, v10, :cond_d

    iget-boolean v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->c:Z

    if-eqz v1, :cond_c

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->m(Z)I

    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/lit8 v1, v1, 0x4

    iget v2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    if-le v1, v2, :cond_9

    invoke-virtual {v0, v8}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q(I)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    move v1, v14

    :goto_0
    iget v2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    if-ge v1, v8, :cond_b

    add-int/2addr v2, v1

    aget-char v2, v5, v2

    sget-object v6, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q:[C

    aget-char v6, v6, v1

    if-eq v2, v6, :cond_a

    goto :goto_1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_b
    add-int/2addr v2, v8

    iput v2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    :cond_c
    :goto_1
    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->m:[I

    iget v2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    sub-int/2addr v2, v3

    aput v15, v1, v2

    goto :goto_3

    :cond_d
    if-ne v4, v15, :cond_f

    invoke-virtual {v0, v14}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->m(Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    const/16 v1, 0x11

    :goto_2
    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    return v1

    :cond_e
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l0()V

    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    goto :goto_3

    :cond_f
    const/16 v1, 0x8

    if-eq v4, v1, :cond_40

    :cond_10
    :goto_3
    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->m(Z)I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3f

    const/16 v2, 0x27

    if-eq v1, v2, :cond_3e

    if-eq v1, v13, :cond_3b

    if-eq v1, v12, :cond_3b

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_3a

    if-eq v1, v9, :cond_39

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_38

    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    aget-char v1, v5, v1

    const/16 v2, 0x74

    if-eq v1, v2, :cond_16

    const/16 v2, 0x54

    if-ne v1, v2, :cond_11

    goto :goto_7

    :cond_11
    const/16 v2, 0x66

    if-eq v1, v2, :cond_15

    const/16 v2, 0x46

    if-ne v1, v2, :cond_12

    goto :goto_6

    :cond_12
    const/16 v2, 0x6e

    if-eq v1, v2, :cond_14

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_13

    goto :goto_5

    :cond_13
    :goto_4
    move v4, v14

    goto :goto_a

    :cond_14
    :goto_5
    const-string v1, "null"

    const-string v2, "NULL"

    move v4, v15

    goto :goto_8

    :cond_15
    :goto_6
    const-string v1, "false"

    const-string v2, "FALSE"

    move v4, v10

    goto :goto_8

    :cond_16
    :goto_7
    const-string v1, "true"

    const-string v2, "TRUE"

    move v4, v8

    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    move v9, v3

    :goto_9
    iget v12, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v13, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    if-ge v9, v6, :cond_19

    add-int/2addr v12, v9

    if-lt v12, v13, :cond_17

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v0, v12}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q(I)Z

    move-result v12

    if-nez v12, :cond_17

    goto :goto_4

    :cond_17
    iget v12, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/2addr v12, v9

    aget-char v12, v5, v12

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v12, v13, :cond_18

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v12, v13, :cond_18

    goto :goto_4

    :cond_18
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_19
    add-int/2addr v12, v6

    if-lt v12, v13, :cond_1a

    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_1a
    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/2addr v1, v6

    aget-char v1, v5, v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k(C)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_4

    :cond_1b
    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iput v4, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    :goto_a
    if-eqz v4, :cond_1c

    return v4

    :cond_1c
    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    move v9, v3

    move v4, v14

    move v6, v4

    move/from16 v19, v6

    move/from16 v21, v19

    const-wide/16 v12, 0x0

    const-wide/16 v17, 0x0

    :goto_b
    add-int v14, v1, v6

    if-ne v14, v2, :cond_1f

    const/16 v1, 0x400

    if-ne v6, v1, :cond_1e

    :cond_1d
    :goto_c
    move/from16 v14, v21

    goto/16 :goto_15

    :cond_1e
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v2, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    :cond_1f
    add-int v14, v1, v6

    aget-char v14, v5, v14

    const/16 v15, 0x2b

    if-eq v14, v15, :cond_34

    const/16 v15, 0x45

    if-eq v14, v15, :cond_32

    const/16 v15, 0x65

    if-eq v14, v15, :cond_32

    const/16 v15, 0x2d

    if-eq v14, v15, :cond_30

    const/16 v15, 0x2e

    if-eq v14, v15, :cond_2f

    const/16 v15, 0x30

    if-lt v14, v15, :cond_29

    const/16 v15, 0x39

    if-le v14, v15, :cond_20

    goto :goto_10

    :cond_20
    if-eq v4, v3, :cond_28

    if-nez v4, :cond_21

    goto :goto_f

    :cond_21
    if-ne v4, v7, :cond_25

    cmp-long v15, v12, v17

    if-nez v15, :cond_22

    goto :goto_c

    :cond_22
    const-wide/16 v22, 0xa

    mul-long v22, v22, v12

    add-int/lit8 v14, v14, -0x30

    int-to-long v14, v14

    sub-long v22, v22, v14

    const-wide v14, -0xcccccccccccccccL

    cmp-long v14, v12, v14

    if-gtz v14, :cond_24

    if-nez v14, :cond_23

    cmp-long v12, v22, v12

    if-gez v12, :cond_23

    goto :goto_d

    :cond_23
    move/from16 v12, v21

    goto :goto_e

    :cond_24
    :goto_d
    move v12, v3

    :goto_e
    and-int/2addr v9, v12

    move-wide/from16 v12, v22

    goto/16 :goto_14

    :cond_25
    if-ne v4, v11, :cond_26

    const/4 v4, 0x4

    goto/16 :goto_14

    :cond_26
    if-eq v4, v8, :cond_27

    if-ne v4, v10, :cond_35

    :cond_27
    const/4 v4, 0x7

    goto :goto_14

    :cond_28
    :goto_f
    add-int/lit8 v14, v14, -0x30

    neg-int v4, v14

    int-to-long v12, v4

    move v4, v7

    goto :goto_14

    :cond_29
    :goto_10
    invoke-virtual {v0, v14}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k(C)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_c

    :cond_2a
    if-ne v4, v7, :cond_2d

    if-eqz v9, :cond_2d

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v12, v1

    if-nez v1, :cond_2b

    if-eqz v19, :cond_2d

    :cond_2b
    if-eqz v19, :cond_2c

    goto :goto_11

    :cond_2c
    neg-long v12, v12

    :goto_11
    iput-wide v12, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j:J

    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    const/16 v14, 0xf

    :goto_12
    iput v14, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    goto :goto_15

    :cond_2d
    if-eq v4, v7, :cond_2e

    const/4 v1, 0x4

    if-eq v4, v1, :cond_2e

    const/4 v1, 0x7

    if-ne v4, v1, :cond_1d

    :cond_2e
    iput v6, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k:I

    const/16 v14, 0x10

    goto :goto_12

    :cond_2f
    if-ne v4, v7, :cond_1d

    move v4, v11

    goto :goto_14

    :cond_30
    if-nez v4, :cond_31

    move v4, v3

    move/from16 v19, v4

    goto :goto_14

    :cond_31
    if-ne v4, v8, :cond_1d

    :goto_13
    move v4, v10

    goto :goto_14

    :cond_32
    if-eq v4, v7, :cond_33

    const/4 v14, 0x4

    if-ne v4, v14, :cond_1d

    :cond_33
    move v4, v8

    goto :goto_14

    :cond_34
    if-ne v4, v8, :cond_1d

    goto :goto_13

    :cond_35
    :goto_14
    add-int/lit8 v6, v6, 0x1

    const/4 v15, 0x7

    goto/16 :goto_b

    :goto_15
    if-eqz v14, :cond_36

    return v14

    :cond_36
    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    aget-char v1, v5, v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k(C)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l0()V

    const/16 v1, 0xa

    goto/16 :goto_2

    :cond_37
    const-string v1, "Expected value"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p(Ljava/lang/String;)V

    throw v16

    :cond_38
    iput v3, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    return v3

    :cond_39
    if-ne v4, v3, :cond_3b

    const/4 v1, 0x4

    goto/16 :goto_2

    :cond_3a
    iput v11, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    return v11

    :cond_3b
    if-eq v4, v3, :cond_3d

    if-ne v4, v7, :cond_3c

    goto :goto_16

    :cond_3c
    const-string v1, "Unexpected value"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p(Ljava/lang/String;)V

    throw v16

    :cond_3d
    :goto_16
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l0()V

    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    const/4 v1, 0x7

    goto/16 :goto_2

    :cond_3e
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l0()V

    const/16 v1, 0x8

    goto/16 :goto_2

    :cond_3f
    const/16 v1, 0x9

    goto/16 :goto_2

    :cond_40
    move/from16 v21, v14

    const-string v0, "JsonReader is closed"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return v21

    :goto_17
    aput v20, v1, v2

    const/16 v1, 0x7d

    if-ne v4, v8, :cond_43

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->m(Z)I

    move-result v2

    if-eq v2, v13, :cond_43

    if-eq v2, v12, :cond_42

    if-ne v2, v1, :cond_41

    iput v7, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    return v7

    :cond_41
    const-string v1, "Unterminated object"

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p(Ljava/lang/String;)V

    throw v16

    :cond_42
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l0()V

    :cond_43
    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->m(Z)I

    move-result v2

    const/16 v5, 0x22

    if-eq v2, v5, :cond_48

    const/16 v5, 0x27

    if-eq v2, v5, :cond_47

    const-string v5, "Expected name"

    if-eq v2, v1, :cond_45

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l0()V

    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    int-to-char v1, v2

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k(C)Z

    move-result v1

    if-eqz v1, :cond_44

    const/16 v1, 0xe

    goto/16 :goto_2

    :cond_44
    invoke-virtual {v0, v5}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p(Ljava/lang/String;)V

    throw v16

    :cond_45
    if-eq v4, v8, :cond_46

    iput v7, v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    return v7

    :cond_46
    invoke-virtual {v0, v5}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p(Ljava/lang/String;)V

    throw v16

    :cond_47
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l0()V

    const/16 v1, 0xc

    goto/16 :goto_2

    :cond_48
    const/16 v1, 0xd

    goto/16 :goto_2
.end method

.method public final k(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l0()V

    :cond_1
    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final k0()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    iget v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    iget-object v5, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->d:[C

    if-ge v3, v4, :cond_2

    aget-char v3, v5, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l0()V

    goto :goto_1

    :cond_2
    const/16 v3, 0x400

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    :pswitch_1
    move v1, v2

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_5
    iget v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    invoke-virtual {v0, v5, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v2, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v5, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final l0()V
    .locals 1

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final m(Z)I
    .locals 10

    :goto_0
    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    invoke-virtual {p0, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    const-string p1, "End of input"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld20;->g(Ljava/lang/String;)V

    return v2

    :cond_2
    :goto_2
    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->d:[C

    aget-char v6, v5, v0

    const/16 v7, 0xa

    if-ne v6, v7, :cond_3

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->g:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->g:I

    iput v4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->h:I

    goto/16 :goto_9

    :cond_3
    const/16 v8, 0x20

    if-eq v6, v8, :cond_e

    const/16 v8, 0xd

    if-eq v6, v8, :cond_e

    const/16 v8, 0x9

    if-eq v6, v8, :cond_e

    const/16 v8, 0x2f

    if-ne v6, v8, :cond_c

    iput v4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    const/4 v9, 0x2

    if-ne v4, v1, :cond_4

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    invoke-virtual {p0, v9}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q(I)Z

    move-result v0

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l0()V

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    aget-char v1, v5, v0

    const/16 v4, 0x2a

    if-eq v1, v4, :cond_6

    if-eq v1, v8, :cond_5

    :goto_3
    return v6

    :cond_5
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->m0()V

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    :goto_4
    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/2addr v0, v9

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    if-le v0, v1, :cond_8

    invoke-virtual {p0, v9}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    const-string p1, "Unterminated comment"

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_8
    :goto_5
    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    aget-char v1, v5, v0

    if-ne v1, v7, :cond_9

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->g:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->h:I

    goto :goto_7

    :cond_9
    move v0, v2

    :goto_6
    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    if-ge v0, v9, :cond_b

    add-int/2addr v1, v0

    aget-char v1, v5, v1

    const-string v4, "*/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v1, v4, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    :goto_7
    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    goto :goto_4

    :cond_b
    add-int/lit8 v0, v1, 0x2

    :goto_8
    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    goto/16 :goto_1

    :cond_c
    const/16 v0, 0x23

    iput v4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    if-ne v6, v0, :cond_d

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l0()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->m0()V

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    goto :goto_8

    :cond_d
    return v6

    :cond_e
    :goto_9
    move v0, v4

    goto/16 :goto_1
.end method

.method public final m0()V
    .locals 4

    :goto_0
    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->d:[C

    aget-char v0, v3, v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->g:I

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->h:I

    return-void

    :cond_1
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final n(C)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    move v3, v2

    move v2, v1

    :goto_1
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->d:[C

    if-ge v1, v3, :cond_3

    add-int/lit8 v6, v1, 0x1

    aget-char v1, v5, v1

    if-ne v1, p1, :cond_0

    iput v6, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    sub-int/2addr v6, v2

    sub-int/2addr v6, v4

    invoke-virtual {v0, v5, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_1

    iput v6, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    sub-int/2addr v6, v2

    sub-int/2addr v6, v4

    invoke-virtual {v0, v5, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->o0()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    move v1, v2

    goto :goto_1

    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->g:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->g:I

    iput v6, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->h:I

    :cond_2
    move v1, v6

    goto :goto_1

    :cond_3
    sub-int v3, v1, v2

    invoke-virtual {v0, v5, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    invoke-virtual {p0, v4}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n0()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->g:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->h:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const-string v2, " column "

    const-string v3, " path "

    const-string v4, " at line "

    invoke-static {v0, v1, v4, v2, v3}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public o()V
    .locals 3

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j0()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    add-int/lit8 v0, v0, -0x2

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected END_ARRAY but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public final o0()C
    .locals 8

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    const/4 v2, 0x0

    const-string v3, "Unterminated escape sequence"

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v4}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget-object v5, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->d:[C

    aget-char v6, v5, v0

    const/16 v7, 0xa

    if-eq v6, v7, :cond_f

    const/16 v1, 0x22

    if-eq v6, v1, :cond_e

    const/16 v1, 0x27

    if-eq v6, v1, :cond_e

    const/16 v1, 0x2f

    if-eq v6, v1, :cond_e

    const/16 v1, 0x5c

    if-eq v6, v1, :cond_e

    const/16 v1, 0x62

    if-eq v6, v1, :cond_d

    const/16 v1, 0x66

    if-eq v6, v1, :cond_c

    const/16 v4, 0x6e

    if-eq v6, v4, :cond_b

    const/16 v4, 0x72

    if-eq v6, v4, :cond_a

    const/16 v4, 0x74

    if-eq v6, v4, :cond_9

    const/16 v4, 0x75

    if-ne v6, v4, :cond_8

    add-int/lit8 v0, v0, 0x5

    iget v4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    const/4 v6, 0x4

    if-le v0, v4, :cond_3

    invoke-virtual {p0, v6}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    :goto_2
    if-ge v0, v2, :cond_7

    aget-char v4, v5, v0

    shl-int/lit8 v3, v3, 0x4

    int-to-char v3, v3

    const/16 v7, 0x30

    if-lt v4, v7, :cond_4

    const/16 v7, 0x39

    if-gt v4, v7, :cond_4

    add-int/lit8 v4, v4, -0x30

    :goto_3
    add-int/2addr v4, v3

    int-to-char v3, v4

    goto :goto_4

    :cond_4
    const/16 v7, 0x61

    if-lt v4, v7, :cond_5

    if-gt v4, v1, :cond_5

    add-int/lit8 v4, v4, -0x57

    goto :goto_3

    :cond_5
    const/16 v7, 0x41

    if-lt v4, v7, :cond_6

    const/16 v7, 0x46

    if-gt v4, v7, :cond_6

    add-int/lit8 v4, v4, -0x37

    goto :goto_3

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/String;

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    invoke-direct {v1, v5, p0, v6}, Ljava/lang/String;-><init>([CII)V

    const-string p0, "\\u"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    return v3

    :cond_8
    const-string v0, "Invalid escape sequence"

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p(Ljava/lang/String;)V

    throw v2

    :cond_9
    const/16 p0, 0x9

    return p0

    :cond_a
    const/16 p0, 0xd

    return p0

    :cond_b
    return v7

    :cond_c
    const/16 p0, 0xc

    return p0

    :cond_d
    const/16 p0, 0x8

    return p0

    :cond_e
    return v6

    :cond_f
    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->g:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->g:I

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->h:I

    return v6
.end method

.method public final p(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/e;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/e;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q(I)Z
    .locals 7

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->h:I

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->h:I

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->d:[C

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    invoke-static {v3, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    :goto_0
    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    :cond_1
    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    rsub-int v1, v0, 0x400

    iget-object v4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->b:Ljava/io/Reader;

    invoke-virtual {v4, v3, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->g:I

    const/4 v4, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->h:I

    if-nez v0, :cond_2

    if-lez v1, :cond_2

    aget-char v5, v3, v2

    const v6, 0xfeff

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->h:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lt v1, p1, :cond_1

    return v4

    :cond_3
    return v2
.end method

.method public r()V
    .locals 2

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j0()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected BEGIN_OBJECT but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public final s(C)V
    .locals 5

    :goto_0
    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->f:I

    :goto_1
    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->d:[C

    aget-char v0, v4, v0

    if-ne v0, p1, :cond_0

    iput v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    return-void

    :cond_0
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_1

    iput v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->o0()C

    goto :goto_0

    :cond_1
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->g:I

    iput v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->h:I

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    invoke-virtual {p0, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->q(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public t()V
    .locals 5

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j0()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->o:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    sub-int/2addr v0, v1

    aget v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, v2, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected END_OBJECT but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Z
    .locals 1

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j0()I

    move-result v0

    :cond_0
    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;
    .locals 1

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j0()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, La61;->h()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->j:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->g:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->e:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->f:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->i:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->h:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->b:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->a:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->d:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->c:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public y()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j0()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k0()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    :goto_0
    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->o:[Ljava/lang/String;

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    add-int/lit8 p0, p0, -0x1

    aput-object v0, v1, p0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected a name but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public z()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j0()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k0()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    :goto_0
    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->l:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k:I

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->d:[C

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->k:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->e:I

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->p:[I

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n:I

    add-int/lit8 p0, p0, -0x1

    aget v2, v1, p0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected a string but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-object v2
.end method
