.class Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Xvafnt:LZjTIAZ/ZptgnD;

.field final synthetic ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;

.field final synthetic wXMTPO:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;LZjTIAZ/ZptgnD;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$5;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;

    iput-object p2, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$5;->Xvafnt:LZjTIAZ/ZptgnD;

    iput-object p3, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$5;->wXMTPO:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$5;->Xvafnt:LZjTIAZ/ZptgnD;

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$5;->wXMTPO:Ljava/lang/String;

    invoke-virtual {v0, p0}, LZjTIAZ/ZptgnD;->y(Ljava/lang/String;)V

    return-void
.end method
