.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/bv;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/bw;


# instance fields
.field public final synthetic c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$c;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$c;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bv;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$c;

    invoke-direct {p0, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bw;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Collection;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bv;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$c;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$h;->c:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bs;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
