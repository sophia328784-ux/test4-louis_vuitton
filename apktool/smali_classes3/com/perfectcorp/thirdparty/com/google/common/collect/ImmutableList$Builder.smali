.class public final Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;->e(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final varargs h([Ljava/lang/Object;)V
    .locals 4

    array-length v0, p1

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->d(I[Ljava/lang/Object;)V

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;->d(I)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;->b:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;->b:I

    return-void
.end method

.method public final i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;->c:Z

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;->a:[Ljava/lang/Object;

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai$a;->b:I

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->s(I[Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method
