.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$e;
.super Ljava/util/AbstractSequentialList;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSequentialList<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;

.field public final c:Lcom/perfectcorp/thirdparty/com/google/common/base/Function;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$e;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$e;->c:Lcom/perfectcorp/thirdparty/com/google/common/base/Function;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$e;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bb;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$e;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bb;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$e;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$e;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
