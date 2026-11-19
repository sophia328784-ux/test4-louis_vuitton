.class abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public final synthetic e:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    iget v0, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->f:I

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->b:I

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->isEmpty()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->c:I

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->d:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->c:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->f:I

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->b:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->c:I

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->d:I

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->a(I)Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->c:I

    add-int/lit8 v2, v2, 0x1

    iget v0, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->g:I

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->c:I

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

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/q;

    iget v1, v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->f:I

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->b:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->d:I

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "no calls to next() since the last call to remove()"

    invoke-static {v3, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->b:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->b:I

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->d:I

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/q;->e(Lcom/perfectcorp/thirdparty/com/google/common/collect/q;I)V

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->c:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/q$b;->d:I

    return-void

    :cond_1
    invoke-static {}, Lv7;->c()V

    return-void
.end method
