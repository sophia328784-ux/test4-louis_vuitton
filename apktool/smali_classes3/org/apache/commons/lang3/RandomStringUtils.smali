.class public Lorg/apache/commons/lang3/RandomStringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lsg0;

.field public static final c:Lorg/apache/commons/lang3/RandomStringUtils;

.field public static final d:[C


# instance fields
.field public final a:Lsg0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lsg0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lsg0;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang3/RandomStringUtils;->b:Lsg0;

    new-instance v1, Lorg/apache/commons/lang3/RandomStringUtils;

    invoke-direct {v1, v0}, Lorg/apache/commons/lang3/RandomStringUtils;-><init>(Lsg0;)V

    sput-object v1, Lorg/apache/commons/lang3/RandomStringUtils;->c:Lorg/apache/commons/lang3/RandomStringUtils;

    const/16 v0, 0x3e

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/lang3/RandomStringUtils;->d:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/apache/commons/lang3/RandomStringUtils;->b:Lsg0;

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/RandomStringUtils;-><init>(Lsg0;)V

    return-void
.end method

.method public constructor <init>(Lsg0;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/apache/commons/lang3/RandomStringUtils;->a:Lsg0;

    return-void
.end method

.method public static a(ZZ[CLjava/util/Random;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    array-length v3, v0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "The chars array must not be empty"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2

    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x20

    const v5, 0x10ffff

    const/16 v6, 0x7b

    if-eqz v0, :cond_2

    array-length v7, v0

    move v8, v3

    goto :goto_1

    :cond_2
    if-nez p0, :cond_3

    if-nez p1, :cond_3

    move v8, v3

    move v7, v5

    goto :goto_1

    :cond_3
    move v8, v4

    move v7, v6

    :goto_1
    if-le v7, v5, :cond_4

    goto :goto_2

    :cond_4
    move v5, v7

    :goto_2
    if-nez v0, :cond_b

    const/16 v7, 0x7f

    if-gt v5, v7, :cond_b

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-lt v5, v6, :cond_5

    sget-object v0, Lorg/apache/commons/lang3/RandomStringUtils;->d:[C

    invoke-static {v3, v3, v0, v1}, Lorg/apache/commons/lang3/RandomStringUtils;->a(ZZ[CLjava/util/Random;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/16 v7, 0x30

    if-eqz p1, :cond_6

    if-le v5, v7, :cond_7

    :cond_6
    const/16 v9, 0x41

    if-eqz p0, :cond_8

    if-le v5, v9, :cond_7

    goto :goto_3

    :cond_7
    const-string v0, ") must be greater then (48) for generating digits or greater then (65) for generating letters."

    const-string v1, "Parameter end ("

    invoke-static {v5, v1, v0}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2

    :cond_8
    :goto_3
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_4

    :cond_9
    if-eqz p1, :cond_a

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/16 v6, 0x3a

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_4

    :cond_a
    if-eqz p0, :cond_b

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_b
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    sub-int v9, v5, v8

    invoke-static {v9}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x20

    int-to-long v10, v9

    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    const-wide/16 v14, 0x3

    add-long/2addr v10, v14

    const-wide/16 v14, 0x5

    div-long/2addr v10, v14

    add-long/2addr v10, v12

    const-wide/32 v12, 0x199999a3

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v10, v10

    new-instance v11, Lorg/apache/commons/lang3/CachedRandomBits;

    invoke-direct {v11, v10, v1}, Lorg/apache/commons/lang3/CachedRandomBits;-><init>(ILjava/util/Random;)V

    :goto_5
    add-int/lit8 v1, v7, -0x1

    if-eqz v7, :cond_17

    if-gt v9, v4, :cond_16

    if-lez v9, :cond_16

    move v10, v3

    move v12, v10

    :goto_6
    const/4 v13, 0x1

    if-ge v10, v9, :cond_d

    iget v14, v11, Lorg/apache/commons/lang3/CachedRandomBits;->c:I

    shr-int/lit8 v14, v14, 0x3

    iget-object v15, v11, Lorg/apache/commons/lang3/CachedRandomBits;->b:[B

    move-object/from16 v16, v2

    array-length v2, v15

    if-lt v14, v2, :cond_c

    iget-object v2, v11, Lorg/apache/commons/lang3/CachedRandomBits;->a:Ljava/util/Random;

    invoke-virtual {v2, v15}, Ljava/util/Random;->nextBytes([B)V

    iput v3, v11, Lorg/apache/commons/lang3/CachedRandomBits;->c:I

    :cond_c
    iget v2, v11, Lorg/apache/commons/lang3/CachedRandomBits;->c:I

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x8

    sub-int v14, v9, v10

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    shl-int/2addr v12, v2

    iget v14, v11, Lorg/apache/commons/lang3/CachedRandomBits;->c:I

    shr-int/lit8 v17, v14, 0x3

    aget-byte v15, v15, v17

    and-int/lit8 v17, v14, 0x7

    shr-int v15, v15, v17

    shl-int v17, v13, v2

    add-int/lit8 v17, v17, -0x1

    and-int v13, v15, v17

    or-int/2addr v12, v13

    add-int/2addr v10, v2

    add-int/2addr v14, v2

    iput v14, v11, Lorg/apache/commons/lang3/CachedRandomBits;->c:I

    move-object/from16 v2, v16

    goto :goto_6

    :cond_d
    move-object/from16 v16, v2

    add-int/2addr v12, v8

    if-lt v12, v5, :cond_f

    :cond_e
    :goto_7
    move-object/from16 v2, v16

    goto :goto_5

    :cond_f
    if-nez v0, :cond_10

    invoke-static {v12}, Ljava/lang/Character;->getType(I)I

    move-result v2

    if-eqz v2, :cond_e

    const/16 v10, 0x12

    if-eq v2, v10, :cond_e

    const/16 v10, 0x13

    if-eq v2, v10, :cond_e

    goto :goto_8

    :cond_10
    aget-char v12, v0, v12

    :goto_8
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    if-nez v1, :cond_11

    if-le v2, v13, :cond_11

    goto :goto_7

    :cond_11
    if-eqz p0, :cond_12

    invoke-static {v12}, Ljava/lang/Character;->isLetter(I)Z

    move-result v10

    if-nez v10, :cond_14

    :cond_12
    if-eqz p1, :cond_13

    invoke-static {v12}, Ljava/lang/Character;->isDigit(I)Z

    move-result v10

    if-nez v10, :cond_14

    :cond_13
    if-nez p0, :cond_e

    if-nez p1, :cond_e

    :cond_14
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    if-ne v2, v10, :cond_15

    add-int/lit8 v7, v7, -0x2

    goto :goto_7

    :cond_15
    move v7, v1

    goto :goto_7

    :cond_16
    move-object/from16 v16, v2

    const-string v0, "number of bits must be between 1 and 32"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v16

    :cond_17
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RandomStringUtils [random="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/commons/lang3/RandomStringUtils;->a:Lsg0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lorg/apache/commons/lang3/RandomUtils;->b:Lorg/apache/commons/lang3/RandomUtils;

    iget-object p0, p0, Lorg/apache/commons/lang3/RandomUtils;->a:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Random;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
