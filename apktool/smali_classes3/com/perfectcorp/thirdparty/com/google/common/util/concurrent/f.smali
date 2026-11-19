.class abstract Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;
.super Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InputT:",
        "Ljava/lang/Object;",
        "OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b$i<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;->f:Ljava/util/logging/Logger;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;->e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b$a;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "futures=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;->e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b$a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f;->e:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/j$b$a;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/f$a;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;

    move-result-object v0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->c()Z

    move-result v1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->isCancelled()Z

    move-result p0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr p0, v2

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ai;->f()Lcom/perfectcorp/thirdparty/com/google/common/collect/by;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_1

    :cond_1
    return-void
.end method
