.class Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Xvafnt:LZjTIAZ/ZptgnD;

.field final synthetic ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;


# direct methods
.method public constructor <init>(Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;LZjTIAZ/ZptgnD;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$12;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;

    iput-object p2, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$12;->Xvafnt:LZjTIAZ/ZptgnD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$12;->Xvafnt:LZjTIAZ/ZptgnD;

    iget-object v0, p0, LZjTIAZ/ZptgnD;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LZjTIAZ/ZptgnD;->m()V

    :cond_0
    return-void
.end method
