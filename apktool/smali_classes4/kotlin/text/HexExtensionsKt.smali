.class public abstract Lkotlin/text/HexExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:[I

.field public static final b:[J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "0123456789abcdef"

    if-ge v3, v0, :cond_0

    shr-int/lit8 v5, v3, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    shl-int/lit8 v5, v5, 0x8

    and-int/lit8 v6, v3, 0xf

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    or-int/2addr v4, v5

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Lkotlin/text/HexExtensionsKt;->a:[I

    new-array v1, v0, [I

    move v3, v2

    :goto_1
    const-string v5, "0123456789ABCDEF"

    if-ge v3, v0, :cond_1

    shr-int/lit8 v6, v3, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    and-int/lit8 v7, v3, 0xf

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    or-int/2addr v5, v6

    aput v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-array v1, v0, [I

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_2

    const/4 v6, -0x1

    aput v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v2

    move v6, v3

    :goto_3
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v6, 0x1

    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_3

    :cond_3
    move v3, v2

    move v6, v3

    :goto_4
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    invoke-interface {v5, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    add-int/lit8 v8, v6, 0x1

    aput v6, v1, v7

    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_4

    :cond_4
    new-array v1, v0, [J

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_5

    const-wide/16 v6, -0x1

    aput-wide v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    move v0, v2

    move v3, v0

    :goto_6
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v0, v6, :cond_6

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v3, 0x1

    int-to-long v8, v3

    aput-wide v8, v1, v6

    add-int/lit8 v0, v0, 0x1

    move v3, v7

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_7
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v0, 0x1

    int-to-long v6, v0

    aput-wide v6, v1, v3

    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_7

    :cond_7
    sput-object v1, Lkotlin/text/HexExtensionsKt;->b:[J

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 28

    sget-object v0, Lkotlin/text/HexFormat;->d:Lkotlin/text/HexFormat$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/text/HexFormat;->e:Lkotlin/text/HexFormat;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v0, Lkotlin/text/HexFormat;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "0123456789ABCDEF"

    goto :goto_0

    :cond_0
    const-string v1, "0123456789abcdef"

    :goto_0
    iget-object v0, v0, Lkotlin/text/HexFormat;->c:Lkotlin/text/HexFormat$NumberHexFormat;

    iget-boolean v2, v0, Lkotlin/text/HexFormat$NumberHexFormat;->e:Z

    iget-boolean v3, v0, Lkotlin/text/HexFormat$NumberHexFormat;->c:Z

    const/16 v8, 0x10

    const-wide/16 v9, 0xf

    if-eqz v2, :cond_3

    const/16 v0, 0x3c

    shr-long v11, p0, v0

    and-long/2addr v11, v9

    long-to-int v0, v11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x38

    shr-long v11, p0, v2

    and-long/2addr v11, v9

    long-to-int v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v11, 0x34

    shr-long v11, p0, v11

    and-long/2addr v11, v9

    long-to-int v11, v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    shr-long v12, p0, v12

    and-long/2addr v12, v9

    long-to-int v12, v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2c

    shr-long v13, p0, v13

    and-long/2addr v13, v9

    long-to-int v13, v13

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x28

    shr-long v14, p0, v14

    and-long/2addr v14, v9

    long-to-int v14, v14

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x24

    shr-long v15, p0, v15

    move-wide/from16 v17, v9

    and-long v9, v15, v17

    long-to-int v9, v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x20

    shr-long v15, p0, v10

    const/4 v10, 0x0

    const/16 v19, 0x4

    and-long v6, v15, v17

    long-to-int v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x1c

    shr-long v15, p0, v7

    move/from16 v20, v10

    move v7, v11

    and-long v10, v15, v17

    long-to-int v10, v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x18

    shr-long v15, p0, v11

    const/16 v11, 0xa

    const/16 v21, 0x1

    and-long v4, v15, v17

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x14

    shr-long v15, p0, v5

    move/from16 v22, v11

    move v5, v12

    and-long v11, v15, v17

    long-to-int v11, v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    shr-long v15, p0, v8

    move/from16 v23, v9

    and-long v8, v15, v17

    long-to-int v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xc

    shr-long v15, p0, v9

    move/from16 v25, v9

    move/from16 v24, v10

    and-long v9, v15, v17

    long-to-int v9, v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x8

    shr-long v15, p0, v10

    move/from16 v27, v10

    move/from16 v26, v11

    and-long v10, v15, v17

    long-to-int v10, v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    shr-long v15, p0, v19

    move v11, v13

    and-long v12, v15, v17

    long-to-int v12, v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    move/from16 v16, v2

    move v15, v3

    and-long v2, p0, v17

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v12, 0x10

    new-array v2, v12, [C

    aput-char v0, v2, v20

    aput-char v16, v2, v21

    const/4 v0, 0x2

    aput-char v7, v2, v0

    const/4 v3, 0x3

    aput-char v5, v2, v3

    aput-char v11, v2, v19

    const/4 v3, 0x5

    aput-char v14, v2, v3

    const/4 v3, 0x6

    aput-char v23, v2, v3

    const/4 v3, 0x7

    aput-char v6, v2, v3

    aput-char v24, v2, v27

    const/16 v3, 0x9

    aput-char v4, v2, v3

    aput-char v26, v2, v22

    const/16 v3, 0xb

    aput-char v8, v2, v3

    aput-char v9, v2, v25

    const/16 v3, 0xd

    aput-char v10, v2, v3

    const/16 v3, 0xe

    aput-char v13, v2, v3

    const/16 v3, 0xf

    aput-char v1, v2, v3

    if-eqz v15, :cond_2

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    shr-int/lit8 v0, v1, 0x2

    if-le v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    sget-object v0, Lkotlin/collections/AbstractList;->b:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v12, 0x10

    invoke-static {v3, v12, v12}, Lkotlin/collections/AbstractList$Companion;->a(III)V

    new-instance v0, Ljava/lang/String;

    rsub-int/lit8 v1, v3, 0x10

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_3
    move v15, v3

    move-wide/from16 v17, v9

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0xa

    iget v2, v0, Lkotlin/text/HexFormat$NumberHexFormat;->d:I

    add-int/lit8 v10, v2, -0x10

    if-gez v10, :cond_4

    move/from16 v3, v20

    goto :goto_2

    :cond_4
    move v3, v10

    :goto_2
    iget-object v4, v0, Lkotlin/text/HexFormat$NumberHexFormat;->a:Ljava/lang/String;

    iget-object v0, v0, Lkotlin/text/HexFormat$NumberHexFormat;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    int-to-long v7, v3

    add-long/2addr v5, v7

    const-wide/16 v7, 0x10

    add-long/2addr v5, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v7, v7, v5

    if-gtz v7, :cond_e

    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v5, v7

    if-gtz v7, :cond_e

    long-to-int v5, v5

    new-array v6, v5, [C

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_6

    move/from16 v8, v21

    if-eq v7, v8, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    move/from16 v10, v20

    invoke-virtual {v4, v10, v7, v6, v10}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_3

    :cond_5
    move/from16 v10, v20

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v6, v10

    goto :goto_3

    :cond_6
    move/from16 v10, v20

    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v3, :cond_7

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/2addr v3, v4

    invoke-static {v6, v4, v3, v7}, Ljava/util/Arrays;->fill([CIIC)V

    move v4, v3

    :cond_7
    const/16 v3, 0x40

    const/4 v7, 0x0

    const/16 v12, 0x10

    :goto_4
    if-ge v7, v12, :cond_a

    add-int/lit8 v3, v3, -0x4

    shr-long v8, p0, v3

    and-long v8, v8, v17

    long-to-int v8, v8

    if-eqz v15, :cond_8

    if-nez v8, :cond_8

    shr-int/lit8 v9, v3, 0x2

    if-lt v9, v2, :cond_8

    const/4 v15, 0x1

    goto :goto_5

    :cond_8
    const/4 v15, 0x0

    :goto_5
    if-nez v15, :cond_9

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v6, v4

    move v4, v9

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v8, 0x1

    if-eq v1, v8, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v1, v6, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_6

    :cond_b
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v6, v4

    :cond_c
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v4

    if-ne v0, v5, :cond_d

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_d
    sget-object v1, Lkotlin/collections/AbstractList;->b:Lkotlin/collections/AbstractList$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    invoke-static {v10, v0, v5}, Lkotlin/collections/AbstractList$Companion;->a(III)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6, v10, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_e
    sget-object v0, Lkotlin/ULong;->c:Lkotlin/ULong$Companion;

    move/from16 v11, v22

    invoke-static {v11, v5, v6}, Lkotlin/UnsignedKt;->b(IJ)Ljava/lang/String;

    move-result-object v0

    const-string v1, "The resulting string length is too big: "

    invoke-static {v0, v1}, Laz;->w(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
