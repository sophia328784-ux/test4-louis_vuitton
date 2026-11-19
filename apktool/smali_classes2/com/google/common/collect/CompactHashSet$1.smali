.class Lcom/google/common/collect/CompactHashSet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public final synthetic e:Lcom/google/common/collect/CompactHashSet;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/CompactHashSet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/CompactHashSet$1;->e:Lcom/google/common/collect/CompactHashSet;

    iget v0, p1, Lcom/google/common/collect/CompactHashSet;->e:I

    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->b:I

    invoke-virtual {p1}, Lcom/google/common/collect/CompactHashSet;->isEmpty()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/google/common/collect/CompactHashSet$1;->c:I

    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->d:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget p0, p0, Lcom/google/common/collect/CompactHashSet$1;->c:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet$1;->e:Lcom/google/common/collect/CompactHashSet;

    iget v1, v0, Lcom/google/common/collect/CompactHashSet;->e:I

    iget v2, p0, Lcom/google/common/collect/CompactHashSet$1;->b:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet$1;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/common/collect/CompactHashSet$1;->c:I

    iput v1, p0, Lcom/google/common/collect/CompactHashSet$1;->d:I

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashSet;->i()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v1

    iget v2, p0, Lcom/google/common/collect/CompactHashSet$1;->c:I

    add-int/lit8 v2, v2, 0x1

    iget v0, v0, Lcom/google/common/collect/CompactHashSet;->f:I

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    iput v2, p0, Lcom/google/common/collect/CompactHashSet$1;->c:I

    return-object v1

    :cond_1
    invoke-static {}, Lb21;->x()V

    return-object v3

    :cond_2
    invoke-static {}, Lv7;->c()V

    return-object v3
.end method

.method public final remove()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet$1;->e:Lcom/google/common/collect/CompactHashSet;

    iget v1, v0, Lcom/google/common/collect/CompactHashSet;->e:I

    iget v2, p0, Lcom/google/common/collect/CompactHashSet$1;->b:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/google/common/collect/CompactHashSet$1;->d:I

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "no calls to next() since the last call to remove()"

    invoke-static {v3, v1}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/google/common/collect/CompactHashSet$1;->b:I

    add-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/common/collect/CompactHashSet$1;->b:I

    iget v1, p0, Lcom/google/common/collect/CompactHashSet$1;->d:I

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashSet;->i()[Ljava/lang/Object;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/CompactHashSet;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/common/collect/CompactHashSet$1;->c:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->d:I

    return-void

    :cond_1
    invoke-static {}, Lv7;->c()V

    return-void
.end method
