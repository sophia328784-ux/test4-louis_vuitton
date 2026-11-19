.class public Lcom/batch/android/x0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final j:Z

.field private static final k:I = 0x6


# instance fields
.field private final b:I

.field private final c:I

.field private final d:Z

.field protected e:Lcom/batch/android/y0/h;

.field private f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

.field private g:I

.field private h:J

.field private i:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "android.os.Build$VERSION"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SDK_INT"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_5
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/batch/android/x0/j;->j:Z

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/y0/h;Lcom/batch/android/x0/h$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MessageBufferOutput is null"

    invoke-static {p1, v0}, Lcom/batch/android/x0/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/batch/android/y0/h;

    iput-object p1, p0, Lcom/batch/android/x0/j;->e:Lcom/batch/android/y0/h;

    invoke-virtual {p2}, Lcom/batch/android/x0/h$b;->c()I

    move-result p1

    iput p1, p0, Lcom/batch/android/x0/j;->b:I

    invoke-virtual {p2}, Lcom/batch/android/x0/h$b;->a()I

    move-result p1

    iput p1, p0, Lcom/batch/android/x0/j;->c:I

    invoke-virtual {p2}, Lcom/batch/android/x0/h$b;->d()Z

    move-result p1

    iput-boolean p1, p0, Lcom/batch/android/x0/j;->d:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/batch/android/x0/j;->g:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/batch/android/x0/j;->h:J

    return-void
.end method

.method private a(ILjava/lang/String;)I
    .locals 3

    .line 303
    invoke-direct {p0}, Lcom/batch/android/x0/j;->e()V

    .line 304
    iget-object v0, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->sliceAsByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 305
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 306
    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p2

    .line 307
    iget-object v1, p0, Lcom/batch/android/x0/j;->i:Ljava/nio/charset/CharsetEncoder;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, p1, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p2

    .line 308
    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 310
    new-instance p1, Lcom/batch/android/x0/l;

    invoke-direct {p1, p0}, Lcom/batch/android/x0/l;-><init>(Ljava/nio/charset/CharacterCodingException;)V

    throw p1

    .line 311
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 312
    :cond_1
    iget-object p0, p0, Lcom/batch/android/x0/j;->i:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p0

    .line 313
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    .line 314
    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p0

    sub-int/2addr p0, v0

    return p0

    :cond_3
    :goto_1
    return v2
.end method

