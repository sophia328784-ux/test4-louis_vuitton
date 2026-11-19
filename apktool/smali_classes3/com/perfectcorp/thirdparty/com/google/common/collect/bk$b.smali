.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$b;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final transient e:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

.field public final transient f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$b;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$b;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$b;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->a(I[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$b;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$b;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object p0

    return-object p0
.end method

.method public final h()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$b;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$b;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object p0

    return-object p0
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$b;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method
