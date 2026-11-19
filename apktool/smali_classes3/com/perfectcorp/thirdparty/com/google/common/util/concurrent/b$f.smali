.class final Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b<",
            "TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b<",
            "TV;>;",
            "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;

    iput-object p2, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->e()Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;

    invoke-virtual {v1, v2, p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$a;->e(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$f;->a:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->b(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;)V

    :cond_1
    :goto_0
    return-void
.end method
