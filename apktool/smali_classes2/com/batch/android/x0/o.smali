.class public Lcom/batch/android/x0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final q:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

.field private static final r:Ljava/lang/String; = ""

.field static final synthetic s:Z = true


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:Ljava/nio/charset/CodingErrorAction;

.field private final e:Ljava/nio/charset/CodingErrorAction;

.field private final f:I

.field private final g:I

.field private h:Lcom/batch/android/y0/g;

.field private i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

.field private j:I

.field private k:J

.field private final l:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

.field private m:I

.field private n:Ljava/lang/StringBuilder;

.field private o:Ljava/nio/charset/CharsetDecoder;

.field private p:Ljava/nio/CharBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->wrap([B)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    sput-object v0, Lcom/batch/android/x0/o;->q:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/y0/g;Lcom/batch/android/x0/h$c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/batch/android/x0/o;->q:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iput-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->allocate(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/x0/o;->l:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    const-string v0, "MessageBufferInput is null"

    invoke-static {p1, v0}, Lcom/batch/android/x0/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/batch/android/y0/g;

    iput-object p1, p0, Lcom/batch/android/x0/o;->h:Lcom/batch/android/y0/g;

    invoke-virtual {p2}, Lcom/batch/android/x0/h$c;->d()Z

    move-result p1

    iput-boolean p1, p0, Lcom/batch/android/x0/o;->b:Z

    invoke-virtual {p2}, Lcom/batch/android/x0/h$c;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcom/batch/android/x0/o;->c:Z

    invoke-virtual {p2}, Lcom/batch/android/x0/h$c;->a()Ljava/nio/charset/CodingErrorAction;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/x0/o;->d:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p2}, Lcom/batch/android/x0/h$c;->b()Ljava/nio/charset/CodingErrorAction;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/x0/o;->e:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {p2}, Lcom/batch/android/x0/h$c;->g()I

    move-result p1

    iput p1, p0, Lcom/batch/android/x0/o;->f:I

    invoke-virtual {p2}, Lcom/batch/android/x0/h$c;->f()I

    move-result p1

    iput p1, p0, Lcom/batch/android/x0/o;->g:I

    return-void
.end method

.method private static a(B)Lcom/batch/android/x0/f;
    .locals 2

    and-int/lit16 p0, p0, 0xff

    int-to-long v0, p0

    .line 218
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 219
    new-instance v0, Lcom/batch/android/x0/f;

    invoke-direct {v0, p0}, Lcom/batch/android/x0/f;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private static a(J)Lcom/batch/android/x0/f;
    .locals 0

    .line 222
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 223
    new-instance p1, Lcom/batch/android/x0/f;

    invoke-direct {p1, p0}, Lcom/batch/android/x0/f;-><init>(Ljava/math/BigInteger;)V

    return-object p1
.end method

.method private static a(S)Lcom/batch/android/x0/f;
    .locals 2

    int-to-long v0, p0

    .line 220
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 221
    new-instance v0, Lcom/batch/android/x0/f;

    invoke-direct {v0, p0}, Lcom/batch/android/x0/f;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;B)Lcom/batch/android/x0/i;
    .locals 4

    .line 183
    invoke-static {p1}, Lcom/batch/android/x0/c;->b(B)Lcom/batch/android/x0/c;

    move-result-object v0

    .line 184
    sget-object v1, Lcom/batch/android/x0/c;->h:Lcom/batch/android/x0/c;

    if-ne v0, v1, :cond_0

    .line 185
    new-instance p1, Lcom/batch/android/x0/g;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 186
    const-string v0, "Expected "

    const-string v1, ", but encountered 0xC1 \"NEVER_USED\" byte"

    .line 187
    invoke-static {v0, p0, v1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-direct {p1, p0}, Lcom/batch/android/x0/g;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 189
    :cond_0
    invoke-virtual {v0}, Lcom/batch/android/x0/c;->b()Lcom/batch/android/z0/z;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/batch/android/x0/n;

    .line 192
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Expected %s, but got %s (%02x)"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/batch/android/x0/n;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private a(Ljava/nio/charset/CoderResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 199
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batch/android/x0/o;->d:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-eq v0, v1, :cond_1

    .line 200
    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/batch/android/x0/o;->e:Ljava/nio/charset/CodingErrorAction;

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne p0, v0, :cond_2

    .line 201
    :cond_1
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_2
    return-void
.end method

.method private a()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    iget v1, p0, Lcom/batch/android/x0/o;->j:I

    if-gt v0, v1, :cond_1

    .line 179
    iget-object v0, p0, Lcom/batch/android/x0/o;->h:Lcom/batch/android/y0/g;

    invoke-interface {v0}, Lcom/batch/android/y0/g;->next()Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 180
    :cond_0
    iget-wide v2, p0, Lcom/batch/android/x0/o;->k:J

    iget-object v4, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v4}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/batch/android/x0/o;->k:J

    .line 181
    iput-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    .line 182
    iput v1, p0, Lcom/batch/android/x0/o;->j:I

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private b(B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    .line 41
    :pswitch_0
    invoke-direct {p0}, Lcom/batch/android/x0/o;->m()I

    move-result p0

    return p0

    .line 42
    :pswitch_1
    invoke-direct {p0}, Lcom/batch/android/x0/o;->l()I

    move-result p0

    return p0

    .line 43
    :pswitch_2
    invoke-direct {p0}, Lcom/batch/android/x0/o;->n()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch -0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b()Lcom/batch/android/msgpack/core/buffer/MessageBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/x0/o;->h:Lcom/batch/android/y0/g;

    invoke-interface {v0}, Lcom/batch/android/y0/g;->next()Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/batch/android/x0/o;->s:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, La61;->h()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget-wide v1, p0, Lcom/batch/android/x0/o;->k:J

    iget-object v3, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/batch/android/x0/o;->k:J

    return-object v0

    :cond_2
    new-instance p0, Lcom/batch/android/x0/e;

    invoke-direct {p0}, Lcom/batch/android/x0/e;-><init>()V

    throw p0
.end method

.method private static b(J)Lcom/batch/android/x0/f;
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    add-long/2addr p0, v0

    .line 53
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 p1, 0x3f

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 54
    new-instance p1, Lcom/batch/android/x0/f;

    invoke-direct {p1, p0}, Lcom/batch/android/x0/f;-><init>(Ljava/math/BigInteger;)V

    return-object p1
.end method

.method private static b(S)Lcom/batch/android/x0/f;
    .locals 2

    const v0, 0xffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    .line 51
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 52
    new-instance v0, Lcom/batch/android/x0/f;

    invoke-direct {v0, p0}, Lcom/batch/android/x0/f;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private c(B)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    .line 81
    :pswitch_0
    invoke-direct {p0}, Lcom/batch/android/x0/o;->m()I

    move-result p0

    return p0

    .line 82
    :pswitch_1
    invoke-direct {p0}, Lcom/batch/android/x0/o;->l()I

    move-result p0

    return p0

    .line 83
    :pswitch_2
    invoke-direct {p0}, Lcom/batch/android/x0/o;->n()I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch -0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/batch/android/x0/o;->d:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/batch/android/x0/o;->e:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->arrayOffset()I

    move-result v2

    iget v3, p0, Lcom/batch/android/x0/o;->j:I

    add-int/2addr v2, v3

    sget-object v3, Lcom/batch/android/x0/h;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v1, p0, Lcom/batch/android/x0/o;->j:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/batch/android/x0/o;->j:I

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/o;->j:I

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->sliceAsByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/batch/android/x0/o;->o:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p0, Lcom/batch/android/x0/o;->j:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/batch/android/x0/o;->j:I

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/batch/android/x0/l;

    invoke-direct {p1, p0}, Lcom/batch/android/x0/l;-><init>(Ljava/nio/charset/CharacterCodingException;)V

    throw p1
.end method

.method private static d(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    not-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    return p0
.end method

.method private static d(I)Lcom/batch/android/x0/f;
    .locals 2

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    new-instance v0, Lcom/batch/android/x0/f;

    invoke-direct {v0, p0}, Lcom/batch/android/x0/f;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private static e(I)Lcom/batch/android/x0/f;
    .locals 4

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide v2, 0x80000000L

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    new-instance v0, Lcom/batch/android/x0/f;

    invoke-direct {v0, p0}, Lcom/batch/android/x0/f;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private static f(I)Lcom/batch/android/x0/k;
    .locals 4

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide v2, 0x80000000L

    add-long/2addr v0, v2

    new-instance p0, Lcom/batch/android/x0/k;

    invoke-direct {p0, v0, v1}, Lcom/batch/android/x0/k;-><init>(J)V

    return-object p0
.end method

.method private f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Lcom/batch/android/x0/o;->b()Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/batch/android/x0/o;->j:I

    return-void
.end method

.method private g()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    iget v1, p0, Lcom/batch/android/x0/o;->j:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0, v1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result v0

    .line 67
    iget v1, p0, Lcom/batch/android/x0/o;->j:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/batch/android/x0/o;->j:I

    return v0

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/batch/android/x0/o;->f()V

    .line 69
    iget-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result v0

    .line 71
    iput v2, p0, Lcom/batch/android/x0/o;->j:I

    return v0

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    return p0
.end method

.method private g(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    iget v1, p0, Lcom/batch/android/x0/o;->j:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    iput v1, p0, Lcom/batch/android/x0/o;->m:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/batch/android/x0/o;->j:I

    iget-object p0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    return-object p0

    :cond_0
    const/4 v2, 0x0

    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/batch/android/x0/o;->l:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget-object v4, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v3, v2, v4, v1, v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putMessageBuffer(ILcom/batch/android/msgpack/core/buffer/MessageBuffer;II)V

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-direct {p0}, Lcom/batch/android/x0/o;->f()V

    iget-object v1, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v1

    iget-object v3, p0, Lcom/batch/android/x0/o;->l:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    if-lt v1, p1, :cond_2

    iget-object v1, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v3, v0, v1, v2, p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putMessageBuffer(ILcom/batch/android/msgpack/core/buffer/MessageBuffer;II)V

    iput p1, p0, Lcom/batch/android/x0/o;->j:I

    iput v2, p0, Lcom/batch/android/x0/o;->m:I

    iget-object p0, p0, Lcom/batch/android/x0/o;->l:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    return-object p0

    :cond_2
    iget-object v4, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v3, v0, v4, v2, v1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putMessageBuffer(ILcom/batch/android/msgpack/core/buffer/MessageBuffer;II)V

    sub-int/2addr p1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private h()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->g(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    iget p0, p0, Lcom/batch/android/x0/o;->m:I

    invoke-virtual {v0, p0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method private i()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 32
    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->g(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    .line 33
    iget p0, p0, Lcom/batch/android/x0/o;->m:I

    invoke-virtual {v0, p0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getFloat(I)F

    move-result p0

    return p0
.end method

.method private j()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 23
    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->g(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    .line 24
    iget p0, p0, Lcom/batch/android/x0/o;->m:I

    invoke-virtual {v0, p0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getInt(I)I

    move-result p0

    return p0
.end method

.method private j(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    iget v1, p0, Lcom/batch/android/x0/o;->j:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    add-int/2addr v1, p1

    iput v1, p0, Lcom/batch/android/x0/o;->j:I

    return-void

    :cond_0
    add-int/2addr v1, v0

    iput v1, p0, Lcom/batch/android/x0/o;->j:I

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/batch/android/x0/o;->f()V

    goto :goto_0
.end method

.method private k()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 174
    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->g(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    .line 175
    iget p0, p0, Lcom/batch/android/x0/o;->m:I

    invoke-virtual {v0, p0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private l()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->o()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method private m()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->j()I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/batch/android/x0/o;->f(I)Lcom/batch/android/x0/k;

    move-result-object p0

    throw p0
.end method

.method private n()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private o()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->g(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    iget p0, p0, Lcom/batch/android/x0/o;->m:I

    invoke-virtual {v0, p0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getShort(I)S

    move-result p0

    return p0
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/x0/o;->o:Ljava/nio/charset/CharsetDecoder;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/batch/android/x0/o;->g:I

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/x0/o;->p:Ljava/nio/CharBuffer;

    sget-object v0, Lcom/batch/android/x0/h;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/x0/o;->d:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iget-object v1, p0, Lcom/batch/android/x0/o;->e:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/x0/o;->o:Ljava/nio/charset/CharsetDecoder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    :goto_0
    iget-object v0, p0, Lcom/batch/android/x0/o;->n:Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/batch/android/x0/o;->n:Ljava/lang/StringBuilder;

    return-void

    :cond_1
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method


# virtual methods
.method public A()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result v0

    invoke-static {v0}, Lcom/batch/android/x0/h$a;->a(B)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const-wide/32 v1, 0x7fffffff

    packed-switch v0, :pswitch_data_0

    const-string p0, "Integer"

    invoke-static {p0, v0}, Lcom/batch/android/x0/o;->a(Ljava/lang/String;B)Lcom/batch/android/x0/i;

    move-result-object p0

    throw p0

    :pswitch_0
    invoke-direct {p0}, Lcom/batch/android/x0/o;->k()J

    move-result-wide v3

    const-wide/32 v5, -0x80000000

    cmp-long p0, v3, v5

    if-ltz p0, :cond_1

    cmp-long p0, v3, v1

    if-gtz p0, :cond_1

    long-to-int p0, v3

    return p0

    :cond_1
    invoke-static {v3, v4}, Lcom/batch/android/x0/o;->a(J)Lcom/batch/android/x0/f;

    move-result-object p0

    throw p0

    :pswitch_1
    invoke-direct {p0}, Lcom/batch/android/x0/o;->j()I

    move-result p0

    return p0

    :pswitch_2
    invoke-direct {p0}, Lcom/batch/android/x0/o;->o()S

    move-result p0

    return p0

    :pswitch_3
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    return p0

    :pswitch_4
    invoke-direct {p0}, Lcom/batch/android/x0/o;->k()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-ltz p0, :cond_2

    cmp-long p0, v3, v1

    if-gtz p0, :cond_2

    long-to-int p0, v3

    return p0

    :cond_2
    invoke-static {v3, v4}, Lcom/batch/android/x0/o;->b(J)Lcom/batch/android/x0/f;

    move-result-object p0

    throw p0

    :pswitch_5
    invoke-direct {p0}, Lcom/batch/android/x0/o;->j()I

    move-result p0

    if-ltz p0, :cond_3

    return p0

    :cond_3
    invoke-static {p0}, Lcom/batch/android/x0/o;->e(I)Lcom/batch/android/x0/f;

    move-result-object p0

    throw p0

    :pswitch_6
    invoke-direct {p0}, Lcom/batch/android/x0/o;->o()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0

    :pswitch_7
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    :pswitch_data_0
    .packed-switch -0x34
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public B()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result v0

    invoke-static {v0}, Lcom/batch/android/x0/h$a;->a(B)Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    const-string p0, "Integer"

    invoke-static {p0, v0}, Lcom/batch/android/x0/o;->a(Ljava/lang/String;B)Lcom/batch/android/x0/i;

    move-result-object p0

    throw p0

    :pswitch_0
    invoke-direct {p0}, Lcom/batch/android/x0/o;->k()J

    move-result-wide v0

    return-wide v0

    :pswitch_1
    invoke-direct {p0}, Lcom/batch/android/x0/o;->j()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :pswitch_2
    invoke-direct {p0}, Lcom/batch/android/x0/o;->o()S

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :pswitch_3
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :pswitch_4
    invoke-direct {p0}, Lcom/batch/android/x0/o;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    return-wide v0

    :cond_1
    invoke-static {v0, v1}, Lcom/batch/android/x0/o;->b(J)Lcom/batch/android/x0/f;

    move-result-object p0

    throw p0

    :pswitch_5
    invoke-direct {p0}, Lcom/batch/android/x0/o;->j()I

    move-result p0

    if-gez p0, :cond_2

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide v2, 0x80000000L

    add-long/2addr v0, v2

    return-wide v0

    :cond_2
    int-to-long v0, p0

    return-wide v0

    :pswitch_6
    invoke-direct {p0}, Lcom/batch/android/x0/o;->o()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0

    :pswitch_7
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v0, p0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch -0x34
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public C()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result v0

    invoke-static {v0}, Lcom/batch/android/x0/h$a;->d(B)Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit8 p0, v0, 0xf

    return p0

    :cond_0
    const/16 v1, -0x22

    if-eq v0, v1, :cond_2

    const/16 v1, -0x21

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/batch/android/x0/o;->m()I

    move-result p0

    return p0

    :cond_1
    const-string p0, "Map"

    invoke-static {p0, v0}, Lcom/batch/android/x0/o;->a(Ljava/lang/String;B)Lcom/batch/android/x0/i;

    move-result-object p0

    throw p0

    :cond_2
    invoke-direct {p0}, Lcom/batch/android/x0/o;->l()I

    move-result p0

    return p0
.end method

.method public D()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    const/16 v0, -0x40

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Nil"

    invoke-static {v0, p0}, Lcom/batch/android/x0/o;->a(Ljava/lang/String;B)Lcom/batch/android/x0/i;

    move-result-object p0

    throw p0
.end method

.method public E()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result v0

    invoke-static {v0}, Lcom/batch/android/x0/h$a;->e(B)Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit8 p0, v0, 0x1f

    return p0

    :cond_0
    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->c(B)I

    move-result v1

    if-ltz v1, :cond_1

    return v1

    :cond_1
    iget-boolean v1, p0, Lcom/batch/android/x0/o;->c:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->b(B)I

    move-result p0

    if-ltz p0, :cond_2

    return p0

    :cond_2
    const-string p0, "String"

    invoke-static {p0, v0}, Lcom/batch/android/x0/o;->a(Ljava/lang/String;B)Lcom/batch/android/x0/i;

    move-result-object p0

    throw p0
.end method

.method public F()S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result v0

    invoke-static {v0}, Lcom/batch/android/x0/h$a;->a(B)Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-short p0, v0

    return p0

    :cond_0
    const/16 v1, 0x7fff

    const-wide/16 v2, 0x7fff

    packed-switch v0, :pswitch_data_0

    const-string p0, "Integer"

    invoke-static {p0, v0}, Lcom/batch/android/x0/o;->a(Ljava/lang/String;B)Lcom/batch/android/x0/i;

    move-result-object p0

    throw p0

    :pswitch_0
    invoke-direct {p0}, Lcom/batch/android/x0/o;->k()J

    move-result-wide v0

    const-wide/16 v4, -0x8000

    cmp-long p0, v0, v4

    if-ltz p0, :cond_1

    cmp-long p0, v0, v2

    if-gtz p0, :cond_1

    :goto_0
    long-to-int p0, v0

    :goto_1
    int-to-short p0, p0

    return p0

    :cond_1
    invoke-static {v0, v1}, Lcom/batch/android/x0/o;->a(J)Lcom/batch/android/x0/f;

    move-result-object p0

    throw p0

    :pswitch_1
    invoke-direct {p0}, Lcom/batch/android/x0/o;->j()I

    move-result p0

    const/16 v0, -0x8000

    if-lt p0, v0, :cond_2

    if-gt p0, v1, :cond_2

    int-to-short p0, p0

    return p0

    :cond_2
    invoke-static {p0}, Lcom/batch/android/x0/o;->d(I)Lcom/batch/android/x0/f;

    move-result-object p0

    throw p0

    :pswitch_2
    invoke-direct {p0}, Lcom/batch/android/x0/o;->o()S

    move-result p0

    return p0

    :pswitch_3
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    goto :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/batch/android/x0/o;->k()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-ltz p0, :cond_3

    cmp-long p0, v0, v2

    if-gtz p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Lcom/batch/android/x0/o;->b(J)Lcom/batch/android/x0/f;

    move-result-object p0

    throw p0

    :pswitch_5
    invoke-direct {p0}, Lcom/batch/android/x0/o;->j()I

    move-result p0

    if-ltz p0, :cond_4

    if-gt p0, v1, :cond_4

    int-to-short p0, p0

    return p0

    :cond_4
    invoke-static {p0}, Lcom/batch/android/x0/o;->e(I)Lcom/batch/android/x0/f;

    move-result-object p0

    throw p0

    :pswitch_6
    invoke-direct {p0}, Lcom/batch/android/x0/o;->o()S

    move-result p0

    if-ltz p0, :cond_5

    return p0

    :cond_5
    invoke-static {p0}, Lcom/batch/android/x0/o;->b(S)Lcom/batch/android/x0/f;

    move-result-object p0

    throw p0

    :pswitch_7
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x34
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public G()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Unexpected UTF-8 multibyte sequence"

    invoke-virtual {p0}, Lcom/batch/android/x0/o;->E()I

    move-result v1

    if-nez v1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget v2, p0, Lcom/batch/android/x0/o;->f:I

    if-gt v1, v2, :cond_a

    invoke-direct {p0}, Lcom/batch/android/x0/o;->p()V

    iget-object v2, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v2

    iget v3, p0, Lcom/batch/android/x0/o;->j:I

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_1

    invoke-direct {p0, v1}, Lcom/batch/android/x0/o;->c(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    if-lez v1, :cond_9

    :try_start_0
    iget-object v2, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v2

    iget v3, p0, Lcom/batch/android/x0/o;->j:I

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_2

    iget-object v0, p0, Lcom/batch/android/x0/o;->n:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/batch/android/x0/o;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_2
    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/batch/android/x0/o;->f()V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v4, v3, v2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->sliceAsByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v4

    iget-object v5, p0, Lcom/batch/android/x0/o;->p:Ljava/nio/CharBuffer;

    invoke-virtual {v5}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    iget-object v5, p0, Lcom/batch/android/x0/o;->o:Ljava/nio/charset/CharsetDecoder;

    iget-object v6, p0, Lcom/batch/android/x0/o;->p:Ljava/nio/CharBuffer;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v6, v7}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v5

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/batch/android/x0/o;->j:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/batch/android/x0/o;->j:I

    sub-int/2addr v1, v3

    iget-object v4, p0, Lcom/batch/android/x0/o;->n:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/batch/android/x0/o;->p:Ljava/nio/CharBuffer;

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v5}, Lcom/batch/android/x0/o;->a(Ljava/nio/charset/CoderResult;)V

    :cond_4
    invoke-virtual {v5}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_1

    if-ge v3, v2, :cond_1

    iget-object v2, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v3, p0, Lcom/batch/android/x0/o;->j:I

    invoke-virtual {v2, v3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result v2

    invoke-static {v2}, Lcom/batch/android/x0/o;->d(B)I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v4, p0, Lcom/batch/android/x0/o;->j:I

    invoke-virtual {v3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v5

    iget v6, p0, Lcom/batch/android/x0/o;->j:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5, v2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getBytes(IILjava/nio/ByteBuffer;)V

    :goto_1
    invoke-direct {p0}, Lcom/batch/android/x0/o;->f()V

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    iget-object v4, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v4}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v5, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    if-lt v4, v3, :cond_8

    :try_start_1
    invoke-virtual {v5, v7, v3, v2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getBytes(IILjava/nio/ByteBuffer;)V

    iput v3, p0, Lcom/batch/android/x0/o;->j:I

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/batch/android/x0/o;->p:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/batch/android/x0/o;->o:Ljava/nio/charset/CharsetDecoder;

    iget-object v4, p0, Lcom/batch/android/x0/o;->p:Ljava/nio/CharBuffer;

    invoke-virtual {v3, v2, v4, v7}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0, v3}, Lcom/batch/android/x0/o;->a(Ljava/nio/charset/CoderResult;)V

    :cond_5
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v4

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v5

    if-lt v4, v5, :cond_7

    :cond_6
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/batch/android/x0/o;->n:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/batch/android/x0/o;->p:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :cond_7
    :try_start_2
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->throwException()V

    new-instance p0, Lcom/batch/android/x0/d;

    invoke-direct {p0, v0}, Lcom/batch/android/x0/d;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    :try_start_3
    new-instance v1, Lcom/batch/android/x0/d;

    invoke-direct {v1, v0, p0}, Lcom/batch/android/x0/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    invoke-virtual {v5}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v3

    invoke-virtual {v5, v7, v3, v2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getBytes(IILjava/nio/ByteBuffer;)V

    iget-object v3, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v3

    iput v3, p0, Lcom/batch/android/x0/o;->j:I

    goto :goto_1

    :cond_9
    :goto_2
    iget-object p0, p0, Lcom/batch/android/x0/o;->n:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_3 .. :try_end_3} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/batch/android/x0/l;

    invoke-direct {v0, p0}, Lcom/batch/android/x0/l;-><init>(Ljava/nio/charset/CharacterCodingException;)V

    throw v0

    :cond_a
    new-instance v0, Lcom/batch/android/x0/k;

    iget p0, p0, Lcom/batch/android/x0/o;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "cannot unpack a String of size larger than %,d: %,d"

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    int-to-long v1, v1

    invoke-direct {v0, p0, v1, v2}, Lcom/batch/android/x0/k;-><init>(Ljava/lang/String;J)V

    throw v0
.end method

.method public H()Lcom/batch/android/z0/q;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/batch/android/x0/o;->c()Lcom/batch/android/x0/c;

    move-result-object v0

    sget-object v1, Lcom/batch/android/x0/o$a;->b:[I

    invoke-virtual {v0}, Lcom/batch/android/x0/c;->b()Lcom/batch/android/z0/z;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance p0, Lcom/batch/android/x0/g;

    const-string v0, "Unknown value type"

    invoke-direct {p0, v0}, Lcom/batch/android/x0/g;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/batch/android/x0/o;->y()Lcom/batch/android/x0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/x0/a;->b()B

    move-result v1

    invoke-virtual {v0}, Lcom/batch/android/x0/a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/batch/android/x0/o;->h(I)[B

    move-result-object p0

    invoke-static {v1, p0}, Lcom/batch/android/z0/y;->a(B[B)Lcom/batch/android/z0/i;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lcom/batch/android/x0/o;->C()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [Lcom/batch/android/z0/x;

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/x0/o;->H()Lcom/batch/android/z0/q;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0}, Lcom/batch/android/x0/o;->H()Lcom/batch/android/z0/q;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    invoke-static {v1, v3}, Lcom/batch/android/z0/y;->b([Lcom/batch/android/z0/x;Z)Lcom/batch/android/z0/l;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/batch/android/x0/o;->s()I

    move-result v0

    new-array v1, v0, [Lcom/batch/android/z0/x;

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/x0/o;->H()Lcom/batch/android/z0/q;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1, v3}, Lcom/batch/android/z0/y;->a([Lcom/batch/android/z0/x;Z)Lcom/batch/android/z0/f;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/batch/android/x0/o;->u()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/batch/android/x0/o;->h(I)[B

    move-result-object p0

    invoke-static {p0, v3}, Lcom/batch/android/z0/y;->a([BZ)Lcom/batch/android/z0/g;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Lcom/batch/android/x0/o;->E()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/batch/android/x0/o;->h(I)[B

    move-result-object p0

    invoke-static {p0, v3}, Lcom/batch/android/z0/y;->b([BZ)Lcom/batch/android/z0/p;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Lcom/batch/android/x0/o;->x()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/batch/android/z0/y;->a(D)Lcom/batch/android/z0/j;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget-object v1, Lcom/batch/android/x0/c;->u:Lcom/batch/android/x0/c;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/batch/android/x0/o;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/z0/y;->a(Ljava/math/BigInteger;)Lcom/batch/android/z0/k;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/batch/android/x0/o;->B()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/batch/android/z0/y;->a(J)Lcom/batch/android/z0/k;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p0}, Lcom/batch/android/x0/o;->v()Z

    move-result p0

    invoke-static {p0}, Lcom/batch/android/z0/y;->a(Z)Lcom/batch/android/z0/h;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    invoke-static {}, Lcom/batch/android/z0/y;->d()Lcom/batch/android/z0/m;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/batch/android/y0/g;)Lcom/batch/android/y0/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    const-string v0, "MessageBufferInput is null"

    invoke-static {p1, v0}, Lcom/batch/android/x0/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/batch/android/y0/g;

    .line 194
    iget-object v0, p0, Lcom/batch/android/x0/o;->h:Lcom/batch/android/y0/g;

    .line 195
    iput-object p1, p0, Lcom/batch/android/x0/o;->h:Lcom/batch/android/y0/g;

    .line 196
    sget-object p1, Lcom/batch/android/x0/o;->q:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iput-object p1, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    const/4 p1, 0x0

    .line 197
    iput p1, p0, Lcom/batch/android/x0/o;->j:I

    const-wide/16 v1, 0x0

    .line 198
    iput-wide v1, p0, Lcom/batch/android/x0/o;->k:J

    return-object v0
.end method

.method public a(Lcom/batch/android/z0/a0;)Lcom/batch/android/z0/a0;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/batch/android/x0/o;->c()Lcom/batch/android/x0/c;

    move-result-object v0

    sget-object v1, Lcom/batch/android/x0/o$a;->b:[I

    invoke-virtual {v0}, Lcom/batch/android/x0/c;->b()Lcom/batch/android/z0/z;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p0, Lcom/batch/android/x0/d;

    const-string p1, "Unknown value type"

    invoke-direct {p0, p1}, Lcom/batch/android/x0/d;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/batch/android/x0/o;->y()Lcom/batch/android/x0/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/x0/a;->b()B

    move-result v1

    invoke-virtual {v0}, Lcom/batch/android/x0/a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/batch/android/x0/o;->h(I)[B

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/batch/android/z0/a0;->a(B[B)Lcom/batch/android/z0/a0;

    return-object p1

    :pswitch_1
    invoke-virtual {p0}, Lcom/batch/android/x0/o;->C()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/batch/android/x0/o;->H()Lcom/batch/android/z0/q;

    move-result-object v3

    invoke-virtual {p0}, Lcom/batch/android/x0/o;->H()Lcom/batch/android/z0/q;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/batch/android/z0/a0;->a(Ljava/util/Map;)Lcom/batch/android/z0/a0;

    return-object p1

    :pswitch_2
    invoke-virtual {p0}, Lcom/batch/android/x0/o;->s()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/x0/o;->H()Lcom/batch/android/z0/q;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Lcom/batch/android/z0/a0;->a(Ljava/util/List;)Lcom/batch/android/z0/a0;

    return-object p1

    :pswitch_3
    invoke-virtual {p0}, Lcom/batch/android/x0/o;->u()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/batch/android/x0/o;->h(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/batch/android/z0/a0;->a([B)Lcom/batch/android/z0/a0;

    return-object p1

    :pswitch_4
    invoke-virtual {p0}, Lcom/batch/android/x0/o;->E()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/batch/android/x0/o;->h(I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/batch/android/z0/a0;->b([B)Lcom/batch/android/z0/a0;

    return-object p1

    :pswitch_5
    invoke-virtual {p0}, Lcom/batch/android/x0/o;->x()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/batch/android/z0/a0;->a(D)Lcom/batch/android/z0/a0;

    return-object p1

    :pswitch_6
    sget-object v1, Lcom/batch/android/x0/o$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/batch/android/x0/o;->B()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/batch/android/z0/a0;->a(J)Lcom/batch/android/z0/a0;

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/batch/android/x0/o;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/batch/android/z0/a0;->a(Ljava/math/BigInteger;)Lcom/batch/android/z0/a0;

    return-object p1

    :pswitch_7
    invoke-virtual {p0}, Lcom/batch/android/x0/o;->v()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/batch/android/z0/a0;->a(Z)Lcom/batch/android/z0/a0;

    return-object p1

    :pswitch_8
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    invoke-virtual {p1}, Lcom/batch/android/z0/a0;->Z()Lcom/batch/android/z0/a0;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/batch/android/msgpack/core/buffer/MessageBuffer;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    iget v1, p0, Lcom/batch/android/x0/o;->j:I

    sub-int/2addr v0, v1

    .line 211
    iget-object v2, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    if-lt v0, p3, :cond_0

    .line 212
    invoke-virtual {p1, p2, v2, v1, p3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putMessageBuffer(ILcom/batch/android/msgpack/core/buffer/MessageBuffer;II)V

    .line 213
    iget p1, p0, Lcom/batch/android/x0/o;->j:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/batch/android/x0/o;->j:I

    return-void

    .line 214
    :cond_0
    invoke-virtual {p1, p2, v2, v1, v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putMessageBuffer(ILcom/batch/android/msgpack/core/buffer/MessageBuffer;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 215
    iget v1, p0, Lcom/batch/android/x0/o;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/batch/android/x0/o;->j:I

    .line 216
    invoke-direct {p0}, Lcom/batch/android/x0/o;->f()V

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v1

    iget v2, p0, Lcom/batch/android/x0/o;->j:I

    sub-int/2addr v1, v2

    .line 204
    iget-object v3, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    if-lt v1, v0, :cond_0

    .line 205
    invoke-virtual {v3, v2, v0, p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getBytes(IILjava/nio/ByteBuffer;)V

    .line 206
    iget p1, p0, Lcom/batch/android/x0/o;->j:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/batch/android/x0/o;->j:I

    return-void

    .line 207
    :cond_0
    invoke-virtual {v3, v2, v1, p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getBytes(IILjava/nio/ByteBuffer;)V

    .line 208
    iget v0, p0, Lcom/batch/android/x0/o;->j:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/batch/android/x0/o;->j:I

    .line 209
    invoke-direct {p0}, Lcom/batch/android/x0/o;->f()V

    goto :goto_0
.end method

.method public a([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/batch/android/x0/o;->b([BII)V

    return-void
.end method

.method public b([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    iget v1, p0, Lcom/batch/android/x0/o;->j:I

    sub-int/2addr v0, v1

    .line 45
    iget-object v2, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    if-lt v0, p3, :cond_0

    .line 46
    invoke-virtual {v2, v1, p1, p2, p3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getBytes(I[BII)V

    .line 47
    iget p1, p0, Lcom/batch/android/x0/o;->j:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/batch/android/x0/o;->j:I

    return-void

    .line 48
    :cond_0
    invoke-virtual {v2, v1, p1, p2, v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getBytes(I[BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 49
    iget v1, p0, Lcom/batch/android/x0/o;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/batch/android/x0/o;->j:I

    .line 50
    invoke-direct {p0}, Lcom/batch/android/x0/o;->f()V

    goto :goto_0
.end method

.method public c()Lcom/batch/android/x0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/batch/android/x0/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget p0, p0, Lcom/batch/android/x0/o;->j:I

    invoke-virtual {v0, p0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result p0

    .line 79
    invoke-static {p0}, Lcom/batch/android/x0/c;->b(B)Lcom/batch/android/x0/c;

    move-result-object p0

    return-object p0

    .line 80
    :cond_0
    new-instance p0, Lcom/batch/android/x0/e;

    invoke-direct {p0}, Lcom/batch/android/x0/e;-><init>()V

    throw p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/batch/android/x0/o;->q:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iput-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/x0/o;->j:I

    iget-object p0, p0, Lcom/batch/android/x0/o;->h:Lcom/batch/android/y0/g;

    invoke-interface {p0}, Lcom/batch/android/y0/g;->close()V

    return-void
.end method

.method public d()J
    .locals 4

    .line 12
    iget-wide v0, p0, Lcom/batch/android/x0/o;->k:J

    iget p0, p0, Lcom/batch/android/x0/o;->j:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public e()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/batch/android/x0/o;->a()Z

    move-result p0

    return p0
.end method

.method public h(I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    new-array p1, p1, [B

    .line 14
    invoke-virtual {p0, p1}, Lcom/batch/android/x0/o;->a([B)V

    return-object p1
.end method

.method public i(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    iget v1, p0, Lcom/batch/android/x0/o;->j:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->slice(II)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    iget v1, p0, Lcom/batch/android/x0/o;->j:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/batch/android/x0/o;->j:I

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->allocate(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/batch/android/x0/o;->a(Lcom/batch/android/msgpack/core/buffer/MessageBuffer;II)V

    return-object v0
.end method

.method public k(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result v0

    invoke-static {v0}, Lcom/batch/android/x0/c;->b(B)Lcom/batch/android/x0/c;

    move-result-object v1

    sget-object v2, Lcom/batch/android/x0/o$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    new-instance p0, Lcom/batch/android/x0/g;

    const-string p1, "Encountered 0xC1 \"NEVER_USED\" byte"

    invoke-direct {p0, p1}, Lcom/batch/android/x0/g;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    invoke-direct {p0}, Lcom/batch/android/x0/o;->m()I

    move-result v0

    :goto_1
    mul-int/2addr v0, v3

    add-int/2addr p1, v0

    goto/16 :goto_3

    :pswitch_2
    invoke-direct {p0}, Lcom/batch/android/x0/o;->l()I

    move-result v0

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/batch/android/x0/o;->m()I

    move-result v0

    :goto_2
    add-int/2addr p1, v0

    goto/16 :goto_3

    :pswitch_4
    invoke-direct {p0}, Lcom/batch/android/x0/o;->l()I

    move-result v0

    goto :goto_2

    :pswitch_5
    invoke-direct {p0}, Lcom/batch/android/x0/o;->m()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->j(I)V

    goto/16 :goto_3

    :pswitch_6
    invoke-direct {p0}, Lcom/batch/android/x0/o;->l()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->j(I)V

    goto :goto_3

    :pswitch_7
    invoke-direct {p0}, Lcom/batch/android/x0/o;->n()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->j(I)V

    goto :goto_3

    :pswitch_8
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->j(I)V

    goto :goto_3

    :pswitch_9
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->j(I)V

    goto :goto_3

    :pswitch_a
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->j(I)V

    goto :goto_3

    :pswitch_b
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->j(I)V

    goto :goto_3

    :pswitch_c
    invoke-direct {p0, v3}, Lcom/batch/android/x0/o;->j(I)V

    goto :goto_3

    :pswitch_d
    invoke-direct {p0}, Lcom/batch/android/x0/o;->m()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->j(I)V

    goto :goto_3

    :pswitch_e
    invoke-direct {p0}, Lcom/batch/android/x0/o;->l()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->j(I)V

    goto :goto_3

    :pswitch_f
    invoke-direct {p0}, Lcom/batch/android/x0/o;->n()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->j(I)V

    goto :goto_3

    :pswitch_10
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->j(I)V

    goto :goto_3

    :pswitch_11
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->j(I)V

    goto :goto_3

    :pswitch_12
    invoke-direct {p0, v3}, Lcom/batch/android/x0/o;->j(I)V

    goto :goto_3

    :pswitch_13
    invoke-direct {p0, v2}, Lcom/batch/android/x0/o;->j(I)V

    goto :goto_3

    :pswitch_14
    and-int/lit8 v0, v0, 0x1f

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->j(I)V

    goto :goto_3

    :pswitch_15
    and-int/lit8 v0, v0, 0xf

    goto :goto_2

    :pswitch_16
    and-int/lit8 v0, v0, 0xf

    goto/16 :goto_1

    :goto_3
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public q()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/batch/android/x0/o;->k(I)V

    return-void
.end method

.method public r()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/batch/android/x0/o;->i:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/o;->j:I

    invoke-virtual {v0, v1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result v0

    const/16 v1, -0x40

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Lcom/batch/android/x0/e;

    invoke-direct {p0}, Lcom/batch/android/x0/e;-><init>()V

    throw p0
.end method

.method public s()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result v0

    invoke-static {v0}, Lcom/batch/android/x0/h$a;->c(B)Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit8 p0, v0, 0xf

    return p0

    :cond_0
    const/16 v1, -0x24

    if-eq v0, v1, :cond_2

    const/16 v1, -0x23

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/batch/android/x0/o;->m()I

    move-result p0

    return p0

    :cond_1
    const-string p0, "Array"

    invoke-static {p0, v0}, Lcom/batch/android/x0/o;->a(Ljava/lang/String;B)Lcom/batch/android/x0/i;

    move-result-object p0

    throw p0

    :cond_2
    invoke-direct {p0}, Lcom/batch/android/x0/o;->l()I

    move-result p0

    return p0
.end method

.method public t()Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result v0

    invoke-static {v0}, Lcom/batch/android/x0/h$a;->a(B)Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    packed-switch v0, :pswitch_data_0

    const-string p0, "Integer"

    invoke-static {p0, v0}, Lcom/batch/android/x0/o;->a(Ljava/lang/String;B)Lcom/batch/android/x0/i;

    move-result-object p0

    throw p0

    :pswitch_0
    invoke-direct {p0}, Lcom/batch/android/x0/o;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-direct {p0}, Lcom/batch/android/x0/o;->j()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-direct {p0}, Lcom/batch/android/x0/o;->o()S

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-direct {p0}, Lcom/batch/android/x0/o;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    const-wide/high16 v2, -0x8000000000000000L

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-direct {p0}, Lcom/batch/android/x0/o;->j()I

    move-result p0

    if-gez p0, :cond_2

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide v2, 0x80000000L

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_2
    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-direct {p0}, Lcom/batch/android/x0/o;->o()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x34
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public u()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result v0

    invoke-static {v0}, Lcom/batch/android/x0/h$a;->e(B)Z

    move-result v1

    if-eqz v1, :cond_0

    and-int/lit8 p0, v0, 0x1f

    return p0

    :cond_0
    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->b(B)I

    move-result v1

    if-ltz v1, :cond_1

    return v1

    :cond_1
    iget-boolean v1, p0, Lcom/batch/android/x0/o;->b:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->c(B)I

    move-result p0

    if-ltz p0, :cond_2

    return p0

    :cond_2
    const-string p0, "Binary"

    invoke-static {p0, v0}, Lcom/batch/android/x0/o;->a(Ljava/lang/String;B)Lcom/batch/android/x0/i;

    move-result-object p0

    throw p0
.end method

.method public v()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    const/16 v0, -0x3e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, -0x3d

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "boolean"

    invoke-static {v0, p0}, Lcom/batch/android/x0/o;->a(Ljava/lang/String;B)Lcom/batch/android/x0/i;

    move-result-object p0

    throw p0
.end method

.method public w()B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result v0

    invoke-static {v0}, Lcom/batch/android/x0/h$a;->a(B)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/16 v1, -0x80

    const-wide/16 v2, 0x7f

    const/16 v4, 0x7f

    packed-switch v0, :pswitch_data_0

    const-string p0, "Integer"

    invoke-static {p0, v0}, Lcom/batch/android/x0/o;->a(Ljava/lang/String;B)Lcom/batch/android/x0/i;

    move-result-object p0

    throw p0

    :pswitch_0
    invoke-direct {p0}, Lcom/batch/android/x0/o;->k()J

    move-result-wide v0

    const-wide/16 v4, -0x80

    cmp-long p0, v0, v4

    if-ltz p0, :cond_1

    cmp-long p0, v0, v2

    if-gtz p0, :cond_1

    :goto_0
    long-to-int p0, v0

    int-to-byte p0, p0

    return p0

    :cond_1
    invoke-static {v0, v1}, Lcom/batch/android/x0/o;->a(J)Lcom/batch/android/x0/f;

    move-result-object p0

    throw p0

    :pswitch_1
    invoke-direct {p0}, Lcom/batch/android/x0/o;->j()I

    move-result p0

    if-lt p0, v1, :cond_2

    if-gt p0, v4, :cond_2

    int-to-byte p0, p0

    return p0

    :cond_2
    invoke-static {p0}, Lcom/batch/android/x0/o;->d(I)Lcom/batch/android/x0/f;

    move-result-object p0

    throw p0

    :pswitch_2
    invoke-direct {p0}, Lcom/batch/android/x0/o;->o()S

    move-result p0

    if-lt p0, v1, :cond_3

    if-gt p0, v4, :cond_3

    int-to-byte p0, p0

    return p0

    :cond_3
    invoke-static {p0}, Lcom/batch/android/x0/o;->a(S)Lcom/batch/android/x0/f;

    move-result-object p0

    throw p0

    :pswitch_3
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    return p0

    :pswitch_4
    invoke-direct {p0}, Lcom/batch/android/x0/o;->k()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-ltz p0, :cond_4

    cmp-long p0, v0, v2

    if-gtz p0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v0, v1}, Lcom/batch/android/x0/o;->b(J)Lcom/batch/android/x0/f;

    move-result-object p0

    throw p0

    :pswitch_5
    invoke-direct {p0}, Lcom/batch/android/x0/o;->j()I

    move-result p0

    if-ltz p0, :cond_5

    if-gt p0, v4, :cond_5

    int-to-byte p0, p0

    return p0

    :cond_5
    invoke-static {p0}, Lcom/batch/android/x0/o;->e(I)Lcom/batch/android/x0/f;

    move-result-object p0

    throw p0

    :pswitch_6
    invoke-direct {p0}, Lcom/batch/android/x0/o;->o()S

    move-result p0

    if-ltz p0, :cond_6

    if-gt p0, v4, :cond_6

    int-to-byte p0, p0

    return p0

    :cond_6
    invoke-static {p0}, Lcom/batch/android/x0/o;->b(S)Lcom/batch/android/x0/f;

    move-result-object p0

    throw p0

    :pswitch_7
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    if-ltz p0, :cond_7

    return p0

    :cond_7
    invoke-static {p0}, Lcom/batch/android/x0/o;->a(B)Lcom/batch/android/x0/f;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch -0x34
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public x()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result v0

    const/16 v1, -0x36

    if-eq v0, v1, :cond_1

    const/16 v1, -0x35

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/batch/android/x0/o;->h()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string p0, "Float"

    invoke-static {p0, v0}, Lcom/batch/android/x0/o;->a(Ljava/lang/String;B)Lcom/batch/android/x0/i;

    move-result-object p0

    throw p0

    :cond_1
    invoke-direct {p0}, Lcom/batch/android/x0/o;->i()F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method

.method public y()Lcom/batch/android/x0/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    const-string p0, "Ext"

    invoke-static {p0, v0}, Lcom/batch/android/x0/o;->a(Ljava/lang/String;B)Lcom/batch/android/x0/i;

    move-result-object p0

    throw p0

    :pswitch_0
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    new-instance v0, Lcom/batch/android/x0/a;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/batch/android/x0/a;-><init>(BI)V

    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    new-instance v0, Lcom/batch/android/x0/a;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/batch/android/x0/a;-><init>(BI)V

    return-object v0

    :pswitch_2
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    new-instance v0, Lcom/batch/android/x0/a;

    invoke-direct {v0, p0, v2}, Lcom/batch/android/x0/a;-><init>(BI)V

    return-object v0

    :pswitch_3
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    new-instance v0, Lcom/batch/android/x0/a;

    invoke-direct {v0, p0, v3}, Lcom/batch/android/x0/a;-><init>(BI)V

    return-object v0

    :pswitch_4
    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result p0

    new-instance v0, Lcom/batch/android/x0/a;

    invoke-direct {v0, p0, v1}, Lcom/batch/android/x0/a;-><init>(BI)V

    return-object v0

    :pswitch_5
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->g(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    iget v1, p0, Lcom/batch/android/x0/o;->m:I

    invoke-virtual {v0, v1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getInt(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget p0, p0, Lcom/batch/android/x0/o;->m:I

    add-int/2addr p0, v2

    invoke-virtual {v0, p0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result p0

    new-instance v0, Lcom/batch/android/x0/a;

    invoke-direct {v0, p0, v1}, Lcom/batch/android/x0/a;-><init>(BI)V

    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/batch/android/x0/o;->f(I)Lcom/batch/android/x0/k;

    move-result-object p0

    throw p0

    :pswitch_6
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/batch/android/x0/o;->g(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    iget v1, p0, Lcom/batch/android/x0/o;->m:I

    invoke-virtual {v0, v1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getShort(I)S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iget p0, p0, Lcom/batch/android/x0/o;->m:I

    add-int/2addr p0, v3

    invoke-virtual {v0, p0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result p0

    new-instance v0, Lcom/batch/android/x0/a;

    invoke-direct {v0, p0, v1}, Lcom/batch/android/x0/a;-><init>(BI)V

    return-object v0

    :pswitch_7
    invoke-direct {p0, v3}, Lcom/batch/android/x0/o;->g(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    iget v2, p0, Lcom/batch/android/x0/o;->m:I

    invoke-virtual {v0, v2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iget p0, p0, Lcom/batch/android/x0/o;->m:I

    add-int/2addr p0, v1

    invoke-virtual {v0, p0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result p0

    new-instance v0, Lcom/batch/android/x0/a;

    invoke-direct {v0, p0, v2}, Lcom/batch/android/x0/a;-><init>(BI)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x39
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public z()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/batch/android/x0/o;->g()B

    move-result v0

    const/16 v1, -0x36

    if-eq v0, v1, :cond_1

    const/16 v1, -0x35

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/batch/android/x0/o;->h()D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_0
    const-string p0, "Float"

    invoke-static {p0, v0}, Lcom/batch/android/x0/o;->a(Ljava/lang/String;B)Lcom/batch/android/x0/i;

    move-result-object p0

    throw p0

    :cond_1
    invoke-direct {p0}, Lcom/batch/android/x0/o;->i()F

    move-result p0

    return p0
.end method
