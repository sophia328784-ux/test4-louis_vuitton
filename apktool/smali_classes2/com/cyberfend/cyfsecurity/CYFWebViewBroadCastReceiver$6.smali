.class Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Xvafnt:LZjTIAZ/ZptgnD;

.field final synthetic ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;

.field final synthetic ZqiNk:Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lint;"
        }
    .end annotation
.end field

.field final synthetic eAgGrp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;LZjTIAZ/ZptgnD;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$6;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;

    iput-object p2, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$6;->Xvafnt:LZjTIAZ/ZptgnD;

    iput-object p3, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$6;->ZqiNk:Ljava/lang/String;

    iput-object p4, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$6;->eAgGrp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$6;->Xvafnt:LZjTIAZ/ZptgnD;

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$6;->ZqiNk:Ljava/lang/String;

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$6;->eAgGrp:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, LZjTIAZ/ZptgnD;->A(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
