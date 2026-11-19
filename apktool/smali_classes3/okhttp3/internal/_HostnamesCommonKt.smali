.class public abstract Lokhttp3/internal/_HostnamesCommonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "okhttp"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lokhttp3/internal/_HostnamesCommonKt;->a:Lkotlin/text/Regex;

    return-void
.end method

.method public static final a(IILjava/lang/String;)[B
    .locals 17

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x10

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, -0x1

    move/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v8

    :goto_0
    if-ge v6, v0, :cond_11

    if-ne v7, v2, :cond_0

    goto/16 :goto_7

    :cond_0
    add-int/lit8 v10, v6, 0x2

    const/16 v11, 0xff

    if-gt v10, v0, :cond_3

    const-string v12, "::"

    invoke-static {v1, v6, v12, v4}, Lkotlin/text/StringsKt;->O(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_3

    if-eq v8, v5, :cond_1

    goto/16 :goto_7

    :cond_1
    add-int/lit8 v7, v7, 0x2

    move v8, v7

    if-ne v10, v0, :cond_2

    goto/16 :goto_6

    :cond_2
    move v9, v10

    goto/16 :goto_4

    :cond_3
    if-eqz v7, :cond_4

    const-string v10, ":"

    invoke-static {v1, v6, v10, v4}, Lkotlin/text/StringsKt;->O(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_5

    add-int/lit8 v6, v6, 0x1

    :cond_4
    move v9, v6

    goto/16 :goto_4

    :cond_5
    const-string v10, "."

    invoke-static {v1, v6, v10, v4}, Lkotlin/text/StringsKt;->O(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_12

    add-int/lit8 v6, v7, -0x2

    move v10, v6

    :goto_1
    if-ge v9, v0, :cond_e

    if-ne v10, v2, :cond_6

    goto/16 :goto_7

    :cond_6
    if-eq v10, v6, :cond_8

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2e

    if-eq v12, v13, :cond_7

    goto/16 :goto_7

    :cond_7
    add-int/lit8 v9, v9, 0x1

    :cond_8
    move v13, v4

    move v12, v9

    :goto_2
    if-ge v12, v0, :cond_c

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x30

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v16

    if-ltz v16, :cond_c

    move/from16 p0, v15

    const/16 v15, 0x39

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v15

    if-lez v15, :cond_9

    goto :goto_3

    :cond_9
    if-nez v13, :cond_a

    if-eq v9, v12, :cond_a

    goto :goto_7

    :cond_a
    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x30

    if-le v13, v11, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_c
    :goto_3
    sub-int v9, v12, v9

    if-nez v9, :cond_d

    goto :goto_7

    :cond_d
    add-int/lit8 v9, v10, 0x1

    int-to-byte v13, v13

    aput-byte v13, v3, v10

    move v10, v9

    move v9, v12

    goto :goto_1

    :cond_e
    add-int/lit8 v0, v7, 0x2

    if-ne v10, v0, :cond_12

    add-int/lit8 v7, v7, 0x2

    goto :goto_6

    :goto_4
    move v10, v4

    move v6, v9

    :goto_5
    if-ge v6, v0, :cond_f

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lokhttp3/internal/_UtilCommonKt;->n(C)I

    move-result v12

    if-eq v12, v5, :cond_f

    shl-int/lit8 v10, v10, 0x4

    add-int/2addr v10, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_f
    sub-int v12, v6, v9

    if-eqz v12, :cond_12

    const/4 v13, 0x4

    if-le v12, v13, :cond_10

    goto :goto_7

    :cond_10
    add-int/lit8 v12, v7, 0x1

    ushr-int/lit8 v13, v10, 0x8

    and-int/2addr v11, v13

    int-to-byte v11, v11

    aput-byte v11, v3, v7

    add-int/lit8 v7, v7, 0x2

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v3, v12

    goto/16 :goto_0

    :cond_11
    :goto_6
    if-eq v7, v2, :cond_14

    if-ne v8, v5, :cond_13

    :cond_12
    :goto_7
    const/4 v0, 0x0

    return-object v0

    :cond_13
    sub-int v0, v7, v8

    rsub-int/lit8 v0, v0, 0x10

    invoke-static {v0, v3, v8, v3, v7}, Lkotlin/collections/ArraysKt;->j(I[BI[BI)V

    sub-int/2addr v2, v7

    add-int/2addr v2, v8

    invoke-static {v3, v8, v2, v4}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_14
    return-object v3
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 33

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ":"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->k(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    const/16 v3, 0x2e

    const/16 v4, 0x3a

    const/16 v5, 0xa

    const/4 v6, 0x4

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v1, :cond_12

    const-string v1, "["

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "]"

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v8

    invoke-static {v8, v1, v0}, Lokhttp3/internal/_HostnamesCommonKt;->a(IILjava/lang/String;)[B

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v1, v0}, Lokhttp3/internal/_HostnamesCommonKt;->a(IILjava/lang/String;)[B

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    move-object/from16 v19, v10

    goto/16 :goto_35

    :cond_1
    array-length v11, v1

    const/16 v12, 0x10

    if-eq v11, v12, :cond_2

    goto :goto_2

    :cond_2
    move v11, v2

    :goto_1
    if-ge v11, v5, :cond_4

    aget-byte v13, v1, v11

    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    aget-byte v5, v1, v5

    if-eq v5, v7, :cond_5

    goto :goto_2

    :cond_5
    const/16 v5, 0xb

    aget-byte v5, v1, v5

    if-eq v5, v7, :cond_6

    goto :goto_2

    :cond_6
    const/16 v5, 0xc

    invoke-static {v5, v12}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lkotlin/ranges/IntRange;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    new-array v1, v2, [B

    goto :goto_2

    :cond_7
    iget v11, v5, Lkotlin/ranges/IntProgression;->b:I

    iget v5, v5, Lkotlin/ranges/IntProgression;->c:I

    add-int/2addr v5, v8

    invoke-static {v1, v11, v5}, Lkotlin/collections/ArraysKt;->o([BII)[B

    move-result-object v1

    :goto_2
    array-length v5, v1

    if-ne v5, v12, :cond_f

    move v0, v2

    move v3, v0

    :goto_3
    array-length v5, v1

    if-ge v0, v5, :cond_a

    move v5, v0

    :goto_4
    if-ge v5, v12, :cond_8

    aget-byte v8, v1, v5

    if-nez v8, :cond_8

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, v1, v8

    if-nez v8, :cond_8

    add-int/lit8 v5, v5, 0x2

    goto :goto_4

    :cond_8
    sub-int v8, v5, v0

    if-le v8, v3, :cond_9

    if-lt v8, v6, :cond_9

    move v7, v0

    move v3, v8

    :cond_9
    add-int/lit8 v0, v5, 0x2

    goto :goto_3

    :cond_a
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    :cond_b
    :goto_5
    array-length v5, v1

    if-ge v2, v5, :cond_e

    if-ne v2, v7, :cond_c

    invoke-virtual {v0, v4}, Lokio/Buffer;->m0(I)V

    add-int/2addr v2, v3

    if-ne v2, v12, :cond_b

    invoke-virtual {v0, v4}, Lokio/Buffer;->m0(I)V

    goto :goto_5

    :cond_c
    if-lez v2, :cond_d

    invoke-virtual {v0, v4}, Lokio/Buffer;->m0(I)V

    :cond_d
    aget-byte v5, v1, v2

    sget-object v6, Lokhttp3/internal/_UtilCommonKt;->a:[B

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Lokio/Buffer;->o0(J)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Lokio/Buffer;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    array-length v4, v1

    if-ne v4, v6, :cond_11

    array-length v0, v1

    if-ne v0, v6, :cond_10

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    aget-byte v2, v1, v2

    sget-object v4, Lokhttp3/internal/_UtilCommonKt;->a:[B

    and-int/lit16 v2, v2, 0xff

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->n0(J)V

    invoke-virtual {v0, v3}, Lokio/Buffer;->m0(I)V

    aget-byte v2, v1, v8

    and-int/lit16 v2, v2, 0xff

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->n0(J)V

    invoke-virtual {v0, v3}, Lokio/Buffer;->m0(I)V

    aget-byte v2, v1, v9

    and-int/lit16 v2, v2, 0xff

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->n0(J)V

    invoke-virtual {v0, v3}, Lokio/Buffer;->m0(I)V

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->n0(J)V

    invoke-virtual {v0}, Lokio/Buffer;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    const-string v0, "Failed requirement."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v10

    :cond_11
    const-string v1, "Invalid IPv6 address: \'"

    const/16 v2, 0x27

    invoke-static {v2, v1, v0}, Ld21;->d(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->h(Ljava/lang/Object;)V

    return-object v10

    :cond_12
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, v0}, Lokio/Buffer;->M0(Ljava/lang/String;)V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    :goto_6
    invoke-virtual {v1}, Lokio/Buffer;->Z0()Z

    move-result v11

    const/16 v12, 0x7f

    const/16 v13, 0x40

    const/16 v14, 0x7b

    const/16 v15, 0x80

    if-nez v11, :cond_28

    invoke-virtual {v1}, Lokio/Buffer;->i0()I

    move-result v11

    move/from16 v16, v5

    sget-object v5, Lokhttp3/internal/idn/IdnaMappingTableInstanceKt;->a:Lokhttp3/internal/idn/IdnaMappingTable;

    move/from16 v17, v9

    iget-object v9, v5, Lokhttp3/internal/idn/IdnaMappingTable;->b:Ljava/lang/String;

    const v18, 0x1fff80

    and-int v18, v11, v18

    move-object/from16 v19, v10

    shr-int/lit8 v10, v18, 0x7

    move/from16 v18, v8

    iget-object v8, v5, Lokhttp3/internal/idn/IdnaMappingTable;->a:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    div-int/lit8 v20, v20, 0x4

    add-int/lit8 v20, v20, -0x1

    move v4, v2

    move/from16 v2, v20

    :goto_7
    if-gt v4, v2, :cond_15

    add-int v21, v4, v2

    div-int/lit8 v21, v21, 0x2

    mul-int/lit8 v7, v21, 0x4

    invoke-static {v7, v8}, Lokhttp3/internal/idn/IdnaMappingTableKt;->a(ILjava/lang/String;)I

    move-result v7

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v7

    if-gez v7, :cond_13

    add-int/lit8 v2, v21, -0x1

    :goto_8
    const/4 v7, -0x1

    goto :goto_7

    :cond_13
    if-lez v7, :cond_14

    add-int/lit8 v4, v21, 0x1

    goto :goto_8

    :cond_14
    :goto_9
    move/from16 v2, v21

    goto :goto_a

    :cond_15
    neg-int v2, v4

    add-int/lit8 v21, v2, -0x1

    goto :goto_9

    :goto_a
    if-ltz v2, :cond_16

    mul-int/lit8 v2, v2, 0x4

    goto :goto_b

    :cond_16
    neg-int v2, v2

    add-int/lit8 v2, v2, -0x2

    mul-int/2addr v2, v6

    :goto_b
    add-int/lit8 v4, v2, 0x2

    invoke-static {v4, v8}, Lokhttp3/internal/idn/IdnaMappingTableKt;->a(ILjava/lang/String;)I

    move-result v4

    add-int/lit8 v7, v2, 0x4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_17

    add-int/lit8 v2, v2, 0x6

    invoke-static {v2, v8}, Lokhttp3/internal/idn/IdnaMappingTableKt;->a(ILjava/lang/String;)I

    move-result v2

    goto :goto_c

    :cond_17
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v2, v6

    :goto_c
    and-int/lit8 v7, v11, 0x7f

    add-int/lit8 v2, v2, -0x1

    :goto_d
    if-gt v4, v2, :cond_19

    add-int v8, v4, v2

    div-int/lit8 v8, v8, 0x2

    mul-int/lit8 v10, v8, 0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v10

    if-gez v10, :cond_18

    add-int/lit8 v2, v8, -0x1

    goto :goto_d

    :cond_18
    if-lez v10, :cond_1a

    add-int/lit8 v4, v8, 0x1

    goto :goto_d

    :cond_19
    neg-int v2, v4

    add-int/lit8 v8, v2, -0x1

    :cond_1a
    if-ltz v8, :cond_1b

    mul-int/lit8 v8, v8, 0x4

    goto :goto_e

    :cond_1b
    neg-int v2, v8

    add-int/lit8 v2, v2, -0x2

    mul-int/lit8 v8, v2, 0x4

    :goto_e
    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ltz v2, :cond_1c

    if-ge v2, v13, :cond_1c

    add-int/lit8 v8, v8, 0x2

    invoke-static {v8, v9}, Lokhttp3/internal/idn/IdnaMappingTableKt;->a(ILjava/lang/String;)I

    move-result v4

    iget-object v5, v5, Lokhttp3/internal/idn/IdnaMappingTable;->c:Ljava/lang/String;

    add-int/2addr v2, v4

    invoke-virtual {v0, v4, v2, v5}, Lokio/Buffer;->I0(IILjava/lang/String;)V

    goto/16 :goto_10

    :cond_1c
    const/16 v4, 0x50

    if-gt v13, v2, :cond_1d

    if-ge v2, v4, :cond_1d

    add-int/lit8 v4, v8, 0x2

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xe

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v2, v4

    or-int/2addr v2, v5

    sub-int/2addr v11, v2

    invoke-virtual {v0, v11}, Lokio/Buffer;->P0(I)V

    goto/16 :goto_10

    :cond_1d
    if-gt v4, v2, :cond_1e

    const/16 v4, 0x60

    if-ge v2, v4, :cond_1e

    add-int/lit8 v4, v8, 0x2

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xe

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v2, v4

    or-int/2addr v2, v5

    add-int/2addr v11, v2

    invoke-virtual {v0, v11}, Lokio/Buffer;->P0(I)V

    goto/16 :goto_10

    :cond_1e
    const/16 v4, 0x77

    if-ne v2, v4, :cond_1f

    goto/16 :goto_10

    :cond_1f
    const/16 v4, 0x78

    if-ne v2, v4, :cond_20

    invoke-virtual {v0, v11}, Lokio/Buffer;->P0(I)V

    goto/16 :goto_10

    :cond_20
    const/16 v4, 0x79

    if-ne v2, v4, :cond_21

    invoke-virtual {v0, v11}, Lokio/Buffer;->P0(I)V

    :goto_f
    move-object/from16 v0, v19

    goto/16 :goto_31

    :cond_21
    const/16 v4, 0x7a

    if-ne v2, v4, :cond_22

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->m0(I)V

    goto :goto_10

    :cond_22
    if-ne v2, v14, :cond_23

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v2, v15

    invoke-virtual {v0, v2}, Lokio/Buffer;->m0(I)V

    goto :goto_10

    :cond_23
    const/16 v4, 0x7c

    if-ne v2, v4, :cond_24

    add-int/lit8 v2, v8, 0x2

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->m0(I)V

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->m0(I)V

    goto :goto_10

    :cond_24
    const/16 v4, 0x7d

    if-ne v2, v4, :cond_25

    add-int/lit8 v2, v8, 0x2

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v2, v15

    invoke-virtual {v0, v2}, Lokio/Buffer;->m0(I)V

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->m0(I)V

    goto :goto_10

    :cond_25
    const/16 v4, 0x7e

    if-ne v2, v4, :cond_26

    add-int/lit8 v2, v8, 0x2

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Lokio/Buffer;->m0(I)V

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v2, v15

    invoke-virtual {v0, v2}, Lokio/Buffer;->m0(I)V

    goto :goto_10

    :cond_26
    if-ne v2, v12, :cond_27

    add-int/lit8 v2, v8, 0x2

    invoke-virtual {v9, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v2, v15

    invoke-virtual {v0, v2}, Lokio/Buffer;->m0(I)V

    add-int/lit8 v8, v8, 0x3

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    or-int/2addr v2, v15

    invoke-virtual {v0, v2}, Lokio/Buffer;->m0(I)V

    :goto_10
    move/from16 v5, v16

    move/from16 v9, v17

    move/from16 v8, v18

    move-object/from16 v10, v19

    const/4 v2, 0x0

    const/16 v4, 0x3a

    const/4 v7, -0x1

    goto/16 :goto_6

    :cond_27
    const-string v0, "unexpected rangesIndex for "

    invoke-static {v11, v0}, Lno0;->i(ILjava/lang/String;)V

    return-object v19

    :cond_28
    move/from16 v16, v5

    move/from16 v18, v8

    move-object/from16 v19, v10

    invoke-virtual {v0}, Lokio/Buffer;->H()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lokio/Buffer;->M0(Ljava/lang/String;)V

    sget-object v0, Lokhttp3/internal/idn/Punycode;->a:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/Buffer;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    const/4 v4, 0x0

    :goto_11
    const/16 v5, 0x2d

    const v8, 0x7fffffff

    const/16 v9, 0x24

    if-ge v4, v1, :cond_42

    invoke-static {v0, v3, v4, v6}, Lkotlin/text/StringsKt;->u(Ljava/lang/CharSequence;CII)I

    move-result v11

    const/4 v7, -0x1

    if-ne v11, v7, :cond_29

    move v11, v1

    :cond_29
    const/16 v27, 0x4

    const/16 v23, 0x1

    const-string v25, "xn--"

    const/16 v26, 0x0

    move-object/from16 v22, v0

    move/from16 v24, v4

    invoke-virtual/range {v22 .. v27}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    move-object/from16 v4, v22

    move/from16 v7, v24

    if-nez v0, :cond_2a

    invoke-virtual {v2, v7, v11, v4}, Lokio/Buffer;->I0(IILjava/lang/String;)V

    move/from16 v29, v8

    goto/16 :goto_1d

    :cond_2a
    add-int/lit8 v0, v7, 0x4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5, v11, v6}, Lkotlin/text/StringsKt;->z(Ljava/lang/CharSequence;CII)I

    move-result v10

    const/16 v13, 0x30

    const/16 v12, 0x5b

    const/16 v15, 0x41

    const/16 v6, 0x61

    if-lt v10, v0, :cond_30

    :goto_12
    if-ge v0, v10, :cond_2f

    add-int/lit8 v25, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v6, v0, :cond_2b

    if-ge v0, v14, :cond_2b

    goto :goto_13

    :cond_2b
    if-gt v15, v0, :cond_2c

    if-ge v0, v12, :cond_2c

    goto :goto_13

    :cond_2c
    if-gt v13, v0, :cond_2d

    const/16 v3, 0x3a

    if-ge v0, v3, :cond_2d

    goto :goto_13

    :cond_2d
    if-ne v0, v5, :cond_2e

    :goto_13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v25

    const/16 v3, 0x2e

    goto :goto_12

    :cond_2e
    move/from16 v29, v8

    goto/16 :goto_1b

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    :cond_30
    const/16 v3, 0x80

    const/16 v5, 0x48

    const/4 v10, 0x0

    :goto_14
    if-ge v0, v11, :cond_40

    invoke-static {v9, v8}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    move-result-object v13

    invoke-static {v13, v9}, Lkotlin/ranges/RangesKt;->i(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    move-result-object v13

    iget v9, v13, Lkotlin/ranges/IntProgression;->b:I

    move/from16 v29, v8

    iget v8, v13, Lkotlin/ranges/IntProgression;->c:I

    iget v13, v13, Lkotlin/ranges/IntProgression;->d:I

    if-lez v13, :cond_31

    if-le v9, v8, :cond_32

    :cond_31
    if-gez v13, :cond_3b

    if-gt v8, v9, :cond_3b

    :cond_32
    move/from16 v30, v10

    move/from16 v31, v18

    :goto_15
    if-ne v0, v11, :cond_33

    goto/16 :goto_1b

    :cond_33
    add-int/lit8 v32, v0, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v6, v0, :cond_34

    if-ge v0, v14, :cond_34

    add-int/lit8 v0, v0, -0x61

    :goto_16
    move/from16 v6, v31

    goto :goto_17

    :cond_34
    if-gt v15, v0, :cond_35

    if-ge v0, v12, :cond_35

    add-int/lit8 v0, v0, -0x41

    goto :goto_16

    :cond_35
    const/16 v6, 0x30

    if-gt v6, v0, :cond_3e

    const/16 v6, 0x3a

    if-ge v0, v6, :cond_3e

    add-int/lit8 v0, v0, -0x16

    goto :goto_16

    :goto_17
    mul-int v31, v0, v6

    sub-int v12, v29, v31

    move/from16 v14, v30

    if-le v14, v12, :cond_36

    goto :goto_1b

    :cond_36
    add-int v30, v14, v31

    if-gt v9, v5, :cond_37

    move/from16 v12, v18

    goto :goto_18

    :cond_37
    add-int/lit8 v12, v5, 0x1a

    if-lt v9, v12, :cond_38

    const/16 v12, 0x1a

    goto :goto_18

    :cond_38
    sub-int v12, v9, v5

    :goto_18
    if-lt v0, v12, :cond_3a

    rsub-int/lit8 v0, v12, 0x24

    div-int v12, v29, v0

    if-le v6, v12, :cond_39

    goto :goto_1b

    :cond_39
    mul-int v31, v6, v0

    if-eq v9, v8, :cond_3a

    add-int/2addr v9, v13

    move/from16 v0, v32

    const/16 v6, 0x61

    const/16 v12, 0x5b

    const/16 v14, 0x7b

    goto :goto_15

    :cond_3a
    move/from16 v0, v32

    goto :goto_19

    :cond_3b
    move/from16 v30, v10

    :goto_19
    sub-int v5, v30, v10

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-nez v10, :cond_3c

    move/from16 v8, v18

    goto :goto_1a

    :cond_3c
    const/4 v8, 0x0

    :goto_1a
    invoke-static {v5, v6, v8}, Lokhttp3/internal/idn/Punycode;->a(IIZ)I

    move-result v5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    div-int v6, v30, v6

    sub-int v8, v29, v6

    if-le v3, v8, :cond_3d

    goto :goto_1b

    :cond_3d
    add-int/2addr v3, v6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    rem-int v6, v30, v6

    const v8, 0x10ffff

    if-le v3, v8, :cond_3f

    :cond_3e
    :goto_1b
    move-object/from16 v0, v19

    goto :goto_1e

    :cond_3f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v10, v6, 0x1

    move/from16 v8, v29

    const/16 v6, 0x61

    const/16 v9, 0x24

    const/16 v12, 0x5b

    const/16 v13, 0x30

    const/16 v14, 0x7b

    goto/16 :goto_14

    :cond_40
    move/from16 v29, v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lokio/Buffer;->P0(I)V

    goto :goto_1c

    :cond_41
    :goto_1d
    if-ge v11, v1, :cond_43

    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Lokio/Buffer;->m0(I)V

    add-int/lit8 v0, v11, 0x1

    move-object v3, v4

    move v4, v0

    move-object v0, v3

    const/16 v3, 0x2e

    const/4 v6, 0x4

    const/16 v12, 0x7f

    const/16 v13, 0x40

    const/16 v14, 0x7b

    const/16 v15, 0x80

    goto/16 :goto_11

    :cond_42
    move/from16 v29, v8

    :cond_43
    invoke-virtual {v2}, Lokio/Buffer;->H()Ljava/lang/String;

    move-result-object v0

    :goto_1e
    if-nez v0, :cond_44

    :goto_1f
    goto/16 :goto_f

    :cond_44
    sget-object v1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_1f

    :cond_45
    sget-object v1, Lokhttp3/internal/idn/Punycode;->a:Lokio/ByteString;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v1, :cond_64

    const/16 v4, 0x2e

    const/4 v5, 0x4

    invoke-static {v0, v4, v3, v5}, Lkotlin/text/StringsKt;->u(Ljava/lang/CharSequence;CII)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_46

    move v6, v1

    :cond_46
    move v4, v3

    :goto_21
    if-ge v4, v6, :cond_63

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x80

    if-lt v5, v7, :cond_62

    sget-object v4, Lokhttp3/internal/idn/Punycode;->a:Lokio/ByteString;

    invoke-virtual {v2, v4}, Lokio/Buffer;->l0(Lokio/ByteString;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_22
    if-ge v3, v6, :cond_4b

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v7, 0xd800

    if-gt v7, v5, :cond_4a

    const v7, 0xe000

    if-ge v5, v7, :cond_4a

    add-int/lit8 v7, v3, 0x1

    if-ge v7, v6, :cond_47

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_23

    :cond_47
    const/4 v8, 0x0

    :goto_23
    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v9

    if-nez v9, :cond_49

    invoke-static {v8}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v9

    if-nez v9, :cond_48

    goto :goto_24

    :cond_48
    and-int/lit16 v3, v5, 0x3ff

    shl-int/lit8 v3, v3, 0xa

    and-int/lit16 v5, v8, 0x3ff

    or-int/2addr v3, v5

    const/high16 v5, 0x10000

    add-int/2addr v5, v3

    move v3, v7

    goto :goto_25

    :cond_49
    :goto_24
    const/16 v5, 0x3f

    :cond_4a
    :goto_25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_4b
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :cond_4c
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    const/16 v8, 0x80

    if-ge v7, v8, :cond_4c

    invoke-virtual {v2, v7}, Lokio/Buffer;->m0(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_4d
    const/16 v8, 0x80

    const/16 v7, 0x2d

    if-lez v5, :cond_4e

    invoke-virtual {v2, v7}, Lokio/Buffer;->m0(I)V

    :cond_4e
    move v9, v5

    move v3, v8

    const/4 v10, 0x0

    const/16 v11, 0x48

    :goto_27
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_61

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_60

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_4f

    goto :goto_2a

    :cond_4f
    move-object v14, v13

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    if-lt v14, v3, :cond_50

    goto :goto_28

    :cond_50
    move/from16 v14, v29

    :goto_28
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v20, v15

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-lt v7, v3, :cond_51

    goto :goto_29

    :cond_51
    move/from16 v7, v29

    :goto_29
    if-le v14, v7, :cond_52

    move v14, v7

    move-object v13, v15

    :cond_52
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5f

    :goto_2a
    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v7

    sub-int v3, v7, v3

    add-int/lit8 v12, v9, 0x1

    mul-int/2addr v12, v3

    sub-int v3, v29, v12

    if-le v10, v3, :cond_53

    goto :goto_2c

    :cond_53
    add-int/2addr v10, v12

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    if-ge v12, v7, :cond_56

    move/from16 v15, v29

    if-ne v10, v15, :cond_54

    :goto_2c
    goto/16 :goto_1f

    :cond_54
    add-int/lit8 v10, v10, 0x1

    :cond_55
    move/from16 v29, v15

    goto :goto_2b

    :cond_56
    move/from16 v15, v29

    if-ne v12, v7, :cond_55

    const/16 v12, 0x24

    invoke-static {v12, v15}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    move-result-object v13

    invoke-static {v13, v12}, Lkotlin/ranges/RangesKt;->i(Lkotlin/ranges/IntRange;I)Lkotlin/ranges/IntProgression;

    move-result-object v13

    iget v14, v13, Lkotlin/ranges/IntProgression;->b:I

    iget v8, v13, Lkotlin/ranges/IntProgression;->c:I

    iget v13, v13, Lkotlin/ranges/IntProgression;->d:I

    if-lez v13, :cond_57

    if-le v14, v8, :cond_58

    :cond_57
    if-gez v13, :cond_5b

    if-gt v8, v14, :cond_5b

    :cond_58
    move v12, v10

    :goto_2d
    if-gt v14, v11, :cond_59

    move/from16 v15, v18

    goto :goto_2e

    :cond_59
    add-int/lit8 v15, v11, 0x1a

    if-lt v14, v15, :cond_5a

    const/16 v15, 0x1a

    goto :goto_2e

    :cond_5a
    sub-int v15, v14, v11

    :goto_2e
    if-lt v12, v15, :cond_5c

    sub-int/2addr v12, v15

    rsub-int/lit8 v20, v15, 0x24

    rem-int v27, v12, v20

    add-int v27, v27, v15

    invoke-static/range {v27 .. v27}, Lokhttp3/internal/idn/Punycode;->b(I)I

    move-result v15

    invoke-virtual {v2, v15}, Lokio/Buffer;->m0(I)V

    div-int v12, v12, v20

    if-eq v14, v8, :cond_5c

    add-int/2addr v14, v13

    const v15, 0x7fffffff

    goto :goto_2d

    :cond_5b
    move v12, v10

    :cond_5c
    invoke-static {v12}, Lokhttp3/internal/idn/Punycode;->b(I)I

    move-result v8

    invoke-virtual {v2, v8}, Lokio/Buffer;->m0(I)V

    add-int/lit8 v8, v9, 0x1

    if-ne v9, v5, :cond_5d

    move/from16 v9, v18

    goto :goto_2f

    :cond_5d
    const/4 v9, 0x0

    :goto_2f
    invoke-static {v10, v8, v9}, Lokhttp3/internal/idn/Punycode;->a(IIZ)I

    move-result v11

    move v9, v8

    const/16 v8, 0x80

    const/4 v10, 0x0

    const v29, 0x7fffffff

    goto :goto_2b

    :cond_5e
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v3, v7, 0x1

    const/16 v7, 0x2d

    const/16 v8, 0x80

    const v29, 0x7fffffff

    goto/16 :goto_27

    :cond_5f
    const/16 v28, 0x24

    const/16 v7, 0x2d

    const v29, 0x7fffffff

    goto/16 :goto_28

    :cond_60
    invoke-static {}, Lb21;->x()V

    return-object v19

    :cond_61
    const/16 v28, 0x24

    goto :goto_30

    :cond_62
    const/16 v28, 0x24

    add-int/lit8 v4, v4, 0x1

    const v29, 0x7fffffff

    goto/16 :goto_21

    :cond_63
    const/16 v28, 0x24

    invoke-virtual {v2, v3, v6, v0}, Lokio/Buffer;->I0(IILjava/lang/String;)V

    :goto_30
    if-ge v6, v1, :cond_64

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Lokio/Buffer;->m0(I)V

    add-int/lit8 v3, v6, 0x1

    const v29, 0x7fffffff

    goto/16 :goto_20

    :cond_64
    invoke-virtual {v2}, Lokio/Buffer;->H()Ljava/lang/String;

    move-result-object v0

    :goto_31
    if-nez v0, :cond_65

    goto/16 :goto_35

    :cond_65
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_66

    goto :goto_35

    :cond_66
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_32
    if-ge v2, v1, :cond_69

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1f

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v4

    if-lez v4, :cond_6c

    const/16 v4, 0x7f

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result v5

    if-ltz v5, :cond_67

    goto :goto_35

    :cond_67
    const-string v5, " #%/:?@[\\]"

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static {v5, v3, v7, v6}, Lkotlin/text/StringsKt;->u(Ljava/lang/CharSequence;CII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_68

    goto :goto_35

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_69
    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    move/from16 v2, v18

    if-gt v2, v1, :cond_6c

    const/16 v3, 0xfe

    if-ge v1, v3, :cond_6c

    const/16 v4, 0x2e

    const/4 v5, 0x4

    :goto_33
    invoke-static {v0, v4, v7, v5}, Lkotlin/text/StringsKt;->u(Ljava/lang/CharSequence;CII)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    goto :goto_34

    :cond_6a
    sub-int v6, v1, v7

    :goto_34
    if-gt v2, v6, :cond_6c

    const/16 v7, 0x40

    if-ge v6, v7, :cond_6c

    if-eq v1, v3, :cond_6b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    if-eq v1, v6, :cond_6b

    add-int/lit8 v1, v1, 0x1

    move v7, v1

    goto :goto_33

    :cond_6b
    return-object v0

    :cond_6c
    :goto_35
    return-object v19
.end method
