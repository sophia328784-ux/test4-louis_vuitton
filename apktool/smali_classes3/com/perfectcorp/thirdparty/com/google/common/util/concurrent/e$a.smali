.class final Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/e$a;
.super Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/e<",
        "TI;TO;",
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i<",
        "-TI;+TO;>;",
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture<",
        "+TO;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture<",
            "+TI;>;",
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/e;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;

    invoke-interface {p1, p2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;->apply(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->setFuture(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Z

    return-void
.end method
