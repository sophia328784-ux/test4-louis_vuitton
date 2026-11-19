.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/ab;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;


# instance fields
.field public final synthetic c:[Ljava/lang/Iterable;


# direct methods
.method public constructor <init>([Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ab;->c:[Ljava/lang/Iterable;

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ac;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ab;->c:[Ljava/lang/Iterable;

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ac;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ab;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$a;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->c:Ljava/util/Iterator;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->d:Ljava/util/Iterator;

    return-object p0
.end method
