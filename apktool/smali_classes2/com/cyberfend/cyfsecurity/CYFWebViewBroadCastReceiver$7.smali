.class Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic XsEuqD:[Ljava/lang/String;

.field final synthetic Xvafnt:LZjTIAZ/ZptgnD;

.field final synthetic ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;


# direct methods
.method public constructor <init>(Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;LZjTIAZ/ZptgnD;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$7;->ZRQiWB:Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver;

    iput-object p2, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$7;->Xvafnt:LZjTIAZ/ZptgnD;

    iput-object p3, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$7;->XsEuqD:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$7;->Xvafnt:LZjTIAZ/ZptgnD;

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFWebViewBroadCastReceiver$7;->XsEuqD:[Ljava/lang/String;

    iput-object p0, v0, LZjTIAZ/ZptgnD;->l:[Ljava/lang/String;

    return-void
.end method