.method private a(BB)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 260
    invoke-direct {p0, v0}, Lcom/batch/android/x0/j;->c(I)V

    .line 261
    iget-object v0, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putByte(IB)V

    .line 262
    iget-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v0, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {p1, v0, p2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putByte(IB)V

    return-void
.end method

.method private a(BD)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 271
    invoke-direct {p0, v0}, Lcom/batch/android/x0/j;->c(I)V

    .line 272
    iget-object v0, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putByte(IB)V

    .line 273
    iget-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v0, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {p1, v0, p2, p3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putDouble(ID)V

    .line 274
    iget p1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/batch/android/x0/j;->g:I

    return-void
.end method

.method private a(BF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 267
    invoke-direct {p0, v0}, Lcom/batch/android/x0/j;->c(I)V

    .line 268
    iget-object v0, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putByte(IB)V

    .line 269
    iget-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v0, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {p1, v0, p2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putFloat(IF)V

    .line 270
    iget p1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/batch/android/x0/j;->g:I

    return-void
.end method

.method private a(BJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 275
    invoke-direct {p0, v0}, Lcom/batch/android/x0/j;->c(I)V

    .line 276
    iget-object v0, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putByte(IB)V

    .line 277
    iget-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v0, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {p1, v0, p2, p3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putLong(IJ)V

    .line 278
    iget p1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/batch/android/x0/j;->g:I

    return-void
.end method

.method private a(BS)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 263
    invoke-direct {p0, v0}, Lcom/batch/android/x0/j;->c(I)V

    .line 264
    iget-object v0, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putByte(IB)V

    .line 265
    iget-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v0, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {p1, v0, p2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putShort(IS)V

    .line 266
    iget p1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/batch/android/x0/j;->g:I

    return-void
.end method

.method private b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/batch/android/x0/j;->e:Lcom/batch/android/y0/h;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    invoke-interface {v0, v1}, Lcom/batch/android/y0/h;->b(I)V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    .line 62
    iget-wide v0, p0, Lcom/batch/android/x0/j;->h:J

    iget v2, p0, Lcom/batch/android/x0/j;->g:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/batch/android/x0/j;->h:J

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/batch/android/x0/j;->g:I

    return-void
.end method

.method private b(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, v0}, Lcom/batch/android/x0/j;->c(I)V

    .line 45
    iget-object v0, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putByte(IB)V

    return-void
.end method

.method private b(BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 46
    invoke-direct {p0, v0}, Lcom/batch/android/x0/j;->c(I)V

    .line 47
    iget-object v0, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {v0, v1, p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putByte(IB)V

    .line 48
    iget-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v0, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {p1, v0, p2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putInt(II)V

    .line 49
    iget p1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/batch/android/x0/j;->g:I

    return-void
.end method

.method private b(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 53
    invoke-direct {p0, v0}, Lcom/batch/android/x0/j;->c(I)V

    .line 54
    iget-object v1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v2, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {v1, v2, p1, p2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putLong(IJ)V

    .line 55
    iget p1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/batch/android/x0/j;->g:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/batch/android/x0/h;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 57
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/batch/android/x0/j;->h(I)Lcom/batch/android/x0/j;

    .line 58
    invoke-virtual {p0, p1}, Lcom/batch/android/x0/j;->a([B)Lcom/batch/android/x0/j;

    return-void
.end method

.method private b(S)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 50
    invoke-direct {p0, v0}, Lcom/batch/android/x0/j;->c(I)V

    .line 51
    iget-object v1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v2, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {v1, v2, p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putShort(IS)V

    .line 52
    iget p1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/batch/android/x0/j;->g:I

    return-void
.end method

.method private c(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/batch/android/x0/j;->e:Lcom/batch/android/y0/h;

    invoke-interface {v0, p1}, Lcom/batch/android/y0/h;->a(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    return-void

    .line 46
    :cond_0
    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/2addr v1, p1

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 47
    invoke-direct {p0}, Lcom/batch/android/x0/j;->b()V

    .line 48
    iget-object v0, p0, Lcom/batch/android/x0/j;->e:Lcom/batch/android/y0/h;

    invoke-interface {v0, p1}, Lcom/batch/android/y0/h;->a(I)Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/x0/j;->i:Ljava/nio/charset/CharsetEncoder;

    if-nez v0, :cond_0

    sget-object v0, Lcom/batch/android/x0/h;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/x0/j;->i:Ljava/nio/charset/CharsetEncoder;

    :cond_0
    iget-object p0, p0, Lcom/batch/android/x0/j;->i:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method private i(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/batch/android/x0/j;->c(I)V

    iget-object v1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v2, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {v1, v2, p1}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putInt(II)V

    iget p1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/batch/android/x0/j;->g:I

    return-void
.end method


# virtual methods
.method public a(B)Lcom/batch/android/x0/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, -0x20

    if-ge p1, v0, :cond_0

    const/16 v0, -0x30

    .line 280
    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(BB)V

    return-object p0

    .line 281
    :cond_0
    invoke-direct {p0, p1}, Lcom/batch/android/x0/j;->b(B)V

    return-object p0
.end method

.method public a(BI)Lcom/batch/android/x0/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x100

    if-ge p2, v0, :cond_6

    const/16 v0, -0x39

    if-lez p2, :cond_5

    add-int/lit8 v1, p2, -0x1

    and-int/2addr v1, p2

    if-nez v1, :cond_5

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/16 p2, -0x2c

    .line 321
    invoke-direct {p0, p2, p1}, Lcom/batch/android/x0/j;->a(BB)V

    return-object p0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    const/16 p2, -0x2b

    .line 322
    invoke-direct {p0, p2, p1}, Lcom/batch/android/x0/j;->a(BB)V

    return-object p0

    :cond_1
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    const/16 p2, -0x2a

    .line 323
    invoke-direct {p0, p2, p1}, Lcom/batch/android/x0/j;->a(BB)V

    return-object p0

    :cond_2
    const/16 v1, 0x8

    if-ne p2, v1, :cond_3

    const/16 p2, -0x29

    .line 324
    invoke-direct {p0, p2, p1}, Lcom/batch/android/x0/j;->a(BB)V

    return-object p0

    :cond_3
    const/16 v1, 0x10

    if-ne p2, v1, :cond_4

    const/16 p2, -0x28

    .line 325
    invoke-direct {p0, p2, p1}, Lcom/batch/android/x0/j;->a(BB)V

    return-object p0

    :cond_4
    int-to-byte p2, p2

    .line 326
    invoke-direct {p0, v0, p2}, Lcom/batch/android/x0/j;->a(BB)V

    .line 327
    invoke-direct {p0, p1}, Lcom/batch/android/x0/j;->b(B)V

    return-object p0

    :cond_5
    int-to-byte p2, p2

    .line 328
    invoke-direct {p0, v0, p2}, Lcom/batch/android/x0/j;->a(BB)V

    .line 329
    invoke-direct {p0, p1}, Lcom/batch/android/x0/j;->b(B)V

    return-object p0

    :cond_6
    const/high16 v0, 0x10000

    if-ge p2, v0, :cond_7

    int-to-short p2, p2

    const/16 v0, -0x38

    .line 330
    invoke-direct {p0, v0, p2}, Lcom/batch/android/x0/j;->a(BS)V

    .line 331
    invoke-direct {p0, p1}, Lcom/batch/android/x0/j;->b(B)V

    return-object p0

    :cond_7
    const/16 v0, -0x37

    .line 332
    invoke-direct {p0, v0, p2}, Lcom/batch/android/x0/j;->b(BI)V

    .line 333
    invoke-direct {p0, p1}, Lcom/batch/android/x0/j;->b(B)V

    return-object p0
.end method

.method public a(D)Lcom/batch/android/x0/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, -0x35

    .line 302
    invoke-direct {p0, v0, p1, p2}, Lcom/batch/android/x0/j;->a(BD)V

    return-object p0
.end method

.method public a(F)Lcom/batch/android/x0/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, -0x36

    .line 301
    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(BF)V

    return-object p0
.end method

.method public a(J)Lcom/batch/android/x0/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x20

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    const-wide/16 v0, -0x8000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-wide/32 v0, -0x80000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/16 v0, -0x2d

    .line 287
    invoke-direct {p0, v0, p1, p2}, Lcom/batch/android/x0/j;->a(BJ)V

    return-object p0

    :cond_0
    long-to-int p1, p1

    const/16 p2, -0x2e

    .line 288
    invoke-direct {p0, p2, p1}, Lcom/batch/android/x0/j;->b(BI)V

    return-object p0

    :cond_1
    const-wide/16 v0, -0x80

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    long-to-int p1, p1

    int-to-short p1, p1

    const/16 p2, -0x2f

    .line 289
    invoke-direct {p0, p2, p1}, Lcom/batch/android/x0/j;->a(BS)V

    return-object p0

    :cond_2
    long-to-int p1, p1

    int-to-byte p1, p1

    const/16 p2, -0x30

    .line 290
    invoke-direct {p0, p2, p1}, Lcom/batch/android/x0/j;->a(BB)V

    return-object p0

    :cond_3
    const-wide/16 v0, 0x80

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 291
    invoke-direct {p0, p1}, Lcom/batch/android/x0/j;->b(B)V

    return-object p0

    :cond_4
    const-wide/32 v0, 0x10000

    cmp-long v0, p1, v0

    if-gez v0, :cond_6

    const-wide/16 v0, 0x100

    cmp-long v0, p1, v0

    if-gez v0, :cond_5

    long-to-int p1, p1

    int-to-byte p1, p1

    const/16 p2, -0x34

    .line 292
    invoke-direct {p0, p2, p1}, Lcom/batch/android/x0/j;->a(BB)V

    return-object p0

    :cond_5
    long-to-int p1, p1

    int-to-short p1, p1

    const/16 p2, -0x33

    .line 293
    invoke-direct {p0, p2, p1}, Lcom/batch/android/x0/j;->a(BS)V

    return-object p0

    :cond_6
    const-wide v0, 0x100000000L

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    long-to-int p1, p1

    const/16 p2, -0x32

    .line 294
    invoke-direct {p0, p2, p1}, Lcom/batch/android/x0/j;->b(BI)V

    return-object p0

    :cond_7
    const/16 v0, -0x31

    .line 295
    invoke-direct {p0, v0, p1, p2}, Lcom/batch/android/x0/j;->a(BJ)V

    return-object p0
.end method

.method public a(Lcom/batch/android/z0/x;)Lcom/batch/android/x0/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    invoke-interface {p1, p0}, Lcom/batch/android/z0/x;->a(Lcom/batch/android/x0/j;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/batch/android/x0/j;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/batch/android/x0/j;->h(I)Lcom/batch/android/x0/j;

    return-object p0

    :cond_0
    sget-boolean v0, Lcom/batch/android/x0/j;->j:Z

    if-nez v0, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/batch/android/x0/j;->b:I

    if-ge v0, v1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Unexpected UTF-8 encoder state"

    const/16 v3, -0x26

    const/16 v4, 0x100

    const/high16 v5, 0x10000

    if-ge v0, v4, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x3

    invoke-direct {p0, v0}, Lcom/batch/android/x0/j;->c(I)V

    iget v0, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7

    iget-boolean p1, p0, Lcom/batch/android/x0/j;->d:Z

    if-eqz p1, :cond_2

    if-ge v0, v4, :cond_2

    iget-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/batch/android/x0/j;->g:I

    const/16 v2, -0x27

    invoke-virtual {p1, v1, v2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putByte(IB)V

    iget-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/batch/android/x0/j;->g:I

    int-to-byte v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putByte(IB)V

    iget p1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/batch/android/x0/j;->g:I

    return-object p0

    :cond_2
    if-ge v0, v5, :cond_3

    iget-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 v2, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v2, p1, v1, v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putMessageBuffer(ILcom/batch/android/msgpack/core/buffer/MessageBuffer;II)V

    iget-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {p1, v1, v3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putByte(IB)V

    iget-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    int-to-short v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putShort(IS)V

    iget p1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    iput p1, p0, Lcom/batch/android/x0/j;->g:I

    return-object p0

    :cond_3
    invoke-static {v2}, Lmd;->n(Ljava/lang/String;)V

    return-object v1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v5, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    add-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lcom/batch/android/x0/j;->c(I)V

    iget v0, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 v0, v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(ILjava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7

    if-ge v0, v5, :cond_5

    iget-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {p1, v1, v3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putByte(IB)V

    iget-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    int-to-short v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putShort(IS)V

    iget p1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    iput p1, p0, Lcom/batch/android/x0/j;->g:I

    return-object p0

    :cond_5
    int-to-long v3, v0

    const-wide v5, 0x100000000L

    cmp-long p1, v3, v5

    if-gez p1, :cond_6

    iget-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 v2, v1, 0x5

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v2, p1, v1, v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putMessageBuffer(ILcom/batch/android/msgpack/core/buffer/MessageBuffer;II)V

    iget-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/batch/android/x0/j;->g:I

    const/16 v2, -0x25

    invoke-virtual {p1, v1, v2}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putByte(IB)V

    iget-object p1, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    invoke-virtual {p1, v1, v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putInt(II)V

    iget p1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    iput p1, p0, Lcom/batch/android/x0/j;->g:I

    return-object p0

    :cond_6
    invoke-static {v2}, Lmd;->n(Ljava/lang/String;)V

    return-object v1

    :cond_7
    invoke-direct {p0, p1}, Lcom/batch/android/x0/j;->b(Ljava/lang/String;)V

    return-object p0

    :cond_8
    :goto_0
    invoke-direct {p0, p1}, Lcom/batch/android/x0/j;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Ljava/math/BigInteger;)Lcom/batch/android/x0/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    .line 297
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/batch/android/x0/j;->a(J)Lcom/batch/android/x0/j;

    return-object p0

    .line 298
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 299
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    const/16 p1, -0x31

    invoke-direct {p0, p1, v0, v1}, Lcom/batch/android/x0/j;->a(BJ)V

    return-object p0

    .line 300
    :cond_1
    const-string p0, "MessagePack cannot serialize BigInteger larger than 2^64-1"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(S)Lcom/batch/android/x0/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, -0x20

    if-ge p1, v0, :cond_1

    const/16 v0, -0x80

    if-ge p1, v0, :cond_0

    const/16 v0, -0x2f

    .line 282
    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(BS)V

    return-object p0

    :cond_0
    int-to-byte p1, p1

    const/16 v0, -0x30

    .line 283
    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(BB)V

    return-object p0

    :cond_1
    const/16 v0, 0x80

    if-ge p1, v0, :cond_2

    int-to-byte p1, p1

    .line 284
    invoke-direct {p0, p1}, Lcom/batch/android/x0/j;->b(B)V

    return-object p0

    :cond_2
    const/16 v0, 0x100

    if-ge p1, v0, :cond_3

    int-to-byte p1, p1

    const/16 v0, -0x34

    .line 285
    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(BB)V

    return-object p0

    :cond_3
    const/16 v0, -0x33

    .line 286
    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(BS)V

    return-object p0
.end method

.method public a(Z)Lcom/batch/android/x0/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/16 p1, -0x3d

    goto :goto_0

    :cond_0
    const/16 p1, -0x3e

    .line 279
    :goto_0
    invoke-direct {p0, p1}, Lcom/batch/android/x0/j;->b(B)V

    return-object p0
.end method

.method public a([B)Lcom/batch/android/x0/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/batch/android/x0/j;->b([BII)Lcom/batch/android/x0/j;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/batch/android/y0/h;)Lcom/batch/android/y0/h;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    const-string v0, "MessageBufferOutput is null"

    invoke-static {p1, v0}, Lcom/batch/android/x0/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/batch/android/y0/h;

    .line 316
    invoke-virtual {p0}, Lcom/batch/android/x0/j;->flush()V

    .line 317
    iget-object v0, p0, Lcom/batch/android/x0/j;->e:Lcom/batch/android/y0/h;

    .line 318
    iput-object p1, p0, Lcom/batch/android/x0/j;->e:Lcom/batch/android/y0/h;

    const-wide/16 v1, 0x0

    .line 319
    iput-wide v1, p0, Lcom/batch/android/x0/j;->h:J

    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 259
    iput v0, p0, Lcom/batch/android/x0/j;->g:I

    return-void
.end method

.method public b([B)Lcom/batch/android/x0/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/batch/android/x0/j;->c([BII)Lcom/batch/android/x0/j;

    move-result-object p0

    return-object p0
.end method

.method public b([BII)Lcom/batch/android/x0/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_1

    iget v0, p0, Lcom/batch/android/x0/j;->c:I

    if-le p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putBytes(I[BII)V

    iget p1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/batch/android/x0/j;->g:I

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/batch/android/x0/j;->flush()V

    iget-object v0, p0, Lcom/batch/android/x0/j;->e:Lcom/batch/android/y0/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/batch/android/y0/h;->a([BII)V

    iget-wide p1, p0, Lcom/batch/android/x0/j;->h:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/batch/android/x0/j;->h:J

    return-object p0
.end method

.method public c()J
    .locals 4

    .line 49
    iget-wide v0, p0, Lcom/batch/android/x0/j;->h:J

    iget p0, p0, Lcom/batch/android/x0/j;->g:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public c([BII)Lcom/batch/android/x0/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    iget v1, p0, Lcom/batch/android/x0/j;->g:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_1

    iget v0, p0, Lcom/batch/android/x0/j;->c:I

    if-le p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/batch/android/x0/j;->f:Lcom/batch/android/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/batch/android/msgpack/core/buffer/MessageBuffer;->putBytes(I[BII)V

    iget p1, p0, Lcom/batch/android/x0/j;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/batch/android/x0/j;->g:I

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/batch/android/x0/j;->flush()V

    iget-object v0, p0, Lcom/batch/android/x0/j;->e:Lcom/batch/android/y0/h;

    invoke-interface {v0, p1, p2, p3}, Lcom/batch/android/y0/h;->write([BII)V

    iget-wide p1, p0, Lcom/batch/android/x0/j;->h:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/batch/android/x0/j;->h:J

    return-object p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/x0/j;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/batch/android/x0/j;->e:Lcom/batch/android/y0/h;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/batch/android/x0/j;->e:Lcom/batch/android/y0/h;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    throw v0
.end method

.method public d()Lcom/batch/android/x0/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, -0x40

    .line 37
    invoke-direct {p0, v0}, Lcom/batch/android/x0/j;->b(B)V

    return-object p0
.end method

.method public d(I)Lcom/batch/android/x0/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    or-int/lit8 p1, p1, -0x70

    int-to-byte p1, p1

    invoke-direct {p0, p1}, Lcom/batch/android/x0/j;->b(B)V

    return-object p0

    :cond_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    int-to-short p1, p1

    const/16 v0, -0x24

    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(BS)V

    return-object p0

    :cond_1
    const/16 v0, -0x23

    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->b(BI)V

    return-object p0

    :cond_2
    const-string p0, "array size must be >= 0"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public e(I)Lcom/batch/android/x0/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    int-to-byte p1, p1

    const/16 v0, -0x3c

    .line 28
    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(BB)V

    return-object p0

    :cond_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    int-to-short p1, p1

    const/16 v0, -0x3b

    .line 29
    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(BS)V

    return-object p0

    :cond_1
    const/16 v0, -0x3a

    .line 30
    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->b(BI)V

    return-object p0
.end method

.method public f(I)Lcom/batch/android/x0/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, -0x20

    if-ge p1, v0, :cond_2

    const/16 v0, -0x8000

    if-ge p1, v0, :cond_0

    const/16 v0, -0x2e

    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->b(BI)V

    return-object p0

    :cond_0
    const/16 v0, -0x80

    if-ge p1, v0, :cond_1

    int-to-short p1, p1

    const/16 v0, -0x2f

    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(BS)V

    return-object p0

    :cond_1
    int-to-byte p1, p1

    const/16 v0, -0x30

    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(BB)V

    return-object p0

    :cond_2
    const/16 v0, 0x80

    if-ge p1, v0, :cond_3

    int-to-byte p1, p1

    invoke-direct {p0, p1}, Lcom/batch/android/x0/j;->b(B)V

    return-object p0

    :cond_3
    const/16 v0, 0x100

    if-ge p1, v0, :cond_4

    int-to-byte p1, p1

    const/16 v0, -0x34

    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(BB)V

    return-object p0

    :cond_4
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_5

    int-to-short p1, p1

    const/16 v0, -0x33

    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(BS)V

    return-object p0

    :cond_5
    const/16 v0, -0x32

    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->b(BI)V

    return-object p0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/batch/android/x0/j;->g:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/batch/android/x0/j;->b()V

    :cond_0
    iget-object p0, p0, Lcom/batch/android/x0/j;->e:Lcom/batch/android/y0/h;

    invoke-interface {p0}, Ljava/io/Flushable;->flush()V

    return-void
.end method

.method public g(I)Lcom/batch/android/x0/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_2

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    or-int/lit8 p1, p1, -0x80

    int-to-byte p1, p1

    invoke-direct {p0, p1}, Lcom/batch/android/x0/j;->b(B)V

    return-object p0

    :cond_0
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1

    int-to-short p1, p1

    const/16 v0, -0x22

    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(BS)V

    return-object p0

    :cond_1
    const/16 v0, -0x21

    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->b(BI)V

    return-object p0

    :cond_2
    const-string p0, "map size must be >= 0"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public h(I)Lcom/batch/android/x0/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    or-int/lit8 p1, p1, -0x60

    int-to-byte p1, p1

    invoke-direct {p0, p1}, Lcom/batch/android/x0/j;->b(B)V

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/batch/android/x0/j;->d:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    int-to-byte p1, p1

    const/16 v0, -0x27

    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(BB)V

    return-object p0

    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_2

    int-to-short p1, p1

    const/16 v0, -0x26

    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->a(BS)V

    return-object p0

    :cond_2
    const/16 v0, -0x25

    invoke-direct {p0, v0, p1}, Lcom/batch/android/x0/j;->b(BI)V

    return-object p0
.end method
