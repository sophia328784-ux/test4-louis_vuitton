.class abstract Lcom/perfectcorp/thirdparty/com/google/common/base/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/base/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/String;


# virtual methods
.method public final hasNext()Z
    .locals 10

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/b;->b:I

    sget v1, Lcom/perfectcorp/thirdparty/com/google/common/base/b$a;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/base/c;->a:[I

    iget v4, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/b;->b:I

    sub-int/2addr v4, v3

    aget v0, v0, v4

    if-eq v0, v3, :cond_c

    const/4 v4, 0x2

    if-eq v0, v4, :cond_b

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/b;->b:I

    move-object v0, p0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;

    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;->f:I

    :cond_1
    :goto_1
    iget v4, v0, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;->f:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a

    move-object v6, v0

    check-cast v6, Lcom/perfectcorp/thirdparty/com/google/common/base/o;

    iget-object v7, v6, Lcom/perfectcorp/thirdparty/com/google/common/base/o;->h:Lcom/perfectcorp/thirdparty/com/google/common/base/n;

    iget-object v7, v7, Lcom/perfectcorp/thirdparty/com/google/common/base/n;->a:Lcom/perfectcorp/thirdparty/com/google/common/base/d;

    iget-object v6, v6, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;->d:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v4, v8}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->e(II)V

    :goto_2
    if-ge v4, v8, :cond_3

    invoke-interface {v6, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v7, v9}, Lcom/perfectcorp/thirdparty/com/google/common/base/d;->c(C)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_3
    iget-object v6, v0, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;->d:Ljava/lang/CharSequence;

    if-ne v4, v5, :cond_4

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v5, v0, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;->f:I

    goto :goto_4

    :cond_4
    add-int/lit8 v7, v4, 0x1

    iput v7, v0, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;->f:I

    :goto_4
    iget v7, v0, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;->f:I

    if-ne v7, v1, :cond_5

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;->f:I

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v7, v4, :cond_1

    iput v5, v0, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;->f:I

    goto :goto_1

    :cond_5
    :goto_5
    iget-object v7, v0, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;->e:Lcom/perfectcorp/thirdparty/com/google/common/base/d;

    if-ge v1, v4, :cond_6

    invoke-interface {v6, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/perfectcorp/thirdparty/com/google/common/base/d;->c(C)Z

    move-result v8

    if-eqz v8, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    if-le v4, v1, :cond_7

    add-int/lit8 v8, v4, -0x1

    invoke-interface {v6, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/perfectcorp/thirdparty/com/google/common/base/d;->c(C)Z

    move-result v8

    if-eqz v8, :cond_7

    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    :cond_7
    iget v8, v0, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;->g:I

    if-ne v8, v3, :cond_8

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v5, v0, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;->f:I

    :goto_7
    if-le v4, v1, :cond_9

    add-int/lit8 v0, v4, -0x1

    invoke-interface {v6, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v7, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/d;->c(C)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    :cond_8
    sub-int/2addr v8, v3

    iput v8, v0, Lcom/perfectcorp/thirdparty/com/google/common/base/m$a;->g:I

    :cond_9
    invoke-interface {v6, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_a
    sget v1, Lcom/perfectcorp/thirdparty/com/google/common/base/b$a;->c:I

    iput v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/base/b;->b:I

    const/4 v0, 0x0

    :goto_8
    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/b;->c:Ljava/lang/String;

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/b;->b:I

    sget v1, Lcom/perfectcorp/thirdparty/com/google/common/base/b$a;->c:I

    if-eq v0, v1, :cond_b

    sget v0, Lcom/perfectcorp/thirdparty/com/google/common/base/b$a;->a:I

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/b;->b:I

    return v3

    :cond_b
    return v2

    :cond_c
    return v3
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/perfectcorp/thirdparty/com/google/common/base/b$a;->b:I

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/b;->b:I

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/b;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/b;->c:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
