.class final Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$b;
.super Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;)I
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$b;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final b(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h;Ljava/util/Set;)V
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/h$b;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-void
.end method
