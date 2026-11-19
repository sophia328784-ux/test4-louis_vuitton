.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/bj;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;


# instance fields
.field public final transient d:[Ljava/lang/Object;

.field public final transient e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bj;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bj;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bj;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bj;->d:[Ljava/lang/Object;

    iput p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bj;->e:I

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bj;->d:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bj;->e:I

    invoke-static {v0, v1, p2, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, p0

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bj;->e:I

    invoke-static {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->b(II)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bj;->d:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final i()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bj;->d:[Ljava/lang/Object;

    return-object p0
.end method

.method public final m()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final n()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bj;->e:I

    return p0
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bj;->e:I

    return p0
.end method
