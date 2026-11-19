.class public final Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;
.super Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B/\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;",
        "E",
        "Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;",
        "",
        "",
        "root",
        "",
        "index",
        "size",
        "height",
        "<init>",
        "([Ljava/lang/Object;III)V",
        "kotlinx-collections-immutable"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public d:I

.field public e:[Ljava/lang/Object;

.field public f:Z


# direct methods
.method public constructor <init>([Ljava/lang/Object;III)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, p3}, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;-><init>(II)V

    iput p4, p0, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->d:I

    new-array p4, p4, [Ljava/lang/Object;

    iput-object p4, p0, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->e:[Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    iput-boolean p3, p0, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->f:Z

    aput-object p1, p4, v0

    sub-int/2addr p2, p3

    invoke-virtual {p0, p2, v1}, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->c(II)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    and-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->e:[Ljava/lang/Object;

    iget p0, p0, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->d:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v1, p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, [Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final c(II)V
    .locals 4

    iget v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->d:I

    sub-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x5

    :goto_0
    iget v1, p0, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->d:I

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->e:[Ljava/lang/Object;

    add-int/lit8 v2, p2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlinx/collections/immutable/implementations/immutableList/UtilsKt;->a(II)I

    move-result v3

    aget-object v2, v2, v3

    aput-object v2, v1, p2

    add-int/lit8 v0, v0, -0x5

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    invoke-static {v1, v0}, Lkotlinx/collections/immutable/implementations/immutableList/UtilsKt;->a(II)I

    move-result v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    iget p1, p0, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->d:I

    add-int/lit8 p1, p1, -0x1

    div-int/lit8 v0, v0, 0x5

    sub-int/2addr p1, v0

    iget v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->c(II)V

    :cond_1
    return-void
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->a()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    iget v3, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->c:I

    if-ne v1, v3, :cond_0

    iput-boolean v2, p0, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->f:Z

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->d(I)V

    return-object v0

    :cond_1
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    iget-boolean v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->f:Z

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->d(I)V

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method
