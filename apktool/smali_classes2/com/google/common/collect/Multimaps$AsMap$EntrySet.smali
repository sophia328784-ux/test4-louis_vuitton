.class final Lcom/google/common/collect/Multimaps$AsMap$EntrySet;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Multimaps$AsMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Multimaps$AsMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->b:Lcom/google/common/collect/Multimaps$AsMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->b:Lcom/google/common/collect/Multimaps$AsMap;

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->b:Lcom/google/common/collect/Multimaps$AsMap;

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$AsMap;->d:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lmw;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lmw;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lcom/google/common/collect/Maps$3;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/Maps$3;-><init>(Ljava/util/Iterator;Lmw;)V

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Maps$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->b:Lcom/google/common/collect/Multimaps$AsMap;

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$AsMap;->d:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method
