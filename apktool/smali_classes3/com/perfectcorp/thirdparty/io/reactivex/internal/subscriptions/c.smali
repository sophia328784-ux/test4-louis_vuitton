.class public Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/c;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/org/reactivestreams/b;

.field public c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/org/reactivestreams/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/org/reactivestreams/b<",
            "-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/a;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/c;->b:Lcom/perfectcorp/thirdparty/org/reactivestreams/b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/c;->c:Ljava/lang/Object;

    iput-object v2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/c;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v2
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()V
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/subscriptions/c;->c:Ljava/lang/Object;

    return-void
.end method
