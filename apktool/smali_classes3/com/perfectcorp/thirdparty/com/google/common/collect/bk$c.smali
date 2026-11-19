.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$c;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final transient d:[Ljava/lang/Object;

.field public final transient e:I

.field public final transient f:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$c;->d:[Ljava/lang/Object;

    iput p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$c;->e:I

    iput p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$c;->f:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$c;->f:I

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->b(II)V

    mul-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$c;->e:I

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$c;->d:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bk$c;->f:I

    return p0
.end method
