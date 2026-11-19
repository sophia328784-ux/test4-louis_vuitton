.class final Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$e;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$e;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$e;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$e;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    invoke-interface {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$e;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    not-int p0, p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Predicates.not("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$e;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
