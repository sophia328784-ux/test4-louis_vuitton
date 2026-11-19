.class abstract Lcom/google/common/base/AbstractIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/AbstractIterator$State;
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
.field public b:Lcom/google/common/base/AbstractIterator$State;

.field public c:Ljava/lang/String;


# virtual methods
.method public final hasNext()Z
    .locals 9

    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->b:Lcom/google/common/base/AbstractIterator$State;

    sget-object v1, Lcom/google/common/base/AbstractIterator$State;->FAILED:Lcom/google/common/base/AbstractIterator$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->b:Lcom/google/common/base/AbstractIterator$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_a

    iput-object v1, p0, Lcom/google/common/base/AbstractIterator;->b:Lcom/google/common/base/AbstractIterator$State;

    move-object v0, p0

    check-cast v0, Lcom/google/common/base/Splitter$SplittingIterator;

    iget v1, v0, Lcom/google/common/base/Splitter$SplittingIterator;->g:I

    :cond_1
    :goto_1
    iget v4, v0, Lcom/google/common/base/Splitter$SplittingIterator;->g:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    invoke-virtual {v0, v4}, Lcom/google/common/base/Splitter$SplittingIterator;->b(I)I

    move-result v4

    iget-object v6, v0, Lcom/google/common/base/Splitter$SplittingIterator;->d:Ljava/lang/CharSequence;

    if-ne v4, v5, :cond_2

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v5, v0, Lcom/google/common/base/Splitter$SplittingIterator;->g:I

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Lcom/google/common/base/Splitter$SplittingIterator;->a(I)I

    move-result v7

    iput v7, v0, Lcom/google/common/base/Splitter$SplittingIterator;->g:I

    :goto_2
    iget v7, v0, Lcom/google/common/base/Splitter$SplittingIterator;->g:I

    if-ne v7, v1, :cond_3

    add-int/lit8 v7, v7, 0x1

    iput v7, v0, Lcom/google/common/base/Splitter$SplittingIterator;->g:I

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v7, v4, :cond_1

    iput v5, v0, Lcom/google/common/base/Splitter$SplittingIterator;->g:I

    goto :goto_1

    :cond_3
    :goto_3
    iget-object v7, v0, Lcom/google/common/base/Splitter$SplittingIterator;->e:Lcom/google/common/base/CharMatcher;

    if-ge v1, v4, :cond_4

    invoke-interface {v6, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/common/base/CharMatcher;->j(C)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-le v4, v1, :cond_5

    add-int/lit8 v8, v4, -0x1

    invoke-interface {v6, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/common/base/CharMatcher;->j(C)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_5
    iget-boolean v8, v0, Lcom/google/common/base/Splitter$SplittingIterator;->f:Z

    if-eqz v8, :cond_6

    if-ne v1, v4, :cond_6

    iget v1, v0, Lcom/google/common/base/Splitter$SplittingIterator;->g:I

    goto :goto_1

    :cond_6
    iget v8, v0, Lcom/google/common/base/Splitter$SplittingIterator;->h:I

    if-ne v8, v3, :cond_7

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v5, v0, Lcom/google/common/base/Splitter$SplittingIterator;->g:I

    :goto_5
    if-le v4, v1, :cond_8

    add-int/lit8 v0, v4, -0x1

    invoke-interface {v6, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v7, v0}, Lcom/google/common/base/CharMatcher;->j(C)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_7
    sub-int/2addr v8, v3

    iput v8, v0, Lcom/google/common/base/Splitter$SplittingIterator;->h:I

    :cond_8
    invoke-interface {v6, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    sget-object v1, Lcom/google/common/base/AbstractIterator$State;->DONE:Lcom/google/common/base/AbstractIterator$State;

    iput-object v1, v0, Lcom/google/common/base/AbstractIterator;->b:Lcom/google/common/base/AbstractIterator$State;

    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->b:Lcom/google/common/base/AbstractIterator$State;

    sget-object v1, Lcom/google/common/base/AbstractIterator$State;->DONE:Lcom/google/common/base/AbstractIterator$State;

    if-eq v0, v1, :cond_a

    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->b:Lcom/google/common/base/AbstractIterator$State;

    return v3

    :cond_a
    return v2

    :cond_b
    return v3
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/base/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/base/AbstractIterator$State;->NOT_READY:Lcom/google/common/base/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/base/AbstractIterator;->b:Lcom/google/common/base/AbstractIterator$State;

    iget-object v0, p0, Lcom/google/common/base/AbstractIterator;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/base/AbstractIterator;->c:Ljava/lang/String;

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
