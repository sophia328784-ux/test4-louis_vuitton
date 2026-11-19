.class public Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final i(Ljava/util/List;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;->c(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$b;

    return-void
.end method

.method public final j()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;
    .locals 3

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;->b:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;->a:[Ljava/lang/Object;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->r(I[Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;->b:I

    iput-boolean v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;->c:Z

    return-object v0

    :cond_0
    const/4 p0, 0x0

    aget-object p0, v1, p0

    sget v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->d:I

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bn;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bn;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    sget p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->d:I

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->j:Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;

    return-object p0
.end method
