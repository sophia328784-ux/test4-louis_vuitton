.class final Lcom/perfectcorp/thirdparty/com/google/common/cache/h;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/k;


# instance fields
.field public final synthetic c:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/h;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/k;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->f()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/h;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/g;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object p1
.end method
