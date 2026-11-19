.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/ac;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/a;


# instance fields
.field public final synthetic d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ab;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ab;I)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ac;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ab;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final synthetic a(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ac;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ab;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ab;->c:[Ljava/lang/Iterable;

    aget-object p0, p0, p1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
