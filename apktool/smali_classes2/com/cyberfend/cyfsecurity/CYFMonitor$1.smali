.class Lcom/cyberfend/cyfsecurity/CYFMonitor$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aNhtWj:Ljava/lang/Boolean;

.field final synthetic etzqkG:Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LRBB/Laa/Lxs/Gsg;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Landroid/app/Application;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$1;->aNhtWj:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$1;->etzqkG:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$1;->aNhtWj:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object p0, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$1;->etzqkG:Landroid/app/Application;

    invoke-static {p0, v0}, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b(Landroid/app/Application;Z)V

    return-void
.end method
