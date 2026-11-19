.class final Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

.field private synthetic c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;ILcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/g;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;

    iput p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/g;->a:I

    iput-object p3, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/g;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/g;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/g;->a:I

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/g;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;ILjava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/g;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/g;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;)V

    throw v0
.end method
