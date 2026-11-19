.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# instance fields
.field public final synthetic a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

.field public final synthetic b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/s;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/s;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/s;->c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    const-string v0, "download background succeed"

    const/4 v1, 0x3

    const-string v2, "DownloadMakeupHandle"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/s;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->y:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->g:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    iget-boolean v2, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->s:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b$b;->a()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perfectcorp/common/network/BaseDownloadHandle;->a(D)V

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/s;->b:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/s;->c:Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils$c;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->set(Ljava/lang/Object;)Z

    return-void
.end method
