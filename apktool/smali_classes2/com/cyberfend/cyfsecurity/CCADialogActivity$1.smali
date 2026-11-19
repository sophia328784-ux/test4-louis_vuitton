.class Lcom/cyberfend/cyfsecurity/CCADialogActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements LZjTIAZ/XcIOkP$GznHzJ;


# instance fields
.field public final synthetic a:Lcom/cyberfend/cyfsecurity/CCADialogActivity;


# direct methods
.method public constructor <init>(Lcom/cyberfend/cyfsecurity/CCADialogActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CCADialogActivity$1;->a:Lcom/cyberfend/cyfsecurity/CCADialogActivity;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/cyberfend/cyfsecurity/CCADialogActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/cyberfend/cyfsecurity/CCADialogActivity$1$1;-><init>(Lcom/cyberfend/cyfsecurity/CCADialogActivity$1;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    return-void
.end method
