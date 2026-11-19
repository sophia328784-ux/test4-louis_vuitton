.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/q;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/collect/q$e;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/q$d;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/q$a;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/q$c;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final synthetic k:I


# instance fields
.field public transient b:[I

.field public transient c:[J

.field public transient d:[Ljava/lang/Object;

.field public transient e:[Ljava/lang/Object;

.field public transient f:I

.field public transient g:I

.field public transient h:Ljava/util/Set;

.field public transient i:Ljava/util/Set;

.field public transient j:Ljava/util/Collection;


# direct methods
.method public static c()Lcom/perfectcorp/thirdparty/com/google/common/collect/q;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-direct {v0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->f:I

    return-object v0
.end method

.method public static synthetic e(Lcom/perfectcorp/thirdparty/com/google/common/collect/q;I)V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->c:[J

    aget-wide v1, v1, p1

    const/16 p1, 0x20

    ushr-long/2addr v1, p1

    long-to-int p1, v1

    invoke-virtual {p0, p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->d(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static f()Lcom/perfectcorp/thirdparty/com/google/common/collect/q;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    invoke-direct {v0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v1, 0x1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->f:I

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 7

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->b:[I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->b:[I

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v0

    aget v2, v2, v3

    :goto_0
    if-eq v2, v1, :cond_2

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->c:[J

    aget-wide v3, v3, v2

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    long-to-int v5, v5

    if-ne v5, v0, :cond_1

    iget-object v5, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->d:[Ljava/lang/Object;

    aget-object v5, v5, v2

    invoke-static {p1, v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/g$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    :cond_1
    long-to-int v2, v3

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final clear()V
    .locals 5

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->b:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->f:I

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->e:[Ljava/lang/Object;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->b:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->c:[J

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    const-wide/16 v3, -0x1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->a(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->e:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/g$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final d(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->b:[I

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v1

    aget v2, v2, v3

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    const/16 v16, 0x0

    goto/16 :goto_6

    :cond_0
    move v6, v5

    :goto_0
    iget-object v7, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->c:[J

    aget-wide v7, v7, v2

    const/16 v9, 0x20

    ushr-long/2addr v7, v9

    long-to-int v7, v7

    if-ne v7, v1, :cond_6

    iget-object v7, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->d:[Ljava/lang/Object;

    aget-object v7, v7, v2

    move-object/from16 v8, p2

    invoke-static {v8, v7}, Lcom/perfectcorp/thirdparty/com/google/common/base/g$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->e:[Ljava/lang/Object;

    aget-object v7, v1, v2

    const-wide v10, 0xffffffffL

    const-wide v12, -0x100000000L

    if-ne v6, v5, :cond_1

    iget-object v5, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->b:[I

    iget-object v6, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->c:[J

    aget-wide v14, v6, v2

    long-to-int v6, v14

    aput v6, v5, v3

    const/16 v16, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->c:[J

    aget-wide v14, v3, v6

    const/16 v16, 0x0

    aget-wide v4, v3, v2

    long-to-int v4, v4

    and-long/2addr v14, v12

    int-to-long v4, v4

    and-long/2addr v4, v10

    or-long/2addr v4, v14

    aput-wide v4, v3, v6

    :goto_1
    iget v3, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->d:[Ljava/lang/Object;

    const-wide/16 v5, -0x1

    if-ge v2, v3, :cond_4

    aget-object v8, v4, v3

    aput-object v8, v4, v2

    aget-object v8, v1, v3

    aput-object v8, v1, v2

    aput-object v16, v4, v3

    aput-object v16, v1, v3

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->c:[J

    aget-wide v14, v1, v3

    aput-wide v14, v1, v2

    aput-wide v5, v1, v3

    ushr-long v4, v14, v9

    long-to-int v1, v4

    iget-object v4, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->b:[I

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v1, v5

    aget v5, v4, v1

    if-ne v5, v3, :cond_2

    aput v2, v4, v1

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->c:[J

    aget-wide v8, v1, v5

    long-to-int v4, v8

    if-ne v4, v3, :cond_3

    and-long v3, v8, v12

    int-to-long v8, v2

    and-long/2addr v8, v10

    or-long v2, v3, v8

    aput-wide v2, v1, v5

    goto :goto_3

    :cond_3
    move v5, v4

    goto :goto_2

    :cond_4
    aput-object v16, v4, v2

    aput-object v16, v1, v2

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->c:[J

    aput-wide v5, v1, v2

    :goto_3
    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->f:I

    return-object v7

    :cond_5
    :goto_4
    const/16 v16, 0x0

    goto :goto_5

    :cond_6
    move-object/from16 v8, p2

    goto :goto_4

    :goto_5
    iget-object v4, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->c:[J

    aget-wide v6, v4, v2

    long-to-int v4, v6

    if-ne v4, v5, :cond_7

    :goto_6
    return-object v16

    :cond_7
    move v6, v2

    move v2, v4

    goto/16 :goto_0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->i:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$a;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/q;)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->i:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->e:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->h:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$c;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$c;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/q;)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->h:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->b:[I

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-wide/16 v9, -0x1

    const/4 v11, 0x1

    if-nez v2, :cond_3

    if-nez v2, :cond_0

    move v2, v11

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    const-string v12, "Arrays already allocated"

    invoke-static {v12, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    iget v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->f:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v13

    int-to-double v14, v13

    mul-double/2addr v14, v4

    double-to-int v14, v14

    if-le v12, v14, :cond_2

    shl-int/lit8 v13, v13, 0x1

    if-lez v13, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v13, 0x40000000    # 2.0f

    :cond_2
    :goto_1
    new-array v12, v13, [I

    invoke-static {v12, v8}, Ljava/util/Arrays;->fill([II)V

    iput-object v12, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->b:[I

    new-array v12, v2, [J

    invoke-static {v12, v9, v10}, Ljava/util/Arrays;->fill([JJ)V

    iput-object v12, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->c:[J

    new-array v12, v2, [Ljava/lang/Object;

    iput-object v12, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->d:[Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->e:[Ljava/lang/Object;

    :cond_3
    iget-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->c:[J

    iget-object v12, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->d:[Ljava/lang/Object;

    iget-object v13, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->e:[Ljava/lang/Object;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->b(Ljava/lang/Object;)I

    move-result v14

    iget-object v15, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->b:[I

    move-wide/from16 v16, v4

    array-length v4, v15

    sub-int/2addr v4, v11

    and-int/2addr v4, v14

    iget v5, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    move/from16 v18, v6

    aget v6, v15, v4

    const-wide v19, 0xffffffffL

    const/16 v21, 0x20

    if-ne v6, v8, :cond_4

    aput v5, v15, v4

    goto :goto_3

    :cond_4
    :goto_2
    aget-wide v3, v2, v6

    ushr-long v9, v3, v21

    long-to-int v9, v9

    if-ne v9, v14, :cond_5

    aget-object v9, v12, v6

    invoke-static {v1, v9}, Lcom/perfectcorp/thirdparty/com/google/common/base/g$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    aget-object v0, v13, v6

    aput-object p2, v13, v6

    return-object v0

    :cond_5
    long-to-int v9, v3

    if-ne v9, v8, :cond_c

    const-wide v9, -0x100000000L

    and-long/2addr v3, v9

    int-to-long v9, v5

    and-long v9, v9, v19

    or-long/2addr v3, v9

    aput-wide v3, v2, v6

    :goto_3
    const/4 v2, 0x0

    const v3, 0x7fffffff

    if-eq v5, v3, :cond_b

    add-int/lit8 v4, v5, 0x1

    iget-object v6, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->c:[J

    array-length v6, v6

    if-le v4, v6, :cond_8

    ushr-int/lit8 v9, v6, 0x1

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/2addr v9, v6

    if-gez v9, :cond_6

    goto :goto_4

    :cond_6
    move v3, v9

    :goto_4
    if-eq v3, v6, :cond_8

    iget-object v6, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->d:[Ljava/lang/Object;

    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->d:[Ljava/lang/Object;

    iget-object v6, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->e:[Ljava/lang/Object;

    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->e:[Ljava/lang/Object;

    iget-object v6, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->c:[J

    array-length v9, v6

    invoke-static {v6, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    if-le v3, v9, :cond_7

    const-wide/16 v12, -0x1

    invoke-static {v6, v9, v3, v12, v13}, Ljava/util/Arrays;->fill([JIIJ)V

    :cond_7
    iput-object v6, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->c:[J

    :cond_8
    iget-object v3, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->c:[J

    int-to-long v9, v14

    shl-long v9, v9, v21

    or-long v9, v9, v19

    aput-wide v9, v3, v5

    iget-object v3, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->d:[Ljava/lang/Object;

    aput-object v1, v3, v5

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->e:[Ljava/lang/Object;

    aput-object p2, v1, v5

    iput v4, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->b:[I

    array-length v1, v1

    int-to-double v3, v5

    int-to-double v5, v1

    mul-double v5, v5, v16

    cmpl-double v3, v3, v5

    if-lez v3, :cond_a

    const/high16 v15, 0x40000000    # 2.0f

    if-ge v1, v15, :cond_a

    mul-int/lit8 v1, v1, 0x2

    new-array v3, v1, [I

    invoke-static {v3, v8}, Ljava/util/Arrays;->fill([II)V

    iget-object v4, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->c:[J

    sub-int/2addr v1, v11

    :goto_5
    iget v5, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    if-ge v7, v5, :cond_9

    aget-wide v5, v4, v7

    ushr-long v5, v5, v21

    long-to-int v5, v5

    and-int v6, v5, v1

    aget v8, v3, v6

    aput v7, v3, v6

    int-to-long v5, v5

    shl-long v5, v5, v21

    int-to-long v8, v8

    and-long v8, v8, v19

    or-long/2addr v5, v8

    aput-wide v5, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_9
    iput-object v3, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->b:[I

    :cond_a
    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->f:I

    add-int/2addr v1, v11

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->f:I

    return-object v2

    :cond_b
    const-string v0, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_c
    const/high16 v15, 0x40000000    # 2.0f

    const-wide/16 v22, -0x1

    move v6, v9

    move-wide/from16 v9, v22

    goto/16 :goto_2
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->b:[I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->d(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    return p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->j:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$e;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$e;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/q;)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->j:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
