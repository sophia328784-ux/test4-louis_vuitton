.class abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/collect/w$b;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/w$d;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/w$a;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/w$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/perfectcorp/thirdparty/com/google/common/collect/w<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Comparable;


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->b:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method public a(Lcom/perfectcorp/thirdparty/com/google/common/collect/w;)I
    .locals 4

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/w$c;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/w$c;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/w$a;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/w$a;

    const/4 v2, -0x1

    if-ne p1, v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->b:Ljava/lang/Comparable;

    sget v3, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->d:I

    iget-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->b:Ljava/lang/Comparable;

    invoke-interface {v3, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    instance-of p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/w$b;

    instance-of p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/w$b;

    if-ne p0, p1, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public b()Ljava/lang/Comparable;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->b:Ljava/lang/Comparable;

    return-object p0
.end method

.method public abstract c(Ljava/lang/StringBuilder;)V
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->a(Lcom/perfectcorp/thirdparty/com/google/common/collect/w;)I

    move-result p0

    return p0
.end method

.method public abstract d(Ljava/lang/Comparable;)Z
.end method

.method public abstract e(Ljava/lang/StringBuilder;)V
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/w;->a(Lcom/perfectcorp/thirdparty/com/google/common/collect/w;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v1
.end method

.method public abstract hashCode()I
.end method
