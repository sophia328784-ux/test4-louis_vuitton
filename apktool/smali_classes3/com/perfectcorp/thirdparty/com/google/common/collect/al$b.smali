.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/al$b;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/ai<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final c:Lcom/perfectcorp/thirdparty/com/google/common/collect/al;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/al;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$b;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/al;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$b;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/al;

    invoke-virtual {p0, v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$b;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/al;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->c()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$b;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/al;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->c()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$b;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/al;

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/al;->g:I

    return p0
.end method
