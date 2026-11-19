.class abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/a;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/bz<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final b:I

.field public c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2, p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->e(II)V

    iput p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;->b:I

    iput p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;->c:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;->c:I

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;->b:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasPrevious()Z
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;->c:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;->c:I

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;->a(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final nextIndex()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;->c:I

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;->c:I

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;->a(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final previousIndex()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/a;->c:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method
