.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/a$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

.field public final c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/io/reactivex/f;Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/a$a;->b:Lcom/perfectcorp/thirdparty/io/reactivex/f;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/a$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/a;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/a$a;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/a;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/a;->n(Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/a$a;)V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method
