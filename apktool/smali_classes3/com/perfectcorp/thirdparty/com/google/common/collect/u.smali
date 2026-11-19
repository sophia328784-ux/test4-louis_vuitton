.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/u;
.super Ljava/util/AbstractSet;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public transient b:[I

.field public transient c:[J

.field public transient d:[Ljava/lang/Object;

.field public transient e:I

.field public transient f:I


# direct methods
.method public static b(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/u;
    .locals 4

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;

    invoke-direct {v0}, Ljava/util/AbstractSet;-><init>()V

    const/4 v1, 0x1

    if-ltz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "Initial capacity must be non-negative"

    invoke-static {v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->e:I

    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f()Z

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x2

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f()Z

    move-result v2

    const-string v10, "Arrays already allocated"

    invoke-static {v10, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    iget v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->e:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v11

    int-to-double v12, v11

    mul-double/2addr v12, v4

    double-to-int v12, v12

    if-le v10, v12, :cond_1

    shl-int/lit8 v11, v11, 0x1

    if-lez v11, :cond_0

    goto :goto_0

    :cond_0
    move v11, v3

    :cond_1
    :goto_0
    new-array v10, v11, [I

    invoke-static {v10, v7}, Ljava/util/Arrays;->fill([II)V

    iput-object v10, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->b:[I

    new-array v10, v2, [J

    invoke-static {v10, v8, v9}, Ljava/util/Arrays;->fill([JJ)V

    iput-object v10, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->c:[J

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->d:[Ljava/lang/Object;

    :cond_2
    iget-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->c:[J

    iget-object v10, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->d:[Ljava/lang/Object;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->b(Ljava/lang/Object;)I

    move-result v11

    iget-object v12, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->b:[I

    array-length v13, v12

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    and-int/2addr v13, v11

    iget v15, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f:I

    move-wide/from16 v16, v4

    aget v4, v12, v13

    const-wide v18, 0xffffffffL

    const/16 v20, 0x20

    if-ne v4, v7, :cond_3

    aput v15, v12, v13

    move/from16 v21, v6

    const/16 v22, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    aget-wide v12, v2, v4

    move/from16 v21, v6

    const/16 v22, 0x0

    ushr-long v5, v12, v20

    long-to-int v5, v5

    if-ne v5, v11, :cond_4

    aget-object v5, v10, v4

    invoke-static {v1, v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/g$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    return v22

    :cond_4
    long-to-int v5, v12

    if-ne v5, v7, :cond_b

    const-wide v5, -0x100000000L

    and-long/2addr v5, v12

    int-to-long v12, v15

    and-long v12, v12, v18

    or-long/2addr v5, v12

    aput-wide v5, v2, v4

    :goto_2
    const v2, 0x7fffffff

    if-eq v15, v2, :cond_a

    add-int/lit8 v4, v15, 0x1

    iget-object v5, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->c:[J

    array-length v5, v5

    if-le v4, v5, :cond_7

    ushr-int/lit8 v6, v5, 0x1

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v5

    if-gez v6, :cond_5

    goto :goto_3

    :cond_5
    move v2, v6

    :goto_3
    if-eq v2, v5, :cond_7

    iget-object v5, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->d:[Ljava/lang/Object;

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->d:[Ljava/lang/Object;

    iget-object v5, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->c:[J

    array-length v6, v5

    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    if-le v2, v6, :cond_6

    invoke-static {v5, v6, v2, v8, v9}, Ljava/util/Arrays;->fill([JIIJ)V

    :cond_6
    iput-object v5, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->c:[J

    :cond_7
    iget-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->c:[J

    int-to-long v5, v11

    shl-long v5, v5, v20

    or-long v5, v5, v18

    aput-wide v5, v2, v15

    iget-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->d:[Ljava/lang/Object;

    aput-object v1, v2, v15

    iput v4, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f:I

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->b:[I

    array-length v1, v1

    int-to-double v4, v15

    int-to-double v8, v1

    mul-double v8, v8, v16

    cmpl-double v2, v4, v8

    if-lez v2, :cond_9

    if-ge v1, v3, :cond_9

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [I

    invoke-static {v2, v7}, Ljava/util/Arrays;->fill([II)V

    iget-object v3, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->c:[J

    sub-int/2addr v1, v14

    move/from16 v5, v22

    :goto_4
    iget v4, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f:I

    if-ge v5, v4, :cond_8

    aget-wide v6, v3, v5

    ushr-long v6, v6, v20

    long-to-int v4, v6

    and-int v6, v4, v1

    aget v7, v2, v6

    aput v5, v2, v6

    int-to-long v8, v4

    shl-long v8, v8, v20

    int-to-long v6, v7

    and-long v6, v6, v18

    or-long/2addr v6, v8

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    iput-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->b:[I

    :cond_9
    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->e:I

    add-int/2addr v1, v14

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->e:I

    return v14

    :cond_a
    const-string v0, "Cannot contain more than Integer.MAX_VALUE elements!"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return v22

    :cond_b
    move v4, v5

    move/from16 v6, v21

    goto/16 :goto_1
.end method

.method public final clear()V
    .locals 6

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->e:I

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->b:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->c:[J

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f:I

    const-wide/16 v4, -0x1

    invoke-static {v0, v3, v1, v4, v5}, Ljava/util/Arrays;->fill([JIIJ)V

    iput v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f:I

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->b(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->b:[I

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    and-int/2addr v3, v0

    aget v2, v2, v3

    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->c:[J

    aget-wide v5, v3, v2

    const/16 v3, 0x20

    ushr-long v7, v5, v3

    long-to-int v3, v7

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->d:[Ljava/lang/Object;

    aget-object v2, v3, v2

    invoke-static {p1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/g$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v4

    :cond_1
    long-to-int v2, v5

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final f()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->b:[I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h(ILjava/lang/Object;)Z
    .locals 13

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->b:[I

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p1

    aget v0, v0, v1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->c:[J

    aget-wide v5, v5, v0

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    long-to-int v5, v5

    if-ne v5, p1, :cond_5

    iget-object v5, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->d:[Ljava/lang/Object;

    aget-object v5, v5, v0

    invoke-static {p2, v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/g$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-wide p1, 0xffffffffL

    const-wide v5, -0x100000000L

    if-ne v4, v3, :cond_1

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->b:[I

    iget-object v4, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->c:[J

    aget-wide v8, v4, v0

    long-to-int v4, v8

    aput v4, v3, v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->c:[J

    aget-wide v8, v1, v4

    aget-wide v10, v1, v0

    long-to-int v3, v10

    and-long/2addr v8, v5

    int-to-long v10, v3

    and-long/2addr v10, p1

    or-long/2addr v8, v10

    aput-wide v8, v1, v4

    :goto_1
    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f:I

    sub-int/2addr v1, v2

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->d:[Ljava/lang/Object;

    const-wide/16 v8, -0x1

    const/4 v4, 0x0

    if-ge v0, v1, :cond_4

    aget-object v10, v3, v1

    aput-object v10, v3, v0

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->c:[J

    aget-wide v10, v3, v1

    aput-wide v10, v3, v0

    aput-wide v8, v3, v1

    ushr-long v3, v10, v7

    long-to-int v3, v3

    iget-object v4, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->b:[I

    array-length v7, v4

    sub-int/2addr v7, v2

    and-int/2addr v3, v7

    aget v7, v4, v3

    if-ne v7, v1, :cond_2

    aput v0, v4, v3

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->c:[J

    aget-wide v8, v3, v7

    long-to-int v4, v8

    if-ne v4, v1, :cond_3

    and-long v4, v8, v5

    int-to-long v0, v0

    and-long/2addr p1, v0

    or-long/2addr p1, v4

    aput-wide p1, v3, v7

    goto :goto_3

    :cond_3
    move v7, v4

    goto :goto_2

    :cond_4
    aput-object v4, v3, v0

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->c:[J

    aput-wide v8, p1, v0

    :goto_3
    iget p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f:I

    iget p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->e:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->e:I

    return v2

    :cond_5
    iget-object v4, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->c:[J

    aget-wide v4, v4, v0

    long-to-int v4, v4

    if-ne v4, v3, :cond_6

    :goto_4
    const/4 p0, 0x0

    return p0

    :cond_6
    move v12, v4

    move v4, v0

    move v0, v12

    goto/16 :goto_0
.end method

.method public final isEmpty()Z
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/u;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->e:I

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->b:I

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->isEmpty()Z

    move-result p0

    const/4 v1, -0x1

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iput p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->c:I

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/v;->d:I

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->b(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->h(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f:I

    return p0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->d:[Ljava/lang/Object;

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    array-length p0, p1

    if-lez p0, :cond_0

    aput-object v1, p1, v2

    :cond_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->d:[Ljava/lang/Object;

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/u;->f:I

    array-length v3, v0

    invoke-static {v2, p0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->c(III)V

    array-length v3, p1

    if-ge v3, p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    goto :goto_0

    :cond_2
    array-length v3, p1

    if-le v3, p0, :cond_3

    aput-object v1, p1, p0

    :cond_3
    :goto_0
    invoke-static {v0, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
