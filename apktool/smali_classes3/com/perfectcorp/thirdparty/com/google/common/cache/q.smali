.class final Lcom/perfectcorp/thirdparty/com/google/common/cache/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Function;


# instance fields
.field public synthetic b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/q;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->set(Ljava/lang/Object;)Z

    return-object p1
.end method
