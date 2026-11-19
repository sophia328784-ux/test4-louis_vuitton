.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/al$c;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/ai<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final transient c:Lcom/perfectcorp/thirdparty/com/google/common/collect/al;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/al;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$c;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/al;

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$c;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/al;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->f()Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->f()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    invoke-virtual {v0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->a(I[Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$c;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/al;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->b(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$c;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/al;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->e()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$c;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/al;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->e()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$c;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/al;

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->g:I

    return p0
.end method
