.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/bl;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;


# instance fields
.field public final synthetic d:Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$a;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bl;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$a;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bl;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$a;

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$a;->g:I

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->b(II)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$a;->f:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    aget-object v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    aget-object p0, p0, p1

    new-instance p1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p1, v0, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bl;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$a;

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$a;->g:I

    return p0
.end method
