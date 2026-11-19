.class public final Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;
.super Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMutableListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator<",
        "TT;>;",
        "Ljava/util/ListIterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMutableListIterator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010+\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u0003B\u001d\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;",
        "T",
        "",
        "Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;",
        "Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;",
        "builder",
        "",
        "index",
        "<init>",
        "(Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;I)V",
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
.field public final d:Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;

.field public e:I

.field public f:Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;

.field public g:I


# direct methods
.method public constructor <init>(Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->f()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;-><init>(II)V

    iput-object p1, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->d:Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;

    invoke-virtual {p1}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->m()I

    move-result p1

    iput p1, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->e:I

    const/4 p1, -0x1

    iput p1, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->g:I

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->e:I

    iget-object p0, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->d:Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->m()I

    move-result p0

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lv7;->c()V

    return-void
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->a()V

    iget-object v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->d:Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;

    iget v1, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    invoke-virtual {v0, v1, p1}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->add(ILjava/lang/Object;)V

    iget p1, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->c()V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->d:Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;

    invoke-virtual {v0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->f()I

    move-result v1

    iput v1, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->c:I

    invoke-virtual {v0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->m()I

    move-result v0

    iput v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->g:I

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->d()V

    return-void
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->d:Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;

    iget-object v1, v0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->g:[Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->f:Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;

    return-void

    :cond_0
    iget v2, v0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->i:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    and-int/lit8 v2, v2, -0x20

    iget v4, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    if-le v4, v2, :cond_1

    move v4, v2

    :cond_1
    iget v0, v0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->e:I

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v3

    iget-object v5, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->f:Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;

    if-nez v5, :cond_2

    new-instance v3, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;

    invoke-direct {v3, v1, v4, v2, v0}, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;-><init>([Ljava/lang/Object;III)V

    iput-object v3, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->f:Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;

    return-void

    :cond_2
    iput v4, v5, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    iput v2, v5, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->c:I

    iput v0, v5, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->d:I

    iget-object p0, v5, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->e:[Ljava/lang/Object;

    array-length p0, p0

    if-ge p0, v0, :cond_3

    new-array p0, v0, [Ljava/lang/Object;

    iput-object p0, v5, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->e:[Ljava/lang/Object;

    :cond_3
    iget-object p0, v5, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->e:[Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, p0, v0

    if-ne v4, v2, :cond_4

    move v0, v3

    :cond_4
    iput-boolean v0, v5, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->f:Z

    sub-int/2addr v4, v0

    invoke-virtual {v5, v4, v3}, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->c(II)V

    return-void
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->a()V

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    iput v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->g:I

    iget-object v1, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->f:Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;

    iget-object v2, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->d:Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;

    if-nez v1, :cond_0

    iget-object v1, v2, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->h:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    aget-object p0, v1, v0

    return-object p0

    :cond_0
    invoke-virtual {v1}, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    invoke-virtual {v1}, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, v2, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->h:[Ljava/lang/Object;

    iget v2, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    iget p0, v1, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->c:I

    sub-int/2addr v2, p0

    aget-object p0, v0, v2

    return-object p0

    :cond_2
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->a()V

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->g:I

    iget-object v1, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->f:Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;

    iget-object v2, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->d:Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;

    if-nez v1, :cond_0

    iget-object v1, v2, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->h:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    aget-object p0, v1, v0

    return-object p0

    :cond_0
    iget v3, v1, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->c:I

    if-le v0, v3, :cond_1

    iget-object v1, v2, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->h:[Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    sub-int/2addr v0, v3

    aget-object p0, v1, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    invoke-virtual {v1}, Lkotlinx/collections/immutable/implementations/immutableList/TrieIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove()V
    .locals 2

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->a()V

    iget v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->d:Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;

    invoke-virtual {v1, v0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->h(I)Ljava/lang/Object;

    iget v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->g:I

    iget v1, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    if-ge v0, v1, :cond_0

    iput v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/AbstractListIterator;->b:I

    :cond_0
    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->c()V

    return-void

    :cond_1
    invoke-static {}, Lr81;->b()V

    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->a()V

    iget v0, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->d:Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;

    invoke-virtual {v1, v0, p1}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;->m()I

    move-result p1

    iput p1, p0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->e:I

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorMutableIterator;->d()V

    return-void

    :cond_0
    invoke-static {}, Lr81;->b()V

    return-void
.end method
