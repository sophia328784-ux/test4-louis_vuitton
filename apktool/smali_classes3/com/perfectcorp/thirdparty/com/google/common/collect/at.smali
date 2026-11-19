.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/collect/at;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/at$a;,
        Lcom/perfectcorp/thirdparty/com/google/common/collect/at$c;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Iterator;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    new-instance p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/au;->c:[Ljava/lang/Object;

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/au;->b:I

    new-instance p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$a;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    iput-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->c:Ljava/util/Iterator;

    iput-object p0, p1, Lcom/perfectcorp/thirdparty/com/google/common/collect/at$b;->d:Ljava/util/Iterator;

    return-object p1
.end method

.method public static b(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method
