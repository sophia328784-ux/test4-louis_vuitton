.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/aq;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;


# instance fields
.field public final synthetic c:Ljava/lang/Iterable;

.field public final synthetic d:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/aq;->c:Ljava/lang/Iterable;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/aq;->d:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/aq;->c:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/aq;->d:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/aw;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/aw;->d:Ljava/util/Iterator;

    iput-object p0, v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/aw;->e:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    sget p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/b$a;->b:I

    iput p0, v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/b;->b:I

    return-object v1
.end method
