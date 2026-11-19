.class Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Xvafnt:LZjTIAZ/ZptgnD;

.field final synthetic ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LNPR/HbI;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;LZjTIAZ/ZptgnD;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$4;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;

    iput-object p2, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$4;->Xvafnt:LZjTIAZ/ZptgnD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$4;->Xvafnt:LZjTIAZ/ZptgnD;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object p0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    const/16 v0, 0xe

    iput v0, p0, Lcom/cyberfend/cyfsecurity/CYFManager;->o:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
