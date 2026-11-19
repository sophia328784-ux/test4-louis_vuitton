.class Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic EQvKaS:I

.field final synthetic Xvafnt:LZjTIAZ/ZptgnD;

.field final synthetic ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;


# direct methods
.method public constructor <init>(Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;LZjTIAZ/ZptgnD;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$9;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;

    iput-object p2, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$9;->Xvafnt:LZjTIAZ/ZptgnD;

    iput p3, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$9;->EQvKaS:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$9;->Xvafnt:LZjTIAZ/ZptgnD;

    iget p0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$9;->EQvKaS:I

    iput p0, v0, LZjTIAZ/ZptgnD;->n:I

    return-void
.end method
