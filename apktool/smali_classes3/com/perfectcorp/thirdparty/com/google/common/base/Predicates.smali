.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$b;,
        Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$c;,
        Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$d;,
        Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$a;,
        Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$e;,
        Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$f;
    }
.end annotation


# direct methods
.method public static a(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static b(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;Lg7;)Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$b;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$b;->c:Lg7;

    return-object v0
.end method

.method public static c()Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public static d(Ljava/util/AbstractCollection;)Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$c;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$c;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static e(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$e;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;

    return-object v0
.end method

.method public static f()Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$f;->b:Lcom/perfectcorp/thirdparty/com/google/common/base/Predicates$f;

    return-object v0
.end method
