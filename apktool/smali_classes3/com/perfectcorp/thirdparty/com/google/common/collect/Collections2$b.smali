.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$b;
.super Ljava/util/AbstractCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Collection;

.field public final c:Lcom/perfectcorp/thirdparty/com/google/common/base/Function;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/Collection;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$b;->b:Ljava/util/Collection;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$b;->c:Lcom/perfectcorp/thirdparty/com/google/common/base/Function;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$b;->b:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$b;->b:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$b;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$b;->c:Lcom/perfectcorp/thirdparty/com/google/common/base/Function;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ax;

    invoke-direct {v1, v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ax;-><init>(Ljava/util/Iterator;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)V

    return-object v1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$b;->b:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method
