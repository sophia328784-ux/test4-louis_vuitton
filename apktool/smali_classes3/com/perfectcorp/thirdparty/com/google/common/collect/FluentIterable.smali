.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$a;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$a;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs h([Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;
    .locals 3

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ab;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ab;-><init>([Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;
    .locals 1

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    return-object p0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/z;

    invoke-direct {v0, p0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/z;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public final f()Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    return-object p0
.end method

.method public final i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;
    .locals 1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->f()Ljava/lang/Iterable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/aq;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/aq;-><init>(Ljava/lang/Iterable;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    return-object p0
.end method

.method public final m()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->f()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final o()Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;
    .locals 1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->f()Ljava/lang/Iterable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/as;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/as;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    return-object p0
.end method

.method public final p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->f()Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public final q()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->f()Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->t(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public final r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;
    .locals 1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->f()Ljava/lang/Iterable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ar;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ar;-><init>(Ljava/lang/Iterable;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    return-object p0
.end method

.method public final s(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/aa;

    invoke-direct {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/aa;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->f()Ljava/lang/Iterable;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Iterables;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
