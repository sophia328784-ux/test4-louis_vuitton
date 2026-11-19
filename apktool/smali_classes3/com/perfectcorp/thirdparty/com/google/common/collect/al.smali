.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/al;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/n;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/collect/al$c;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/al$b;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/n<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final transient f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

.field public final transient g:I


# direct methods
.method public constructor <init>(ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->g:I

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/j;->b(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/am;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->c()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->f()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    move-result-object p0

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/am;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/am;->c:Ljava/lang/Object;

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$a;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/am;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    return-object v0
.end method

.method public final d()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final e()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/an;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->f()Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->f()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    move-result-object p0

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/an;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$a;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/an;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    return-object v0
.end method

.method public final f()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j;->b:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$b;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$b;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/al;)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j;->b:Ljava/util/Collection;

    :cond_0
    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    return-object v0
.end method

.method public final bridge synthetic h()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->e()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public final m(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final n(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->g:I

    return p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j;->d:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$c;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$c;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/al;)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/j;->d:Ljava/util/Collection;

    :cond_0
    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    return-object v0
.end method
