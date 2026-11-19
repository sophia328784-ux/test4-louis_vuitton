.class public final Lkotlin/uuid/Uuid$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/uuid/Uuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlin/uuid/Uuid$Companion;",
        "",
        "",
        "SIZE_BYTES",
        "I",
        "SIZE_BITS",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JJ)Lkotlin/uuid/Uuid;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/uuid/Uuid;->e:Lkotlin/uuid/Uuid;

    return-object p0

    :cond_0
    new-instance v0, Lkotlin/uuid/Uuid;

    const/4 v5, 0x0

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lkotlin/uuid/Uuid;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lkotlin/uuid/Uuid;
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    const-wide/16 v4, 0x0

    const-string v6, "a hexadecimal digit"

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/16 v9, 0x20

    if-eq v1, v9, :cond_10

    const/16 v10, 0x24

    if-eq v1, v10, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected either a 36-char string in the standard hex-and-dash UUID format or a 32-char hexadecimal string, but was \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x40

    if-gt v3, v4, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-wide v11, v4

    :goto_1
    const/16 v1, 0x8

    if-ge v8, v1, :cond_3

    shl-long/2addr v11, v7

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    ushr-int/lit8 v13, v1, 0x8

    if-nez v13, :cond_2

    sget-object v13, Lkotlin/text/HexExtensionsKt;->b:[J

    aget-wide v13, v13, v1

    cmp-long v1, v13, v4

    if-ltz v1, :cond_2

    or-long/2addr v11, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v8, v0, v6}, Lkotlin/uuid/UuidKt__UuidKt;->b(ILjava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const-string v13, "\'-\' (hyphen)"

    const/16 v14, 0x2d

    if-ne v8, v14, :cond_f

    const/16 v1, 0x9

    move-wide v15, v4

    :goto_2
    const/16 v8, 0xd

    if-ge v1, v8, :cond_5

    shl-long/2addr v15, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    ushr-int/lit8 v17, v8, 0x8

    if-nez v17, :cond_4

    sget-object v17, Lkotlin/text/HexExtensionsKt;->b:[J

    aget-wide v17, v17, v8

    cmp-long v8, v17, v4

    if-ltz v8, :cond_4

    or-long v15, v15, v17

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v1, v0, v6}, Lkotlin/uuid/UuidKt__UuidKt;->b(ILjava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_e

    const/16 v1, 0xe

    move-wide/from16 v17, v4

    :goto_3
    const/16 v8, 0x12

    if-ge v1, v8, :cond_7

    shl-long v17, v17, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    ushr-int/lit8 v19, v8, 0x8

    if-nez v19, :cond_6

    sget-object v19, Lkotlin/text/HexExtensionsKt;->b:[J

    aget-wide v19, v19, v8

    cmp-long v8, v19, v4

    if-ltz v8, :cond_6

    or-long v17, v17, v19

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-static {v1, v0, v6}, Lkotlin/uuid/UuidKt__UuidKt;->b(ILjava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_d

    const/16 v1, 0x13

    move-wide/from16 v19, v4

    :goto_4
    const/16 v8, 0x17

    if-ge v1, v8, :cond_9

    shl-long v19, v19, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    ushr-int/lit8 v21, v8, 0x8

    if-nez v21, :cond_8

    sget-object v21, Lkotlin/text/HexExtensionsKt;->b:[J

    aget-wide v21, v21, v8

    cmp-long v8, v21, v4

    if-ltz v8, :cond_8

    or-long v19, v19, v21

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    invoke-static {v1, v0, v6}, Lkotlin/uuid/UuidKt__UuidKt;->b(ILjava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_c

    const/16 v1, 0x18

    move-wide v13, v4

    :goto_5
    if-ge v1, v10, :cond_b

    shl-long/2addr v13, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    ushr-int/lit8 v21, v8, 0x8

    if-nez v21, :cond_a

    sget-object v21, Lkotlin/text/HexExtensionsKt;->b:[J

    aget-wide v21, v21, v8

    cmp-long v8, v21, v4

    if-ltz v8, :cond_a

    or-long v13, v13, v21

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    invoke-static {v1, v0, v6}, Lkotlin/uuid/UuidKt__UuidKt;->b(ILjava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_b
    shl-long v0, v11, v9

    shl-long v2, v15, v3

    or-long/2addr v0, v2

    or-long v0, v0, v17

    const/16 v2, 0x30

    shl-long v2, v19, v2

    or-long/2addr v2, v13

    sget-object v4, Lkotlin/uuid/Uuid;->d:Lkotlin/uuid/Uuid$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v2, v3}, Lkotlin/uuid/Uuid$Companion;->a(JJ)Lkotlin/uuid/Uuid;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-static {v8, v0, v13}, Lkotlin/uuid/UuidKt__UuidKt;->b(ILjava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_d
    invoke-static {v8, v0, v13}, Lkotlin/uuid/UuidKt__UuidKt;->b(ILjava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_e
    invoke-static {v8, v0, v13}, Lkotlin/uuid/UuidKt__UuidKt;->b(ILjava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_f
    invoke-static {v1, v0, v13}, Lkotlin/uuid/UuidKt__UuidKt;->b(ILjava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_10
    move-wide v10, v4

    :goto_6
    if-ge v8, v3, :cond_12

    shl-long/2addr v10, v7

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    ushr-int/lit8 v12, v1, 0x8

    if-nez v12, :cond_11

    sget-object v12, Lkotlin/text/HexExtensionsKt;->b:[J

    aget-wide v12, v12, v1

    cmp-long v1, v12, v4

    if-ltz v1, :cond_11

    or-long/2addr v10, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_11
    invoke-static {v8, v0, v6}, Lkotlin/uuid/UuidKt__UuidKt;->b(ILjava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_12
    move-wide v12, v4

    :goto_7
    if-ge v3, v9, :cond_14

    shl-long/2addr v12, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    ushr-int/lit8 v8, v1, 0x8

    if-nez v8, :cond_13

    sget-object v8, Lkotlin/text/HexExtensionsKt;->b:[J

    aget-wide v14, v8, v1

    cmp-long v1, v14, v4

    if-ltz v1, :cond_13

    or-long/2addr v12, v14

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_13
    invoke-static {v3, v0, v6}, Lkotlin/uuid/UuidKt__UuidKt;->b(ILjava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_14
    sget-object v0, Lkotlin/uuid/Uuid;->d:Lkotlin/uuid/Uuid$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v11, v12, v13}, Lkotlin/uuid/Uuid$Companion;->a(JJ)Lkotlin/uuid/Uuid;

    move-result-object v0

    return-object v0
.end method
