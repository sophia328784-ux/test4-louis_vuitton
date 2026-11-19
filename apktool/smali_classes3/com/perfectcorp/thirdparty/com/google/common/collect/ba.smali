.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/ba;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/bx;


# instance fields
.field public final synthetic c:Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$d;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$d;Ljava/util/ListIterator;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ba;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$d;

    invoke-direct {p0, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bw;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ba;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$d;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$d;->c:Lcom/perfectcorp/thirdparty/com/google/common/base/Function;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
