.class Lcom/cyberfend/cyfsecurity/CCADialogActivity$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic TTzTU:F

.field final synthetic ZFqUdf:Lcom/cyberfend/cyfsecurity/CCADialogActivity$1;


# direct methods
.method public constructor <init>(Lcom/cyberfend/cyfsecurity/CCADialogActivity$1;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CCADialogActivity$1$1;->ZFqUdf:Lcom/cyberfend/cyfsecurity/CCADialogActivity$1;

    iput p2, p0, Lcom/cyberfend/cyfsecurity/CCADialogActivity$1$1;->TTzTU:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CCADialogActivity$1$1;->ZFqUdf:Lcom/cyberfend/cyfsecurity/CCADialogActivity$1;

    iget-object v0, v0, Lcom/cyberfend/cyfsecurity/CCADialogActivity$1;->a:Lcom/cyberfend/cyfsecurity/CCADialogActivity;

    iget-object v0, v0, Lcom/cyberfend/cyfsecurity/CCADialogActivity;->j:Lcom/cyberfend/cyfsecurity/CircleProgressBar;

    iget p0, p0, Lcom/cyberfend/cyfsecurity/CCADialogActivity$1$1;->TTzTU:F

    invoke-virtual {v0, p0}, Lcom/cyberfend/cyfsecurity/CircleProgressBar;->setProgress(F)V

    return-void
.end method
