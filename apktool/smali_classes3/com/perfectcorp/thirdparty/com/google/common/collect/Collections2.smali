.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$b;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Ljava/util/Collection;
    .locals 2

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$a;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$a;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$a;->b:Ljava/util/Collection;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$a;->c:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    invoke-static {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;->a(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$a;-><init>(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/util/Collection;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$a;-><init>(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static b(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/Collection;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$b;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Collections2$b;-><init>(Ljava/util/Collection;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)V

    return-object v0
.end method
