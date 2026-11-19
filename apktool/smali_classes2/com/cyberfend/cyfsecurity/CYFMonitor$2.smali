.class Lcom/cyberfend/cyfsecurity/CYFMonitor$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static JdWEOB:Ljava/lang/String;

.field static JtwhEv:Ljava/lang/String;


# instance fields
.field final synthetic XGLZAQ:Ljava/lang/String;

.field final synthetic XJqbAP:Ljava/lang/String;

.field final synthetic aIctbN:Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQYt/QRv/IJT;"
        }
    .end annotation
.end field

.field final synthetic etzqkG:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cyberfend/cyfsecurity/CYFMonitor$2;->uxT(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$2;->etzqkG:Landroid/app/Application;

    iput-object p2, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$2;->aIctbN:Ljava/lang/String;

    iput-object p3, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$2;->XGLZAQ:Ljava/lang/String;

    iput-object p4, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$2;->XJqbAP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic uxT(Z)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/cyberfend/cyfsecurity/CYFMonitor$2;->uxT(Z)V

    :cond_0
    const-string p0, "M|S~\\\\FT~C"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$2;->JtwhEv:Ljava/lang/String;

    const-string p0, "J@yRJWK\u0000Ubv\u001c\\X^L@KGEWO[YNL\u0003BDOKM\\ ;"

    invoke-static {p0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$2;->JdWEOB:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor;->b:Lcom/cyberfend/cyfsecurity/CYFManager;

    iget-object v1, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$2;->etzqkG:Landroid/app/Application;

    sget-object v2, Lcom/cyberfend/cyfsecurity/CYFMonitor;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$2;->aIctbN:Ljava/lang/String;

    iget-object v4, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$2;->XGLZAQ:Ljava/lang/String;

    iget-object v5, p0, Lcom/cyberfend/cyfsecurity/CYFMonitor$2;->XJqbAP:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/cyberfend/cyfsecurity/CYFManager;->u(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFMonitor$2;->JtwhEv:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/cyberfend/cyfsecurity/CYFMonitor$2;->JdWEOB:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcj;->h(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-static {v0, p0, v1}, LwcQZwr/GpYFMu;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return-void
.end method
