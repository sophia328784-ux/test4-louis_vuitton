.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final transient d:I

.field public final transient e:I

.field public final synthetic f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;II)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;->d:I

    iput p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;->e:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;->e:I

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->b(II)V

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;->d:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->i()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object p0

    return-object p0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object p0

    return-object p0
.end method

.method public final m()I
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->m()I

    move-result v0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final n()I
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->m()I

    move-result v0

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;->d:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;->e:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final p(II)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;
    .locals 1

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;->e:I

    invoke-static {p1, p2, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->c(III)V

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;->d:I

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->p(II)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;->e:I

    return p0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$b;->p(II)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method
