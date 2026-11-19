.class Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic QWPJNG:Z

.field final synthetic Xvafnt:LZjTIAZ/ZptgnD;

.field final synthetic ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;


# direct methods
.method public constructor <init>(Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;LZjTIAZ/ZptgnD;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$8;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;

    iput-object p2, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$8;->Xvafnt:LZjTIAZ/ZptgnD;

    iput-boolean p3, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$8;->QWPJNG:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$8;->Xvafnt:LZjTIAZ/ZptgnD;

    iget-boolean p0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$8;->QWPJNG:Z

    iput-boolean p0, v0, LZjTIAZ/ZptgnD;->m:Z

    return-void
.end method
