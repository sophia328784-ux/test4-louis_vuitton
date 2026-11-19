.class final Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;
.super Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final j:Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;


# instance fields
.field public final transient e:[Ljava/lang/Object;

.field public final transient f:[Ljava/lang/Object;

.field public final transient g:I

.field public final transient h:I

.field public final transient i:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;-><init>([Ljava/lang/Object;[Ljava/lang/Object;III)V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->j:Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;III)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->e:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->f:[Ljava/lang/Object;

    iput p4, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->g:I

    iput p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->h:I

    iput p5, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->i:I

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->e:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->i:I

    invoke-static {v0, v1, p2, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, p0

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->f:[Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->b(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    iget v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->g:I

    and-int/2addr v2, v3

    aget-object v3, v1, v2

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public final f()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;
    .locals 1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->h()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->h:I

    return p0
.end method

.method public final i()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->e:[Ljava/lang/Object;

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->h()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object p0

    return-object p0
.end method

.method public final m()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final n()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->i:I

    return p0
.end method

.method public final o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->i:I

    return p0
.end method

.method public final z()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->e:[Ljava/lang/Object;

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/bm;->i:I

    invoke-static {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->s(I[Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method
