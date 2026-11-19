.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/bt;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/bw;


# instance fields
.field public final synthetic c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$b;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$b;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bt;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bs$b;

    invoke-direct {p0, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bw;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Map$Entry;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bu;->o:Lcom/perfectcorp/thirdparty/com/google/common/collect/bt;

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bu;->n:Ljava/util/Map$Entry;

    return-object v0
.end method
