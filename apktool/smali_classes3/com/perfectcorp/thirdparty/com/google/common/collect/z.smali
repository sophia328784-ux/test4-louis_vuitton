.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/z;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;


# instance fields
.field public final synthetic c:Ljava/lang/Iterable;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V
    .locals 0

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/z;->c:Ljava/lang/Iterable;

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/z;->c:Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
