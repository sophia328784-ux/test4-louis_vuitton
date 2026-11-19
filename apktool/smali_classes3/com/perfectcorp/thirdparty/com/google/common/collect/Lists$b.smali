.class Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$b;
.super Ljava/util/AbstractList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$b;->b:Ljava/util/List;

    iput p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$b;->c:I

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$b;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->b(II)V

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$b;->c:I

    mul-int/2addr p1, v0

    add-int/2addr v0, p1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-interface {p0, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$b;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$b;->c:I

    invoke-static {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/math/a;->a(II)I

    move-result p0

    return p0
.end method
