.class public final Lkotlin/collections/ArrayDeque;
.super Lkotlin/collections/AbstractMutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/ArrayDeque$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractMutableList<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u000b*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002:\u0001\u000cB\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0007B\u0017\u0008\u0016\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0004\u0008\u0005\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlin/collections/ArrayDeque;",
        "E",
        "Lkotlin/collections/AbstractMutableList;",
        "",
        "initialCapacity",
        "<init>",
        "(I)V",
        "()V",
        "",
        "elements",
        "(Ljava/util/Collection;)V",
        "e",
        "Companion",
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


# static fields
.field public static final e:Lkotlin/collections/ArrayDeque$Companion;

.field public static final f:[Ljava/lang/Object;


# instance fields
.field public b:I

.field public c:[Ljava/lang/Object;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/collections/ArrayDeque$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/ArrayDeque$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/collections/ArrayDeque;->e:Lkotlin/collections/ArrayDeque$Companion;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lkotlin/collections/ArrayDeque;->f:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 27
    sget-object v0, Lkotlin/collections/ArrayDeque;->f:[Ljava/lang/Object;

    iput-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/collections/ArrayDeque;->f:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    new-array p1, p1, [Ljava/lang/Object;

    :goto_0
    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    return-void

    :cond_1
    const-string p0, "Illegal Capacity: "

    invoke-static {p1, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    const/4 v0, 0x0

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 30
    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    .line 31
    array-length v0, p1

    iput v0, p0, Lkotlin/collections/ArrayDeque;->d:I

    .line 32
    array-length p1, p1

    if-nez p1, :cond_0

    sget-object p1, Lkotlin/collections/ArrayDeque;->f:[Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 7

    sget-object v0, Lkotlin/collections/AbstractList;->b:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->d:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lkotlin/collections/AbstractList$Companion;->c(II)V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->d:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->t()V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->d:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->m(I)V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->d:I

    add-int/lit8 v3, v2, 0x1

    shr-int/2addr v3, v1

    const/4 v4, 0x0

    if-ge p1, v3, :cond_5

    if-nez v0, :cond_2

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->A([Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_2
    add-int/lit8 p1, v0, -0x1

    :goto_0
    iget v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->A([Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    :cond_3
    sub-int/2addr v0, v1

    :goto_1
    iget v2, p0, Lkotlin/collections/ArrayDeque;->b:I

    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    if-lt p1, v2, :cond_4

    aget-object v4, v3, v2

    aput-object v4, v3, v0

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, p1, 0x1

    invoke-static {v3, v3, v2, v4, v5}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v2, -0x1

    array-length v6, v3

    invoke-static {v3, v3, v5, v2, v6}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length v3, v2

    sub-int/2addr v3, v1

    aget-object v5, v2, v4

    aput-object v5, v2, v3

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v2, v4, v1, v3}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_2
    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aput-object p2, v2, p1

    iput v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    goto :goto_4

    :cond_5
    iget p1, p0, Lkotlin/collections/ArrayDeque;->b:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result p1

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    if-ge v0, p1, :cond_6

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v2, v3, v0, p1}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_3

    :cond_6
    invoke-static {v2, v2, v1, v4, p1}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length v2, p1

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    aput-object v2, p1, v4

    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-static {p1, p1, v2, v0, v3}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_3
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aput-object p2, p1, v0

    :goto_4
    iget p1, p0, Lkotlin/collections/ArrayDeque;->d:I

    add-int/2addr p1, v1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->d:I

    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/collections/AbstractList;->b:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->d:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lkotlin/collections/AbstractList$Companion;->c(II)V

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lkotlin/collections/ArrayDeque;->d:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->t()V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->d:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->m(I)V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    iget v2, p0, Lkotlin/collections/ArrayDeque;->d:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->b:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    iget v4, p0, Lkotlin/collections/ArrayDeque;->d:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    shr-int/2addr v4, v5

    if-ge p1, v4, :cond_6

    iget p1, p0, Lkotlin/collections/ArrayDeque;->b:I

    sub-int v0, p1, v3

    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    if-lt v2, p1, :cond_4

    if-ltz v0, :cond_2

    invoke-static {v4, v4, v0, p1, v2}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    array-length v6, v4

    add-int/2addr v0, v6

    sub-int v6, v2, p1

    array-length v7, v4

    sub-int/2addr v7, v0

    if-lt v7, v6, :cond_3

    invoke-static {v4, v4, v0, p1, v2}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_3
    add-int v6, p1, v7

    invoke-static {v4, v4, v0, p1, v6}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    iget v4, p0, Lkotlin/collections/ArrayDeque;->b:I

    add-int/2addr v4, v7

    invoke-static {p1, p1, v1, v4, v2}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_4
    array-length v6, v4

    invoke-static {v4, v4, v0, p1, v6}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    if-lt v3, v2, :cond_5

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, p1, v4, v1, v2}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_5
    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, p1, v4, v1, v3}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    invoke-static {p1, p1, v1, v3, v2}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_0
    iput v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->q(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lkotlin/collections/ArrayDeque;->i(ILjava/util/Collection;)V

    return v5

    :cond_6
    add-int p1, v2, v3

    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    if-ge v2, v0, :cond_9

    add-int/2addr v3, v0

    array-length v6, v4

    if-gt v3, v6, :cond_7

    invoke-static {v4, v4, p1, v2, v0}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_7
    array-length v6, v4

    if-lt p1, v6, :cond_8

    array-length v1, v4

    sub-int/2addr p1, v1

    invoke-static {v4, v4, p1, v2, v0}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_8
    array-length v6, v4

    sub-int/2addr v3, v6

    sub-int v3, v0, v3

    invoke-static {v4, v4, v1, v3, v0}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    invoke-static {v0, v0, p1, v2, v3}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_9
    invoke-static {v4, v4, v3, v1, v0}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length v4, v0

    if-lt p1, v4, :cond_a

    array-length v1, v0

    sub-int/2addr p1, v1

    array-length v1, v0

    invoke-static {v0, v0, p1, v2, v1}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_a
    array-length v4, v0

    sub-int/2addr v4, v3

    array-length v6, v0

    invoke-static {v0, v0, v1, v4, v6}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {v0, v0, p1, v2, v1}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_1
    invoke-virtual {p0, v2, p2}, Lkotlin/collections/ArrayDeque;->i(ILjava/util/Collection;)V

    return v5
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 214
    :cond_0
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->t()V

    .line 215
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v0

    .line 216
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->m(I)V

    .line 217
    iget v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    .line 218
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v1

    add-int/2addr v1, v0

    .line 219
    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lkotlin/collections/ArrayDeque;->i(ILjava/util/Collection;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final addFirst(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->t()V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->m(I)V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->A([Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget p1, p0, Lkotlin/collections/ArrayDeque;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->d:I

    return-void
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->t()V

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->m(I)V

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->b:I

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v1

    aput-object p1, v0, v1

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->f()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->d:I

    return-void
.end method

.method public final clear()V
    .locals 2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->t()V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v0

    iget v1, p0, Lkotlin/collections/ArrayDeque;->b:I

    invoke-virtual {p0, v1, v0}, Lkotlin/collections/ArrayDeque;->r(II)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    iput v0, p0, Lkotlin/collections/ArrayDeque;->d:I

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lkotlin/collections/ArrayDeque;->d:I

    return p0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    iget p0, p0, Lkotlin/collections/ArrayDeque;->b:I

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const-string p0, "ArrayDeque is empty."

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/collections/AbstractList;->b:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->d:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lkotlin/collections/AbstractList$Companion;->b(II)V

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->b:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final h(I)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/collections/AbstractList;->b:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->d:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lkotlin/collections/AbstractList$Companion;->b(II)V

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->t()V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v0

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aget-object v3, v2, v0

    iget v4, p0, Lkotlin/collections/ArrayDeque;->d:I

    shr-int/2addr v4, v1

    iget v5, p0, Lkotlin/collections/ArrayDeque;->b:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ge p1, v4, :cond_3

    if-lt v0, v5, :cond_2

    add-int/lit8 p1, v5, 0x1

    invoke-static {v2, v2, p1, v5, v0}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    invoke-static {v2, v2, v1, v7, v0}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length v0, p1

    sub-int/2addr v0, v1

    aget-object v0, p1, v0

    aput-object v0, p1, v7

    iget v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    add-int/lit8 v2, v0, 0x1

    array-length v4, p1

    sub-int/2addr v4, v1

    invoke-static {p1, p1, v2, v0, v4}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_0
    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    iget v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    aput-object v6, p1, v0

    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->b:I

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->f()I

    move-result p1

    sub-int/2addr p1, v1

    add-int/2addr p1, v5

    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result p1

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    if-gt v0, p1, :cond_4

    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, p1, 0x1

    invoke-static {v2, v2, v0, v4, v5}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v0, 0x1

    array-length v5, v2

    invoke-static {v2, v2, v0, v4, v5}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length v2, v0

    sub-int/2addr v2, v1

    aget-object v4, v0, v7

    aput-object v4, v0, v2

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v0, v7, v1, v2}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_1
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aput-object v6, v0, p1

    :goto_2
    iget p1, p0, Lkotlin/collections/ArrayDeque;->d:I

    sub-int/2addr p1, v1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->d:I

    return-object v3
.end method

.method public final i(ILjava/util/Collection;)V
    .locals 4

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length v1, v1

    :goto_0
    if-ge p1, v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lkotlin/collections/ArrayDeque;->b:I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget p1, p0, Lkotlin/collections/ArrayDeque;->d:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Lkotlin/collections/ArrayDeque;->d:I

    return-void
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v0

    iget v1, p0, Lkotlin/collections/ArrayDeque;->b:I

    if-ge v1, v0, :cond_1

    :goto_0
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget p0, p0, Lkotlin/collections/ArrayDeque;->b:I

    :goto_1
    sub-int/2addr v1, p0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lkotlin/collections/ArrayDeque;->b:I

    if-lt v1, v0, :cond_5

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length v2, v2

    :goto_2
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget p0, p0, Lkotlin/collections/ArrayDeque;->b:I

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v1, p1

    iget p0, p0, Lkotlin/collections/ArrayDeque;->b:I

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->f()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final last()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->b:I

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const-string p0, "ArrayDeque is empty."

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v0

    iget v1, p0, Lkotlin/collections/ArrayDeque;->b:I

    const/4 v2, -0x1

    if-ge v1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-gt v1, v0, :cond_5

    :goto_0
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget p0, p0, Lkotlin/collections/ArrayDeque;->b:I

    :goto_1
    sub-int/2addr v0, p0

    return v0

    :cond_0
    if-eq v0, v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lkotlin/collections/ArrayDeque;->b:I

    if-lt v1, v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    :goto_2
    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    if-ge v2, v0, :cond_3

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v0, p1

    iget p0, p0, Lkotlin/collections/ArrayDeque;->b:I

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->A([Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lkotlin/collections/ArrayDeque;->b:I

    if-gt v1, v0, :cond_5

    :goto_3
    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget p0, p0, Lkotlin/collections/ArrayDeque;->b:I

    goto :goto_1

    :cond_4
    if-eq v0, v1, :cond_5

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    return v2
.end method

.method public final m(I)V
    .locals 4

    if-ltz p1, :cond_3

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length v1, v0

    if-gt p1, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lkotlin/collections/ArrayDeque;->f:[Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    return-void

    :cond_2
    sget-object v1, Lkotlin/collections/AbstractList;->b:Lkotlin/collections/AbstractList$Companion;

    array-length v0, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1}, Lkotlin/collections/AbstractList$Companion;->e(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->b:I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->b:I

    sub-int/2addr v1, v2

    invoke-static {v0, p1, v1, v3, v2}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iput v3, p0, Lkotlin/collections/ArrayDeque;->b:I

    iput-object p1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    return-void

    :cond_3
    const-string p0, "Deque is too big."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final n()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    iget p0, p0, Lkotlin/collections/ArrayDeque;->b:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final o(I)I
    .locals 0

    iget-object p0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->A([Ljava/lang/Object;)I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final p()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->b:I

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final q(I)I
    .locals 0

    if-gez p1, :cond_0

    iget-object p0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length p0, p0

    add-int/2addr p1, p0

    :cond_0
    return p1
.end method

.method public final r(II)V
    .locals 3

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-ge p1, p2, :cond_0

    invoke-static {v0, p1, p2, v1}, Lkotlin/collections/ArraysKt;->r([Ljava/lang/Object;IILjava/lang/Object;)V

    return-void

    :cond_0
    array-length v2, v0

    invoke-static {v0, p1, v2, v1}, Lkotlin/collections/ArraysKt;->r([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object p0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-static {p0, p1, p2, v1}, Lkotlin/collections/ArraysKt;->r([Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->h(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    move v5, v2

    :goto_0
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    if-ge v2, v0, :cond_2

    aget-object v6, v6, v2

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    add-int/lit8 v8, v5, 0x1

    aput-object v6, v7, v5

    move v5, v8

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v6, v5, v0, v3}, Lkotlin/collections/ArraysKt;->r([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_6

    :cond_3
    iget-object v5, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length v5, v5

    move v7, v1

    move v6, v2

    :goto_2
    if-ge v2, v5, :cond_5

    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aget-object v9, v8, v2

    aput-object v3, v8, v2

    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    add-int/lit8 v10, v6, 0x1

    aput-object v9, v8, v6

    move v6, v10

    goto :goto_3

    :cond_4
    move v7, v4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v6}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v2

    move v5, v2

    :goto_4
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aget-object v6, v2, v1

    aput-object v3, v2, v1

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aput-object v6, v2, v5

    invoke-virtual {p0, v5}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v5

    goto :goto_5

    :cond_6
    move v7, v4

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    move v1, v7

    :goto_6
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->t()V

    iget p1, p0, Lkotlin/collections/ArrayDeque;->b:I

    sub-int/2addr v5, p1

    invoke-virtual {p0, v5}, Lkotlin/collections/ArrayDeque;->q(I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->d:I

    :cond_8
    :goto_7
    return v1
.end method

.method public final removeFirst()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->t()V

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->b:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v0

    iput v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/ArrayDeque;->d:I

    return-object v2

    :cond_0
    const-string p0, "ArrayDeque is empty."

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeLast()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->t()V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v0

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/ArrayDeque;->d:I

    return-object v2

    :cond_0
    const-string p0, "ArrayDeque is empty."

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final removeRange(II)V
    .locals 7

    sget-object v0, Lkotlin/collections/AbstractList;->b:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->d:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, v1}, Lkotlin/collections/AbstractList$Companion;->d(III)V

    sub-int v0, p2, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lkotlin/collections/ArrayDeque;->d:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->clear()V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->h(I)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->t()V

    iget v2, p0, Lkotlin/collections/ArrayDeque;->d:I

    sub-int/2addr v2, p2

    iget v3, p0, Lkotlin/collections/ArrayDeque;->b:I

    if-ge p1, v2, :cond_4

    add-int/lit8 v2, p1, -0x1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v2

    sub-int/2addr p2, v1

    iget v1, p0, Lkotlin/collections/ArrayDeque;->b:I

    add-int/2addr v1, p2

    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result p2

    :goto_0
    if-lez p1, :cond_3

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v3, p2, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    sub-int/2addr p2, v3

    add-int/lit8 v5, p2, 0x1

    sub-int/2addr v2, v3

    add-int/lit8 v6, v2, 0x1

    invoke-static {v4, v4, v5, v6, v1}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->q(I)I

    move-result v2

    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->q(I)I

    move-result p2

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_3
    iget p1, p0, Lkotlin/collections/ArrayDeque;->b:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result p1

    iget p2, p0, Lkotlin/collections/ArrayDeque;->b:I

    invoke-virtual {p0, p2, p1}, Lkotlin/collections/ArrayDeque;->r(II)V

    iput p1, p0, Lkotlin/collections/ArrayDeque;->b:I

    goto :goto_2

    :cond_4
    add-int/2addr v3, p2

    invoke-virtual {p0, v3}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v1

    iget v2, p0, Lkotlin/collections/ArrayDeque;->b:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result p1

    iget v2, p0, Lkotlin/collections/ArrayDeque;->d:I

    :goto_1
    sub-int/2addr v2, p2

    if-lez v2, :cond_5

    iget-object p2, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length v3, p2

    sub-int/2addr v3, v1

    array-length p2, p2

    sub-int/2addr p2, p1

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v3, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    add-int v4, v1, p2

    invoke-static {v3, v3, p1, v1, v4}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    invoke-virtual {p0, v4}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result p1

    goto :goto_1

    :cond_5
    iget p1, p0, Lkotlin/collections/ArrayDeque;->b:I

    iget p2, p0, Lkotlin/collections/ArrayDeque;->d:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result p1

    sub-int p2, p1, v0

    invoke-virtual {p0, p2}, Lkotlin/collections/ArrayDeque;->q(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lkotlin/collections/ArrayDeque;->r(II)V

    :goto_2
    iget p1, p0, Lkotlin/collections/ArrayDeque;->d:I

    sub-int/2addr p1, v0

    iput p1, p0, Lkotlin/collections/ArrayDeque;->d:I

    return-void
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    iget-object v0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v0

    iget v2, p0, Lkotlin/collections/ArrayDeque;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    move v5, v2

    :goto_0
    iget-object v6, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    if-ge v2, v0, :cond_2

    aget-object v6, v6, v2

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    add-int/lit8 v8, v5, 0x1

    aput-object v6, v7, v5

    move v5, v8

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v6, v5, v0, v3}, Lkotlin/collections/ArraysKt;->r([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_6

    :cond_3
    iget-object v5, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length v5, v5

    move v7, v1

    move v6, v2

    :goto_2
    if-ge v2, v5, :cond_5

    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aget-object v9, v8, v2

    aput-object v3, v8, v2

    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    add-int/lit8 v10, v6, 0x1

    aput-object v9, v8, v6

    move v6, v10

    goto :goto_3

    :cond_4
    move v7, v4

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v6}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v2

    move v5, v2

    :goto_4
    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aget-object v6, v2, v1

    aput-object v3, v2, v1

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aput-object v6, v2, v5

    invoke-virtual {p0, v5}, Lkotlin/collections/ArrayDeque;->o(I)I

    move-result v5

    goto :goto_5

    :cond_6
    move v7, v4

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    move v1, v7

    :goto_6
    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->t()V

    iget p1, p0, Lkotlin/collections/ArrayDeque;->b:I

    sub-int/2addr v5, p1

    invoke-virtual {p0, v5}, Lkotlin/collections/ArrayDeque;->q(I)I

    move-result p1

    iput p1, p0, Lkotlin/collections/ArrayDeque;->d:I

    :cond_8
    :goto_7
    return v1
.end method

.method public final s(I)I
    .locals 1

    iget-object p0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length v0, p0

    if-lt p1, v0, :cond_0

    array-length p0, p0

    sub-int/2addr p1, p0

    :cond_0
    return p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/collections/AbstractList;->b:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/ArrayDeque;->d:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1}, Lkotlin/collections/AbstractList$Companion;->b(II)V

    iget v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result p1

    iget-object p0, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    aget-object v0, p0, p1

    aput-object p2, p0, p1

    return-object v0
.end method

.method public final t()V
    .locals 1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v0

    .line 80
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lkotlin/collections/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p1

    iget v1, p0, Lkotlin/collections/ArrayDeque;->d:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, [Ljava/lang/Object;

    :goto_0
    iget v0, p0, Lkotlin/collections/ArrayDeque;->b:I

    iget v1, p0, Lkotlin/collections/ArrayDeque;->d:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lkotlin/collections/ArrayDeque;->s(I)I

    move-result v0

    iget v1, p0, Lkotlin/collections/ArrayDeque;->b:I

    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v2, p1, v1, v0, v3}, Lkotlin/collections/ArraysKt;->n([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    iget v2, p0, Lkotlin/collections/ArrayDeque;->b:I

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, p1, v4, v2, v3}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iget-object v1, p0, Lkotlin/collections/ArrayDeque;->c:[Ljava/lang/Object;

    array-length v2, v1

    iget v3, p0, Lkotlin/collections/ArrayDeque;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, p1, v2, v4, v0}, Lkotlin/collections/ArraysKt;->l([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :cond_2
    :goto_1
    iget p0, p0, Lkotlin/collections/ArrayDeque;->d:I

    array-length v0, p1

    if-ge p0, v0, :cond_3

    const/4 v0, 0x0

    aput-object v0, p1, p0

    :cond_3
    return-object p1
.end method
