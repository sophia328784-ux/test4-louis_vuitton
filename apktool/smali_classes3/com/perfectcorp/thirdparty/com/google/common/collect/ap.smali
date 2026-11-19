.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/ap;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;


# instance fields
.field public final synthetic c:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ap;->c:Ljava/lang/Iterable;

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ap;->c:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/av;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/av;->b:Ljava/util/Iterator;

    const/16 p0, 0x1e

    iput p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/av;->c:I

    return-object v0
.end method
