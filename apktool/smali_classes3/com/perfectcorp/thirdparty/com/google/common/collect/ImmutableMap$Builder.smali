.class public Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:[Ljava/lang/Object;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;
    .locals 11

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b:I

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a:[Ljava/lang/Object;

    if-nez v0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;->h:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    aget-object v0, p0, v2

    aget-object v2, p0, v3

    invoke-static {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;

    invoke-direct {v0, v3, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-object v0

    :cond_1
    array-length v4, p0

    shr-int/2addr v4, v3

    invoke-static {v0, v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->e(II)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->p(I)I

    move-result v4

    if-ne v0, v3, :cond_2

    aget-object v2, p0, v2

    aget-object v3, p0, v3

    invoke-static {v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_2
    add-int/lit8 v1, v4, -0x1

    const/16 v3, 0x80

    const/4 v5, -0x1

    if-gt v4, v3, :cond_6

    new-array v3, v4, [B

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([BB)V

    :goto_0
    if-ge v2, v0, :cond_5

    mul-int/lit8 v4, v2, 0x2

    aget-object v5, p0, v4

    xor-int/lit8 v6, v4, 0x1

    aget-object v6, p0, v6

    invoke-static {v5, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->a(I)I

    move-result v7

    :goto_1
    and-int/2addr v7, v1

    aget-byte v8, v3, v7

    const/16 v9, 0xff

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_3

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    aget-object v9, p0, v8

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v8, v5, v6, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;->g(ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_5
    move-object v1, v3

    goto/16 :goto_6

    :cond_6
    const v3, 0x8000

    if-gt v4, v3, :cond_9

    new-array v3, v4, [S

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([SS)V

    :goto_2
    if-ge v2, v0, :cond_5

    mul-int/lit8 v4, v2, 0x2

    aget-object v5, p0, v4

    xor-int/lit8 v6, v4, 0x1

    aget-object v6, p0, v6

    invoke-static {v5, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->a(I)I

    move-result v7

    :goto_3
    and-int/2addr v7, v1

    aget-short v8, v3, v7

    const v9, 0xffff

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_7

    int-to-short v4, v4

    aput-short v4, v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    aget-object v9, p0, v8

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    invoke-static {v8, v5, v6, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;->g(ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_9
    new-array v3, v4, [I

    invoke-static {v3, v5}, Ljava/util/Arrays;->fill([II)V

    :goto_4
    if-ge v2, v0, :cond_5

    mul-int/lit8 v4, v2, 0x2

    aget-object v6, p0, v4

    xor-int/lit8 v7, v4, 0x1

    aget-object v7, p0, v7

    invoke-static {v6, v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->a(I)I

    move-result v8

    :goto_5
    and-int/2addr v8, v1

    aget v9, v3, v8

    if-ne v9, v5, :cond_a

    aput v4, v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    aget-object v10, p0, v9

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_b
    invoke-static {v9, v6, v7, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;->g(ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :goto_6
    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;

    invoke-direct {v2, v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;-><init>(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-object v2
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_0

    array-length v2, v1

    invoke-static {v2, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$b;->a(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a:[Ljava/lang/Object;

    :cond_0
    invoke-static {p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b:I

    return-void
.end method
