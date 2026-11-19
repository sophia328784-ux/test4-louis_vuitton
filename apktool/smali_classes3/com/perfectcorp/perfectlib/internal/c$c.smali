.class final Lcom/perfectcorp/perfectlib/internal/c$c;
.super Lcom/perfectcorp/perfectlib/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/internal/c;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/internal/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/internal/c$c;->a:Lcom/perfectcorp/perfectlib/internal/c;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    const-string v0, "SafeTrigger"

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/c$c;->a:Lcom/perfectcorp/perfectlib/internal/c;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/c;->b()V

    const-string p0, "register success"

    const/4 v1, 0x3

    invoke-static {v1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v1, "register failed"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    const-string v0, "SafeTrigger"

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/internal/c$c;->a:Lcom/perfectcorp/perfectlib/internal/c;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/c;->c()V

    const-string p0, "unregister success"

    const/4 v1, 0x3

    invoke-static {v1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v1, "unregister failed"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
