.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$a;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$a;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$a;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->b(II)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$a;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$a;->c:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final size()I
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists$a;->c:[Ljava/lang/Object;

    array-length p0, p0

    int-to-long v0, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/primitives/Ints;->a(J)I

    move-result p0

    return p0
.end method
