.class Lcom/google/common/collect/Maps$IteratorBasedAbstractMap$1;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/Maps$IteratorBasedAbstractMap$1;->b:Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/Maps$IteratorBasedAbstractMap$1;->b:Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    iget-object p0, p0, Lcom/google/common/collect/Maps$IteratorBasedAbstractMap$1;->b:Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;

    check-cast p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;

    iget-object v0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Maps$TransformedEntriesMap;->c:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/common/collect/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/common/collect/a;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lcom/google/common/collect/Iterators$6;

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/Iterators$6;-><init>(Ljava/util/Iterator;Lcom/google/common/base/Function;)V

    return-object p0
.end method
