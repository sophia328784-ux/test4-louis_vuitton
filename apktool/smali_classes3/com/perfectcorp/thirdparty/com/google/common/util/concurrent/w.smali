.class public abstract Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/w;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/k;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/k;

    return-object v0
.end method

.method public static b(Ljava/util/concurrent/Executor;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;)Ljava/util/concurrent/Executor;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/k;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/k;

    if-ne p0, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/x;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/x;->c:Ljava/util/concurrent/Executor;

    iput-object p1, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/x;->d:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/x;->b:Z

    return-object v0
.end method
