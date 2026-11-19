.class final Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate<",
        "TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public b:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

.field public c:Lg7;


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$b;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$b;->c:Lg7;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    iget-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->b:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$a;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$a;->apply(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$b;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$b;->c:Lg7;

    iget-object v1, p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$b;->c:Lg7;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$b;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$b;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$a;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$a;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$b;->c:Lg7;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$b;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$b;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$b;->c:Lg7;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
