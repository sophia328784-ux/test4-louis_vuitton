.class public final Lcom/batch/android/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/e/a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B

.field private final c:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!#$%&()*+,./:;<=>?@[]^_`{|}~\'"

    iput-object v0, p0, Lcom/batch/android/e/a;->a:Ljava/lang/String;

    const/16 v0, 0x5b

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/batch/android/e/a;->b:[B

    const/16 v0, 0x100

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lkotlin/UByte;->c:Lkotlin/UByte$Companion;

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/batch/android/e/a;->c:[B

    invoke-direct {p0}, Lcom/batch/android/e/a;->a()V

    return-void
.end method

.method private final a()V
    .locals 6

    .line 124
    iget-object v0, p0, Lcom/batch/android/e/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->o(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, v0, v2

    .line 125
    iget-object v4, p0, Lcom/batch/android/e/a;->b:[B

    sget-object v5, Lkotlin/UByte;->c:Lkotlin/UByte$Companion;

    .line 126
    aput-byte v3, v4, v2

    .line 127
    iget-object v4, p0, Lcom/batch/android/e/a;->c:[B

    int-to-byte v5, v2

    .line 128
    aput-byte v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/a$a;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    invoke-static {p1}, Lkotlin/text/StringsKt;->o(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/batch/android/e/a;->a([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final a([B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/e/a$a;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    int-to-double v0, v0

    const-wide/high16 v2, 0x402c000000000000L    # 14.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    new-array v0, v0, [B

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v3

    :goto_0
    if-ge v2, v1, :cond_4

    aget-byte v8, p1, v2

    sget-object v9, Lkotlin/UByte;->c:Lkotlin/UByte$Companion;

    iget-object v9, p0, Lcom/batch/android/e/a;->c:[B

    and-int/lit16 v8, v8, 0xff

    aget-byte v8, v9, v8

    if-eq v8, v3, :cond_3

    if-ne v7, v3, :cond_0

    and-int/lit16 v7, v8, 0xff

    goto :goto_2

    :cond_0
    and-int/lit16 v8, v8, 0xff

    mul-int/lit8 v8, v8, 0x5b

    add-int/2addr v8, v7

    sget-object v7, Lkotlin/UInt;->c:Lkotlin/UInt$Companion;

    shl-int v7, v8, v6

    or-int/2addr v5, v7

    and-int/lit16 v7, v8, 0x1fff

    const/16 v8, 0x58

    if-le v7, v8, :cond_1

    add-int/lit8 v6, v6, 0xd

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0xe

    :goto_1
    const/4 v7, 0x7

    invoke-static {v6, v7}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v7

    if-lez v7, :cond_2

    add-int/lit8 v7, v4, 0x1

    int-to-byte v8, v5

    aput-byte v8, v0, v4

    ushr-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v6, -0x8

    move v4, v7

    goto :goto_1

    :cond_2
    move v7, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/batch/android/e/a$a;

    invoke-direct {p0}, Lcom/batch/android/e/a$a;-><init>()V

    throw p0

    :cond_4
    if-eq v7, v3, :cond_5

    add-int/lit8 p0, v4, 0x1

    sget-object p1, Lkotlin/UInt;->c:Lkotlin/UInt$Companion;

    shl-int p1, v7, v6

    or-int/2addr p1, v5

    int-to-byte p1, p1

    sget-object v1, Lkotlin/UByte;->c:Lkotlin/UByte$Companion;

    aput-byte p1, v0, v4

    move v4, p0

    :cond_5
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    invoke-static {p1}, Lkotlin/text/StringsKt;->o(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/batch/android/e/a;->b([B)[B

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    new-instance p1, Ljava/lang/String;

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public final b([B)[B
    .locals 12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x402a000000000000L    # 13.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    new-array v0, v0, [B

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const/16 v7, 0x5b

    if-ge v3, v1, :cond_2

    aget-byte v8, p1, v3

    sget-object v9, Lkotlin/UByte;->c:Lkotlin/UByte$Companion;

    and-int/lit16 v8, v8, 0xff

    sget-object v9, Lkotlin/UInt;->c:Lkotlin/UInt$Companion;

    shl-int/2addr v8, v4

    or-int/2addr v5, v8

    add-int/lit8 v8, v4, 0x8

    const/16 v9, 0xd

    invoke-static {v8, v9}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v9

    if-lez v9, :cond_1

    and-int/lit16 v8, v5, 0x1fff

    const/16 v9, 0x58

    invoke-static {v8, v9}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v9

    if-lez v9, :cond_0

    ushr-int/lit8 v5, v5, 0xd

    add-int/lit8 v4, v4, -0x5

    goto :goto_1

    :cond_0
    and-int/lit16 v8, v5, 0x3fff

    ushr-int/lit8 v5, v5, 0xe

    add-int/lit8 v4, v4, -0x6

    :goto_1
    add-int/lit8 v9, v6, 0x1

    iget-object v10, p0, Lcom/batch/android/e/a;->b:[B

    invoke-static {v8, v7}, Ljava/lang/Integer;->remainderUnsigned(II)I

    move-result v11

    aget-byte v10, v10, v11

    aput-byte v10, v0, v6

    add-int/lit8 v6, v6, 0x2

    iget-object v10, p0, Lcom/batch/android/e/a;->b:[B

    invoke-static {v8, v7}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result v7

    aget-byte v7, v10, v7

    aput-byte v7, v0, v9

    goto :goto_2

    :cond_1
    move v4, v8

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v4, v2}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result p1

    if-lez p1, :cond_5

    add-int/lit8 p1, v6, 0x1

    iget-object v1, p0, Lcom/batch/android/e/a;->b:[B

    invoke-static {v5, v7}, Ljava/lang/Integer;->remainderUnsigned(II)I

    move-result v2

    aget-byte v1, v1, v2

    sget-object v2, Lkotlin/UByte;->c:Lkotlin/UByte$Companion;

    aput-byte v1, v0, v6

    const/4 v1, 0x7

    invoke-static {v4, v1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v1

    if-gtz v1, :cond_4

    const/16 v1, 0x5a

    invoke-static {v5, v1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_3

    :cond_3
    move v6, p1

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x2

    iget-object p0, p0, Lcom/batch/android/e/a;->b:[B

    invoke-static {v5, v7}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result v1

    aget-byte p0, p0, v1

    aput-byte p0, v0, p1

    :cond_5
    :goto_4
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method
