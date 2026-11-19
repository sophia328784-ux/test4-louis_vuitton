.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/aa;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;


# instance fields
.field public final synthetic c:Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/aa;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/aa;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ao;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ax;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ax;-><init>(Ljava/util/Iterator;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$a;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->c:Ljava/util/Iterator;

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->d:Ljava/util/Iterator;

    return-object p0
.end method
