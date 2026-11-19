.class abstract Lcom/perfectcorp/common/network/k$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/network/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/perfectcorp/perfectlib/internal/a;->a:Lcom/perfectcorp/perfectlib/internal/a;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/internal/a;->requestScheduling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "NetworkTaskExecutor"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
