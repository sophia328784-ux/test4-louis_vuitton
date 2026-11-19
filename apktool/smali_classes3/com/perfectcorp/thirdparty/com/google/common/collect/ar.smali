.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/ar;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;


# instance fields
.field public final synthetic c:Ljava/lang/Iterable;

.field public final synthetic d:Lcom/perfectcorp/thirdparty/com/google/common/base/Function;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ar;->c:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ar;->d:Lcom/perfectcorp/thirdparty/com/google/common/base/Function;

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ar;->c:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ax;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ar;->d:Lcom/perfectcorp/thirdparty/com/google/common/base/Function;

    invoke-direct {v1, v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ax;-><init>(Ljava/util/Iterator;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)V

    return-object v1
.end method
